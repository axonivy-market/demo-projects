package workflow.trigger;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import test.web.BaseWebTest;
import test.web.EngineUrl;

public class WebTestCreateNewEmployee extends BaseWebTest
{

  @Test
  void test()
  {
    driver.get(EngineUrl.base());
    assertThat(driver.getTitle().contains("ivy"));

    driver.findElement(By.linkText("InitializeTestEnvironment/start.ivp")).click();
    driver.navigate().to(EngineUrl.process() + "/WorkflowDemos/15254CF1CE56AE72/start.ivp");
    driver.findElement(By.id("form:employeeName")).sendKeys("Charlie");
    driver.findElement(By.id("form:employeeDateOfBirth_input")).sendKeys("26.12.1985" + Keys.ESCAPE);
    driver.findElement(By.id("form:email")).sendKeys("charlie@xyz.com");
    driver.findElement(By.id("form:needsParkingLot")).click();
    driver.findElement(By.id("form:submit")).click();
  }
}