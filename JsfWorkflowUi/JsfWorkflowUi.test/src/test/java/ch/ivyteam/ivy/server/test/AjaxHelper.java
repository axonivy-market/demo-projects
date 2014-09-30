package ch.ivyteam.ivy.server.test;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.google.common.base.Predicate;

/**
 * Simple API to work with elements that can not instantly be visible as they are loaded/manipulated trough AJAX requests.
 * @author Lord eAgle
 */
public class AjaxHelper{
	private WebDriver driver;

	public AjaxHelper(WebDriver driver){
		this.driver = driver;
	}
	
	public void assertElementContains(final String elementId, final String expectedContent){
		new WebDriverWait(driver, 10).until(new Predicate<WebDriver>() {
			public boolean apply(WebDriver driver){
				return driver.findElement(By.id(elementId)).getText().contains(expectedContent);
			}
		});
	}
	
	public void assertElementContainsNot(final String elementId, final String notExpectedContent){
		new WebDriverWait(driver, 10).until(new Predicate<WebDriver>() {
			public boolean apply(WebDriver driver){
				return !driver.findElement(By.id(elementId)).getText().contains(notExpectedContent);
			}
		});
	}
	
	public void assertElementValue(final String elementId, final String expectedContent){
		new WebDriverWait(driver, 10).until(
				ExpectedConditions.textToBePresentInElementValue(By.id(elementId), expectedContent)
		);
	}
	
	public WebElement findUntilVisible(final String elementId){
		return new WebDriverWait(driver, 30).until(
				ExpectedConditions.visibilityOfElementLocated(By.id(elementId))
		);
	}
}