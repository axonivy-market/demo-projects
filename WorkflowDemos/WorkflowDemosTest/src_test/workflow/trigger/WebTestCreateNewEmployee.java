package workflow.trigger;

import static org.assertj.core.api.Assertions.assertThat;


import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;

import test.web.EngineUrl;

public class WebTestCreateNewEmployee {

	@Test
	public void test() {	
		WebDriver driver = new HtmlUnitDriver(true);

		try{
			driver.get(EngineUrl.base());
			assertThat(driver.getTitle().contains("ivy"));

			driver.findElement(By.linkText("InitializeTestEnvironment/start.ivp")).click();
			driver.navigate().to(EngineUrl.process()+ "/WorkflowDemos/15254CF1CE56AE72/start.ivp");
			driver.findElement(By.id("form:employeeName")).sendKeys("Charlie");
			driver.findElement(By.id("form:employeeDateOfBirth_input")).sendKeys("26.12.1985" + Keys.ESCAPE);
			driver.findElement(By.id("form:email")).sendKeys("charlie@xyz.com");
			driver.findElement(By.id("form:needsParkingLot")).click();
			driver.findElement(By.id("form:submit")).click();
		}		
		finally {
			driver.close();
		}		
	}
}