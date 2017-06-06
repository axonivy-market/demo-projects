package com.axon.ivy.engine.config;

import javax.faces.application.FacesMessage;
import javax.faces.application.FacesMessage.Severity;
import javax.faces.context.FacesContext;

import org.apache.commons.lang3.exception.ExceptionUtils;

public class UiModder
{
  public static void notConnected()
  {
    addMessage(FacesMessage.SEVERITY_WARN, "Not Connected",
            "Could not save Administrators and Webserver settings because there is no open"
                    + " connection to the system database");
  }

  public static void systemDatabaseConfigSaved()
  {
    addMessage(FacesMessage.SEVERITY_INFO, "System Database config saved",
            "Your System Database config were saved to configuration/serverconfig.xml");
  }

  public static void systemDatabaseConfigNotSaved(Exception ex)
  {
    String msg = ExceptionUtils.getRootCauseMessage(ex);
    addNotSavedMessage("Your System Database settings could not be saved because: " + msg);
  }

  public static void adminsSaved()
  {
    addMessage(FacesMessage.SEVERITY_INFO, "Administrators config saved",
            "Your Administrators config were saved to the system database");
  }

  public static void adminsNotSaved(Exception ex)
  {
    String msg = ExceptionUtils.getRootCauseMessage(ex);
    addNotSavedMessage("Your Administrators settings could not be saved because: " + msg);
  }

  public static void webserverConfigSaved()
  {
    addMessage(FacesMessage.SEVERITY_INFO, "WebServer config saved",
            "Your WebServer config was saved to the system database");
  }

  public static void webserverConfigNotSaved(Exception ex)
  {
    String msg = ExceptionUtils.getRootCauseMessage(ex);
    addNotSavedMessage("Your WebServer settings could not be saved because: " + msg);
  }

  public static void clusterConfigSaved()
  {
    addMessage(FacesMessage.SEVERITY_INFO, "Cluster config saved",
            "Your Cluster config was saved to the system database");
  }

  public static void clusterConfigNotSaved(Exception ex)
  {
    String msg = ExceptionUtils.getRootCauseMessage(ex);
    addNotSavedMessage("Your Cluster settings could not be saved because: " + msg);
  }

  private static void addNotSavedMessage(String detail)
  {
    addMessage(FacesMessage.SEVERITY_FATAL, "Failed To Save", detail);
  }

  public static void addInfoMessage(String summary, String detail)
  {
    addMessage(FacesMessage.SEVERITY_INFO, summary, detail);
  }

  public static void addWarningMessage(String summary, String detail)
  {
    addMessage(FacesMessage.SEVERITY_WARN, summary, detail);
  }

  public static void addErrorMessage(String summary, String detail)
  {
    addMessage(FacesMessage.SEVERITY_ERROR, summary, detail);
  }

  private static void addMessage(Severity severity, String summary, String detail)
  {
    FacesContext context = FacesContext.getCurrentInstance();
    context.addMessage(null, new FacesMessage(severity, summary, detail));
  }
}