{
"title" : "${projectName}",
"description" : "",
"author" : "Peter Braun",
"targetLoudness" : -18.0,
"shouldApplyLoudnessNormalization" : true,
"videoFormatFrameRate" : 30,
"audioFormatSampleRate" : 44100,
"width" : 1920.0,
"height" : 1080.0,
"version" : "4.0",
"editRate" : 30,
"authoringClientName" :  {
"name" : "Camtasia",
"platform" : "Mac",
"version" : "2020.0.15"
},
"sourceBin" : [
<#list scenes?filter( s -> s.lecturePage || s.titlePage || s.literature || s.liveCoding ) as scene>
    <#if scene.lecturePage>
        {
        "id" : ${scene.videoSrcId?c},
        "src" : "${scene.videoFullFileName}",
        "rect" : [0, 0, 1920, 1080],
        "lastMod" : "20210603T193949",
        "sourceTracks" : [
        {
        "range" : [0, ${scene.rangeMax?c}],
        "type" : 0,
        "editRate" : 1000,
        "trackRect" : [0, 0, 1920, 1080],
        "sampleRate" : 30,
        "bitDepth" : 0,
        "numChannels" : 0,
        "integratedLUFS" : 100.0,
        "peakLevel" : -1.0,
        "metaData" : ""
        },
        {
        "range" : [0, ${scene.rangeMax?c}],
        "type" : 2,
        "editRate" : 1000,
        "trackRect" : [0, 0, 0, 0],
        "sampleRate" : 48000,
        "bitDepth" : 0,
        "numChannels" : 2,
        "integratedLUFS" : -19.587722390707,
        "peakLevel" : 0.749671757221222,
        "metaData" : ""
        }
        ],
        "metadata" : {
        "timeAdded" : "20210603T200003.157700"
        }
        },
        {
        "id" : ${scene.slideSrcId?c},
        "src" : "${scene.slideFullFileName}",
        "rect" : [0, 0, 1890, 1063],
        "lastMod" : "20210603T193949",
        "sourceTracks" : [
        {
        "range" : [0, 1],
        "type" : 1,
        "editRate" : 600,
        "trackRect" : [0, 0, 1890, 1063],
        "sampleRate" : 0,
        "bitDepth" : 0,
        "numChannels" : 0,
        "integratedLUFS" : 100.0,
        "peakLevel" : -1.0,
        "metaData" : ""
        }
        ],
        "metadata" : {
        "timeAdded" : "20210603T200003.157700"
        }
        }
    </#if>

    <#if scene.titlePage || scene.literature>
        {
        "id" : ${scene.slideSrcId?c},
        "src" : "${scene.slideFullFileName}",
        "rect" : [0, 0, 1890, 1063],
        "lastMod" : "20210603T193949",
        "sourceTracks" : [
        {
        "range" : [0, 1],
        "type" : 1,
        "editRate" : 600,
        "trackRect" : [0, 0, 1890, 1063],
        "sampleRate" : 0,
        "bitDepth" : 0,
        "numChannels" : 0,
        "integratedLUFS" : 100.0,
        "peakLevel" : -1.0,
        "metaData" : ""
        }
        ],
        "metadata" : {
        "timeAdded" : "20210603T200003.157700"
        }
        }
    </#if>

    <#if scene.liveCoding>
        {
        "id" : ${scene.videoSrcId?c},
        "src" : "${scene.videoFullFileName}",
        "rect" : [0, 0, 1920, 1080],
        "lastMod" : "20210603T193949",
        "sourceTracks" : [
        {
        "range" : [0, ${scene.rangeMax?c}],
        "type" : 0,
        "editRate" : 1000,
        "trackRect" : [0, 0, 1920, 1080],
        "sampleRate" : 30,
        "bitDepth" : 0,
        "numChannels" : 0,
        "integratedLUFS" : 100.0,
        "peakLevel" : -1.0,
        "metaData" : ""
        },
        {
        "range" : [0, ${scene.rangeMax?c}],
        "type" : 2,
        "editRate" : 1000,
        "trackRect" : [0, 0, 0, 0],
        "sampleRate" : 48000,
        "bitDepth" : 0,
        "numChannels" : 2,
        "integratedLUFS" : -19.587722390707,
        "peakLevel" : 0.749671757221222,
        "metaData" : ""
        }
        ],
        "metadata" : {
        "timeAdded" : "20210603T200003.157700"
        }
        }
    </#if>

    <#sep>,
</#list>,

{
"id" : 900,
"src" : "../../camtasia_media/fhws_intro.mp4",
"rect" : [0, 0, 1920, 1080],
"lastMod" : "20200526T103810",
"sourceTracks" : [
{
"range" : [0, 4480],
"type" : 0,
"editRate" : 1000,
"trackRect" : [0, 0, 1920, 1080],
"sampleRate" : 25,
"bitDepth" : 0,
"numChannels" : 0,
"integratedLUFS" : 100.0,
"peakLevel" : -1.0,
"metaData" : ""
},
{
"range" : [0, 4500],
"type" : 2,
"editRate" : 1000,
"trackRect" : [0, 0, 0, 0],
"sampleRate" : 48000,
"bitDepth" : 0,
"numChannels" : 2,
"integratedLUFS" : -29.8145489355109,
"peakLevel" : 0.396110504865646,
"metaData" : ""
}
],
"metadata" : {
"timeAdded" : "20210529T153515.511381"
}
},
{
"id" : 901,
"src" : "../../camtasia_media/fhws_outro.mp4",
"rect" : [0, 0, 1920, 1080],
"lastMod" : "20200526T103901",
"sourceTracks" : [
{
"range" : [0, 403200],
"type" : 0,
"editRate" : 90000,
"trackRect" : [0, 0, 1920, 1080],
"sampleRate" : 25,
"bitDepth" : 0,
"numChannels" : 0,
"integratedLUFS" : 100.0,
"peakLevel" : -1.0,
"metaData" : ""
},
{
"range" : [0, 403200],
"type" : 2,
"editRate" : 90000,
"trackRect" : [0, 0, 0, 0],
"sampleRate" : 48000,
"bitDepth" : 0,
"numChannels" : 2,
"integratedLUFS" : -29.6734656872815,
"peakLevel" : 0.50377744436264,
"metaData" : ""
}
],
"metadata" : {
"timeAdded" : "20210529T162540.845240"
}
},
{
"id" : 902,
"src" : "../../camtasia_media/FHWS-Logo-2013_weiss_ohne-Name.png",
"rect" : [0, 0, 200, 53],
"lastMod" : "20201009T084053",
"sourceTracks" : [
{
"range" : [0, 1],
"type" : 1,
"editRate" : 600,
"trackRect" : [0, 0, 200, 53],
"sampleRate" : 0,
"bitDepth" : 0,
"numChannels" : 0,
"integratedLUFS" : 100.0,
"peakLevel" : -1.0,
"metaData" : ""
}
],
"metadata" : {
"timeAdded" : "20210529T161240.538444"
}
},
{
"id" : 903,
"src" : "../../camtasia_media/live_coding_intro.mp4",
"rect" : [0, 0, 1920, 1080],
"lastMod" : "20200508T184837",
"sourceTracks" : [
{
"range" : [0, 22900],
"type" : 0,
"editRate" : 1000,
"trackRect" : [0, 0, 1920, 1080],
"sampleRate" : 30,
"bitDepth" : 0,
"numChannels" : 0,
"integratedLUFS" : 100.0,
"peakLevel" : -1.0,
"metaData" : ""
}
],
"metadata" : {
"timeAdded" : "20210529T162353.219974"
}
},
{
"id" : 904,
"src" : "../../camtasia_media/titlepage_music.mp3",
"rect" : [0, 0, 0, 0],
"lastMod" : "20200526T105318",
"sourceTracks" : [
{
"range" : [0, 8535168],
"type" : 2,
"editRate" : 48000,
"trackRect" : [0, 0, 0, 0],
"sampleRate" : 48000,
"bitDepth" : 0,
"numChannels" : 2,
"integratedLUFS" : -11.1959182976255,
"peakLevel" : 1.05512523651123,
"metaData" : ""
}


],
"metadata" : {
"assetLibraryId" : "1b2fca25-2856-41a8-8f0e-ec2ad261139c",
"timeAdded" : "20210911T111950.132225"
}
},
{
"id" : 905,
"src" : "../../camtasia_media/literature_music.mp3",
"rect" : [0, 0, 0, 0],
"lastMod" : "20200526T105826",
"sourceTracks" : [
{
"range" : [0, 10211328],
"type" : 2,
"editRate" : 48000,
"trackRect" : [0, 0, 0, 0],
"sampleRate" : 48000,
"bitDepth" : 0,
"numChannels" : 2,
"integratedLUFS" : -11.625722500313,
"peakLevel" : 1.00485575199127,
"metaData" : ""
}
],
"metadata" : {
"assetLibraryId" : "89958a61-3f9f-40de-839d-b1f5a8d5b51c",
"timeAdded" : "20210911T123525.514861"
}
},
{
"id" : 906,
"src" : "../../camtasia_media/laptopopen.mp4",
"rect" : [0, 0, 1920, 1080],
"lastMod" : "20200508T184837",
"sourceTracks" : [
{
"range" : [0, 22900],
"type" : 0,
"editRate" : 1000,
"trackRect" : [0, 0, 1920, 1080],
"sampleRate" : 30,
"bitDepth" : 0,
"numChannels" : 0,
"integratedLUFS" : 100.0,
"peakLevel" : -1.0,
"metaData" : ""
}
],
"metadata" : {
"assetLibraryId" : "f9e44aba-3da4-4fe9-b60c-c9c2d2fa66e2",
"timeAdded" : "20210911T152159.785008"
}
}

],
"timeline" : {
<#assign nextId = 1000>
"id" : ${nextId?c},
"sceneTrack" : {
"scenes" : [
{
"csml" : {
"tracks" : [
{
"trackIndex" : 0,
"medias" : [
{
<#assign nextId += 1>
"id" : ${nextId?c},
"_type" : "UnifiedMedia",
"video" :
{
<#assign nextId += 1>
"id" : ${nextId?c},
"_type" : "VMFile",
"src" : 900,
"trackNumber" : 0,
"attributes" : {
"ident" : "fhws_intro"
},
"parameters" : {
"sourceCrop0" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"sourceCrop1" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"sourceCrop2" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"sourceCrop3" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"geometryCrop0" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"geometryCrop1" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"geometryCrop2" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"geometryCrop3" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
}
},
"effects" : [

],
"start" : 0,
"duration" : 134,
"mediaStart" : 0,
"mediaDuration" : 134,
"scalar" : 1,
"animationTracks" : {

}
},
"audio" :
{
<#assign nextId += 1>
"id" : ${nextId?c},
"_type" : "AMFile",
"src" : 900,
"trackNumber" : 1,
"attributes" : {
"ident" : "",
"gain" : 1.0,
"mixToMono" : false
},
"channelNumber" : "0,1",
"effects" : [

],
"start" : 0,
"duration" : 134,
"mediaStart" : 0,
"mediaDuration" : 134,
"scalar" : 1,
"animationTracks" : {

}
}
,
"start" : 0,
"duration" : 134,
"mediaStart" : 0,
"mediaDuration" : 134,
"scalar" : 1,
"metadata" : {
"clipSpeedAttribute" : false,
"default-scale" : "1",
"effectApplied" : "none",
"lockAspectRatio" : true
}
},

{
<#assign nextId += 1>
"id" : ${nextId?c},
"_type" : "IMFile",
"src" : ${titlePageSourceId},
"trackNumber" : 0,
"trimStartSum" : 0,
"attributes" : {
"ident" : "Page_1"
},
"parameters" : {
"scale0" : {
"type" : "double",
"defaultValue" : 1.01587301587302,
"interp" : "eioe"
},
"scale1" : {
"type" : "double",
"defaultValue" : 1.01587301587302,
"interp" : "eioe"
},
"sourceCrop0" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"sourceCrop1" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"sourceCrop2" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"sourceCrop3" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"geometryCrop0" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"geometryCrop1" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"geometryCrop2" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"geometryCrop3" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
}
},
"effects" : [
{
"effectName" : "DeviceFrameEffect",
"bypassed" : false,
"category" : "categoryVisualEffects",
"parameters" : {
"deviceFrameSource" : "Startup_Macbook_Air.mp4"
},
"metadata" : {
"deviceFrameName" : "Jungunternehmen (Macbook Air)"
}
}
],
"start" : 134,
"duration" : 338,
"mediaStart" : 0,
"mediaDuration" : 1,
"scalar" : 1,
"metadata" : {
"clipSpeedAttribute" : false,
"default-DeviceFrameEffect-deviceFrameSource" : "Desktop_1.mp4",
"default-scale" : "1",
"effectApplied" : "DeviceFrameEffect",
"lockAspectRatio" : true
},
"animationTracks" : {

}
},


<#assign nextId += 1>
<#list scenes as scene>
    <#if scene.lecturePage || scene.literature >
        {
        "id" : ${nextId?c},
        "_type" : "IMFile",
        "src" : ${scene.slideSrcId?c},
        "trackNumber" : 0,
        "trimStartSum" : 0,
        "attributes" : {
        "ident" : "${scene.slideShortName}"
        },
        "parameters" : {
        "scale0" : 1.01587301587302,
        "scale1" : 1.01587301587302,
        "sourceCrop0" : 0.0,
        "sourceCrop1" : 0.0,
        "sourceCrop2" : 0.0,
        "sourceCrop3" : 0.0,
        "geometryCrop0" : 0.0,
        "geometryCrop1" : 0.0,
        "geometryCrop2" : 0.0,
        "geometryCrop3" : 0.0
        },
        "effects" : [

        ],
        "start" : ${scene.startFrame?c},
        "duration" : ${scene.numberOfFrames?c},
        "mediaStart" : 0,
        "mediaDuration" : 1,
        "scalar" : 1,
        "metadata" : {
        "clipSpeedAttribute" : false,
        "default-scale" : "1",
        "effectApplied" : "none",
        "lockAspectRatio" : true
        },
        "animationTracks" : {

        }
        }
        <#sep>,
    </#if>
    <#assign nextId += 1>
</#list>
,
<#assign nextId += 1>
{
"id" : ${nextId?c},
"_type" : "UnifiedMedia",
"video" :
{
<#assign nextId += 1>
"id" : ${nextId?c},
"_type" : "VMFile",
"src" : 901,
"trackNumber" : 0,
"attributes" : {
"ident" : "fhws_outro"
},
"parameters" : {
"sourceCrop0" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"sourceCrop1" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"sourceCrop2" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"sourceCrop3" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"geometryCrop0" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"geometryCrop1" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"geometryCrop2" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
},
"geometryCrop3" : {
"type" : "double",
"defaultValue" : 0.0,
"interp" : "eioe"
}
},
"effects" : [

],
"start" : ${outroStartsAtFrame?c},
"duration" : 134,
"mediaStart" : 0,
"mediaDuration" : 134,
"scalar" : 1,
"animationTracks" : {

}
},
"audio" :
{
<#assign nextId += 1>
"id" : ${nextId?c},
"_type" : "AMFile",
"src" : 901,
"trackNumber" : 1,
"attributes" : {
"ident" : "",
"gain" : 1.0,
"mixToMono" : false
},
"channelNumber" : "0,1",
"effects" : [

],
"start" : ${outroStartsAtFrame?c},
"duration" : 134,
"mediaStart" : 0,
"mediaDuration" : 134,
"scalar" : 1,
"animationTracks" : {

}
}
,
"start" : ${outroStartsAtFrame?c},
"duration" : 134,
"mediaStart" : 0,
"mediaDuration" : 134,
"scalar" : 1,
"metadata" : {
"clipSpeedAttribute" : false,
"default-scale" : "1",
"effectApplied" : "none",
"lockAspectRatio" : true
}
}
]
},
{
"trackIndex" : 1,
"medias" : [

{
<#assign nextId += 1>
"id" : ${nextId?c},
"_type" : "AMFile",
"src" : 904,
"trackNumber" : 0,
"attributes" : {
"ident" : "Musik zu Titelfolie",
"gain" : 1.0,
"mixToMono" : false
},
"channelNumber" : "0,1",
"parameters" : {
"volume" : {
"type" : "double",
"keyframes" : [
{
"endTime" : 0,
"time" : 0,
"value" : 0.0,
"duration" : 0
},
{
"endTime" : 30,
"time" : 30,
"value" : 1.0,
"duration" : 0
},
{
"endTime" : 211,
"time" : 211,
"value" : 1.21151315789474,
"duration" : 0
},
{
"endTime" : 330,
"time" : 330,
"value" : 0.0,
"duration" : 0
}
]
}
},
"effects" : [

],
"start" : 134,
"duration" : 338,
"mediaStart" : 0,
"mediaDuration" : 338,
"scalar" : 1,
"metadata" : {
"clipSpeedAttribute" : false,
"effectApplied" : "none"
},
"animationTracks" : {

}
},

<#list scenes as scene>
    <#assign nextId += 1>
    <#if scene.lecturePage>
        {
        "id" : ${nextId?c},
        "_type" : "UnifiedMedia",
        "video" :
        {
        <#assign nextId += 1>
        "id" : ${nextId?c},
        "_type" : "VMFile",
        "src" : ${scene.videoSrcId?c},
        "trackNumber" : 0,
        "attributes" : {
        "ident" : "${scene.videoShortName}"
        },
        "parameters" : {
        "translation0" : 620.0,
        "translation1" : -80.0,
        "sourceCrop0" : 0.0,
        "sourceCrop1" : 0.0,
        "sourceCrop2" : 0.0,
        "sourceCrop3" : 0.0,
        "geometryCrop0" : 0.0,
        "geometryCrop1" : 0.0,
        "geometryCrop2" : 0.0,
        "geometryCrop3" : 0.0
        },
        "effects" : [
        {
        "effectName" : "ChromaKey",
        "bypassed" : false,
        "category" : "categoryVisualEffects",
        "parameters" : {
        "clrCompensation" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "linr",
        "uiHints" : {
        "userInterfaceType" : 0,
        "unitType" : 0
        }
        },
        "color-alpha" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr",
        "uiHints" : {
        "userInterfaceType" : 0,
        "unitType" : 0
        }
        },
        "color-blue" : {
        "type" : "double",
        "defaultValue" : ${chromaKeyBlue},
        "interp" : "linr",
        "uiHints" : {
        "userInterfaceType" : 0,
        "unitType" : 0
        }
        },
        "color-green" : {
        "type" : "double",
        "defaultValue" : ${chromaKeyGreen},
        "interp" : "linr",
        "uiHints" : {
        "userInterfaceType" : 0,
        "unitType" : 0
        }
        },
        "color-red" : {
        "type" : "double",
        "defaultValue" : ${chromaKeyRed},
        "interp" : "linr",
        "uiHints" : {
        "userInterfaceType" : 0,
        "unitType" : 0
        }
        },
        "defringe" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "linr",
        "uiHints" : {
        "userInterfaceType" : 0,
        "unitType" : 0
        }
        },
        "enabled" : 1,
        "invertEffect" : 0.0,
        "softness" : {
        "type" : "double",
        "defaultValue" : 0.1,
        "interp" : "linr",
        "uiHints" : {
        "userInterfaceType" : 0,
        "unitType" : 0
        }
        },
        "tolerance" : {
        "type" : "double",
        "defaultValue" : 0.1,
        "interp" : "linr",
        "uiHints" : {
        "userInterfaceType" : 0,
        "unitType" : 0
        }
        }
        },
        "metadata" : {
        "effectIndex" : "0"
        }
        }
        ],
        "start" : ${scene.startFrame?c},
        "duration" : ${scene.numberOfFrames?c},
        "mediaStart" : 0,
        "mediaDuration" : ${scene.numberOfFrames?c},
        "scalar" : 1,
        "animationTracks" : {

        }
        },
        "audio" :
        {
        <#assign nextId += 1>
        "id" : ${nextId?c},
        "_type" : "AMFile",
        "src" : ${scene.videoSrcId?c},
        "trackNumber" : 1,
        "attributes" : {
        "ident" : "",
        "gain" : 1.0,
        "mixToMono" : false
        },
        "channelNumber" : "0,1",
        "effects" : [

        ],
        "start" : ${scene.startFrame?c},
        "duration" : ${scene.numberOfFrames?c},
        "mediaStart" : 0,
        "mediaDuration" : ${scene.numberOfFrames?c},
        "scalar" : 1,
        "animationTracks" : {

        }
        },
        "start" : ${scene.startFrame?c},
        "duration" : ${scene.numberOfFrames?c},
        "mediaStart" : 0,
        "mediaDuration" : ${scene.numberOfFrames?c},
        "scalar" : 1,
        "metadata" : {
        "clipSpeedAttribute" : false,
        "default-scale" : "1",
        "effectApplied" : "none",
        "lockAspectRatio" : true
        }
        }
        <#sep>,
    </#if>


    <#if scene.liveCodingIntro>

        {
        <#assign nextId += 1>
        "id" : ${nextId?c},
        "_type" : "Group",
        "parameters" : {
        "sourceCrop0" : 0.0,
        "sourceCrop1" : 0.0,
        "sourceCrop2" : 0.0,
        "sourceCrop3" : 0.0,
        "geometryCrop0" : 0.0,
        "geometryCrop1" : 0.0,
        "geometryCrop2" : 0.0,
        "geometryCrop3" : 0.0,
        "volume" : 1.0
        },
        "tracks" : [
        {
        "trackIndex" : 0,
        "medias" : [
        {
        <#assign nextId += 1>
        "id" : ${nextId?c},
        "_type" : "VMFile",
        "src" : 906,
        "trackNumber" : 0,
        "attributes" : {
        "ident" : "live_coding_intro"
        },
        "parameters" : {
        "sourceCrop0" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "sourceCrop1" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "sourceCrop2" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "sourceCrop3" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop0" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop1" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop2" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop3" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        }
        },
        "effects" : [

        ],
        "start" : 0,
        "duration" : 116,
        "mediaStart" : 0,
        "mediaDuration" : 116,
        "scalar" : 1,
        "metadata" : {
        "clipSpeedAttribute" : false,
        "default-scale" : "1",
        "effectApplied" : "none",
        "lockAspectRatio" : true
        },
        "animationTracks" : {

        }
        }
        ],
        "ident" : "",
        "audioMuted" : false,
        "videoHidden" : false,
        "magnetic" : false,
        "matte" : 0,
        "solo" : false
        },
        {
        "trackIndex" : 1,
        "medias" : [
        {
        <#assign nextId += 1>
        "id" : ${nextId?c},
        "_type" : "Callout",
        "def" : {
        "kind" : "remix",
        "shape" : "text",
        "style" : "basic",
        "height" : 250.0,
        "line-spacing" : 0.0,
        "width" : 711.446031960943,
        "word-wrap" : 1.0,
        "horizontal-alignment" : "center",
        "resize-behavior" : "resizeText",
        "text" : "Live Coding",
        "vertical-alignment" : "center",
        "font" : {
        "color-blue" : 1.0,
        "color-green" : 1.0,
        "color-red" : 1.0,
        "size" : 96.0,
        "tracking" : 0.0,
        "name" : "Montserrat",
        "weight" : "Regular"
        },
        "textAttributes" : {
        "type" : "textAttributeList",
        "keyframes" : [
        {
        "endTime" : 0,
        "time" : 0,
        "value" : [{"name":"fontItalic","rangeEnd":11,"rangeStart":0,"value":0,"valueType":"int"},{"name":"strikethrough","rangeEnd":11,"rangeStart":0,"value":0,"valueType":"int"},{"name":"fontSize","rangeEnd":11,"rangeStart":0,"value":144,"valueType":"double"},{"name":"kerning","rangeEnd":11,"rangeStart":0,"value":0,"valueType":"double"},{"name":"fgColor","rangeEnd":11,"rangeStart":0,"value":"(143,208,1,255)","valueType":"color"},{"name":"fontWeight","rangeEnd":11,"rangeStart":0,"value":700,"valueType":"int"},{"name":"underline","rangeEnd":11,"rangeStart":0,"value":0,"valueType":"int"},{"name":"fontName","rangeEnd":11,"rangeStart":0,"value":"DIN Alternate","valueType":"string"}],
        "duration" : 0
        }
        ]
        }
        },
        "attributes" : {
        "autoRotateText" : true
        },
        "parameters" : {
        "translation0" : -20.8159788055276,
        "translation1" : 99.6081815411701,
        "sourceCrop0" : 0.0,
        "sourceCrop1" : 0.0,
        "sourceCrop2" : 0.0,
        "sourceCrop3" : 0.0,
        "geometryCrop0" : 0.0,
        "geometryCrop1" : 0.0,
        "geometryCrop2" : 0.0,
        "geometryCrop3" : 0.0
        },
        "effects" : [

        ],
        "start" : 80,
        "duration" : 36,
        "mediaStart" : 18,
        "mediaDuration" : 36,
        "scalar" : 1,
        "metadata" : {
        "AppliedThemeId" : "",
        "clipSpeedAttribute" : false,
        "default-scale" : "1",
        "default-text" : "{\\rtf1\\ansi\\ansicpg1252\\cocoartf2580\n\\cocoatextscaling0\\cocoaplatform0{\\fonttbl\\f0\\fnil\\fcharset0 Montserrat-Regular;}\n{\\colortbl;\\red255\\green255\\blue255;\\red255\\green255\\blue255;}\n{\\*\\expandedcolortbl;;\\cssrgb\\c100000\\c100000\\c100000;}\n\\pard\\tx560\\tx1120\\tx1680\\tx2240\\tx2800\\tx3360\\tx3920\\tx4480\\tx5040\\tx5600\\tx6160\\tx6720\\pardirnatural\\qc\\partightenfactor0\n\n\\f0\\fs192 \\cf2 \\expnd0\\expndtw0\\kerning0\n\\ulnone ABC}",
        "effectApplied" : "none",
        "lockAspectRatio" : true
        },
        "animationTracks" : {

        }
        }
        ],
        "ident" : "",
        "audioMuted" : false,
        "videoHidden" : false,
        "magnetic" : false,
        "matte" : 0,
        "solo" : false
        }
        ],
        "attributes" : {
        "ident" : "Gruppe 1",
        "widthAttr" : 1920.0,
        "heightAttr" : 1080.0,
        "gain" : 1.0,
        "mixToMono" : false
        },
        "effects" : [

        ],
        "start" : ${scene.startFrame?c},
        "duration" : ${scene.numberOfFrames?c},
        "mediaStart" : 0.0,
        "mediaDuration" : 116.0,
        "scalar" : 1,
        "metadata" : {
        "clipSpeedAttribute" : false,
        "effectApplied" : "none",
        "isOpen" : false,
        "lockAspectRatio" : true
        },
        "animationTracks" : {

        }
        }

        <#sep>,
    </#if>

    <#if scene.liveCoding>
        {
        <#assign nextId += 1>
        "id" : ${nextId?c},
        "_type" : "UnifiedMedia",
        "video" :
        {
        <#assign nextId += 1>
        "id" : ${nextId?c},
        "_type" : "VMFile",
        "src" : ${scene.videoSrcId?c},
        "trackNumber" : 0,
        "attributes" : {
        "ident" : "${scene.videoShortName}"
        },
        "parameters" : {
        "translation0" : 0.0,
        "translation1" : 0.0,
        "sourceCrop0" : 0.0,
        "sourceCrop1" : 0.0,
        "sourceCrop2" : 0.0,
        "sourceCrop3" : 0.0,
        "geometryCrop0" : 0.0,
        "geometryCrop1" : 0.0,
        "geometryCrop2" : 0.0,
        "geometryCrop3" : 0.0
        },
        "effects" : [
        ],
        "start" : ${scene.startFrame?c},
        "duration" : ${scene.numberOfFrames?c},
        "mediaStart" : 0,
        "mediaDuration" : ${scene.numberOfFrames?c},
        "scalar" : 1,
        "animationTracks" : {

        }
        },
        "audio" :
        {
        <#assign nextId += 1>
        "id" : ${nextId?c},
        "_type" : "AMFile",
        "src" : ${scene.videoSrcId?c},
        "trackNumber" : 1,
        "attributes" : {
        "ident" : "",
        "gain" : 1.0,
        "mixToMono" : false
        },
        "channelNumber" : "0,1",
        "effects" : [

        ],
        "start" : ${scene.startFrame?c},
        "duration" : ${scene.numberOfFrames?c},
        "mediaStart" : 0,
        "mediaDuration" : ${scene.numberOfFrames?c},
        "scalar" : 1,
        "animationTracks" : {

        }
        },
        "start" : ${scene.startFrame?c},
        "duration" : ${scene.numberOfFrames?c},
        "mediaStart" : 0,
        "mediaDuration" : ${scene.numberOfFrames?c},
        "scalar" : 1,
        "metadata" : {
        "clipSpeedAttribute" : false,
        "default-scale" : "1",
        "effectApplied" : "none",
        "lockAspectRatio" : true
        }
        }
        <#sep>,
    </#if>

    <#if scene.liveCodingOutro>

        {
        <#assign nextId += 1>
        "id" : ${nextId?c},
        "_type" : "Group",
        "parameters" : {
        "scale0" : {
        "type" : "double",
        "defaultValue" : 1.5,
        "interp" : "eioe"
        },
        "scale1" : {
        "type" : "double",
        "defaultValue" : 1.5,
        "interp" : "eioe"
        },
        "sourceCrop0" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "sourceCrop1" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "sourceCrop2" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "sourceCrop3" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop0" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop1" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop2" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop3" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "volume" : 1.0
        },
        "tracks" : [
        {
        "trackIndex" : 0,
        "medias" : [
        {
        <#assign nextId += 1>
        "id" : ${nextId?c},
        "_type" : "VMFile",
        "src" : 906,
        "trackNumber" : 0,
        "attributes" : {
        "ident" : "laptopopen"
        },
        "parameters" : {
        "translation1" : {
        "type" : "double",
        "defaultValue" : 2.1316282072803e-14,
        "interp" : "eioe"
        },
        "scale0" : {
        "type" : "double",
        "defaultValue" : 0.666666666666667,
        "interp" : "eioe"
        },
        "scale1" : {
        "type" : "double",
        "defaultValue" : 0.666666666666667,
        "interp" : "eioe"
        },
        "sourceCrop0" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "sourceCrop1" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "sourceCrop2" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "sourceCrop3" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop0" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop1" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop2" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop3" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        }
        },
        "effects" : [

        ],
        "start" : 0,
        "duration" : 71,
        "mediaStart" : 134,
        "mediaDuration" : 71,
        "scalar" : 1,
        "metadata" : {
        "clipSpeedAttribute" : false,
        "default-scale" : "0.666667",
        "effectApplied" : "none",
        "lockAspectRatio" : true
        },
        "animationTracks" : {

        }
        }
        ],
        "ident" : "",
        "audioMuted" : false,
        "videoHidden" : false,
        "magnetic" : false,
        "matte" : 0,
        "solo" : false,
        "metadata" : {
        "IsLocked" : "False",
        "trackHeight" : "54"
        }
        },
        {
        "trackIndex" : 1,
        "medias" : [
        {
        <#assign nextId += 1>
        "id" : ${nextId?c},
        "_type" : "Callout",
        "def" : {
        "kind" : "remix",
        "shape" : "text-rectangle",
        "style" : "abstract",
        "fill-color-blue" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr"
        },
        "fill-color-green" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr"
        },
        "fill-color-opacity" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr"
        },
        "fill-color-red" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr"
        },
        "height" : {
        "type" : "double",
        "defaultValue" : 226.0,
        "interp" : "linr"
        },
        "line-spacing" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "linr"
        },
        "stroke-color-blue" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr"
        },
        "stroke-color-green" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr"
        },
        "stroke-color-opacity" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr"
        },
        "stroke-color-red" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr"
        },
        "stroke-width" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "linr"
        },
        "tail-x" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "linr"
        },
        "tail-y" : {
        "type" : "double",
        "defaultValue" : -20.0,
        "interp" : "linr"
        },
        "width" : {
        "type" : "double",
        "defaultValue" : 527.333333333333,
        "interp" : "linr"
        },
        "word-wrap" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr"
        },
        "fill-style" : "solid",
        "horizontal-alignment" : "center",
        "resize-behavior" : "resizeText",
        "stroke-style" : "solid",
        "text" : "Live Coding",
        "vertical-alignment" : "center",
        "font" : {
        "color-blue" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr"
        },
        "color-green" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr"
        },
        "color-opacity" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr"
        },
        "color-red" : {
        "type" : "double",
        "defaultValue" : 1.0,
        "interp" : "linr"
        },
        "size" : {
        "type" : "double",
        "defaultValue" : 64.0,
        "interp" : "linr"
        },
        "tracking" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "linr"
        },
        "name" : "DIN Alternate",
        "weight" : "Regular"
        },
        "textAttributes" : {
        "type" : "textAttributeList",
        "keyframes" : [
        {
        "endTime" : 0,
        "time" : 0,
        "value" : [{"name":"fontItalic","rangeEnd":11,"rangeStart":0,"value":0,"valueType":"int"},{"name":"fontWeight","rangeEnd":11,"rangeStart":0,"value":700,"valueType":"int"},{"name":"fontSize","rangeEnd":11,"rangeStart":0,"value":96,"valueType":"double"},{"name":"underline","rangeEnd":11,"rangeStart":0,"value":0,"valueType":"int"},{"name":"fgColor","rangeEnd":11,"rangeStart":0,"value":"(143,208,1,255)","valueType":"color"},{"name":"fontName","rangeEnd":11,"rangeStart":0,"value":"DIN Alternate","valueType":"string"},{"name":"strikethrough","rangeEnd":11,"rangeStart":0,"value":0,"valueType":"int"},{"name":"kerning","rangeEnd":11,"rangeStart":0,"value":0,"valueType":"double"}],
        "duration" : 0
        }
        ]
        }
        },
        "attributes" : {
        "autoRotateText" : true
        },
        "parameters" : {
        "translation0" : {
        "type" : "double",
        "defaultValue" : -18.5217903415784,
        "interp" : "eioe"
        },
        "translation1" : {
        "type" : "double",
        "defaultValue" : 79.8716136631331,
        "interp" : "eioe"
        },
        "sourceCrop0" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "sourceCrop1" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "sourceCrop2" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "sourceCrop3" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop0" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop1" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop2" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        },
        "geometryCrop3" : {
        "type" : "double",
        "defaultValue" : 0.0,
        "interp" : "eioe"
        }
        },
        "effects" : [

        ],
        "start" : 0,
        "duration" : 5,
        "mediaStart" : 0,
        "mediaDuration" : 5,
        "scalar" : 1,
        "metadata" : {
        "AppliedThemeId" : "44c5bf05-1e07-4fe8-8b5a-9be76835f57b",
        "clipSpeedAttribute" : false,
        "default-callout-fill-color" : "(143,209,1,255)",
        "default-scale" : "1",
        "default-text" : "{\\rtf1\\ansi\\ansicpg1252\\cocoartf2512\n\\cocoatextscaling0\\cocoaplatform0{\\fonttbl\\f0\\fnil\\fcharset0 DINAlternate-Bold;}\n{\\colortbl;\\red255\\green255\\blue255;\\red255\\green255\\blue255;}\n{\\*\\expandedcolortbl;;\\cssrgb\\c100000\\c100000\\c100000;}\n\\pard\\tx560\\tx1120\\tx1680\\tx2240\\tx2800\\tx3360\\tx3920\\tx4480\\tx5040\\tx5600\\tx6160\\tx6720\\pardirnatural\\qc\\partightenfactor0\n\n\\f0\\b\\fs128 \\cf2 \\expnd0\\expndtw0\\kerning0\n\\ulnone Live Coding}",
        "effectApplied" : "none",
        "lockAspectRatio" : true
        },
        "animationTracks" : {

        }
        }
        ],
        "ident" : "",
        "audioMuted" : false,
        "videoHidden" : false,
        "magnetic" : false,
        "matte" : 0,
        "solo" : false,
        "metadata" : {
        "IsLocked" : "False",
        "trackHeight" : "54"
        }
        }
        ],
        "attributes" : {
        "ident" : "Live Coding Ende",
        "widthAttr" : 1280.0,
        "heightAttr" : 720.0,
        "gain" : 1.0,
        "mixToMono" : false
        },
        "effects" : [

        ],
        "start" : ${scene.startFrame?c},
        "duration" : ${scene.numberOfFrames?c},
        "mediaStart" : 0.0,
        "mediaDuration" : 71.0,
        "scalar" : 1,
        "metadata" : {
        "clipSpeedAttribute" : false,
        "effectApplied" : "none",
        "isOpen" : false,
        "lockAspectRatio" : true
        },
        "animationTracks" : {

        }
        }


        <#sep>,
    </#if>

    <#if scene.literature>
        {
        <#assign nextId += 1>
        "id" : ${nextId?c},
        "_type" : "AMFile",
        "src" : 905,
        "trackNumber" : 0,
        "attributes" : {
        "ident" : "Musik zur Abschlussfolie",
        "gain" : 1.0,
        "mixToMono" : false
        },
        "channelNumber" : "0,1",
        "parameters" : {
        "volume" : {
        "type" : "double",
        "keyframes" : [
        {
        "endTime" : 0,
        "time" : 0,
        "value" : 0.0,
        "duration" : 0
        },
        {
        "endTime" : 30,
        "time" : 30,
        "value" : 1.03285361842105,
        "duration" : 0
        },
        {
        "endTime" : 171,
        "time" : 171,
        "value" : 1.0,
        "duration" : 0
        },
        {
        "endTime" : 297,
        "time" : 297,
        "value" : 0.0,
        "duration" : 0
        }
        ]
        }
        },
        "effects" : [

        ],
        "start" : ${scene.startFrame?c},
        "duration" : 297,
        "mediaStart" : 0,
        "mediaDuration" : 297,
        "scalar" : 1,
        "metadata" : {
        "clipSpeedAttribute" : false,
        "effectApplied" : "none"
        },
        "animationTracks" : {

        }
        }
        <#sep>,
    </#if>
</#list>
]
},
{
"trackIndex" : 2,
"medias" : [

<#list scenes?filter( s -> s.downloadButton) as scene>
    <#assign nextId += 1>
    {
    "id" : ${nextId?c},
    "_type" : "Callout",
    "def" : {
    "kind" : "remix",
    "shape" : "text-rectangle",
    "style" : "abstract",
    "fill-color-blue" : 0.345098039215686,
    "fill-color-green" : 0.0588235294117647,
    "fill-color-opacity" : 1.0,
    "fill-color-red" : 0.356862745098039,
    "height" : 111.684334511186,
    "line-spacing" : 0.0,
    "stroke-color-blue" : 1.0,
    "stroke-color-green" : 1.0,
    "stroke-color-opacity" : 1.0,
    "stroke-color-red" : 1.0,
    "stroke-width" : 0.0,
    "tail-x" : -1.72555948174343,
    "tail-y" : -39.1578327444071,
    "width" : 353.451118963487,
    "word-wrap" : 1.0,
    "fill-style" : "solid",
    "horizontal-alignment" : "center",
    "resize-behavior" : "resizeText",
    "stroke-style" : "solid",
    "text" : "Download\nSource Code",
    "vertical-alignment" : "center",
    "font" : {
    "color-blue" : 0.890196078431372,
    "color-green" : 0.870588235294118,
    "color-opacity" : 1.0,
    "color-red" : 0.847058823529412,
    "size" : 64.0,
    "tracking" : 0.0,
    "name" : "Montserrat",
    "weight" : "Regular"
    },
    "textAttributes" : {
    "type" : "textAttributeList",
    "keyframes" : [
    {
    "endTime" : 0,
    "time" : 0,
    "value" : [{"name":"fontItalic","rangeEnd":20,"rangeStart":0,"value":0,"valueType":"int"},{"name":"fontName","rangeEnd":20,"rangeStart":0,"value":"DIN Alternate","valueType":"string"},{"name":"underline","rangeEnd":20,"rangeStart":0,"value":0,"valueType":"int"},{"name":"fontWeight","rangeEnd":20,"rangeStart":0,"value":700,"valueType":"int"},{"name":"fgColor","rangeEnd":20,"rangeStart":0,"value":"(255,255,255,255)","valueType":"color"},{"name":"strikethrough","rangeEnd":20,"rangeStart":0,"value":0,"valueType":"int"},{"name":"fontSize","rangeEnd":20,"rangeStart":0,"value":48,"valueType":"double"},{"name":"kerning","rangeEnd":20,"rangeStart":0,"value":0,"valueType":"double"}],
    "duration" : 0
    }
    ]
    }
    },
    "attributes" : {
    "autoRotateText" : true,
    "hotspot" : {
    "action" : 2,
    "gotoTime" : 0,
    "pauseAtEnd" : false,
    "url" : "${scene.repositoryUrl}",
    "openURLInNewWindow" : true,
    "markerParametricId" : 0,
    "markerTime" : -1,
    "lastMarkerGlobalTime" : 0
    }                    },
    "parameters" : {
    "translation0" : -672.0,
    "translation1" : -386.0,
    "sourceCrop0" : 0.0,
    "sourceCrop1" : 0.0,
    "sourceCrop2" : 0.0,
    "sourceCrop3" : 0.0,
    "geometryCrop0" : 0.0,
    "geometryCrop1" : 0.0,
    "geometryCrop2" : 0.0,
    "geometryCrop3" : 0.0
    },
    "effects" : [

    ],
    "start" : ${(scene.startFrame + 100)?c},
    "duration" : 150,
    "mediaStart" : 0,
    "mediaDuration" : 150,
    "scalar" : 1,
    "metadata" : {
    "AppliedThemeId" : "44c5bf05-1e07-4fe8-8b5a-9be76835f57b",
    "clipSpeedAttribute" : false,
    "default-callout-fill-color" : "(115,153,34,255)",
    "default-scale" : "1",
    "default-text" : "{\\rtf1\\ansi\\ansicpg1252\\cocoartf2512\n\\cocoatextscaling0\\cocoaplatform0{\\fonttbl\\f0\\fnil\\fcharset0 DINAlternate-Bold;}\n{\\colortbl;\\red255\\green255\\blue255;\\red255\\green255\\blue255;}\n{\\*\\expandedcolortbl;;\\cssrgb\\c100000\\c100000\\c100000;}\n\\pard\\tx560\\tx1120\\tx1680\\tx2240\\tx2800\\tx3360\\tx3920\\tx4480\\tx5040\\tx5600\\tx6160\\tx6720\\pardirnatural\\qc\\partightenfactor0\n\n\\f0\\b\\fs128 \\cf2 \\expnd0\\expndtw0\\kerning0\n\\ulnone Download\\\nSource Code}",
    "effectApplied" : "Hot Spot",
    "lockAspectRatio" : true
    },
    "animationTracks" : {

    }
    }

    <#sep>,
</#list>

<#if scenes?filter( s -> s.downloadButton )?size != 0 && scenes?filter( s -> s.continueButton )?size != 0>
    ,
</#if>

<#list scenes?filter( s -> s.continueButton) as scene>
    <#assign nextId += 1>
    {
    "id" : ${nextId?c},
    "_type" : "Callout",
    "def" : {
    "kind" : "remix",
    "shape" : "text-rectangle",
    "style" : "abstract",
    "fill-color-blue" : 0.345098039215686,
    "fill-color-green" : 0.0588235294117647,
    "fill-color-opacity" : 1.0,
    "fill-color-red" : 0.356862745098039,
    "height" : 111.684334511186,
    "line-spacing" : 0.0,
    "stroke-color-blue" : 1.0,
    "stroke-color-green" : 1.0,
    "stroke-color-opacity" : 1.0,
    "stroke-color-red" : 1.0,
    "stroke-width" : 0.0,
    "tail-x" : -1.72555948174343,
    "tail-y" : -39.1578327444071,
    "width" : 353.451118963487,
    "word-wrap" : 1.0,
    "fill-style" : "solid",
    "horizontal-alignment" : "center",
    "resize-behavior" : "resizeText",
    "stroke-style" : "solid",
    "text" : "Continue",
    "vertical-alignment" : "center",
    "font" : {
    "color-blue" : 0.890196078431372,
    "color-green" : 0.870588235294118,
    "color-opacity" : 1.0,
    "color-red" : 0.847058823529412,
    "size" : 64.0,
    "tracking" : 0.0,
    "name" : "Montserrat",
    "weight" : "Regular"
    },
    "textAttributes" : {
    "type" : "textAttributeList",
    "keyframes" : [
    {
    "endTime" : 0,
    "time" : 0,
    "value" : [{"name":"fontItalic","rangeEnd":20,"rangeStart":0,"value":0,"valueType":"int"},{"name":"fontName","rangeEnd":20,"rangeStart":0,"value":"DIN Alternate","valueType":"string"},{"name":"underline","rangeEnd":20,"rangeStart":0,"value":0,"valueType":"int"},{"name":"fontWeight","rangeEnd":20,"rangeStart":0,"value":700,"valueType":"int"},{"name":"fgColor","rangeEnd":20,"rangeStart":0,"value":"(255,255,255,255)","valueType":"color"},{"name":"strikethrough","rangeEnd":20,"rangeStart":0,"value":0,"valueType":"int"},{"name":"fontSize","rangeEnd":20,"rangeStart":0,"value":48,"valueType":"double"},{"name":"kerning","rangeEnd":20,"rangeStart":0,"value":0,"valueType":"double"}],
    "duration" : 0
    }
    ]
    }
    },
    "attributes" : {
    "autoRotateText" : true,
    "hotspot" : {
    "action" : 0,
    "gotoTime" : 0,
    "pauseAtEnd" : true,
    "url" : "https://bitbucket.student.fiw.fhws.de:8443",
    "openURLInNewWindow" : true,
    "markerParametricId" : 0,
    "markerTime" : -1,
    "lastMarkerGlobalTime" : 0
    }                    },
    "parameters" : {
    "translation0" : -32.0,
    "translation1" : -386.0,
    "sourceCrop0" : 0.0,
    "sourceCrop1" : 0.0,
    "sourceCrop2" : 0.0,
    "sourceCrop3" : 0.0,
    "geometryCrop0" : 0.0,
    "geometryCrop1" : 0.0,
    "geometryCrop2" : 0.0,
    "geometryCrop3" : 0.0
    },
    "effects" : [

    ],
    "start" : ${(scene.startFrame + scene.numberOfFrames - 150)?c},
    "duration" : 150,
    "mediaStart" : 0,
    "mediaDuration" : 150,
    "scalar" : 1,
    "metadata" : {
    "AppliedThemeId" : "44c5bf05-1e07-4fe8-8b5a-9be76835f57b",
    "clipSpeedAttribute" : false,
    "default-callout-fill-color" : "(115,153,34,255)",
    "default-scale" : "1",
    "default-text" : "{\\rtf1\\ansi\\ansicpg1252\\cocoartf2512\n\\cocoatextscaling0\\cocoaplatform0{\\fonttbl\\f0\\fnil\\fcharset0 DINAlternate-Bold;}\n{\\colortbl;\\red255\\green255\\blue255;\\red255\\green255\\blue255;}\n{\\*\\expandedcolortbl;;\\cssrgb\\c100000\\c100000\\c100000;}\n\\pard\\tx560\\tx1120\\tx1680\\tx2240\\tx2800\\tx3360\\tx3920\\tx4480\\tx5040\\tx5600\\tx6160\\tx6720\\pardirnatural\\qc\\partightenfactor0\n\n\\f0\\b\\fs128 \\cf2 \\expnd0\\expndtw0\\kerning0\n\\ulnone Download\\\nSource Code}",
    "effectApplied" : "Hot Spot",
    "lockAspectRatio" : true
    },
    "animationTracks" : {

    }
    }

    <#sep>,
</#list>

<#if scenes?filter( s -> s.continueButton )?size != 0 && scenes?filter( s -> s.showLecturerName )?size != 0>
    ,
</#if>

<#list scenes?filter( s -> s.showLecturerName) as scene>
    <#assign nextId += 1>

    {
    "id" : ${nextId?c},
    "_type" : "Callout",
    "def" : {
    "kind" : "remix",
    "shape" : "text-rectangle",
    "style" : "basic",
    "fill-color-blue" : 0.00392156862745098,
    "fill-color-green" : 0.819607843137255,
    "fill-color-opacity" : 1.0,
    "fill-color-red" : 0.56078431372549,
    "height" : 150.0,
    "line-spacing" : 0.0,
    "stroke-color-blue" : 0.364705882352941,
    "stroke-color-green" : 0.286274509803922,
    "stroke-color-opacity" : 1.0,
    "stroke-color-red" : 0.211764705882353,
    "stroke-width" : 6.0,
    "tail-x" : -412.637321074262,
    "tail-y" : -20.0,
    "width" : 1000.274642148524,
    "word-wrap" : 1.0,
    "fill-style" : "solid",
    "horizontal-alignment" : "center",
    "resize-behavior" : "resizeText",
    "stroke-style" : "solid",
    "text" : "Prof. Dr. Peter Braun",
    "vertical-alignment" : "center",
    "font" : {
    "color-blue" : 0.266666666666667,
    "color-green" : 0.231372549019608,
    "color-opacity" : 1.0,
    "color-red" : 0.184313725490196,
    "size" : 64.0,
    "tracking" : 0.0,
    "name" : "Montserrat",
    "weight" : "Regular"
    },
    "textAttributes" : {
    "type" : "textAttributeList",
    "keyframes" : [
    {
    "endTime" : 0,
    "time" : 0,
    "value" : [{"name":"fontWeight","rangeEnd":30,"rangeStart":0,"value":400,"valueType":"int"},{"name":"fontName","rangeEnd":30,"rangeStart":0,"value":"Roboto","valueType":"string"},{"name":"fgColor","rangeEnd":30,"rangeStart":0,"value":"(254,254,255,255)","valueType":"color"},{"name":"fontSize","rangeEnd":30,"rangeStart":0,"value":64,"valueType":"double"},{"name":"fontItalic","rangeEnd":30,"rangeStart":0,"value":0,"valueType":"int"},{"name":"underline","rangeEnd":30,"rangeStart":0,"value":0,"valueType":"int"},{"name":"kerning","rangeEnd":30,"rangeStart":0,"value":0,"valueType":"double"},{"name":"strikethrough","rangeEnd":30,"rangeStart":0,"value":0,"valueType":"int"}],
    "duration" : 0
    }
    ]
    }
    },
    "attributes" : {
    "autoRotateText" : true
    },
    "parameters" : {
    "translation0" : -393.247829861112,
    "translation1" : -405.523384353742,
    "sourceCrop0" : 0.0,
    "sourceCrop1" : 0.0,
    "sourceCrop2" : 0.0,
    "sourceCrop3" : 0.0,
    "geometryCrop0" : 0.0,
    "geometryCrop1" : 0.0,
    "geometryCrop2" : 0.0,
    "geometryCrop3" : 0.0
    },
    "effects" : [

    ],
    "start" : ${(scene.startFrame + 30 )?c},
    "duration" : 150,
    "mediaStart" : 0,
    "mediaDuration" : 150,
    "scalar" : 1,
    "metadata" : {
    "AppliedThemeId" : "",
    "clipSpeedAttribute" : false,
    "default-callout-fill-color" : "(255,255,255,255)",
    "default-callout-stroke-color" : "(5,175,143,255)",
    "default-callout-stroke-width" : "2",
    "default-scale" : "1",
    "default-text" : "{\\rtf1\\ansi\\ansicpg1252\\cocoartf2580\n\\cocoatextscaling0\\cocoaplatform0{\\fonttbl\\f0\\fnil\\fcharset0 Montserrat-Regular;}\n{\\colortbl;\\red255\\green255\\blue255;\\red36\\green45\\blue52;}\n{\\*\\expandedcolortbl;;\\cssrgb\\c18431\\c23137\\c26667;}\n\\pard\\tx560\\tx1120\\tx1680\\tx2240\\tx2800\\tx3360\\tx3920\\tx4480\\tx5040\\tx5600\\tx6160\\tx6720\\pardirnatural\\qc\\partightenfactor0\n\n\\f0\\fs128 \\cf2 \\expnd0\\expndtw0\\kerning0\n\\ulnone Tobias Fertig, M.Sc.}",
    "effectApplied" : "none"
    },
    "animationTracks" : {

    }
    }


</#list>


]
}
]
}
}
]
},
"trackAttributes" : [
{
"ident" : "",
"audioMuted" : false,
"videoHidden" : false,
"magnetic" : false,
"matte" : 0,
"solo" : false,
"metadata" : {
"IsLocked" : "False",
"trackHeight" : "54"
}
},
{
"ident" : "",
"audioMuted" : false,
"videoHidden" : false,
"magnetic" : false,
"matte" : 0,
"solo" : false,
"metadata" : {
"IsLocked" : "False",
"trackHeight" : "54"
}
}
],
"parameters" : {
"toc" : {
"type" : "string",
"keyframes" : [
{
"endTime" : 127,
"time" : 127,
"value" : "Title Page",
"duration" : 0
},
<#list scenes?filter( s -> s.marker != 'Live Coding End' && s.marker?contains('Screencast') == false ) as scene>
    {
    "endTime" : ${scene.startFrame?c},
    "time" : ${scene.startFrame?c},
    "value" : "${scene.marker}",
    "duration" : 0
    }
    <#sep>,
</#list>
]
}

<#if hasQuiz>
    ,

    "quiz" : {
    "type" : "string",
    "keyframes" : [

    <#list scenes?filter( s -> s.hasQuiz) as scene>
        {
        "endTime" : ${scene.quiz.startFrame?c},
        "time" : ${scene.quiz.startFrame?c},
        "value" : "${scene.quiz.getCode()}",
        "duration" : 0
        }
        <#sep>,
    </#list>

    ]

    }
</#if>

},
"captionAttributes" : {
"enabled" : true,
"fontName" : "Arial",
"fontSize" : 32,
"backgroundColor" : [ 0, 0, 0, 204],
"foregroundColor" : [ 255, 255, 255, 255],
"lang" : "de",
"alignment" : 0,
"defaultFontSize" : true,
"opacity" : 0.5,
"backgroundEnabled" : true,
"backgroundOnlyAroundText" : true
},
"gain" : 1.0,
"legacyAttenuateAudioMix" : false,
"backgroundColor" : [ 0, 0, 0, 255]
},
"metadata" : {
"activeThemeId" : "e59eeb42-ccf0-4a36-bdf9-e630fdab686d",
"audiateSessionId" : "",
"autoSavePath" : "/Users/braunpet/Library/Application Support/TechSmith/Camtasia
2020/AutoSave/5C5C29E4-9270-425C-B9DF-55DE67149948-36506-0000183DE11DA471.tscproj",
"firstMedia" : true,
"hasNotifiedAboutHFRMedia" : true
}
}
