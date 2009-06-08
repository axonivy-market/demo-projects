package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType.ComponentTypeEnum;

/**
 * This is parameter class of fields that use a RRadioButton.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 14.09.2008
 */
public class RadioButtonParameters extends FieldComponentWithListParameters
{
  private static final long serialVersionUID = -7107387295598984475L;

  protected String insideContainerStyle;

  public RadioButtonParameters(Configuration configuration, List<String> cmsContexts, String name,
          String fullName, List<String[]> recordsetRef, ContainerParameters parentContainerParameters)
  {
    super(configuration, cmsContexts, name, fullName, recordsetRef, parentContainerParameters);

    insideContainerStyle = Cms.co(getCmsContexts(), KnownParameters.INSIDE_CONTAINER_STYLE_PARAMETER,
            parentContainerParameters.radioContainerStyle);
  }

  @Override
  public ComponentTypeEnum getComponentType()
  {
    return ComponentType.ComponentTypeEnum.RADIO_BUTTON;
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
}
