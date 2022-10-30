#!/bin/zsh
###############################################################################
## 
## This script takes all MTS video files in the given directory 
## and creates MP4 videos files that are trimmed. That means that 
## silent parts at the beginning and at the end of the video 
## are removed. The video starts (and stops) about one second
## before (after) the speaker is audible. 
##
###############################################################################

SCRIPT_FILE="camtasia/scenes.csv"
VIDEO_DIR="material"
SLIDES_DIR="slides"
DIR_TEX="tex"
UNIT_DIR=""

function readAllSlideTitlesFromTexFile {
    cd $DIR_TEX
    local slideNumber=2
    while read line; do
        UNIT_SLIDES[$slideNumber]=$line
        slideNumber=$(($slideNumber+1))
    done < <(sed -n -e 's/^[^%].*frametitle{\(.*\)}.*/\1/p' *.tex)
    echo ${UNIT_SLIDES[*]}
    cd ..    
}

function encode_video() {
    INPUT_FILE=$1
    OUTPUT_FILE=$2
    if [ -f "$OUTPUT_FILE" ]; then
        echo "${OUTPUT_FILE} does exist already -- skip"
        return
    fi
    echo "Producing ${OUTPUT_FILE} ..."
    TEMPFILE=$(mktemp XXXXXX)
    ## Find silent parts within the video
    ffmpeg -i ${INPUT_FILE} -af silencedetect=d=1.0:n=0.2 -f null - |& sed -e "s/\r/\n/g" > ${TEMPFILE}
    ## Filter the first "silent_end"
    CUT_FROM=$(cat ${TEMPFILE} | grep "silence_end" | head -n1 | cut -d\| -f1 | cut -d: -f2)
    ## Filter the last "silent_start"
    CUT_TO=$(cat ${TEMPFILE} | grep "silence_start" | tail -n1 | cut -d: -f2)
    rm ${TEMPFILE}
    CUT_FROM=${CUT_FROM%%.*}
    CUT_TO=${CUT_TO%%.*}
    if [[ ${CUT_FROM} -gt 2 ]]; then
        CUT_FROM=$((${CUT_FROM} - 1))
    fi
    CUT_TO=$((${CUT_TO} + 2))
    echo "From: " ${CUT_FROM}
    echo "To: " ${CUT_TO}
    ffmpeg -i ${INPUT_FILE} -ss ${CUT_FROM} -c:v libx264 -c:a aac -r 30 -to ${CUT_TO} ${OUTPUT_FILE}
}

function number_of_frames() {
    local INPUT_FILE=$1
    local RETURN_VALUE=$(ffprobe -v error -select_streams v:0 -count_packets -show_entries stream=nb_read_packets -of csv=p=0 $INPUT_FILE | head -n 1)
    ## We made the experience that the number of frames must be reduced (probably the above statement is not correct)
    RETURN_VALUE=$((${RETURN_VALUE} - 2)) 
    echo $RETURN_VALUE
}

function duration() {
    local INPUT_FILE=$1
    local RETURN_VALUE=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 -sexagesimal $INPUT_FILE)
    echo $RETURN_VALUE
}

function encode_all_videos() {
    local slide_counter=2
    local unit_number=${THE_UNIT#Unit}
    local exercise_number=1
    rm -f ${SCRIPT_FILE}
    while IFS= read -r -d '' line; do 
        ALLMTSFILES+=("$line")
    done < <(find ${VIDEO_DIR} \( -name 'Video*.MTS' -o -name 'Video*.mp4' -a \! -name '*_cut.mp4' \) -type f -print0 | sort -z)

    for f in "${ALLMTSFILES[@]}" ; do
        local output_file="${f/(\.MTS|\.mp4)/_cut.mp4}"
        encode_video ${f} ${output_file}
    done

    ALLMTSFILES=()
    while IFS= read -r -d '' line; do 
        ALLMTSFILES+=("$line")
    done < <(find ${VIDEO_DIR} -name '*_cut.mp4' -type f -print0 | sort -z)

    echo "slide;video;frames;duration;slide_type(N=normal,C=screencast);button_type(d=download,c=continue);url;marker;quiz" > ${SCRIPT_FILE}
    echo "../${SLIDES_DIR}/Page_1.png;;;;T;;;Titlepage;" >> ${SCRIPT_FILE}
    for f in "${ALLMTSFILES[@]}" ; do
        local repourl=""
        local output_file=$f
        local exercise_number_print=`printf "%01d" ${exercise_number}`
        local slidetype="N"
        local buttontype=""
        #echo ${output_file}
        if [ -z ${output_file##*Screencast*} ]
        then
            slidetype="C"
        fi
        local frames=$(number_of_frames ${output_file})
        local dur=$(duration ${output_file})
        local videofullname="../${VIDEO_DIR}/$(basename ${output_file})"
        local slide_name="Page_${slide_counter}.png"

        if [ ${slide_counter} -eq 2 ]
        then
            buttontype="N"
        fi

        if [ ${slide_counter} -eq 3 ]
        then
            buttontype="D"
            repourl="https://bitbucket.student.fiw.fhws.de:8443/projects/SVB/repos/unit-${unit_number}/browse"

        fi

        if [ -z ${UNIT_SLIDES[${slide_counter}]##Exercise*} ]
        then
            buttontype="DC"
            repourl="https://bitbucket.student.fiw.fhws.de:8443/projects/SVB/repos/unit-${unit_number}/browse?at=refs%2Fheads%2FExercise-${exercise_number_print}-Begin"
            exercise_number=$((${exercise_number}+1))
        fi

        local slidefullname="../${SLIDES_DIR}/$(basename ${slide_name})"
        echo "${slidefullname};${videofullname};${frames};${dur};${slidetype};${buttontype};${repourl};${UNIT_SLIDES[${slide_counter}]};" >> ${SCRIPT_FILE}
        slide_counter=$((${slide_counter} + 1))
    done
    echo "../${SLIDES_DIR}/Page_${slide_counter}.png;;297;;L;;;Literature;" >> ${SCRIPT_FILE}
}

UNIT_DIR="$(pwd -P)/$1"
THE_UNIT="$1"
cd ${UNIT_DIR}
readAllSlideTitlesFromTexFile
encode_all_videos 
cd ..
