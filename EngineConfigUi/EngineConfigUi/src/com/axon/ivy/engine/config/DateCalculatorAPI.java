package com.axon.ivy.engine.config;

import java.text.ParseException;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import com.axonivy.engine.config.ui.settings.component.LicenceComponent.RenewLicenceData;

import ch.ivyteam.licence.SignedLicence;

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

  public static void calculateDaysLeftForLicence(RenewLicenceData licData) throws ParseException
  {
    licData.setShowRenewLicence(false);
    if (SignedLicence.isInstalled() && !SignedLicence.isDemo() && SignedLicence.getValidUntil() != null)
    {
      licData.setShowRenewLicence(true);
      licData.setDaysLeft(daysLeft(SignedLicence.getValidUntil()));
      if (licData.getDaysLeft() <= 30)
      {
        licData.setLicenceWarning("#e09494");
      }
    }
  }
}