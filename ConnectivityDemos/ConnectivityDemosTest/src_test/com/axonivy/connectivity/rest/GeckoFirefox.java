package com.axonivy.connectivity.rest;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import org.apache.commons.lang3.StringUtils;
import org.openqa.selenium.firefox.FirefoxDriver;

public class GeckoFirefox
{

  public static void register()
  {
    File geckoBinary = findGeckoDriverBinary();
    if (geckoBinary != null)
    {
      System.setProperty("webdriver.gecko.driver", geckoBinary.getAbsolutePath());
      System.setProperty(FirefoxDriver.SystemProperty.BROWSER_LOGFILE, new File("target/marionette.log").toString());
    }
    else
    {
      System.err.println("Failed to detect a geckodriver.");
    }
  }
  
  private static File findGeckoDriverBinary()
  {
    String geckoDriver = System.getProperty("gecko.driver.dir");
    if (StringUtils.isBlank(geckoDriver))
    {
      return null;
    }
      
    File driverDir = new File(geckoDriver);
    if (driverDir.exists())
    {
      try
      {
        return Files.list(driverDir.toPath())
          .filter(child -> child.getFileName().toString().startsWith("geckodriver"))
          .map(path -> path.toFile())
          .findFirst()
          .orElseThrow(()->new RuntimeException("Failed to detect geckodriver in "+geckoDriver));
      }
      catch (IOException ex)
      {
      }
    }
    return null;
  }
  
}
