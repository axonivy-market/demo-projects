package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType.ComponentTypeEnum;

/**
 * This is parameter class of fields that use a RLookupTextField.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 14.09.2008
 */
public class LookupTextFieldParameters extends FieldComponentWithListParameters
{
  private static final long serialVersionUID = 6795256309594433855L;

  private TextValidationParameters textValidationParameters;

  public LookupTextFieldParameters(Configuration configuration, List<String> cmsContexts, String name,
          String fullName, List<String[]> recordsetRef, ContainerParameters parentContainerParameters)
  {
    super(configuration, cmsContexts, name, fullName, recordsetRef, parentContainerParameters);

    textValidationParameters = new TextValidationParameters(cmsContexts, name, fullName, false, false);
  }

  @Override
  public ComponentTypeEnum getComponentType()
  {
    return ComponentType.ComponentTypeEnum.LOOKUP_TEXT_FIELD;
  }

  public TextValidationParameters getTextValidationParameters()
  {
    return textValidationParameters;
  }

  @Override
  protected boolean hasEmptyValue()
  {
    return true;
  }
}
