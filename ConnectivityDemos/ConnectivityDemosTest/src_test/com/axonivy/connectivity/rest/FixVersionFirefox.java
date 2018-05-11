package com.axonivy.connectivity.rest;

import java.io.File;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.firefox.FirefoxProfile;

/**
 * Helpers to use a fixed (portable) version of firefox. So selenium doesn't
 * need an update to be compatible with the current firefox version under test.
 * 
 * <p>
 * The portable firefox must be installed as follows:
 * 
 * <pre>
 * - install with a FF portable installer binary
 * - disconnect your network adapter
 * - start the portable firefox
 * - deactivate update via about:config
 *   * app.update.enabled = false
 *   * app.update.url = ""
 *   * app.update.url.manual = ""
 * - close firefox
 * - reconnect your network adapter
 * - start firefox several times -> no updates should be installed
 * </pre>
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

  public static FirefoxProfile loadFirefoxProfile()
  {
    if (FIREFOX_PORTABLE_DIR != null)
    {
      File profileDir = new File(FIREFOX_PORTABLE_DIR, "Data/profile");
      System.out.println("Using Firefox portable profile " + profileDir);
      return new FirefoxProfile(profileDir);
    }
    return new FirefoxProfile();
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
    FirefoxOptions options = new FirefoxOptions().setBinary(ffBinary).setProfile(profile);
    return new FirefoxDriver(options);
  }
}