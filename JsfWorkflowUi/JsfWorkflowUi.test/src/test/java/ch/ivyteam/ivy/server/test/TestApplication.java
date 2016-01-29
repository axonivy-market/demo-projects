package ch.ivyteam.ivy.server.test;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

/**
 * Utility to simplify interactions with the ivy-application under test.
 * @author Lord eAgle
 */
public class TestApplication {
        private final WebDriver driver;
        private final String baseUrl;
        private final String appName;
        
        public TestApplication(WebDriver driver, String baseUrl, String appName) {
                this.driver = driver;
                this.baseUrl = baseUrl;
                this.appName = appName;
        }

        public void login(String user, String password){
                driver.get(baseUrl+"wf/"+appName+"/login");
                AjaxHelper ajax = new AjaxHelper(driver);
                
                WebElement userInput = ajax.findUntilVisible(By.name("username"));
                WebElement pwdInput = ajax.findUntilVisible(By.name("password"));
                
                userInput.clear();
                userInput.sendKeys(user);
                pwdInput.clear();
                pwdInput.sendKeys(password);
                
                pwdInput.submit();
        }
        
        public void loginAsAdmin(){
                String adminName = getDefaultAdminName();
                login(adminName, adminName);
        }
        
        protected String getDefaultAdminName(){
                if (appName.equals("designer")){
                        return "Developer";
                } else if (appName.equals("System")){
                        return "AxonIvy";
                }
                throw new IllegalStateException("Failed to evaluate admin user for application '"+appName+"'.");
        }
        
        public void navigateTo(String relativeUrl){
                driver.get(baseUrl + "pro/" + appName + "/" + relativeUrl);
        }
        
        public void navigateToServerStartPage(){
                driver.get(baseUrl + "info/index.jsp?showSystemApp=true");
        }
        
}
