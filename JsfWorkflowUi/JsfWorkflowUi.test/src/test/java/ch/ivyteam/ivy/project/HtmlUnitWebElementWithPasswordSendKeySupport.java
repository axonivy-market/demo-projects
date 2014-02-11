package ch.ivyteam.ivy.project;

import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.htmlunit.HtmlUnitKeyboard;
import org.openqa.selenium.htmlunit.HtmlUnitWebElement;
import org.openqa.selenium.htmlunit.InputKeysContainer;

import com.gargoylesoftware.htmlunit.html.HtmlElement;
import com.gargoylesoftware.htmlunit.html.HtmlPasswordInput;

public class HtmlUnitWebElementWithPasswordSendKeySupport extends HtmlUnitWebElement
{
  public HtmlUnitWebElementWithPasswordSendKeySupport(HtmlUnitDriver parent, HtmlElement element)
  {
    super(parent, element);
  }
  
  @Override
  public void sendKeys(CharSequence... value)
  {
    if (element instanceof HtmlPasswordInput)
    {
      sendKeysIgnoreHidden(value);
    }
    else
    {
      super.sendKeys(value);
    }
  }

  private void sendKeysIgnoreHidden(CharSequence... value)
  {
    InputKeysContainer keysContainer = new InputKeysContainer(true, value);
    HtmlUnitKeyboard keyboard = (HtmlUnitKeyboard) parent.getKeyboard();
    keyboard.sendKeys(element, getAttribute("value"), keysContainer);
  }
  
  @Override
  public boolean isDisplayed()
  {
    return true;
  }
}