package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.util.StringUtil;
import ch.ivyteam.ivy.environment.Ivy;

/**
 * This is the common parameters for all field components.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
abstract public class FieldComponentParameters extends ComponentParameters
{
  protected Boolean blockingValidation;

  protected String defaultValue;

  protected String errorIconUrl;

  protected String fieldStyle;

  protected String focusGainedMethod;

  protected String focusLostMethod;

  protected String iconStyle;

  protected String labelStyle;

  protected boolean mandatory;

  protected String mandatoryIconUrl;

  protected String transparentIconUrl;

  protected String validationToolTip = null;

  protected String valueChangedMethod;

  public FieldComponentParameters(Configuration configuration, List<String> cmsContexts, String name,
          String fullName, ContainerParameters parentContainerParameters)
  {
    super(configuration, cmsContexts, name, fullName);

    mandatory = Cms.coAsBoolean(cmsContexts, KnownParameters.MANDATORY_PARAMETER, false);

    blockingValidation = Cms.coAsBoolean(cmsContexts, KnownParameters.BLOCKING_VALIDATION_PARAMETER, false);

    mandatoryIconUrl = Ivy.cms().cr(KnownParameters.MANDATORY_ICON);

    errorIconUrl = Ivy.cms().cr(KnownParameters.ERROR_ICON);

    transparentIconUrl = Ivy.cms().cr(KnownParameters.TRANSPARENT_ICON);

    valueChangedMethod = Cms.co(cmsContexts, KnownParameters.VALUE_CHANGED_METHOD_PARAMETER);

    focusLostMethod = Cms.co(cmsContexts, KnownParameters.FOCUS_LOST_METHOD_PARAMETER);

    focusGainedMethod = Cms.co(cmsContexts, KnownParameters.FOCUS_GAINED_METHOD_PARAMETER);

    defaultValue = Cms.co(cmsContexts, KnownParameters.DEFAULT_VALUE_PARAMETER);
    defaultValue = StringUtil.substitute(defaultValue, configuration.getValueSubstitutions(), "%", "%");

    labelStyle = Cms.co(getCmsContexts(), KnownParameters.LABEL_STYLE_PARAMETER,
            parentContainerParameters.labelStyle);

    iconStyle = Cms.co(getCmsContexts(), KnownParameters.ICON_STYLE_PARAMETER,
            parentContainerParameters.iconStyle);

    fieldStyle = Cms.co(getCmsContexts(), KnownParameters.FIELD_STYLE_PARAMETER,
            parentContainerParameters.fieldStyle);
  }

  protected String getErrorIconUrl()
  {
    return errorIconUrl;
  }

  protected String getFieldStyle()
  {
    return fieldStyle;
  }

  protected String getFocusGainedMethod()
  {
    return focusGainedMethod;
  }

  protected String getFocusLostMethod()
  {
    return focusLostMethod;
  }

  protected String getIconStyle()
  {
    return iconStyle;
  }

  protected String getLabelStyle()
  {
    return labelStyle;
  }

  protected String getMandatoryIconUrl()
  {
    return mandatoryIconUrl;
  }

  protected String getTransparentIconUrl()
  {
    return transparentIconUrl;
  }

  protected String getValueChangedMethod()
  {
    return valueChangedMethod;
  }

  @Override
  public boolean isContainer()
  {
    return false;
  }

  /**
   * Returns whether the content of the component that is described by this parameters is mandatory.
   * 
   * @return true if this the content is mandatory, false otherwise.
   */
  public boolean isMandatory()
  {
    return mandatory;
  }

  /**
   * Returns whether the content of the component that is described by this parameters should be valid to pass to the next step.
   * 
   * @return true if this the content should be valid, false otherwise.
   */
  public boolean isValidationBlocking()
  {
    return blockingValidation;
  }
}
