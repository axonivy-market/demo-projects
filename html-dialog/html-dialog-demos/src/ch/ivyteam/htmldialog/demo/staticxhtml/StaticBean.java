package ch.ivyteam.htmldialog.demo.staticxhtml;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

import ch.ivyteam.ivy.application.IApplication;
import ch.ivyteam.ivy.environment.Ivy;

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
    @SuppressWarnings("removal")
    IApplication app = Ivy.wf().getApplication(); // Deprecated since 8.0.26  
    // For 8.0.26 and newer use the following code:  
    // IApplication app = IApplication.current();

    text = Ivy.session().getSessionUserName() + " clicked the button in application '"
            + app.getName() + "'.";
  }
}
