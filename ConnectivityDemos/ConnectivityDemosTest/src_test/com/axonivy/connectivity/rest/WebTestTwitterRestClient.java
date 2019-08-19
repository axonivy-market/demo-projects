package com.axonivy.connectivity.rest;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.github.bonigarcia.seljup.Options;
import io.github.bonigarcia.seljup.SeleniumExtension;

@ExtendWith(SeleniumExtension.class)
public class WebTestTwitterRestClient
{
  
  @Options
  FirefoxOptions firefoxOptions = new FirefoxOptions();
  {
    FirefoxBinary binary = new FirefoxBinary();
    binary.addCommandLineOptions("--headless");
    firefoxOptions.setBinary(binary);
  }

  @Test
  public void readTwitterTweetsViaRest(FirefoxDriver driver)
  {
    String startUrl = EngineUrl.process() + "/ConnectivityDemos/1547634C396BBB3A/userTimeline.ivp";
    driver.get(startUrl);

    if (driver.getTitle().equals("TwitterAuthorization"))
    {
      authenticate(driver);
    }

    new WebDriverWait(driver, 12).until(ExpectedConditions.titleIs("TwitterUserTimeline"));
    WebElement tweets = driver.findElement(By.id("form:tweetTable"));
    assertThat(tweets.findElements(By.tagName("tr")).size())
            .as("tweets should be displayed")
            .isGreaterThan(10);
  }

  private void authenticate(FirefoxDriver driver)
  {
    String ivyAuthWindowHandle = driver.getWindowHandle();
    driver.findElement(By.id("authLink")).click();
    new WebDriverWait(driver, 10).until(d -> d.getWindowHandles().size() > 1);

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
    
    new WebDriverWait(driver, 10)
            .until(ExpectedConditions.visibilityOfElementLocated(By.id("oauth_pin")));
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
}
