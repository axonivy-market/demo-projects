package workflow.trigger;

import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;
import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;

import com.axonivy.ivy.webtest.IvyWebTest;
import com.axonivy.ivy.webtest.engine.EngineUrl;
import com.codeborne.selenide.Selenide;

@IvyWebTest
public class WebTestCreateNewEmployee
{

  @Test
  public void testCreateNewEmployee()
  {
    open(EngineUrl.base());
    $(By.linkText("InitializeTestEnvironment/start.ivp")).shouldBe(visible);
    assertThat(Selenide.title().contains("ivy"));
    $(By.linkText("InitializeTestEnvironment/start.ivp")).click();
    open(EngineUrl.createProcessUrl("/WorkflowDemos/15254CF1CE56AE72/start.ivp"));
    $("#form\\:employeeName").sendKeys("Charlie");
    $("#form\\:email").sendKeys("charlie@xyz.com");
    $("#form\\:employeeDateOfBirth_input").sendKeys("26.12.1985");
    $("#ui-datepicker-div").shouldBe(visible);
    $("#form\\:employeeName").click();
    $("#ui-datepicker-div").shouldNotBe(visible);
    $("#form\\:needsParkingLot").click();
  }
}