package de.fhws.applab.camtasia.generator

import de.fhws.applab.camtasia.artefacts.CamtasiaArtefact
import de.fhws.applab.camtasia.models.CamtasiaProject
import de.fhws.applab.gemara.towerbridge.generator.IGenerator

class CamtasiaProjectGenerator(val rootPath: String, private val model: CamtasiaProject) : IGenerator<CamtasiaProject>
{
    override fun generate()
    {
        CamtasiaArtefact(rootPath, model).generate()
    }
}
