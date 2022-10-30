#!/bin/zsh

###############################################################################
## 
## This script takes all slide image files and assumes that slides that
## contain screencasts are marked with "_s" after the file name and before
## the suffix ".png". Example "Page_1_s.png". 
##
###############################################################################

VIDEO_DIR="material"
SLIDES_DIR="slides"
UNIT_DIR=""
DIR_TEX="tex"
UNIT_DIR=""

function readAllSlideTitlesFromTexFile {
    cd $DIR_TEX
    local slideNumber=2
    while read line; do
        UNIT_SLIDES[$slideNumber]=$line
        slideNumber=$(($slideNumber+1))
    done < <(sed -n -e 's/^[^%].*frametitle{\(.*\)}.*/\1/p' *.tex)
    cd ..    
}


function adjust()
{
    while IFS= read -r -d '' line; do 
        ALLMTSFILES+=("$line")
    done < <(find ${VIDEO_DIR} -name '*.MTS' -type f -print0 | sort -z)
    while IFS= read -r -d '' line; do 
        ALLSLIDES+=("$line")
    done < <(find ${SLIDES_DIR} -name '*.png' -type f -print0 | sort -z)

    SLIDE_IDX=2
    VIDEO_IDX=1
    SCREENCAST_IDX=1

    SLIDE_MAX=${#ALLSLIDES[*]}

    while [ $SLIDE_IDX -lt ${SLIDE_MAX} ]
    do
        SLIDE_IDX_NO=`printf "%02d" ${SLIDE_IDX}`
        SLIDE_NORMAL_FILENAME="${SLIDES_DIR}/Page_${SLIDE_IDX}.png"
        SLIDE_SCREENCAST_FILENAME="${SLIDES_DIR}/Page_${SLIDE_IDX}s.png"

        if [ -z ${UNIT_SLIDES[${SLIDE_IDX}]##Screencast*} ]
        then
            VIDEO_TARGET="${VIDEO_DIR}/Video_${SLIDE_IDX_NO}_Screencast_${SCREENCAST_IDX}.mp4"
            echo "${SLIDE_SCREENCAST_FILENAME}:  NEW -> ${VIDEO_TARGET}"
            cp -n ../camtasia_media/ScreencastPlaceholder.mp4 ${VIDEO_TARGET}
            SLIDE_IDX=$((SLIDE_IDX+1))
            SCREENCAST_IDX=$((SCREENCAST_IDX+1))
        else
            VIDEO_SOURCE="${ALLMTSFILES[${VIDEO_IDX}]}"
            VIDEO_TARGET="${VIDEO_DIR}/Video_${SLIDE_IDX_NO}.MTS"
            echo "${SLIDE_NORMAL_FILENAME}:  ${VIDEO_SOURCE} -> ${VIDEO_TARGET}"
            cp -n ${VIDEO_SOURCE} ${VIDEO_TARGET}
            SLIDE_IDX=$((SLIDE_IDX+1))
            VIDEO_IDX=$((VIDEO_IDX+1))
        fi

    done
}


UNIT_DIR="$(pwd -P)/$1"
cd ${UNIT_DIR}
readAllSlideTitlesFromTexFile
adjust
cd ..
