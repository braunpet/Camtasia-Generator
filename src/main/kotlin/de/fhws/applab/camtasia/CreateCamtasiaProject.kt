package de.fhws.applab.camtasia

import de.fhws.applab.camtasia.converter.ConvertSceneDescriptionToCamtasiaProject
import de.fhws.applab.camtasia.csvparser.AddLivecodingIntroOutro
import de.fhws.applab.camtasia.csvparser.SceneCsvParser
import de.fhws.applab.camtasia.generator.CamtasiaProjectGenerator

class CreateCamtasiaProject(private val unitName: String, private val pathToUnit: String)
{
    fun run()
    {
        val scenes = SceneCsvParser().readFile("${pathToUnit}/camtasia/scenes.csv")
        val allScenes = AddLivecodingIntroOutro().addScenes(scenes)
        val project = ConvertSceneDescriptionToCamtasiaProject(allScenes).convert()
        project.projectName = unitName
        project.initialize()
        val camtasiaProject = CamtasiaProjectGenerator("${pathToUnit}/camtasia", project)
        camtasiaProject.generate()
    }
}
