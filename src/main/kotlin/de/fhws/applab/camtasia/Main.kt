package de.fhws.applab.camtasia

fun main(args: Array<String>)
{
    val unitName = args[0]
    val pathToUnit = args[1]

    CreateCamtasiaProject(unitName, pathToUnit).run()
}
