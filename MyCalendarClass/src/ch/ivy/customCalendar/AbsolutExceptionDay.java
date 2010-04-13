package ch.ivy.customCalendar;

import java.util.Calendar;
import java.util.Date;

import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * Implements the exception day interface. This class represents a single exception day
 * @author Bruno Bütler
 * @version 3.3.2010 created
 */
public class AbsolutExceptionDay extends ExceptionDay
{
	/** The day within the month of the exception day. @See java.util.Calendar for ranges */
	private int day;
	/** The month within the year of the exception day. @See java.util.Calendar for ranges */
	private int month;
	/** The year a.c. */
	private int year;
	/** The start day time of the period*/
	private Time from;
	/** The end day time of the period*/
	private Time till;

	/**
	 * Constructor
	 * @param description the description of the exception day
	 * @param _day The day within the month of the exception day @See java.util.Calendar for ranges
	 * @param _month The month within the year of the exception day @See java.util.Calendar for ranges
	 * @param _year The year a.c. 
	 */
	public AbsolutExceptionDay(String description, int _day, int _month, int _year, String _from, String _till)
	{
		super(description);
		day = _day;
		month = _month;
		year = _year;
		from = new Time(_from);
		till = new Time(_till);
	}

	/**
	 * Constructor for a full non working day
	 * @param description the description of the exception day
	 * @param _day The day within the month of the exception day @See java.util.Calendar for ranges
	 * @param _month The month within the year of the exception day @See java.util.Calendar for ranges
	 * @param _year The year a.c. 
	 */
	public AbsolutExceptionDay(String description, int _day, int _month, int _year)
	{
		super(description);
		day = _day;
		month = _month;
		year = _year;
	}	
	
	/**
	 * Does this exception day match the testDateTime
	 * @param testDay the testDateTime to check for matching
	 * @return true if exception testDateTime matches the testDayTime, otherwise false
	 */
	public boolean match(DateTime test)
	{
		if(test.getDay() == day
				&& (test.getMonth() == month)
				&& (test.getYear() == year))
		{
			if(from==null)
			{
				return true;    // full day
			}
			if(test.getTime().compareTo(from)>= 0 && test.getTime().compareTo(till)<= 0)
			{
				return true;  // in the time interval
			}
		}
		return false;
	}  

	/**
	 * Does this exception day match the testDate. 
	 * @param testDay the testDate to check for matching
	 * @return true if exception testDate matches the testDay, otherwise false
	 */
	public boolean matchDate(DateTime test)
	{
		if(test.getDay() == day
				&& (test.getMonth() == month)
				&& (test.getYear() == year))
		{
			if(from==null)
			{
				return true;    // full day
			}
		}
		return false;
	} 	

	/**
	 * Gets the day
	 * @return day
	 */
	public int getDay()
	{
		return day;
	}

	/**
	 * Gets the month
	 * @return month
	 */
	public int getMonth()
	{
		return month;
	}

	/**
	 * Gets the year
	 * @return year
	 */
	public int getYear()
	{
		return year;
	}

	/**
	 * Add overwriten method description here
	 * @return
	 * @see java.lang.Object#toString()
	 */
	public String toString()
	{
		return "Absolute Exception Day: day=" + day + ", month=" + month+", year="+year+", from="+from+", till="+till;
	}

	/**
	 * Gets the absolute exception date
	 * @return date
	 */
	public Date getDate()
	{
		Calendar cal = Calendar.getInstance();
		cal.set(year, month, day);
		return cal.getTime();
	}

}
