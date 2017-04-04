package com.axon.ivy.engine.config;

import javax.faces.application.FacesMessage;
import javax.faces.application.FacesMessage.Severity;
import javax.faces.context.FacesContext;

public class UiModder
{
  public static void configurationSaved()
  {
    addMessage(FacesMessage.SEVERITY_INFO, "Saved!",
            "Your configuration settings were saved!");
  }

  private static void addMessage(Severity severity, String summary, String detail)
  {
    FacesContext context = FacesContext.getCurrentInstance();
    context.addMessage(null, new FacesMessage(severity, summary, detail));
  }
}