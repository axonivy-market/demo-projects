package ch.ivyteam.htmldialog.demo;

import static ch.ivyteam.htmldialog.server.test.ProcessUtil.startProcess;
import static com.codeborne.selenide.CollectionCondition.sizeGreaterThan;
import static com.codeborne.selenide.CollectionCondition.sizeLessThan;
import static com.codeborne.selenide.Condition.visible;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.Keys;

import com.axonivy.ivy.webtest.IvyWebTest;

@IvyWebTest
public class WebTestIconsIT
{
  @Test
  void testIcons()
  {
    startProcess("145D18869AFC8A9A/IconsShowcase.ivp");
    $$(".icon-block").filter(visible).shouldHave(sizeGreaterThan(150));
    $("#search input").sendKeys("adver");
    $$(".icon-block").filter(visible).shouldHave(sizeLessThan(5));
    $("#search input").clear();
    $("#search input").sendKeys(Keys.BACK_SPACE);
    $$(".icon-block").filter(visible).shouldHave(sizeGreaterThan(150));
  }
}
