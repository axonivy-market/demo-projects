package ch.ivyteam.wf;

import java.io.IOException;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.ISession;

@ManagedBean
@SessionScoped
public class LoginBean
{
  private static final String HOME_REF = Ivy.html().startRef("Workflow/Home/DefaultApplicationHomePage.ivp");
  private static final String LOGIN_REF = Ivy.html().startRef("Login/Login/DefaultLoginPage.ivp");
  private String userName;
  private String password;

  public void checkLogin()
  {
    if (ISession.get().isSessionUserUnknown())
    {
      redirect(LOGIN_REF);
    }
  }

  public void login()
  {
    if (ISession.get().loginSessionUser(userName, password))
    {
      redirect(HOME_REF);
      return;
    }
    FacesContext.getCurrentInstance().addMessage(null,
            new FacesMessage(FacesMessage.SEVERITY_ERROR, "Login failed", "Login failed"));
  }

  public void logout()
  {
    ISession.get().logoutSessionUser();
    redirect(LOGIN_REF);
  }

  private void redirect(String url)
  {
    try
    {
      FacesContext context = FacesContext.getCurrentInstance();
      context.getExternalContext().redirect(url);
    }
    catch (IOException e)
    {
      throw new RuntimeException("Could not send redirect", e);
    }
  }

  public String getSessionUserName()
  {
    return ISession.get().getSessionUserName();
  }

  public String getUserName()
  {
    return userName;
  }

  public void setUserName(String userName)
  {
    this.userName = userName;
  }

  public String getPassword()
  {
    return password;
  }

  public void setPassword(String password)
  {
    this.password = password;
  }
}
