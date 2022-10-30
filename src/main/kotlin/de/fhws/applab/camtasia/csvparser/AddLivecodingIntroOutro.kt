package de.fhws.applab.camtasia.csvparser

import de.fhws.applab.camtasia.models.SceneDescription

class AddLivecodingIntroOutro
{
    fun addScenes(scenes: List<SceneDescription>): List<SceneDescription>
    {
        val returnValue = mutableListOf<SceneDescription>()

        for (scene in scenes)
        {
            if (scene.slideType == "C")
            {
                val intro = SceneDescription()

                intro.marker = "Live Coding Start"
                intro.numberOfFrames = 116
                intro.slideType = "A"

                val outro = SceneDescription()

                outro.marker = "Live Coding End"
                outro.numberOfFrames = 71
                outro.slideType = "Z"

                returnValue.add(intro)
                returnValue.add(scene)
                returnValue.add(outro)

            } else
            {
                returnValue.add(scene)
            }
        }

        return returnValue
    }
}
