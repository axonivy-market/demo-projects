package ch.ivyteam.htmldialog.demo;

import static ch.ivyteam.htmldialog.server.test.ProcessUtil.startProcess;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static org.assertj.core.api.Assertions.assertThat;

import java.io.File;
import java.util.StringJoiner;

import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.awaitility.Awaitility;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.supplements.IvySelenide;
import com.codeborne.selenide.Configuration;
import com.codeborne.selenide.FileDownloadMode;
import com.codeborne.selenide.Selenide;

@IvySelenide
public class WebTestExcelExport
{
  
  @BeforeAll
  public static void setUp()
  {
    Selenide.close();
    Configuration.proxyEnabled = true;
    Configuration.fileDownload = FileDownloadMode.PROXY;
    Selenide.open();
  }

  @Test
  public void testExcelExport() throws Exception
  {
    startProcess("145D180807C60B4B/ExportExcelDemo.ivp");
    File excel = $(By.id("form:exportBtn")).shouldBe(visible).download();

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

}
