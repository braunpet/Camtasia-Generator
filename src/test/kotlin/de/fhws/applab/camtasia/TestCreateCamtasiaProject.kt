package de.fhws.applab.camtasia

import de.fhws.applab.camtasia.generator.CamtasiaProjectGenerator
import de.fhws.applab.camtasia.models.CamtasiaProject
import de.fhws.applab.camtasia.models.Scene
import org.junit.Test

class TestCreateCamtasiaProject
{
    @Test
    fun test_create_Project()
    {
        val camtasiaProject = CamtasiaProject()
        camtasiaProject.projectName = "Demo"

        val scene1 = Scene()
        scene1.videoSrcId = 1
        scene1.slideSrcId = 2
        scene1.rangeMax = 120167
        scene1.startFrame = 0
        scene1.numberOfFrames = 3603
        scene1.videoFullFileName = "/Users/braunpet/tmp/tests_ffmpeg/00018_cut.mp4"
        scene1.videoShortName = "00018"
        scene1.slideFullFileName = "/Users/braunpet/tmp/tests_ffmpeg/Page_2.png"
        scene1.slideShortName = "Page_2"
        camtasiaProject.scenes.add(scene1)

        val scene2 = Scene()
        scene2.videoSrcId = 3
        scene2.slideSrcId = 4
        scene2.rangeMax = 104900
        scene2.startFrame = 3603
        scene2.numberOfFrames = 3147
        scene2.videoFullFileName = "/Users/braunpet/tmp/tests_ffmpeg/00020_cut.mp4"
        scene2.slideFullFileName = "/Users/braunpet/tmp/tests_ffmpeg/Page_3.png"
        scene2.slideShortName = "Page_3"
        scene2.videoShortName = "00020"
        camtasiaProject.scenes.add(scene2)

        val generator = CamtasiaProjectGenerator("camtasia", camtasiaProject)
        generator.generate()
    }
}
