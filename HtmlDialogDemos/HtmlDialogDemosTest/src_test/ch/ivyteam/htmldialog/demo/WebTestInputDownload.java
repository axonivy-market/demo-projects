package ch.ivyteam.htmldialog.demo;

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
import org.awaitility.Awaitility;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.firefox.FirefoxProfile;

public class WebTestInputDownload extends BaseWebTest
{
  private File ffDownloadDir;

  @Override
  protected FirefoxProfile configureBrowserProfile()
  {
    FirefoxProfile profile = super.configureBrowserProfile();
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
    return profile;
  }

  @AfterEach
  public void tearDown() throws Exception
  {
    FileUtils.deleteDirectory(ffDownloadDir);
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
  
}