package de.fhws.applab.camtasia.models

import de.fhws.applab.gemara.towerbridge.models.AbstractModel
import de.fhws.applab.gemara.towerbridge.models.IVisitor

class CamtasiaProject : AbstractModel<IVisitor>()
{
    var projectName = ""
    var scenes = mutableListOf<Scene>()
    var backgroundRed = 156
    var backgroundGreen = 237
    var backgroundBlue = 164
    var chromaKeyRed = ""
    var chromaKeyGreen = ""
    var chromaKeyBlue = ""
    var outroStartsAtFrame = 0
    var titlePageSourceId = 0
    var hasQuiz = false

    // position button download, button continue, bauchbinde

    fun initialize()
    {
        this.chromaKeyRed = (this.backgroundRed / 255.0).toString()
        this.chromaKeyGreen = (this.backgroundGreen / 255.0).toString()
        this.chromaKeyBlue = (this.backgroundBlue / 255.0).toString()
        this.outroStartsAtFrame = this.scenes.last().startFrame + this.scenes.last().numberOfFrames
        this.titlePageSourceId = this.scenes.find { it.titlePage }!!.slideSrcId
    }

    override fun accept(visitor: IVisitor)
    {
        TODO("Not yet implemented")
    }
}
