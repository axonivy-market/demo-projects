package ch.ivyteam.htmldialog.demo;

import static org.assertj.core.api.Assertions.assertThat;
import static org.openqa.selenium.support.ui.ExpectedConditions.elementToBeClickable;
import static org.openqa.selenium.support.ui.ExpectedConditions.not;
import static org.openqa.selenium.support.ui.ExpectedConditions.textToBePresentInElementLocated;
import static org.openqa.selenium.support.ui.ExpectedConditions.visibilityOfElementLocated;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.util.concurrent.TimeUnit;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.ExpectedCondition;

import com.jayway.awaitility.Awaitility;

public class WebTestInput extends BaseWebTest
{
  private File ffDownloadDir;

  @Override
  protected void configureBrowserProfile(FirefoxProfile profile)
  {
    super.configureBrowserProfile(profile);
    enableAutoDownload(profile);
  }

  private void enableAutoDownload(FirefoxProfile profile)
  {
    profile.setPreference("browser.download.folderList", 2);
    try
    {
      ffDownloadDir = Files.createTempDirectory("ffDownload").toFile();
    }
    catch (IOException ex)
    {
      throw new RuntimeException(ex);
    }
    profile.setPreference("browser.download.folderList", 2);
    profile.setPreference("browser.download.dir", ffDownloadDir.getAbsolutePath());
    profile.setPreference("browser.download.useDownloadDir", true);
    profile.setPreference("browser.helperApps.neverAsk.saveToDisk", "image/jpeg;text/txt");
    profile.setPreference("browser.download.panel.shown", true);
  }

  @Override
  public void tearDown() throws Exception
  {
    super.tearDown();
    FileUtils.deleteDirectory(ffDownloadDir);
  }

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
  public void testSimpleFileUpDownload() throws Exception
  {
    startProcess("145D18298A3E81CF/FileUploadSimpleModeDemo.ivp");

    File tempFile = File.createTempFile("tempTextFile", ".txt");
    tempFile.deleteOnExit();
    String testContent = "this is a test for the Simple File Up- and Download";
    FileUtils.write(tempFile, testContent, Charset.defaultCharset());

    driver.findElement(By.id("demoForm:fileUpload")).sendKeys(tempFile.getAbsolutePath());
    driver.findElement(By.id("demoForm:fileUploadButton")).click();
    driver.findElement(By.id("demoForm:showFileButton")).click();
    await(textToBePresentInElementLocated(By.id("demoForm:textAreaLabel"), testContent));
    driver.findElement(By.id("demoForm:downloadFileButton")).click();
    File downloadedFile = new File(ffDownloadDir, tempFile.getName());
    Awaitility.await("Expecting File to contain: " + testContent).atMost(10, TimeUnit.SECONDS).until(() ->
    {
      return FileUtils.readFileToString(downloadedFile, Charset.defaultCharset()).equalsIgnoreCase(testContent);
    });
  }

  @Test
  public void testAdvancedFileUpload() throws Exception
  {
    startProcess("145D18298A3E81CF/FileUploadAdvancedModeDemo.ivp");

    File tempImage = File.createTempFile("tempImageFile", ".png");
    try (
            InputStream inputImage = getClass().getResourceAsStream("ExampleImage.png");
            FileOutputStream outputImage = new FileOutputStream(tempImage);)
    {
      IOUtils.copy(inputImage, outputImage);
    }

    driver.findElement(By.id("pictureGalleryForm:fileUpload_input")).sendKeys(
            tempImage.getAbsolutePath());

    await(visibilityOfElementLocated(By
                    .xpath("//*[@id='pictureGalleryForm:pictureGallery']/div[1]/ul/li[1]/div/img[contains(@src,'tempImageFile')]")));
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