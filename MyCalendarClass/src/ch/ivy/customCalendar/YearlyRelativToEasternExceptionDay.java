package ch.ivy.customCalendar;

import java.text.DateFormat;
import java.util.Calendar;

import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * Implements the exception day interface. This class represents an exception day relativ to easter
 * @author Bruno Bütler
 * @version 4.3.2010 created
 */
public class YearlyRelativToEasternExceptionDay extends ExceptionDay
{
	/** Days relative from easter. Maybe positiv or negativ. 0=EASTER, -2=Good Friday, 1=Easter Monday */
	private int daysFromEaster;
	/** The start day time of the period*/
	private Time from;
	/** The end day time of the period*/
	private Time till;

	private int cacheYear=-1;
	private int cacheMonth;
	private int cacheDay;

	/**
	 * Constructor
	 * @param description the description of the exception day
	 * @param _daysToEaster The number of days relative to easter
	 */
	public YearlyRelativToEasternExceptionDay(String description, int _daysFromEaster, String _from, String _till)
	{
		super(description);
		daysFromEaster = _daysFromEaster;
		from = new Time(_from);
		till = new Time(_till);
	}

	/**
	 * Constructor for a full non working day
	 * @param description the description of the exception day
	 * @param _daysToEaster The number of days relative to easter
	 */
	public YearlyRelativToEasternExceptionDay(String description, int _daysFromEaster)
	{
		super(description);
		daysFromEaster = _daysFromEaster;
	}

	/**
	 * Does this exception day match the testDateTime
	 * @param testDay the testDateTime to check for matching
	 * @return true if exception testDateTime matches the testDayTime, otherwise false
	 */
	public boolean match(DateTime test)
	{
		Calendar easter = getCachedEaster(test.getYear());
		easter.add(Calendar.DATE, daysFromEaster);

		if(test.getDay() == easter.get(Calendar.DAY_OF_MONTH)
				&& (test.getMonth() == easter.get(Calendar.MONTH)+1) //first month is 0
				&& (test.getYear() == easter.get(Calendar.YEAR)))
		{	
			if(from==null)
			{
				return true; // full day
			}
			if(test.getTime().compareTo(from)>= 0 && test.getTime().compareTo(till)<= 0)
			{
				System.out.println("retunrs (not in interval)="+test);
				return true; // in the time intervall
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
		Calendar easter = getCachedEaster(test.getYear());
		easter.add(Calendar.DATE, daysFromEaster);

		//System.out.println(DateFormat.getDateInstance().format(easter.getTime())); 
		
		if(test.getDay() == easter.get(Calendar.DAY_OF_MONTH)
				&& (test.getMonth() == easter.get(Calendar.MONTH)+1)  //first month is 0
				&& (test.getYear() == easter.get(Calendar.YEAR)))
		{	
			if(from==null)
			{
				return true; // full day
			}
		}
  		return false;
	} 	



	/**
	 * Gets easter for a certain year
	 * @param year the year 
	 * @return easter date in that year
	 */
	private Calendar getCachedEaster(int year)
	{   
		Calendar easter;

		if (cacheYear == year)
		{
			easter = Calendar.getInstance();
			easter.set(year, cacheMonth, cacheDay);
			return easter;
		}
		else
		{
			easter = getEaster(year);
			cacheYear = year;
			cacheMonth = easter.get(Calendar.MONTH);
			cacheDay = easter.get(Calendar.DAY_OF_MONTH);
		}
		return easter;
	}

	public static Calendar getEaster(int year)
	{
		int a, b, c, d, e, g, h, u, i, k, t;
		int day;
		int month;
		Calendar easter;

		a = year % 19;
		b = year / 100;
		c = year % 100;
		d = b / 4;
		e = b % 4;
		g = (8*b + 13) / 25;
		h = (19*a + b - d - g + 15) % 30;
		u = (a + 11*h) / 319;
		i = c / 4;
		k = c % 4;
		t = (2*e + 2*i - k -h + u + 32) % 7;
		month = (h - u + t + 90) / 25;
		day = (h - u + t + month + 19) % 32;

		easter = Calendar.getInstance();
		easter.set(year, month-1, day);
		return easter;

	}

	public static void main(String[] argv)
	{
		YearlyRelativToEasternExceptionDay t = new YearlyRelativToEasternExceptionDay("", 0, "0:00","0:00");
		for (int year=2000; year < 2100; year++)
		{
			System.out.println(DateFormat.getDateInstance().format(t.getCachedEaster(year).getTime()));   
		}
	}
	/**
	 * Gets the number of days from easter 
	 * @return number of days from easter
	 */
	public int getDaysFromEaster()
	{
		return daysFromEaster;
	}

	/**
	 * Add overwriten method description here
	 * @return
	 * @see java.lang.Object#toString()
	 */
	public String toString()
	{
		return "Yearly relative to easter exception day: days from easter="+daysFromEaster+" from="+from+", till="+till;
	}


}
