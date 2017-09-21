package com.axon.ivy.engine.config;

import org.primefaces.context.RequestContext;

public class FocusSetter
{
  public static void setFocusOnLicenceTabNextStepButton()
  {
    focus("accordionPanel:licenceComponent:systemDatabaseTabNextButton");
  }

  public static void setFocusOnSystemDatabaseTabNextStepButton()
  {
    focus("accordionPanel:systemDatabaseComponent:systemDatabaseForm:systemDatabaseTabNextButton");
  }

  public static void setFocusOnAdministratorsTabNextStepButton()
  {
    focus("accordionPanel:administratorsComponent:adminManagerForm:adminsTabNextButton");
  }

  public static void setFocusOnClusterTabNextStepButton()
  {
    focus("accordionPanel:clusterComponent:clusterNodeForm:clusterTabNextButton");
  }

  public static void setFocusOnHostInput()
  {
    focus("accordionPanel:systemDatabaseComponent:systemDatabaseForm:hostInput");
  }

  public static void setFocusOnUsernameInput()
  {
    focus("accordionPanel:systemDatabaseComponent:systemDatabaseForm:usernameInput");
  }

  public static void setFocusOnSaveAndConnectCreateButton()
  {
    focus("accordionPanel:systemDatabaseComponent:creatingDatabaseForm:saveAndConnectButton");
  }

  public static void setFocusOnSaveAndConnectConvertButton()
  {
    focus("accordionPanel:systemDatabaseComponent:convertingDatabaseDialog:creatingDatabaseForm:saveAndConnectButton");
  }

  private static void focus(String id)
  {
    RequestContext.getCurrentInstance().execute(
            "var element = document.getElementById('" + id + "');if(element){element.focus();}");
  }
}
