package de.fhws.applab.camtasia.converter

import de.fhws.applab.camtasia.models.*
import de.fhws.applab.camtasia.utils.Duration
import org.apache.commons.lang3.StringEscapeUtils

class ConvertSceneDescriptionToCamtasiaProject(private val sceneDescriptions: List<SceneDescription>)
{
    private var quizId = 1
    private var multipleChoiceId = 1000
    private var answerId = 1

    fun convert(): CamtasiaProject
    {
        val returnValue = CamtasiaProject()

        returnValue.scenes = convertScenes()
        returnValue.hasQuiz = returnValue.scenes.any { it.hasQuiz }

        return returnValue
    }

    private fun convertScenes(): MutableList<Scene>
    {
        val returnValue = mutableListOf<Scene>()
        var currentVideoSourceId = 1
        var currentSlideSourceId = 2
        var currentStartFrame = 472 // length of intro video and title page

        for (source in this.sceneDescriptions)
        {
            val target = Scene()

            target.videoFullFileName = source.videoFullFileName
            target.slideFullFileName = source.slideFullFileName
            target.videoShortName = source.videoFullFileName.substringAfterLast('/')
            target.slideShortName = source.slideFullFileName.substringAfterLast('/')
            target.videoSrcId = currentVideoSourceId
            target.slideSrcId = currentSlideSourceId
            target.startFrame = currentStartFrame
            target.numberOfFrames = source.numberOfFrames
            target.rangeMax = Duration(source.duration).toCamtasiaValue().toInt()
            target.repositoryUrl = source.repositoryUrl
            target.marker = source.marker

            target.literature = source.slideType == "L"
            target.liveCoding = source.slideType == "C"
            target.liveCodingIntro = source.slideType == "A"
            target.liveCodingOutro = source.slideType == "Z"
            target.titlePage = source.slideType == "T"
            target.lecturePage = source.slideType == "N"

            target.downloadButton = source.buttonType.contains("D")
            target.continueButton = source.buttonType.contains("C")
            target.showLecturerName = source.buttonType.contains("N")

            target.quiz = createQuiz(source.quiz, target.startFrame + target.numberOfFrames - 10)
            target.hasQuiz = target.quiz.id != 0

            currentStartFrame += source.numberOfFrames
            currentVideoSourceId += 2
            currentSlideSourceId += 2
            returnValue.add(target)
        }

        return returnValue
    }

    private fun createQuiz(quiz: String, startFrame: Int): Quiz
    {
        if (quiz.isEmpty())
            return Quiz()

        // Wie ist die Stimmung?#Gut#Schlecht//Wie ist das Wetter?#Geht so#Sonnig

        var returnValue = Quiz()
        returnValue.id = this.quizId
        returnValue.startFrame = startFrame
        this.quizId++

        var questions = quiz.split("//")

        for (q in questions)
        {
            var parts = q.split("#")
            var theQuestion = Question()
            returnValue.questions.add(theQuestion)
            theQuestion.id = multipleChoiceId
            theQuestion.question = parts[0]
            multipleChoiceId++

            for (i in 1 until parts.size)
            {
                var theAnswer = Answer()
                theQuestion.answers.add(theAnswer)
                theAnswer.id = answerId
                theAnswer.text = parts[i]
                theAnswer.iscorrect = if (i == 1) 1 else 0
                answerId++;
            }
        }

        return returnValue
    }

    private fun encode(s: String): String
    {
        return StringEscapeUtils.escapeHtml4(s)
    }
}
