package de.fhws.applab.camtasia.models

class Question
{
    var id = 0
    var question = ""
    var answers = mutableListOf<Answer>()

    // <MultipleChoice id=\"103\" text=\"Stimmung?\" collapsed=\"0\" feedback=\"0\" fb_correct=\"\" fb_correct_action=\"\" fb_correct_jumptime_ms=\"0\" fb_correct_url=\"\" fb_correct_marker=\"\" fb_correct_marker_time=\"0\" fb_wrong=\"\" fb_wrong_action=\"\" fb_wrong_jumptime_ms=\"0\" fb_wrong_url=\"\" fb_wrong_marker=\"\" fb_wrong_marker_time=\"0\">

    fun getCode(): String
    {
        var returnValue =
            "<MultipleChoice id=\\\"${id}\\\" text=\\\"${question}\\\" collapsed=\\\"0\\\" feedback=\\\"0\\\" fb_correct=\\\"\\\" fb_correct_action=\\\"\\\" fb_correct_jumptime_ms=\\\"0\\\" fb_correct_url=\\\"\\\" fb_correct_marker=\\\"\\\" fb_correct_marker_time=\\\"0\\\" fb_wrong=\\\"\\\" fb_wrong_action=\\\"\\\" fb_wrong_jumptime_ms=\\\"0\\\" fb_wrong_url=\\\"\\\" fb_wrong_marker=\\\"\\\" fb_wrong_marker_time=\\\"0\\\">"

        returnValue += "<Answers>"

        for (a in answers.shuffled())
        {
            returnValue += a.getCode()
        }

        returnValue += "</Answers>"
        returnValue += "</MultipleChoice>"

        return returnValue
    }
}
