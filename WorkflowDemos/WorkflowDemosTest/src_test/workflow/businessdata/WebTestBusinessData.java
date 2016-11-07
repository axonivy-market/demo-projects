package workflow.businessdata;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

import test.web.BaseWebTest;

public class WebTestBusinessData extends BaseWebTest {
	private static final String BROWSE_DOSSIERS_LINK = "155BB4328F79B2D5/browse.ivp";
	
	@Test
	public void testBrowseBusinessData() throws Exception {
		startProcess(BROWSE_DOSSIERS_LINK);
		assertPersonIsDisplayed("Euler");
	}
	
	@Test
	public void createBusinessData() throws Exception {
		startProcess("155BB4328F79B2D5/create.ivp");
		createPersonDossier("Bernoulli");
		Thread.sleep(1500); // index of Elasticsearch has to be updated
		startProcess(BROWSE_DOSSIERS_LINK); // load again
		assertPersonIsDisplayed("Bernoulli");
	}
	
	private void assertPersonIsDisplayed(String name) {
		await(ExpectedConditions.textToBePresentInElementLocated(
				By.xpath("//*[@id='dossierTable']"), name));
	}
	
	private void createPersonDossier(String name) {
		driver.findElement(By.id("form:dossierName")).sendKeys(name.toUpperCase());
		driver.findElement(By.id("form:dossierPersonLastName")).sendKeys(name);
		driver.findElement(By.id("form:save")).click();
	}
	
}
