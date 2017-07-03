package com.axon.ivy.engine.config;

import javax.faces.component.UIInput;
import javax.faces.component.UIViewRoot;
import javax.faces.context.FacesContext;

import org.primefaces.component.commandbutton.CommandButton;

public class StyleSystemDatabaseInputs
{
  public static void setIncorrectInputs(SystemDatabaseConnectionState state)
  {
    UIInput hostInput = getComponent("accordionPanel:systemDatabaseComponent:systemDatabaseForm:hostInput");
    UIInput portInput = getComponent("accordionPanel:systemDatabaseComponent:systemDatabaseForm:portInput");
    UIInput usernameInput = getComponent("accordionPanel:systemDatabaseComponent:systemDatabaseForm:usernameInput");
    UIInput passwordInput = getComponent("accordionPanel:systemDatabaseComponent:systemDatabaseForm:passwordInput");
    CommandButton createDbButton = getComponent("accordionPanel:systemDatabaseComponent:systemDatabaseForm:createDatabaseButton");
    CommandButton convertDbButton = getComponent("accordionPanel:systemDatabaseComponent:systemDatabaseForm:convertDbButton");

    resetInputs(createDbButton, convertDbButton, hostInput, portInput, usernameInput, passwordInput);

    switch (state)
    {
      case CREATE_DB:
        String createDbButtonStyleClass = createDbButton.getStyleClass();
        createDbButton.setStyleClass(createDbButtonStyleClass + " ui-state-warn");
        FocusSetter.setFocusOnCreateDbButton();
        break;
      case WRONG_HOST:
        hostInput.setValid(false);
        portInput.setValid(false);
        FocusSetter.setFocusOnHostInput();
        break;
      case WRONG_LOGIN:
      case WRONG_PASSWORD:
        usernameInput.setValid(false);
        passwordInput.setValid(false);
        FocusSetter.setFocusOnUsernameInput();
        break;
      case CONVERT_DB:
        String convertDbButtonStyleClass = convertDbButton.getStyleClass();
        convertDbButton.setStyleClass(convertDbButtonStyleClass + " ui-state-warn");
        FocusSetter.setFocusOnConvertDbButton();
        break;
      default:
        FocusSetter.setFocusOnSystemDatabaseTabNextStepButton();
        break;
    }
  }

  @SuppressWarnings("unchecked")
  private static <T> T getComponent(String id)
  {
    FacesContext context = FacesContext.getCurrentInstance();
    UIViewRoot viewRoot = context.getViewRoot();
    return (T) viewRoot.findComponent(id);
  }

  private static void resetInputs(CommandButton createDbButton, CommandButton convertDbButton,
          UIInput hostInput, UIInput portInput,
          UIInput usernameInput, UIInput passwordInput)
  {
    hostInput.setValid(true);
    portInput.setValid(true);
    usernameInput.setValid(true);
    passwordInput.setValid(true);

    resetButton(createDbButton);
    resetButton(convertDbButton);
  }

  private static void resetButton(CommandButton button)
  {
    if (button.getStyleClass().contains("ui-state-warn"))
    {
      button.setStyleClass(button.getStyleClass().replace("ui-state-warn", ""));
    }
  }
}