package workflow.trigger;

import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.codeborne.selenide.Selenide;

import test.web.BaseWebTest;
import test.web.EngineUrl;

public class WebTestCreateNewEmployee extends BaseWebTest
{

  @Test
  public void testCreateNewEmployee()
  {
    Selenide.open(EngineUrl.base());
    $(By.linkText("InitializeTestEnvironment/start.ivp")).shouldBe(visible);
    assertThat(driver.getTitle().contains("ivy"));
    $(By.linkText("InitializeTestEnvironment/start.ivp")).click();
    Selenide.open(EngineUrl.process() + "/WorkflowDemos/15254CF1CE56AE72/start.ivp");
    $("#form\\:employeeName").sendKeys("Charlie");
    $("#form\\:email").sendKeys("charlie@xyz.com");
    $("#form\\:employeeDateOfBirth_input").sendKeys("26.12.1985");
    $("#ui-datepicker-div").shouldBe(visible);
    $("#form\\:employeeName").click();
    $("#ui-datepicker-div").shouldNotBe(visible);
    $("#form\\:needsParkingLot").click();
    $("#form\\:submit").click();
  }
}