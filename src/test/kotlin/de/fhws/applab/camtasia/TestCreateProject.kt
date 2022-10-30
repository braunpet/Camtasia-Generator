package de.fhws.applab.camtasia

import org.junit.Test

class TestCreateProject
{
    @Test
    fun test()
    {
        CreateCamtasiaProject(
            "Unit01Test",
            "/Users/braunpet/Library/Mobile Documents/com~apple~CloudDocs/SmartVHBBS19Neu/Unit01"
        ).run()
    }
}
