package de.fhws.applab.camtasia

import de.fhws.applab.camtasia.converter.ConvertSceneDescriptionToCamtasiaProject
import de.fhws.applab.camtasia.csvparser.AddLivecodingIntroOutro
import de.fhws.applab.camtasia.csvparser.SceneCsvParser
import de.fhws.applab.camtasia.generator.CamtasiaProjectGenerator
import org.junit.Ignore
import org.junit.Test

class TestConverter
{
    @Test
    @Ignore
    fun testConvert()
    {
        val scenes = SceneCsvParser().readFile("/Users/braunpet/tmp/tests_ffmpeg/script.csv")
        val allScenes = AddLivecodingIntroOutro().addScenes(scenes)
        val project = ConvertSceneDescriptionToCamtasiaProject(allScenes).convert()
        project.projectName = "Demo"
        project.initialize()
        val camtasiaProject = CamtasiaProjectGenerator("camtasia", project)
        camtasiaProject.generate()
    }
}
