package ch.ivyteam.htmldialog.demo;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.SelectOneMenu;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;

public class WebTestOutput extends BaseWebTest
{
  @Test
  public void testDataTable() throws Exception
  {
    startProcess("145D180807C60B4B/DataTableDemo.ivp");

    driver.findElement(By.id("form:theTable:globalFilter")).sendKeys("Dais");
    Table table = prime().table(By.id("form:theTable"));
    table.firstRowContains("Daisy");
    clearInput(By.id("form:theTable:globalFilter"));

    SelectOneMenu menu = prime().selectOne(By.id("form:theTable:j_id_2b"));
    menu.selectItemByLabel("Achmed");
    table.firstRowContains("Achmed");
    menu.selectItemByLabel("All");

    driver.findElement(By.id("form:theTable:j_id_2f:filter")).sendKeys("6");
    table.firstRowContains("Birgit");
    clearInput(By.id("form:theTable:j_id_2f:filter"));

    await(ExpectedConditions.visibilityOfElementLocated(By.id("form:theTable:6:j_id_29")));
    driver.findElement(By.xpath("//tbody[@id='form:theTable_data']/tr/td/div")).click();
    clearInput(By.id("form:theTable:0:j_id_22"));
    driver.findElement(By.id("form:theTable:0:j_id_22")).sendKeys("testPerson");
    clearInput(By.id("form:theTable:0:j_id_25"));
    driver.findElement(By.id("form:theTable:0:j_id_25")).sendKeys("9999");
    driver.findElement(By.id("form:theTable:0:j_id_27")).click();
    table.contains("testPerson");
    table.containsNot("Beni");
    table.contains("9999");
    table.containsNot("2563");

    driver.findElement(By.id("form:theTable:6:j_id_2i")).click();
    await(ExpectedConditions.visibilityOfElementLocated(By.id("detailForm:name")));
    clearInput(By.id("detailForm:name"));
    driver.findElement(By.id("detailForm:name")).sendKeys("demoUser");
    clearInput(By.id("detailForm:points"));
    driver.findElement(By.id("detailForm:points")).sendKeys("2300");
    driver.findElement(By.id("detailForm:j_id_31")).click();

    table.contains("demoUser");
    table.containsNot("Yvonne");
    table.contains("2300");
    table.containsNot("1324");

    driver.findElement(By.id("form:theTable:j_id_28")).click();
    driver.findElement(By.id("form:theTable:j_id_28")).click();
    table.firstRowContains("Tim");
  }

  private void clearInput(By inputLocator)
  {
    await(ExpectedConditions.visibilityOfElementLocated(inputLocator));
    driver.findElement(inputLocator).sendKeys(Keys.chord(Keys.CONTROL, "a") + Keys.DELETE);
  }

  @Test
  public void testEditableTable() throws Exception
  {
    startProcess("145D180807C60B4B/EditableTableDemo.ivp");

    Table table = prime().table(By.id("form:personTable"));
    editTable(By.xpath("//*[@id='form:personTable:0:j_id_1x']/span[2]"), 0, "firstName", "lastName");
    editableTableContains(table);

    editTable(By.xpath("//*[@id='form:personTable:0:j_id_1x']/span[3]"), 0, "firstName", "lastName");
    editableTableContains(table);

    driver.findElement(By.xpath("//*[@id='form:personTable:4:j_id_1y']/span")).click();
    table.containsNot("Dänzer");

    driver.findElement(By.xpath("//*[@id='form:personTable:j_id_20']/span")).click();
    editTable(By.xpath("//*[@id='form:personTable:5:j_id_1x']/span[2]"), 5, "testfirstName", "testLastName");
    table.contains("testfirstName");
    table.contains("testLastName");
  }

  private void editableTableContains(Table table)
  {
    table.contains("lastName");
    table.containsNot("Weiss");
    table.contains("firstName");
    table.containsNot("Reto");
  }

  private void editTable(By confirmLocator, int rowPosition, String firstName, String lastName)
  {
    driver.findElement(By.xpath("//*[@id='form:personTable:" + rowPosition + ":j_id_1x']/span[1]"))
            .click();
    clearInput(By.id("form:personTable:" + rowPosition + ":j_id_1r"));
    driver.findElement(By.id("form:personTable:" + rowPosition + ":j_id_1r")).sendKeys(lastName);
    clearInput(By.id("form:personTable:" + rowPosition + ":j_id_1v"));
    driver.findElement(By.id("form:personTable:" + rowPosition + ":j_id_1v")).sendKeys(firstName);
    driver.findElement(confirmLocator).click();
  }

  @Test
  public void testOrderList() throws Exception
  {
    startProcess("145D180807C60B4B/OrderListDemo.ivp");

    editList(1, 3, "Bruno", "Renato");
    editList(6, 2, "Michael", "Bruno");
  }

  private void editList(int elementPosition, int buttonPosition, String expectedName, String notExpectedName)
  {
    driver.findElement(
            By.xpath("//*[@id='j_id_1k:personsList']/div/div[1]/ul/li[" + elementPosition + "]"))
            .click();
    driver.findElement(
            By.xpath("//*[@id='j_id_1k:personsList']/div/div[2]/button[" + buttonPosition + "]"))
            .click();
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.xpath("//*[@id='j_id_1k:personsList']/div/div[1]/ul/li[1]"), expectedName));
    await(ExpectedConditions.not(ExpectedConditions.textToBePresentInElementLocated(
            By.xpath("//*[@id='j_id_1k:personsList']/div/div[1]/ul/li[1]"), notExpectedName)));
  }

  @Test
  public void testPickList() throws Exception
  {
    startProcess("145D180807C60B4B/PickListDemo.ivp");

    Actions builder = new Actions(driver);
    Action dragAndDrop = builder
            .clickAndHold(driver.findElement(By.xpath("//*[@id='j_id_1k:pickList']/div[2]/ul/li[1]")))
            .moveToElement(driver.findElement(By.xpath("//*[@id='j_id_1k:pickList']/div[4]/ul")))
            .release(driver.findElement(By.xpath("//*[@id='j_id_1k:pickList']/div[2]/ul/li[1]")))
            .build();
    dragAndDrop.perform();

    await(ExpectedConditions.textToBePresentInElementLocated(
            By.xpath("//*[@id='j_id_1k:pickList']/div[4]/ul"), "Renato"));
    await(ExpectedConditions.not(ExpectedConditions.textToBePresentInElementLocated(
            By.xpath("//*[@id='j_id_1k:pickList']/div[2]/ul"), "Renato")));

    searchAndValidate("Renat", "none");
    searchAndValidate("Bru", "list-item");

    driver.findElement(By.id("j_id_1k:j_id_1t")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.xpath("//*[@id='j_id_1k:resultPanel']/tbody/tr[2]/td[2]"), "name=Stalder, firstname=Renato"));
  }

  private void searchAndValidate(String searchValue, String displayValue)
  {
    clearInput(By.id("j_id_1k:pickList_source_filter"));
    driver.findElement(By.id("j_id_1k:pickList_source_filter")).sendKeys(searchValue);
    await(ExpectedConditions.attributeContains(By.xpath("//li[@data-item-label='Bütler Bruno']"), "style",
            "display: " + displayValue));
  }
}