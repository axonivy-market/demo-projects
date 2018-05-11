package ch.ivyteam.htmldialog.server.test;

import java.io.File;
import java.util.logging.Level;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.firefox.FirefoxProfile;

/**
 * Helper class to use a fixed (portable) version of Firefox.
 */
public class FixVersionFirefox
{
  private static final String FIREFOX_PORTABLE_PATH_PROPERTY = "firefox.portable.path";
  private static File FIREFOX_PORTABLE_DIR;
  static
  {
    String firefoxPortablePath = System.getProperty(FIREFOX_PORTABLE_PATH_PROPERTY);
    if (firefoxPortablePath != null)
    {
      FIREFOX_PORTABLE_DIR = new File(firefoxPortablePath);
    }
  }

  public static WebDriver createWebDriver(FirefoxProfile profile)
  {
    if (FIREFOX_PORTABLE_DIR != null)
    {
      File firefoxBinaryFile = new File(FIREFOX_PORTABLE_DIR, "App/Firefox/firefox.exe");
      System.out.println("Using Firefox portable binary " + firefoxBinaryFile);
      FirefoxBinary ffBinary = new FirefoxBinary(firefoxBinaryFile);
	  ffBinary.addCommandLineOptions("--headless");
	  FirefoxOptions options = new FirefoxOptions().setBinary(ffBinary).setProfile(profile);
      return new FirefoxDriver(options);
    }
    FirefoxBinary ffBinary = new FirefoxBinary();
	ffBinary.addCommandLineOptions("--headless");
	FirefoxOptions options = new FirefoxOptions().setLogLevel(Level.SEVERE).setBinary(ffBinary).setProfile(profile);
    return new FirefoxDriver(options);
  }
}
