package ch.ivy.customCalendar;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * Implements the exception day interface. This class represents a weekly exception day
 * @author Bruno Bütler
 * @version 3.3.2010 created
 */
public class WeeklyExceptionDay extends ExceptionDay
{
	/** The weekday which is the exception day. @see java.util.Calendar for constants */
	private int weekday;
	/** The start day time of the period*/
	private Time from;
	/** The end day time of the period*/
	private Time till;

	/**
	 * Constructor 
	 * @param description the description of the exception day   
	 * @param _weekday the week day which is the exception day. @see java.util.Calendar for constants
	 * @param _from a String representing a day time "hh:mm"
	 * @param _till a String representing a day time "hh:mm"
	 */
	public WeeklyExceptionDay(String description, int _weekday, String _from, String _till)
	{
		super(description);
		weekday = _weekday;
		from = new Time(_from);
		till = new Time(_till);
	}
	
	/**
	 * Constructor for a full non working day
	 * @param description the description of the exception day   
	 * @param _weekday the week day which is the exception day. @see java.util.Calendar for constants
	 */
	public WeeklyExceptionDay(String description, int _weekday)
	{
		super(description);
		weekday = _weekday;
	}

	/**
	 * Does this exception day match the testDateTime
	 * @param testDay the testDateTime to check for matching
	 * @return true if exception testDateTime matches the testDayTime, otherwise false
	 */
	public boolean match(DateTime test)
	{
		if(test.getDayOfWeek()==weekday)
		{
			if(from==null)
			{
				return true;    // full day 
			}
			if(test.getTime().compareTo(from)>=0 && test.getTime().compareTo(till)<= 0)
			{
				return true;  // in the time interval
			}
		}
		return false;
	}

	/**
	 * Does this exception day match the testDate
	 * @param testDay the testDate to check for matching
	 * @return true if exception testDate matches the testDay, otherwise false
	 */
	public boolean matchDate(DateTime test)
	{
		if(test.getDayOfWeek()==weekday)
		{
			if(from==null)
			{
				return true;    // full day 
			}
		}
		return false;
	}	
	
	/**
	 * Gets the weekday
	 * @return weekday
	 */
	public int getWeekDay()
	{
		return weekday;
	}

	/**
	 * Add overwriten method description here
	 * @return
	 * @see java.lang.Object#toString()
	 */
	public String toString()
	{
		return "Weekly Exception Day: weekday=" + weekday+", from="+from+", till="+till;
	}

}
