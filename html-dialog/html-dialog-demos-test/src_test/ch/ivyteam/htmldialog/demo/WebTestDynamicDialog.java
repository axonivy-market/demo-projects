package ch.ivyteam.htmldialog.demo;

import static ch.ivyteam.htmldialog.server.test.ProcessUtil.startProcess;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.axonivy.ivy.webtest.IvyWebTest;
import com.codeborne.selenide.Selenide;

@IvyWebTest (headless = false)
class WebTestDynamicDialog {

  @Test
  void openDialog() {
    var driver = Selenide.webdriver().driver().getWebDriver();

    startProcess("145D180807C60B4B/DynamicDialog.ivp");
    $(By.id("form:open")).shouldBe(visible).click();
    switchToFirstFrame(driver);
    $(By.id("dialogForm:openDialogA")).shouldBe(visible).click();
    switchToSecondFrame(driver);
    $(By.id("finalDialogForm:closeDialog")).shouldBe(visible).click();
    switchToForm(driver);
    switchToFirstFrame(driver);
    $(By.id("dialogForm:openDialogB")).shouldBe(visible).click();
    switchToSecondFrame(driver);
    $(By.id("finalDialogForm:closeDialog")).shouldBe(visible).click();
    switchToForm(driver);
    switchToFirstFrame(driver);
    $(By.id("dialogForm:closeDialog")).shouldBe(visible).click();
  }

    private void switchToSecondFrame(WebDriver driver) {
      switchToForm(driver);
      driver.switchTo().frame(1);
    }

    private void switchToForm(WebDriver driver) {
      driver.switchTo().defaultContent();
    }

    private void switchToFirstFrame(WebDriver driver) {
      driver.switchTo().frame(0);
    }
}
