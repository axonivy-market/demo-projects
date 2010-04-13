package ch.ivy.customCalendar;

import java.text.DateFormat;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.Vector;

import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * Implements a calendar containing non working days and time periods 
 * The main method is provided for testing. See the console output
 * @author Bruno Bütler
 * @version 3.3.2010 created
 */
public class myCalendar 
{	
	/* A static list of non working days and time periods */
	private static Vector<ExceptionDay> exDays = new Vector<ExceptionDay>();
	static
	{
		// add weekdays with or without time interval
		exDays.add(new WeeklyExceptionDay("monday morning", Calendar.MONDAY, "0:00", "7:00"));
		exDays.add(new WeeklyExceptionDay("monday evening", Calendar.MONDAY, "17:00", "23:59:59"));
		exDays.add(new WeeklyExceptionDay("tuesday morning", Calendar.TUESDAY, "0:00", "7:00"));
		exDays.add(new WeeklyExceptionDay("tuesday evening", Calendar.TUESDAY, "17:00", "23:59:59"));
		exDays.add(new WeeklyExceptionDay("wednesday morning", Calendar.WEDNESDAY, "0:00", "7:00"));
		exDays.add(new WeeklyExceptionDay("wednesday evening", Calendar.WEDNESDAY, "17:00", "23:59:59"));	
		exDays.add(new WeeklyExceptionDay("thursday morning", Calendar.THURSDAY, "0:00", "7:00"));
		exDays.add(new WeeklyExceptionDay("thursday evening", Calendar.THURSDAY, "17:00", "23:59:59"));	
		exDays.add(new WeeklyExceptionDay("friday morning", Calendar.FRIDAY, "0:00", "7:00"));
		exDays.add(new WeeklyExceptionDay("friday evening", Calendar.FRIDAY, "17:00", "23:59:59"));	
		exDays.add(new WeeklyExceptionDay("saturday", Calendar.SATURDAY));
		exDays.add(new WeeklyExceptionDay("sunday", Calendar.SUNDAY));		

		//add absolut days with or without time interval
		//exDays.add(new AbsolutExceptionDay("betriebsausflug", 4, 3, 2010));

		//add yearly days with or without time interval
		exDays.add(new YearlyAbsolutExceptionDay("Xmas Eve", 24, 12, "15:00", "23:59:59"));
		exDays.add(new YearlyAbsolutExceptionDay("Xmas", 25, 12));

		//add yearly eastern days with or without time interval
		exDays.add(new YearlyRelativToEasternExceptionDay("easter monday", 1));	
	}

	/** 
	 * Gets a working duration in respect of the exception days and times in the calendar
	 * @param workingHoursOffset The number of working hours.
	 * @param workingMinutesOffset The number of working minutes. 
	 * @return the resulting duration 
	 */
	public static Duration calendarHM(Number workingHoursOffset, Number workingMinutesOffset)
	{
		DateTime now = new DateTime();
		return getWorkingHM(now, workingHoursOffset, workingMinutesOffset).minus(now);
	}	

	/**
	 * Gets the datetime which is n working hours and minutes later than now.  
	 * 0,0 returns now
	 * @param workingHoursOffset The number of working hours.
	 * @param workingMinutesOffset The number of working minutes.
	 * @return the resulting DateTime in respect of the exception days and times in the calendar
	 */
	public static DateTime getWorkingHM(Number workingHoursOffset, Number workingMinutesOffset)
	{
		return getWorkingHM(new DateTime(), workingHoursOffset, workingMinutesOffset);
	}	

	/**
	 * Gets the datetime which is n working hours and minutes later than the start.  
	 * 0,0 returns always the start datetime
	 * @param start the start of the working period
	 * @param workingHoursOffset The number of working hours.
	 * @param workingMinutesOffset The number of working minutes.
	 * @return the resulting DateTime in respect of the exception days and times in the calendar
	 */
	public static DateTime getWorkingHM(DateTime start, Number workingHoursOffset, Number workingMinutesOffset)
	{
		DateTime period = start; 

		int remainingMins = workingHoursOffset.intValue()*60 + workingMinutesOffset.intValue();

		while (remainingMins >0)
		{
			// is exception datetime
			if (!isExceptionDateTime(period))
			{
				remainingMins--;
			}
			// test next minute
			period = period.add(new Duration(60));
			//System.out.println("RemainingMins ="+remainingMins);
		}	
		return period;
	}	

	/** 
	 * Gets the effective working duration in respect of the exception days in the calendar
	 * 0 returns a duration of zero
	 * 1 returns the duration till the first working day from now
	 * 2 returns the duration till the second working day from now
	 * The time part of the date object is always the current time
	 * @param workingDays the number of working days 
	 * @return the resulting duration 
	 */
	public static Duration calendarDays(Number workingDays)
	{
		DateTime now = new DateTime();
		return getWorkingDay(now, workingDays).minus(now);	
	}	

	/**
	 * Gets the working day which is the n-th working day from now.  
	 * 0 returns always the current date, 
	 * 1 returns next working day, 
	 * 2 returns the second working day from now etc ...
	 * The time part of the date object is always the current time
	 * @param workingDayOffset The number of working days from now.
	 * @return the n-th working day from now.
	 */
	public static DateTime getWorkingDay(Number workingDayOffset)
	{
		return getWorkingDay(new DateTime(), workingDayOffset);
	}	

	/**
	 * Gets the working day which is the n-th working day from the startdate.  
	 * 0 returns always the start date, 
	 * 1 returns next working day, 
	 * 2 returns the second working day etc ...
	 * The time part of the date object is always the time of the startDateTime
	 * @param startDate the date to get the n-th workingday from 
	 * @param workingDayOffset The number of working days from now.
	 * @return the n-th working day from now.
	 */
	public static DateTime getWorkingDay(DateTime startDate, Number workingDayOffset)
	{
		DateTime period = startDate; 
		int remainingDays = workingDayOffset.intValue();

		while (remainingDays >0)
		{
			// test next day
			period = period.add(new Duration(0,0,1,0,0,0));
			// is exception date
			if (!isExceptionDate(period))
			{
				remainingDays--;
			}
			//System.out.println("RemainingDays ="+remainingDays);
		}	
		return period;	
	}	

	/**
	 * Checks if the test datetime is an exception datatime
	 * @param testDay the datetime to test
	 * @return true if test is an exception datetime
	 */
	private static boolean isExceptionDateTime(DateTime test)
	{
		Enumeration enumeration;
		ExceptionDay exDay;

		enumeration = exDays.elements();
		while (enumeration.hasMoreElements())
		{
			exDay = (ExceptionDay)enumeration.nextElement();
			if (exDay.match(test))
			{
				//System.out.println("matched "+exDay.getDescription());
				return true;
			}
		}
		return false;
	}	

	/**
	 * Checks if the test date is an exception date
	 * @param testDay the date to test
	 * @return true if test is an exception date
	 */
	private static boolean isExceptionDate(DateTime test)
	{
		Enumeration enumeration;
		ExceptionDay exDay;

		enumeration = exDays.elements();
		while (enumeration.hasMoreElements())
		{
			exDay = (ExceptionDay)enumeration.nextElement();
			if (exDay.matchDate(test))
			{
				//System.out.println("matched "+exDay.getDescription());   
				return true;
			}
		}
		return false;
	}		


	/* main method for testing */
	public static void main(String[] argv)
	{
		System.out.println("Start " +new DateTime());   
		//System.out.println("Result "+myCalendar.getWorkingDay(2));
		System.out.println("Result "+myCalendar.getWorkingHM(2,30));
	}  	
}
