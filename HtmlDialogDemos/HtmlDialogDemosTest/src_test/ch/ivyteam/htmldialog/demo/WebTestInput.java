package ch.ivyteam.htmldialog.demo;

import static org.assertj.core.api.Assertions.assertThat;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import org.apache.commons.io.FileUtils;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.ExpectedConditions;

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
    profile.setPreference("browser.download.dir", ffDownloadDir.getAbsolutePath());
    profile.setPreference("browser.download.useDownloadDir", true);
    profile.setPreference("browser.helperApps.neverAsk.saveToDisk", "text/plain");
    profile.setPreference("browser.helperApps.neverAsk.saveToDisk", "image/jpeg");
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
    driver.findElement(By.id("Form:PhoneNumber")).click();
    driver.findElement(By.id("Form:PhoneNumber")).sendKeys("41586663455");
    driver.findElement(By.id("Form:Address")).sendKeys("Baarerstrasse 12");
    driver.findElement(By.id("Form:ZipCode")).sendKeys("6300");
    driver.findElement(By.id("Form:City")).sendKeys("Zug");
    driver.findElement(By.id("Form:Country_input")).sendKeys("Switzerland");
    driver.findElement(By.id("Form:Country_input")).sendKeys(Keys.ENTER);
    driver.findElement(By.id("Form:SendButton")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("Form:msgs"), "Value is required"));
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("Form:msgs"), "First Name"));

    driver.findElement(By.id("Form:Firstname")).sendKeys("ivy");
    driver.findElement(By.id("Form:SendButton")).click();

    await(ExpectedConditions.not(ExpectedConditions.textToBePresentInElementLocated(By.id("Form:msgs"),
            "Value is required")));
    await(ExpectedConditions
            .textToBePresentInElementLocated(By.id("outputData"), "name=team, firstname=ivy"));
  }

  @Test
  public void testSimpleFileUpDownload() throws Exception
  {
    try
    {
      startProcess("145D18298A3E81CF/FileUploadSimpleModeDemo.ivp");

      File tempFile = File.createTempFile("tempTextFile", ".txt");
      tempFile.deleteOnExit();
      String testContent = "this is a test for the Simple File Up- and Download";
      FileUtils.write(tempFile, testContent);

      driver.findElement(By.id("demoForm:fileUpload")).sendKeys(tempFile.getAbsolutePath());
      driver.findElement(By.id("demoForm:fileUploadButton")).click();
      driver.findElement(By.id("demoForm:showFileButton")).click();
      await(ExpectedConditions.textToBePresentInElementLocated(By.id("demoForm:textAreaLabel"), testContent));
      driver.findElement(By.id("demoForm:downloadFileButton")).click();
      Thread.sleep(2000);
      File downloadedFile = new File(ffDownloadDir, tempFile.getName());
      assertThat(downloadedFile).hasContent(testContent);
    }
    catch (Exception ex)
    {
      Thread.sleep(60000);
    }
  }

  @Test
  public void testAdvancedFileUpload() throws Exception
  {
    try
    {
      startProcess("145D18298A3E81CF/FileUploadAdvancedModeDemo.ivp");

      String firefoxPortablePath = System.getProperty("firefox.portable.path");
      String logoFilePath = firefoxPortablePath + File.separator + "Other" + File.separator + "Source"
              + File.separator + "FirefoxPortable.jpg";
      driver.findElement(By.id("pictureGalleryForm:fileUpload_input")).sendKeys(
              logoFilePath);

      await(ExpectedConditions
              .visibilityOfElementLocated(By
                      .xpath("//*[@id='pictureGalleryForm:pictureGallery']/div[1]/ul/li[1]/div/img[contains(@src,'FirefoxPortable')]")));
    }
    catch (Exception ex)
    {
      Thread.sleep(60000);
    }
  }

  @Test
  public void testMultiView_invoice() throws Exception
  {
    startProcess("145D18298A3E81CF/MultiViewDemo.ivp");

    driver.findElement(By.id("myForm:Name")).sendKeys("testName");
    driver.findElement(By.id("myForm:FirstName")).sendKeys("testFirstName");
    driver.findElement(By.id("myForm:nextButton")).click();

    await(ExpectedConditions.textToBePresentInElementLocated(By.id("myForm:panel"), "Payment - Invoice"));
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

    await(ExpectedConditions.textToBePresentInElementLocated(By.id("myForm:panel"), "Payment - Credit Card"));
    driver.findElement(By.id("myForm:CreditCardNumber")).click();
    driver.findElement(By.id("myForm:CreditCardNumber")).sendKeys("1234567891234567");
    driver.findElement(By.id("myForm:CreditCardNumber")).sendKeys(Keys.ENTER);

    await(ExpectedConditions.textToBePresentInElementLocated(By.id("myForm:panel"),
            "Payment - Credit Card Processing"));
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("myForm:confirmVerification"),
            "Credit card verified!"));
    driver.findElement(By.id("myForm:finishButton")).click();

    waitForSummary("team", "ivy");
  }

  private void waitForSummary(String name, String firstName)
  {
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("myForm:panel"), "Payment - Summary"));
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("myForm:outputSummary"), firstName + " "
            + name));
  }
}