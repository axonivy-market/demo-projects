package ch.ivyteam.htmldialog.demo;

import static org.assertj.core.api.Assertions.assertThat;
import static org.openqa.selenium.support.ui.ExpectedConditions.elementToBeClickable;
import static org.openqa.selenium.support.ui.ExpectedConditions.not;
import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;

public class WebTestInput extends BaseWebTest
{

  @Test
  public void testForm() throws Exception
  {
    startProcess("145D18298A3E81CF/FormDemo.ivp");

    driver.findElement(By.id("Form:Name")).sendKeys("team");
    driver.findElement(By.id("Form:Birthday_input")).sendKeys("14.07.2016");
    driver.findElement(By.id("Form:Birthday_input")).sendKeys(Keys.TAB);
    driver.findElement(By.id("Form:Mail")).sendKeys("support@axonivy.com");
    driver.findElement(By.id("Form:PhoneNumber")).sendKeys("41586663455");
    driver.findElement(By.id("Form:Address")).sendKeys("Baarerstrasse 12");
    driver.findElement(By.id("Form:ZipCode")).sendKeys("6300");
    driver.findElement(By.id("Form:City")).sendKeys("Zug");
    driver.findElement(By.id("Form:Country_input")).sendKeys("Switzerland");
    driver.findElement(By.id("Form:Country_input")).sendKeys(Keys.ENTER);
    driver.findElement(By.id("Form:SendButton")).click();
    await(textToBePresentInElementLocated(By.id("Form:msgs"), "Value is required"));
    await(textToBePresentInElementLocated(By.id("Form:msgs"), "First Name"));

    driver.findElement(By.id("Form:Firstname")).sendKeys("ivy");
    driver.findElement(By.id("Form:SendButton")).click();

    await(not(textToBePresentInElementLocated(By.id("Form:msgs"), "Value is required")));
    await(textToBePresentInElementLocated(By.id("outputData"), "name=team, firstname=ivy"));
  }

  @Test
  public void testForm_customProjectValidator()
  {
    startProcess("145D18298A3E81CF/FormDemo.ivp");
    By mailLocator = By.id("Form:Mail");
    driver.findElement(mailLocator).sendKeys("notValidMail[at]test.ch");
    await(elementToBeClickable(mailLocator)).submit();

    WebElement errorIcon = findMessageInErrorState(By.id("Form:MailMessage"));
    assertThat(errorIcon).as("Message Icon should show a mail validation error").isNotNull();
    String errorTitle = errorIcon.getAttribute("title");
    assertThat(errorTitle).startsWith("E-mail validation failed");
  }

  /**
   * TODO should be expressed as XPATH statement. This code is vulnerable for StaleElement exceptions!
   */
  private WebElement findMessageInErrorState(By by)
  {
    return await(new ExpectedCondition<WebElement>()
      {
        @Override
        public WebElement apply(WebDriver localDriver)
        {
          WebElement message = localDriver.findElement(by);
          if (message != null)
          {
            if (message.getAttribute("class").contains("ui-message-error"))
            {
              return message.findElement(By.tagName("span"));
            }
          }
          return null;
        }
      });
  }

  @Test
  public void testMultiView_invoice() throws Exception
  {
    startProcess("145D18298A3E81CF/MultiViewDemo.ivp");

    driver.findElement(By.id("myForm:Name")).sendKeys("testName");
    driver.findElement(By.id("myForm:FirstName")).sendKeys("testFirstName");
    driver.findElement(By.id("myForm:nextButton")).click();

    await(textToBePresentInElementLocated(By.id("myForm:panel"), "Payment - Invoice"));
    driver.findElement(By.id("myForm:Address")).sendKeys("Baarerstrasse 13");
    driver.findElement(By.id("myForm:finishButton")).click();

    waitForSummary("testName", "testFirstName");
  }

  @Test
  public void testMultiView_creditCard() throws Exception
  {
    startProcess("145D18298A3E81CF/MultiViewDemo.ivp");

    driver.findElement(By.id("myForm:Name")).sendKeys("team");
    driver.findElement(By.id("myForm:FirstName")).sendKeys("ivy");
    prime().selectOneRadio(By.id("myForm:options")).selectItemByValue("CreditCard");
    driver.findElement(By.id("myForm:nextButton")).click();

    await(textToBePresentInElementLocated(By.id("myForm:panel"), "Payment - Credit Card"));
    driver.findElement(By.id("myForm:CreditCardNumber")).sendKeys("1234567891234567");
    driver.findElement(By.id("myForm:CreditCardNumber")).sendKeys(Keys.ENTER);

    await(textToBePresentInElementLocated(By.id("myForm:panel"),
            "Payment - Credit Card Processing"));
    await(textToBePresentInElementLocated(By.id("myForm:confirmVerification"),
            "Credit card verified!"));
    driver.findElement(By.id("myForm:finishButton")).click();

    waitForSummary("team", "ivy");
  }

  private void waitForSummary(String name, String firstName)
  {
    await(textToBePresentInElementLocated(By.id("myForm:panel"), "Payment - Summary"));
    await(textToBePresentInElementLocated(By.id("myForm:outputSummary"), firstName + " " + name));
  }
  
}