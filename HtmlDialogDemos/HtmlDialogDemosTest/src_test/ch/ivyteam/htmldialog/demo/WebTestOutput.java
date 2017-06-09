package ch.ivyteam.htmldialog.demo;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.SelectOneMenu;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi.Table;

public class WebTestOutput extends BaseWebTest
{
  @Override
  protected WebDriver createDriver()
  {
    return new HtmlUnitDriver(true);
  }
  
  @Test
  public void testDataTable() throws Exception
  {
    startProcess("145D180807C60B4B/DataTableDemo.ivp");

    driver.findElement(By.id("form:theTable:globalFilter")).sendKeys("Dais");
    Table table = prime().table(By.id("form:theTable"));
    table.firstRowContains("Daisy");
    clearInput(By.id("form:theTable:globalFilter"));

    SelectOneMenu menu = prime().selectOne(By.id("form:theTable:nameFilter"));
    menu.selectItemByLabel("Achmed");
    table.firstRowContains("Achmed");
    menu.selectItemByLabel("All");

    driver.findElement(By.id("form:theTable:scorePointFilter:filter")).sendKeys("6");
    table.firstRowContains("Birgit");
    clearInput(By.id("form:theTable:scorePointFilter:filter"));

    await(ExpectedConditions.visibilityOfElementLocated(By.id("form:theTable:6:j_id_2a")));
    driver.findElement(By.xpath("//tbody[@id='form:theTable_data']/tr[1]/td/div")).click();
    clearInput(By.id("form:theTable:0:name"));
    driver.findElement(By.id("form:theTable:0:name")).sendKeys("testPerson");
    clearInput(By.id("form:theTable:0:points"));
    driver.findElement(By.id("form:theTable:0:points")).sendKeys("9999");
    driver.findElement(By.id("form:theTable:0:saveButton")).click();
    table.contains("testPerson");
    table.containsNot("Beni");
    table.contains("9999");
    table.containsNot("2563");

    driver.findElement(By.id("form:theTable:6:dialogEditButton")).click();
    await(ExpectedConditions.visibilityOfElementLocated(By.id("detailForm:name")));
    clearInput(By.id("detailForm:name"));
    driver.findElement(By.id("detailForm:name")).sendKeys("demoUser");
    clearInput(By.id("detailForm:points"));
    driver.findElement(By.id("detailForm:points")).sendKeys("2300");
    driver.findElement(By.id("detailForm:dialogSaveButton")).click();

    table.contains("demoUser");
    table.containsNot("Yvonne");
    table.contains("2300");
    table.containsNot("1324");

    driver.findElement(By.id("form:theTable:scoreId")).click();
    Thread.sleep(500);
    driver.findElement(By.id("form:theTable:scoreId")).click();
    table.firstRowContains("Tim");

  }

  @Test
  public void testEditableTable() throws Exception
  {
    startProcess("145D180807C60B4B/EditableTableDemo.ivp");

    Table table = prime().table(By.id("form:personTable"));
    editTable(By.xpath("//*[@id='form:personTable:0:rowEditor']/span[2]"), 0, "firstName", "lastName");
    editableTableContains(table);

    editTable(By.xpath("//*[@id='form:personTable:0:rowEditor']/span[3]"), 0, "firstName", "lastName");
    editableTableContains(table);

    driver.findElement(By.xpath("//*[@id='form:personTable:4:deleteButton']/span")).click();
    table.containsNot("Dänzer");

    driver.findElement(By.xpath("//*[@id='form:personTable:addButton']/span")).click();
    editTable(By.xpath("//*[@id='form:personTable:5:rowEditor']/span[2]"), 5, "testfirstName", "testLastName");
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
    driver.findElement(By.xpath("//*[@id='form:personTable:" + rowPosition + ":rowEditor']/span[1]"))
            .click();
    clearInput(By.id("form:personTable:" + rowPosition + ":inputName"));
    driver.findElement(By.id("form:personTable:" + rowPosition + ":inputName")).sendKeys(lastName);
    clearInput(By.id("form:personTable:" + rowPosition + ":inputFirstName"));
    driver.findElement(By.id("form:personTable:" + rowPosition + ":inputFirstName")).sendKeys(firstName);
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
            By.xpath("//*[@id='personListForm:personsList']/div/div[1]/ul/li[" + elementPosition + "]"))
            .click();
    driver.findElement(
            By.xpath("//*[@id='personListForm:personsList']/div/div[2]/button[" + buttonPosition + "]"))
            .click();
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.xpath("//*[@id='personListForm:personsList']/div/div[1]/ul/li[1]"), expectedName));
    await(ExpectedConditions.not(ExpectedConditions.textToBePresentInElementLocated(
            By.xpath("//*[@id='personListForm:personsList']/div/div[1]/ul/li[1]"), notExpectedName)));
  }

  @Test
  public void testPickList() throws Exception
  {
    startProcess("145D180807C60B4B/PickListDemo.ivp");

    Actions builder = new Actions(driver);
    Action dragAndDrop = builder
            .clickAndHold(driver.findElement(By.xpath("//*[@id='personListForm:pickList']/div[2]/ul/li[1]")))
            .moveToElement(driver.findElement(By.xpath("//*[@id='personListForm:pickList']/div[4]/ul")))
            .release(driver.findElement(By.xpath("//*[@id='personListForm:pickList']/div[2]/ul/li[1]")))
            .build();
    dragAndDrop.perform();

    await(ExpectedConditions.textToBePresentInElementLocated(
            By.xpath("//*[@id='personListForm:pickList']/div[4]/ul"), "Renato"));
    await(ExpectedConditions.not(ExpectedConditions.textToBePresentInElementLocated(
            By.xpath("//*[@id='personListForm:pickList']/div[2]/ul"), "Renato")));

    searchAndValidate("Renat", "none");
    searchAndValidate("Bru", "list-item");

    driver.findElement(By.id("personListForm:j_id_1u")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(
            By.xpath("//*[@id='personListForm:resultPanel']/tbody/tr[2]/td[2]"),
            "name=Stalder, firstname=Renato"));
  }

  private void searchAndValidate(String searchValue, String displayValue)
  {
    clearInput(By.id("personListForm:pickList_source_filter"));
    driver.findElement(By.id("personListForm:pickList_source_filter")).sendKeys(searchValue);
    await(ExpectedConditions.attributeContains(By.xpath("//li[@data-item-label='Bütler Bruno']"), "style",
            "display: " + displayValue));
  }

  @Test
  public void testSelectOneMenu() throws Exception
  {
    startProcess("145D180807C60B4B/SelectOneMenuDemo.ivp");

    SelectOneMenu menu = prime().selectOne(By.id("demoForm:basic"));
    menu.selectItemByLabel("Reguel Wermelinger");

    driver.findElement(By.id("demoForm:advance_label")).click();
    await(ExpectedConditions.visibilityOfElementLocated(By.id("demoForm:advance_filter")));
    driver.findElement(By.id("demoForm:advance_filter")).sendKeys("Mich");
    await(ExpectedConditions.attributeContains(By.id("demoForm:advance_9"), "style",
            "display: none;"));

    clearInput(By.id("demoForm:advance_filter"));
    driver.findElement(By.id("demoForm:advance_filter")).sendKeys("Flav");
    await(ExpectedConditions.attributeContains(By.id("demoForm:advance_9"), "style",
            "display: list-item;"));
    driver.findElement(By.id("demoForm:advance_9")).click();

    driver.findElement(By.id("demoForm:sendButton")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("demoForm:outputBasicSelects"), "Reguel"));
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("demoForm:outputAdvancedSelects"),
            "Flavio"));
  }

  @Test
  public void testAutoComplete() throws Exception
  {
    startProcess("145D180807C60B4B/AutoCompleteDemo.ivp");

    searchAndExpect("xzyt", "xzyt69", "xzyz99");
    searchAndExpect("xzyz", "xzyz99", "xzyt69");
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("Form:event_panel"), "xzyz98"));
    searchAndExpect("yt69", "xzyt69", "xzyz98");

    clearInput(By.id("Form:event_input"));
    driver.findElement(By.id("Form:event_input")).sendKeys("xzyt69");
    driver.findElement(By.id("Form:j_id_1v")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("Form:msgs_container"), "xzyt69"));
  }

  private void searchAndExpect(String searchText, String expectedText, String notExpectedText)
  {
    clearInput(By.id("Form:event_input"));
    driver.findElement(By.id("Form:event_input")).sendKeys(searchText);
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("Form:event_panel"), expectedText));
    await(ExpectedConditions.not(ExpectedConditions.textToBePresentInElementLocated(
            By.id("Form:event_panel"), notExpectedText)));
  }

  @Test
  public void testSelectCheckboxes() throws Exception
  {
    startProcess("145D180807C60B4B/SelectManyCheckboxDemo.ivp");
    selectAndValidatePerson(4);
    selectAndValidatePerson(5);
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("demoForm:outputSelectedPersons"), "Kis"));
  }

  private void selectAndValidatePerson(int checkboxposition)
  {
    driver.findElement(By.xpath("//*[@id='demoForm:manyCheckboxes:" + checkboxposition + "']/../../div[2]"))
            .click();
    driver.findElement(By.id("demoForm:sendButton")).click();
    await(ExpectedConditions.textToBePresentInElementLocated(By.id("demoForm:outputSelectedPersons"),
            driver.findElement(By.xpath("//label[@for='demoForm:manyCheckboxes:" + checkboxposition + "']"))
                    .getText()));
  }

  @Test
  public void testChart()
  {
    startProcess("145D180807C60B4B/ChartDemo.ivp");
    assertThat(driver.findElement(By.id("form:comboChart"))).isNotNull();
    assertThat(driver.findElement(By.id("form:pieChart"))).isNotNull();
  }
}