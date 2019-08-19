package ch.ivyteam.htmldialog.demo;

import static org.assertj.core.api.Assertions.assertThat;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.StringJoiner;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.SystemUtils;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.awaitility.Awaitility;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.firefox.FirefoxProfile;

public class WebTestExcelExport extends BaseWebTest
{
  private File tempDownloadDir;

  @AfterEach
  public void tearDown() throws Exception
  {
    FileUtils.deleteDirectory(tempDownloadDir);
  }

  @Test
  public void testExcelExport() throws Exception
  {
    startProcess("145D180807C60B4B/ExportExcelDemo.ivp");
    driver.findElement(By.id("form:exportBtn")).click();

    File excel = new File(tempDownloadDir.getAbsolutePath() + SystemUtils.FILE_SEPARATOR + "Persons.xls");

    Awaitility.await().untilAsserted(() -> {
      assertThat(excel).exists();
      assertThat(readExcel(excel)).contains("Name", "Weiss", "Reto");
    });
  }

  private String readExcel(File excel) throws Exception
  {
    StringJoiner stringJoiner = new StringJoiner(" ");
    try (Workbook workbook = WorkbookFactory.create(excel))
    {
      DataFormatter dataFormatter = new DataFormatter();
      Sheet sheet = workbook.getSheetAt(0);

      sheet.forEach(row -> {
        row.forEach(cell -> {
          String cellValue = dataFormatter.formatCellValue(cell);
          stringJoiner.add(cellValue);
        });
      });
    }

    return stringJoiner.toString();
  }

  @Override
  protected FirefoxProfile configureBrowserProfile()
  {
    FirefoxProfile profile = super.configureBrowserProfile();
    try
    {
      tempDownloadDir = Files.createTempDirectory("tempDownload").toFile();
    }
    catch (IOException ex)
    {
      throw new RuntimeException(ex);
    }
    profile.setPreference("browser.download.folderList", 2);
    profile.setPreference("browser.download.dir", tempDownloadDir.getAbsolutePath());
    profile.setPreference("browser.helperApps.neverAsk.saveToDisk",
            "application/x-msexcel,application/excel,application/x-excel,application/excel,application/x-excel," +
            "application/excel,application/vnd.ms-excel,application/x-excel,application/x-msexcel\"");
    profile.setPreference("browser.download.panel.shown", true);
    return profile;
  }

}
