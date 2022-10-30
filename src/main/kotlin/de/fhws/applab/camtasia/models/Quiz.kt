package de.fhws.applab.camtasia.models

class Quiz
{
    var id = 0
    var questions = mutableListOf<Question>()
    var startFrame = 0

    /*
    <Quiz id=\"1017\" name=\"Quiz 1\"><Options feedback=\"1\" graded=\"1\"/><Questions><MultipleChoice id=\"103\" text=\"Stimmung?\" collapsed=\"0\" feedback=\"0\" fb_correct=\"\" fb_correct_action=\"\" fb_correct_jumptime_ms=\"0\" fb_correct_url=\"\" fb_correct_marker=\"\" fb_correct_marker_time=\"0\" fb_wrong=\"\" fb_wrong_action=\"\" fb_wrong_jumptime_ms=\"0\" fb_wrong_url=\"\" fb_wrong_marker=\"\" fb_wrong_marker_time=\"0\"><Answers><Answer id=\"6\" text=\"Gut\" iscorrect=\"1\"/><Answer id=\"7\" text=\"Schlecht\" iscorrect=\"0\"/></Answers></MultipleChoice></Questions></Quiz>
     */
    fun getCode(): String
    {
        var returnValue =
            "<Quiz id=\\\"${id}\\\" name=\\\"Quiz ${id}\\\"><Options feedback=\\\"1\\\" graded=\\\"1\\\"/><Questions>"

        for (q in questions)
        {
            returnValue += q.getCode()
        }

        returnValue += "</Questions></Quiz>"

        return returnValue
    }
}
