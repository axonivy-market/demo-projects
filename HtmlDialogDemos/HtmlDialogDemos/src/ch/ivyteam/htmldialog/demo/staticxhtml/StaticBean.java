package ch.ivyteam.htmldialog.demo.staticxhtml;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class StaticBean
{
  String text = "I was sent from the ManagedBean.";
  
  public String getText()
  {
    return text;
  }
  
  public void buttonAction()
  {
    text = "You clicked the button.";
  }
}
