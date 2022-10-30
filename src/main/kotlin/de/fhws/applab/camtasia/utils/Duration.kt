package de.fhws.applab.camtasia.utils

class Duration(private val duration: String)
{
    // 0:02:00.167000

    private var hours = 0
    private var minutes = 0
    private var seconds = 0
    private var milliseconds = 0

    init
    {
        parseDuration()
    }

    fun toCamtasiaValue(): String
    {
        val left = this.hours * 3600 + this.minutes * 60 + this.seconds
        val right = this.milliseconds.toString().padStart(3, '0')
        return "${left}${right}"
    }

    private fun parseDuration()
    {
        if (duration.isNotEmpty())
        {
            val indexOfPoint = this.duration.indexOf(".")
            val prefix = this.duration.substring(0, indexOfPoint)
            val suffix = this.duration.substring(indexOfPoint + 1)
            this.milliseconds = suffix.toInt() / 1000
            val splitPrefix = prefix.split(":")
            this.hours = splitPrefix[0].toInt()
            this.minutes = splitPrefix[1].toInt()
            this.seconds = splitPrefix[2].toInt()
        }
    }
}
