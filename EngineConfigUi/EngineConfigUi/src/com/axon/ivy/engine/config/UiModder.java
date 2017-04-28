package com.axon.ivy.engine.config;

import javax.faces.application.FacesMessage;
import javax.faces.application.FacesMessage.Severity;
import javax.faces.context.FacesContext;

public class UiModder
{
  public static void systemDatabaseConfigSaved()
  {
    addSavedMessage("Your System Database settings were saved");
  }

  public static void adminsSaved()
  {
    addSavedMessage("Your Administrators settings were saved");
  }

  public static void webserverConfigSaved()
  {
    addSavedMessage("Your WebServer settings were saved");
  }

  public static void clusterConfigSaved()
  {
    addSavedMessage("Your Cluster settings were saved");
  }

  public static void addSavedMessage(String detail)
  {
    addMessage(FacesMessage.SEVERITY_INFO, "Successfully Saved", detail);
  }

  private static void addMessage(Severity severity, String summary, String detail)
  {
    FacesContext context = FacesContext.getCurrentInstance();
    context.addMessage(null, new FacesMessage(severity, summary, detail));
  }
}