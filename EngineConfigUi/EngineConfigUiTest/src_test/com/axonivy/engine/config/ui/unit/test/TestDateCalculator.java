package com.axonivy.engine.config.ui.unit.test;

import static com.axon.ivy.engine.config.DateCalculator.daysLeft;
import static org.assertj.core.api.Assertions.assertThat;

import java.time.LocalDate;
import java.time.Month;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Date;

import org.junit.jupiter.api.Test;

public class TestDateCalculator
{
  @Test
  public void testDaysLeft()
  {
    assertThat(daysLeft(
            newDate(2020,9,22),
            newDate(2019,10,15)))
    .isEqualTo(342);
    
    assertThat(daysLeft(
            newDate(2020,9,22),
            newDate(2019,9,22)))
    .isEqualTo(366);
    
    assertThat(daysLeft(
            newDate(2019,9,22),
            newDate(2018,9,22)))
    .isEqualTo(365);
    
    LocalDate localDate = newDate(4, 7, 10).toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
    
    assertThat(localDate.getMonthValue()).isEqualTo(7);
    assertThat(localDate.getMonth()).isEqualTo(Month.JULY);
 }

  private static Date newDate(int year, int month, int day)
  {
    Calendar cal = Calendar.getInstance();
    cal.set(year, month-1, day);
    return cal.getTime();
  }
}
