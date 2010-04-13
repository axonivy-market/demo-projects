package ch.ivy.customCalendar;

import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * Implements the exception day interface. This class represents a yearly exception day
 * @author Bruno Bütler
 * @version 4.3.2010 created
 */
public class YearlyAbsolutExceptionDay extends ExceptionDay
{
	/** The day within the month of the exception day. @See java.util.Calendar for ranges */
	private int day;
	/** The month within the year of the exception day. @See java.util.Calendar for ranges */
	private int month;
	/** The start day time of the period*/
	private Time from;
	/** The end day time of the period*/
	private Time till;

	/**
	 * Constructor
	 * @param description the description of the exception day
	 * @param _day The day within the month of the exception day @See java.util.Calendar for ranges
	 * @param _month The month within the year of the exception day @See java.util.Calendar for ranges 
	 */
	public YearlyAbsolutExceptionDay(String description, int _day, int _month, String _from, String _till)
	{
		super(description);
		day=_day;
		month=_month;
		from = new Time(_from);
		till = new Time(_till);
	}

	/**
	 * Constructor for a full non working day
	 * @param description the description of the exception day
	 * @param _day The day within the month of the exception day @See java.util.Calendar for ranges
	 * @param _month The month within the year of the exception day @See java.util.Calendar for ranges 
	 */
	public YearlyAbsolutExceptionDay(String description, int _day, int _month)
	{
		super(description);
		day=_day;
		month=_month;
	}  

	/**
	 * Does this exception day match the testDateTime
	 * @param testDay the testDateTime to check for matching
	 * @return true if exception testDateTime matches the testDayTime, otherwise false
	 */
	public boolean match(DateTime test)
	{
		if(test.getDay() == day
				&& (test.getMonth() == month))
		{	
			if(from ==null)
			{
				return true; // full day
			}

			if(test.getTime().compareTo(from)>= 0 && test.getTime().compareTo(till)<= 0)
			{
				return true; // in the time interval
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
		if(test.getDay() == day
				&& (test.getMonth() == month))
		{	
			if(from ==null)
			{
				return true; // full day
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
	 * Add overwriten method description here
	 * @return
	 * @see java.lang.Object#toString()
	 */
	public String toString()
	{
		return "Yearly Exception Day: day="+day+", month="+month+" from="+from+", till="+till;
	}

}
