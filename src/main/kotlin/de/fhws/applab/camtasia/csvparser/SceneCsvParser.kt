package de.fhws.applab.camtasia.csvparser

import com.github.doyaaaaaken.kotlincsv.dsl.csvReader
import de.fhws.applab.camtasia.models.SceneDescription

// slide;video;frames;duration;slide_type;button_type;url
// /Users/braunpet/tmp/tests_ffmpeg/Page_1.png;/Users/braunpet/tmp/tests_ffmpeg/00000_cut.mp4;2597;0:01:26.567000;TNCL;NDC;https://bitbucket.student.fiw.fhws.de:8443

class SceneCsvParser
{
    fun readFile(fileName: String): List<SceneDescription>
    {
        val scenes = mutableListOf<SceneDescription>()
        val reader = csvReader { delimiter = ';' }

        reader.open(fileName) {
            readAllWithHeaderAsSequence().forEach { row: Map<String, String> ->
                val scene = SceneDescription()
                scene.slideFullFileName = row["slide"]!!
                scene.videoFullFileName = row["video"]!!
                scene.numberOfFrames = numberOfFrames(row["frames"]!!)
                scene.duration = row["duration"]!!
                scene.slideType = row["slide_type(N=normal,C=screencast)"]!!
                scene.buttonType = row["button_type(d=download,c=continue)"]!!
                scene.repositoryUrl = row["url"]!!
                scene.marker = row["marker"]!!
                scene.quiz = row["quiz"]!!
                scenes.add(scene)
            }
        }

        return scenes
    }

    private fun numberOfFrames(frames: String): Int
    {
        return if (frames.isEmpty()) 0 else frames.toInt()

    }
}
