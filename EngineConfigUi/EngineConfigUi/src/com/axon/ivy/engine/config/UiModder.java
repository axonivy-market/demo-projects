package com.axon.ivy.engine.config;

import javax.faces.application.FacesMessage;
import javax.faces.application.FacesMessage.Severity;
import javax.faces.context.FacesContext;

import org.apache.commons.lang3.exception.ExceptionUtils;

import ch.ivyteam.licence.SignedLicence;

public class UiModder
{
  public static void notConnected()
  {
    addMessage(FacesMessage.SEVERITY_WARN, "Not Connected",
            "Could not save " + getAvailableConfigs() + " settings because there is no open"
                    + " connection to the system database");
  }

  public static void yamlConfigSaved()
  {
    addMessage(FacesMessage.SEVERITY_INFO, "System Database and Webserver config saved",
            "Your System Database config were saved to configuration/ivy.yaml");
  }

  public static void yamlConfigNotSaved(Exception ex)
  {
    String msg = ExceptionUtils.getRootCauseMessage(ex);
    addNotSavedMessage("Your System Database and Webserver settings could not be saved because: " + msg);
  }

  public static void savedAllToDatabase()
  {
    addMessage(FacesMessage.SEVERITY_INFO, "Saved All",
            getAvailableConfigs() + " were saved to the database");
  }

  public static void allNotSaved(Exception ex)
  {
    String exMessage = ExceptionUtils.getRootCauseMessage(ex);
    addNotSavedMessage(getAvailableConfigs() + " could not be saved to the database: "
            + exMessage);
  }

  public static void restartHint()
  {
    addWarningMessage("Please restart", "You have to restart the Engine for the changes to take effect.");
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

  private static String getAvailableConfigs()
  {
    if (SignedLicence.isEnterprise())
    {
      return "Administrators and Cluster Nodes";
    }
    return "Administrators";
  }
}