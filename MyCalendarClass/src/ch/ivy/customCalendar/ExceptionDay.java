package ch.ivy.customCalendar;

import java.io.Serializable;
import java.util.Calendar;

import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;

/**
 * This is the abstract base class exception day of the calendar
 * @author Bruno Bütler
 * @version 1.3.2010 created
 */
public abstract class ExceptionDay
{
	/** Description of the exception day */
	private String description;

	/**
	 * Constructor
	 * @param _description the description of the exception day
	 */
	protected ExceptionDay(String _description)
	{
		description = _description;
		if (description == null)
		{
			description = "";
		}
	}

	/**
	 * Does this exception day match the testDay
	 * @param testDay the testDate to check for matching
	 * @return true if ExceptionDay matches the testDay, otherwise false
	 */
	public abstract boolean matchDate(DateTime testDay);

	
	/**
	 * Does this exception day match the testDateTime
	 * @param testDay the testDateTime to check for matching
	 * @return true if exception testDateTime matches the testDayTime, otherwise false
	 */
	public abstract boolean match(DateTime testDayTime);

	/**
	 * Gets the description of this exception day
	 * @return description
	 */
	
	public String getDescription()
	{
		return description;
	}
}
