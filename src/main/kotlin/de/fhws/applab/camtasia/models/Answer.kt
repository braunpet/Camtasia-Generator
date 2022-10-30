package de.fhws.applab.camtasia.models

class Answer
{
    var id = 0
    var text = ""
    var iscorrect = 0


    // <Answer id=\"6\" text=\"Gut\" iscorrect=\"1\"/><Answer id=\"7\" text=\"Schlecht\" iscorrect=\"0\"/>

    fun getCode(): String
    {
        return "<Answer id=\\\"${id}\\\" text=\\\"${text}\\\" iscorrect=\\\"${iscorrect}\\\"/>"
    }
}
