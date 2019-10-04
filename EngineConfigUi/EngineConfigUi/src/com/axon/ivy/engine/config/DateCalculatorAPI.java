package com.axon.ivy.engine.config;

import java.util.Date;
import java.util.concurrent.TimeUnit;

public class DateCalculatorAPI
{
  public static long daysLeft(Date futureDate, Date now)
  {
    long dateInMillieseconds = futureDate.getTime() - now.getTime();
    return TimeUnit.MILLISECONDS.toDays(dateInMillieseconds);
  }

  public static long daysLeft(Date futureDate)
  {
    return daysLeft(futureDate, new Date());
  }

  public static boolean isUnixTime(Date date)
  {
    return date.getTime() >= 0;
  }
}