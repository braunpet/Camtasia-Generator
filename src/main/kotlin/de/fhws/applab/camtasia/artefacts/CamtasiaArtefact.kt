package de.fhws.applab.camtasia.artefacts

import de.fhws.applab.camtasia.models.CamtasiaProject
import de.fhws.applab.gemara.towerbridge.generator.freemarker.ArtefactUsingFreemarkerWritingIntoFile

class CamtasiaArtefact(rootPath: String, model: CamtasiaProject) :
    ArtefactUsingFreemarkerWritingIntoFile<CamtasiaProject>(model)
{
    init
    {
        destinationDirectory = path(rootPath)
        destinationFileName = "${model.projectName}.tscproj"
        templateResourceName = "camtasia.ftl"
    }
}
