package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;

/**
 * This is parameter class of fields that use a RRadioButton.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 14.09.2008
 */
class RadioButtonParameters extends FieldComponentWithListParameters
{
  private static final long serialVersionUID = -7107387295598984475L;

  private String insideContainerStyle;

  protected RadioButtonParameters(List<String> cmsContexts, String name, String fullName,
          List<String[]> recordsetRef, ComplexComponentParameters parentContainerParameters, Integer position, Class<?> clazz, String defaultDBConfig)
  {
    super(cmsContexts, name, fullName, recordsetRef, parentContainerParameters, position, clazz, defaultDBConfig);

    insideContainerStyle = Cms.co(getCmsContexts(), KnownParameters.INSIDE_CONTAINER_STYLE_PARAMETER,
            parentContainerParameters.getRadioContainerStyle());
  }

  @Override
  public ComponentType getComponentType()
  {
    return ComponentType.RADIO_BUTTON;
  }

  protected String getInsideContainerStyle()
  {
    return insideContainerStyle;
  }

  @Override
  protected boolean hasEmptyValue()
  {
    return false;
  }

  @Override
  protected final boolean isEditableByDefault()
  {
    return false;
  }
}
