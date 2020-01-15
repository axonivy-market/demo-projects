package ch.ivyteam.htmldialog.demo;

import static ch.ivyteam.htmldialog.server.test.EngineUrl.startProcess;
import static com.codeborne.selenide.CollectionCondition.size;
import static com.codeborne.selenide.Condition.enabled;
import static com.codeborne.selenide.Condition.not;
import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;

import java.util.Arrays;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import com.axonivy.ivy.supplements.IvySelenide;
import com.axonivy.ivy.supplements.primeui.tester.PrimeUi;
import com.axonivy.ivy.supplements.primeui.tester.widget.SelectManyCheckbox;
import com.axonivy.ivy.supplements.primeui.tester.widget.SelectOneMenu;
import com.axonivy.ivy.supplements.primeui.tester.widget.Table;

@IvySelenide
public class WebTestOutput
{
  @Test
  public void testDataTable() throws Exception
  {
    startProcess("145D180807C60B4B/DataTableDemo.ivp");

    Table table = PrimeUi.table(By.id("form:theTable"));
    table.searchGlobal("Dais");
    table.firstRowContains("Daisy");
    clearInput(By.id("form:theTable:globalFilter"));

    SelectOneMenu menu = PrimeUi.selectOne(By.id("form:theTable:nameFilter"));
    menu.selectItemByLabel("Achmed"); 
    table.firstRowContains("Achmed");
    menu.selectItemByLabel("All");

    $(By.id("form:theTable:scorePointFilter:filter")).sendKeys("6");
    table.firstRowContains("Birgit");
    clearInput(By.id("form:theTable:scorePointFilter:filter"));
    $(By.id("form:theTable:scorePointFilter:filter")).sendKeys(Keys.ENTER);
    
    $(By.id("form:theTable:6:colName")).shouldBe(visible);
    $(By.id("form:theTable_data")).find(".ui-row-toggler").click();
    clearInput(By.id("form:theTable:0:name"));
    $(By.id("form:theTable:0:name")).sendKeys("testPerson");
    clearInput(By.id("form:theTable:0:points"));
    $(By.id("form:theTable:0:points")).sendKeys("9999");
    $(By.id("form:theTable:0:saveButton")).click();
    table.contains("testPerson");
    table.containsNot("Beni");
    table.contains("9999");
    table.containsNot("2563");

    $(By.id("form:theTable:6:dialogEditButton")).click();
    clearInput(By.id("detailForm:name"));
    $(By.id("detailForm:name")).sendKeys("demoUser");
    clearInput(By.id("detailForm:points"));
    $(By.id("detailForm:points")).sendKeys("2300");
    $(By.id("detailForm:dialogSaveButton")).click();

    table.contains("demoUser");
    table.containsNot("Yvonne");
    table.contains("2300");
    table.containsNot("1324");

    $(By.id("form:theTable:scoreId")).click();
    Thread.sleep(500);
    $(By.id("form:theTable:scoreId")).click();
    table.firstRowContains("Tim");
  }

  @Test
  public void testEditableTable() throws Exception
  {
    startProcess("145D180807C60B4B/EditableTableDemo.ivp");

    Table table = PrimeUi.table(By.id("form:personTable"));
    editTable(1, 0, "firstName", "lastName");
    editableTableContains(table);

    editTable(2, 0, "Reto", "Weiss");
    editableTableContains(table);

    $(By.id("form:personTable:4:deleteButton")).click();
    table.containsNot("Michael");

    $(By.id("form:personTable:addButton")).click();
    editTable(1, 5, "testfirstName", "testLastName");
    table.contains("testfirstName");
    table.contains("testLastName");
  }

  private static void editableTableContains(Table table)
  {
    table.contains("lastName");
    table.containsNot("Weiss");
    table.contains("firstName");
    table.containsNot("Reto");
  }

  private void editTable(int confirm, int rowPosition, String firstName, String lastName)
  {
    $(By.id("form:personTable:" + rowPosition + ":rowEditor")).find("a", 0).click();
    clearInput(By.id("form:personTable:" + rowPosition + ":inputName"));
    $(By.id("form:personTable:" + rowPosition + ":inputName")).sendKeys(lastName);
    clearInput(By.id("form:personTable:" + rowPosition + ":inputFirstName"));
    $(By.id("form:personTable:" + rowPosition + ":inputFirstName")).sendKeys(firstName);
    $(By.id("form:personTable:" + rowPosition + ":rowEditor")).find("a", confirm).click();
  }
  
  @Test
  public void testPickList() throws Exception
  {
    startProcess("145D180807C60B4B/PickListDemo.ivp");

    $(By.id("personListForm:pickList")).find(".ui-picklist-source").find("li", 0).shouldBe(visible).click();
    $(".ui-picklist-button-add").shouldBe(visible, enabled).click();
    
    $(By.id("personListForm:pickList")).find(".ui-picklist-source").shouldNotHave(text("Renato"));
    $(By.id("personListForm:pickList")).find(".ui-picklist-target").shouldHave(text("Renato"));
    $(By.id("personListForm:pickList_target")).findAll("option").shouldHave(size(1));
    
    $(By.id("personListForm:sendButton")).shouldBe(visible).click();
    $(By.id("personListForm:resultPanel")).find("tr", 0).shouldNotHave(text("Renato"));
    $(By.id("personListForm:resultPanel")).find("tr", 1).shouldHave(text("Renato"));
  }
  
  @Test
  public void testOrderList()
  {
    startProcess("145D180807C60B4B/OrderListDemo.ivp");

    editList(1, 3, "Bruno");
    editList(5, 0, "Bruno");
  }

  private void editList(int elementPosition, int buttonPosition, String name)
  {
    $(By.id("personListForm:personsList")).find(".ui-orderlist-item", elementPosition)
            .shouldBe(text(name)).click();
    $(By.id("personListForm:personsList")).find(".ui-orderlist-controls").find("button", buttonPosition)
            .shouldBe(visible, enabled).click();
    $(By.id("personListForm:personsList")).find(".ui-orderlist-item", elementPosition).shouldNotBe(text(name));
  }

  @Test
  public void testSelectOneMenu() throws Exception
  {
    startProcess("145D180807C60B4B/SelectOneMenuDemo.ivp");

    SelectOneMenu menu = PrimeUi.selectOne(By.id("demoForm:basic"));
    menu.selectItemByLabel("Reguel Wermelinger");

    $(By.id("demoForm:advance_label")).click();
    $(By.id("demoForm:advance_filter")).shouldBe(visible).sendKeys("Flav");
    $(By.id("demoForm:advance_9")).shouldBe(visible, enabled).click();

    $(By.id("demoForm:sendButton")).click();
    $(By.id("demoForm:outputBasicSelects")).shouldHave(text("Reguel"));
    $(By.id("demoForm:outputAdvancedSelects")).shouldHave(text("Flavio"));
  }

  @Test
  public void testAutoComplete() throws Exception
  {
    startProcess("145D180807C60B4B/AutoCompleteDemo.ivp");
    searchAndExpect("xzyt", "xzyt69", "xzyz99");
    
    startProcess("145D180807C60B4B/AutoCompleteDemo.ivp");
    searchAndExpect("xzyz", "xzyz99", "xzyt69");
    
    startProcess("145D180807C60B4B/AutoCompleteDemo.ivp");
    searchAndExpect("yt69", "xzyt69", "xzyz98");
  }

  private void searchAndExpect(String searchText, String expectedText, String notExpectedText)
  {
    $(By.id("Form:event_input")).shouldBe(visible).sendKeys(searchText);
    $(By.id("Form:event_panel")).shouldBe(visible, text(expectedText), not(text(notExpectedText)));
    $(By.id("Form:event_input")).clear();
  }

  @Test
  public void testSelectCheckboxes() throws Exception
  {
    startProcess("145D180807C60B4B/SelectManyCheckboxDemo.ivp");
    SelectManyCheckbox checkbox = PrimeUi.selectManyCheckbox(By.id("demoForm:manyCheckboxes"));
    checkbox.setCheckboxes(Arrays.asList("Weiss", "Kis"));
    $(By.id("demoForm:sendButton")).click();
    $(By.id("demoForm:outputSelectedPersons")).shouldHave(text("Weiss"), text("Kis"));
  }

  @Test
  public void testChart()
  {
    startProcess("145D180807C60B4B/ChartDemo.ivp");
    $(By.id("form:comboChart")).shouldBe(visible);
    $(By.id("form:pieChart")).shouldBe(visible);
  }
  
  private void clearInput(By inputLocator)
  {
    $(inputLocator).shouldBe(visible).clear();
    $(inputLocator).sendKeys(Keys.TAB);
  }
}