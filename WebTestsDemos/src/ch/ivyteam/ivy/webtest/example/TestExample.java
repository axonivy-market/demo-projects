package ch.ivyteam.ivy.webtest.example;

import static org.fest.assertions.api.Assertions.assertThat;

import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

/**
 * This is a sample how to use Selenium Web Tests. For more information visit
 * the online documentation under <a href="http://seleniumhq.org/docs/">http://seleniumhq.org/docs/</a>. 
 *
 * There is a Firefox Plugin called Selenium IDE which allows recording tests and exporting them to JUnit.
 * See <a href="http://seleniumhq.org/projects/ide/">http://seleniumhq.org/projects/ide/</a>.
 */
public class TestExample {

	private WebDriver driver;
	private String baseUrl;
	private String ivyApplication;

	@Before
	public void setUp() throws Exception {
		// Create a new instance of the html unit driver
		// InternetExplorerDriver and FirefoxDriver will test with a real
		// browser.
		// You will see the browser working after starting the test.
		// But they are slow. HtmlUnitDriver will work with an in-memory java
		// browser and is therefore faster.
		//driver = new org.openqa.selenium.ie.InternetExplorerDriver();
		driver = new org.openqa.selenium.firefox.FirefoxDriver();
		// driver = new org.openqa.selenium.htmlunit.HtmlUnitDriver(true);

		// Max time to wait for an element to appear is set to 10 Seconds
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

		// The base URL where the application is deployed.
		// The current value points to a locally running Axon.ivy designer.
		// You can also run tests against a Axon.ivy Server.
		baseUrl = System.getProperty("test.engine.baseUrl", "http://localhost:8081/ivy/");

		// The name of the Application to test.
		// The current value points to the designer application used in Axon.ivy designer.
		// If you test against a Axon.ivy engine the application name will be different.
		ivyApplication = System.getProperty("test.app", "designer");
	}

	@After
	public void tearDown() throws Exception {
		// Quite driver after test is finished
		driver.quit();
	}

	@Test
	public void testGoogleSearch() {

        // Visit Google
        driver.get("http://www.google.com");

        // Find the text input element by its name
        WebElement element = driver.findElement(By.name("q"));

        // Enter something to search for
        element.sendKeys("axon.ivy");

        // Now submit the form. WebDriver will find the form for us from the element
        element.submit();
        
        // Ensure that there is at least one link containing the text "BPM"
        // After the timeout of 10's this call will throw a NoSuchElementException 
        // if the link is missing.
        driver.findElement(By.partialLinkText("BPM"));

        // Verify the page title
        assertThat(driver.getTitle()).startsWith("axon.ivy");
	}

	@Test
	public void testDemoForm() throws Exception {
		
		// Visit the form example in the HtmlDialogDemos project.
		// Import this project in the Axon.ivy designer and 
		// start the engine before running the test.
		driver.get(baseUrl + "pro/" + ivyApplication
				+ "/HtmlDialogDemos/145D18298A3E81CF/FormDemo.ivp?language=de");

		// Fill in form values
		driver.findElement(By.id("Form:Name")).sendKeys("Hans");
		driver.findElement(By.id("Form:Firstname")).sendKeys("Meier");
		driver.findElement(By.id("Form:Address")).sendKeys("Strasse");
		driver.findElement(By.id("Form:ZipCode")).sendKeys("1234");
		driver.findElement(By.id("Form:City")).sendKeys("Dorf");
		driver.findElement(By.id("Form:Country_input")).sendKeys("Schweiz");
		driver.findElement(By.id("Form:SendButton")).click();
		
		// Get the error messages text from the document
		String firstErrorMessage = driver.findElement(By.xpath("//div[@id='Form:msgs']/div/ul/li[1]/span"))
				.getText();
		String secondErrorMessage = driver.findElement(By.xpath("//div[@id='Form:msgs']/div/ul/li[2]/span"))
				.getText();
		
		// Check the error Messages
		assertThat(firstErrorMessage).startsWith("Geburtstag");
		assertThat(secondErrorMessage).startsWith("E-Mail");
	}

}
