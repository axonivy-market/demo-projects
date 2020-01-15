package com.axonivy.connectivity.rest;

import static com.codeborne.selenide.CollectionCondition.sizeGreaterThan;
import static com.codeborne.selenide.Condition.empty;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static org.assertj.core.api.Assertions.assertThat;

import java.util.ArrayList;
import java.util.List;

import org.awaitility.Awaitility;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.axonivy.ivy.supplements.IvySelenide;
import com.codeborne.selenide.Selenide;
import com.codeborne.selenide.WebDriverRunner;

@IvySelenide
public class WebTestTwitterRestClient
{

  private WebDriver driver;

  @BeforeEach
  public void setup()
  {
    driver = WebDriverRunner.getWebDriver();
  }

  @Test
  public void readTwitterTweetsViaRest()
  {
    Selenide.open(EngineUrl.process() + "/ConnectivityDemos/1547634C396BBB3A/userTimeline.ivp");

    if (Selenide.title().equals("TwitterAuthorization"))
    {
      authenticate();
    }

    $(By.id("form:tweetTable")).shouldBe(visible).findAll("tr").shouldBe(sizeGreaterThan(10));
    assertThat(Selenide.title()).isEqualTo("TwitterUserTimeline");
  }

  private void authenticate()
  {
    String ivyAuthWindowHandle = driver.getWindowHandle();
    $(By.id("authLink")).shouldBe(visible).click();
    Awaitility.await().until(() -> driver.getWindowHandles().size() > 1);
    List<String> handles = new ArrayList<>(driver.getWindowHandles());
    handles.remove(ivyAuthWindowHandle);
    String twitterWindowHandle = handles.get(0);
    Selenide.switchTo().window(twitterWindowHandle);

    $(By.id("username_or_email")).shouldBe(visible).sendKeys("ivyTeamTester");
    $(By.xpath("//*[@type='password']")).shouldBe(visible).sendKeys("r2l6AmivZ0q9JgXYg7Fp");
    $(By.xpath("//*[@type='password']")).submit();

    String verification = $(By.id("oauth_pin")).shouldBe(visible).find("code").shouldNotBe(empty).getText();
    driver.close(); // close twitter page

    Selenide.switchTo().window(ivyAuthWindowHandle);
    $(By.id("form:verificationId")).shouldBe(visible).sendKeys(verification);
    $(By.id("form:proceed")).click();
  }
}
