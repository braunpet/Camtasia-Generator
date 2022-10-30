package de.fhws.applab.camtasia

import de.fhws.applab.camtasia.utils.Duration
import org.junit.Test
import kotlin.test.assertEquals

class TestDurationFormatter
{
    @Test
    fun test_1()
    {
        assertEquals("120167", Duration("0:02:00.167000").toCamtasiaValue())
        assertEquals("120001", Duration("0:02:00.001000").toCamtasiaValue())
        assertEquals("4379001", Duration("1:12:59.001000").toCamtasiaValue())
    }
}
