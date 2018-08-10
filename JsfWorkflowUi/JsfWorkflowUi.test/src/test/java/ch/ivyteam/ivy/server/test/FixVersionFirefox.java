package ch.ivyteam.ivy.server.test;

import java.io.File;
import java.util.logging.Level;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.firefox.FirefoxProfile;

/**
 * Helper to use a fixed (portable) version of Firefox.
 */
public class FixVersionFirefox
{
  private static final String FIREFOX_PORTABLE_PATH_PROPERTY = "firefox.portable.path";
  private static File FIREFOX_PORTABLE_DIR = readFirefoxPath();

  public static WebDriver createWebDriver(FirefoxProfile profile)
  {
    FirefoxBinary ffBinary;
    if (FIREFOX_PORTABLE_DIR != null)
    {
      File firefoxBinaryFile = new File(FIREFOX_PORTABLE_DIR, "App/Firefox/firefox.exe");
      System.out.println("Using Firefox portable binary " + firefoxBinaryFile);
      ffBinary = new FirefoxBinary(firefoxBinaryFile);
    }
    else
    {
      ffBinary = new FirefoxBinary();
    }
//    ffBinary.addCommandLineOptions("--headless");
    FirefoxOptions options = new FirefoxOptions().setLogLevel(Level.WARNING).setBinary(ffBinary)
            .setProfile(profile);
    return new FirefoxDriver(options);
  }

  private static File readFirefoxPath()
  {
    String firefoxPortablePath = System
            .getProperty(FIREFOX_PORTABLE_PATH_PROPERTY);
    if (firefoxPortablePath != null)
    {
      return new File(firefoxPortablePath);
    }
    return null;
  }
}