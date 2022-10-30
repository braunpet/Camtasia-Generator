package de.fhws.applab.camtasia.models

import de.fhws.applab.gemara.towerbridge.models.AbstractModel
import de.fhws.applab.gemara.towerbridge.models.IVisitor

class Scene : AbstractModel<IVisitor>()
{
    var videoFullFileName = ""
    var videoShortName = ""
    var slideFullFileName = ""
    var slideShortName = ""
    var numberOfFrames = 0;
    var startFrame = 0
    var videoSrcId = 0
    var slideSrcId = 0
    var rangeMax = 0
    var titlePage = false
    var lecturePage = false
    var literature = false
    var liveCodingIntro = false
    var liveCodingOutro = false
    var liveCoding = false
    var continueButton = false
    var downloadButton = false
    var showLecturerName = false
    var repositoryUrl = ""
    var marker = ""
    var quiz = Quiz()
    var hasQuiz = false

    override fun accept(visitor: IVisitor)
    {
        TODO("Not yet implemented")
    }
}
