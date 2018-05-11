package com.axonivy.connectivity.rest;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class WebTestTwitterRestClient
{

  private WebDriver driver;

  @Test
  public void readTwitterTweetsViaRest()
  {
    String startUrl = EngineUrl.process() + "/ConnectivityDemos/1547634C396BBB3A/userTimeline.ivp";
    driver.get(startUrl);

    if (driver.getTitle().equals("TwitterAuthorization"))
    {
      authenticate();
    }

    new WebDriverWait(driver, 12).until(ExpectedConditions.titleIs("TwitterUserTimeline"));
    WebElement tweets = driver.findElement(By.id("form:tweetTable"));
    assertThat(tweets.findElements(By.tagName("tr")).size())
            .as("tweets should be displayed")
            .isGreaterThan(10);
  }

  private void authenticate()
  {
    String ivyAuthWindowHandle = driver.getWindowHandle();
    driver.findElement(By.id("authLink")).click();
    new WebDriverWait(driver, 10).until(driver -> driver.getWindowHandles().size() > 1);

    List<String> handles = new ArrayList<>(driver.getWindowHandles());
    handles.remove(ivyAuthWindowHandle);
    String twitterWindowHandle = handles.get(0);
    driver.switchTo().window(twitterWindowHandle);

    new WebDriverWait(driver, 10)
            .until(ExpectedConditions.elementToBeClickable(By.id("username_or_email")))
            .sendKeys("ivyTeamTester");
    new WebDriverWait(driver, 10)
            .until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[@type='password']")));
    driver.findElement(By.xpath("//*[@type='password']")).sendKeys("r2l6AmivZ0q9JgXYg7Fp");

    driver.findElement(By.xpath("//*[@type='password']")).submit();
    WebElement pinDiv = driver.findElement(By.id("oauth_pin"));
    String verification = pinDiv.findElement(By.tagName("code")).getText();
    assertThat(verification).isNotEmpty();
    driver.close(); // close twitter page

    driver.switchTo().window(ivyAuthWindowHandle);
    driver.findElement(By.id("form:verificationId")).sendKeys(verification);
    new WebDriverWait(driver, 10)
            .until(ExpectedConditions.elementToBeClickable(By.id("form:proceed")))
            .click();
  }

  @Before
  public void setUp()
  {
    driver = createDriver();
  }

  @After
  public void tearDown()
  {
    driver.close();
  }

  private final WebDriver createDriver()
  {
    FirefoxProfile profile = FixVersionFirefox.loadFirefoxProfile();
    WebDriver localDriver = FixVersionFirefox.createWebDriver(profile);

    localDriver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    return localDriver;
  }
}
