package com.axon.ivy.engine.config;

import javax.faces.application.FacesMessage;
import javax.faces.application.FacesMessage.Severity;
import javax.faces.context.FacesContext;

import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;

public class UiModder
{
  public static void updateUiPopUp(ConnectionState testResult)
  {
    switch (testResult)
    {
      case CONNECTED:
        connectionEstablished();
        break;

      case CONNECTED_NO_TABLES:
        connectionNoTables();
        break;

      case CONNECTED_WRONG_NEWER_VERSION:
        connectionNewVersion();
        break;

      case CONNECTED_WRONG_OLDER_VERSION:
        connectionOldVersion();
        break;

      case CONNECTING:
        connecting();
        break;

      case CONNECTION_FAILED:
        connectionFailed();
        break;

      case NOT_CONNECTED:
        notConnected();
        break;

      default:
        break;
    }
  }

  public static void configurationSaved()
  {
    addMessage(FacesMessage.SEVERITY_INFO, "Saved!",
            "Your configuration settings were saved!");
  }
  
  public static void connectionEstablished()
  {
    addMessage(FacesMessage.SEVERITY_INFO, "Successful",
            "Your settings are valid! Connection was established.");
  }

  public static void connectionFailed()
  {
    addMessage(FacesMessage.SEVERITY_ERROR, "Failure",
            "Your settings are invalid! Connection failed.");
  }

  private static void notConnected()
  {
    addMessage(FacesMessage.SEVERITY_WARN, "Not Connected",
            "Check your setting, connection could not be established.");
  }

  private static void connecting()
  {
    addMessage(FacesMessage.SEVERITY_INFO, "Connecting...",
            "Trying to connect with Database...");
  }

  private static void connectionOldVersion()
  {
    addMessage(FacesMessage.SEVERITY_WARN, "Old Version",
            "Your Database has an older version.");
  }

  private static void connectionNewVersion()
  {
    addMessage(FacesMessage.SEVERITY_WARN, "Newer Version",
            "Your Database has an newer version.");
  }

  private static void connectionNoTables()
  {
    addMessage(FacesMessage.SEVERITY_ERROR, "No Tables existing",
            "Your database doesn't have any tables.");
  }

  private static void addMessage(Severity severity, String summary, String detail)
  {
    FacesContext context = FacesContext.getCurrentInstance();
    context.addMessage(null, new FacesMessage(severity, summary, detail));
  }
}
