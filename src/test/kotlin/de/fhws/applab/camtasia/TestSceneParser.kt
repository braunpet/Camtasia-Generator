package de.fhws.applab.camtasia

import de.fhws.applab.camtasia.csvparser.SceneCsvParser
import org.junit.Test

class TestSceneParser
{
    @Test
    fun test_read_script()
    {
        val scenes = SceneCsvParser().readFile("/Users/braunpet/tmp/tests_ffmpeg/script.csv")
        println(scenes)
    }
}
