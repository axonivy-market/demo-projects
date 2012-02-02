package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;

import com.ulcjava.base.application.ULCComponent;

/**
 * This is the implementation of fields that use a RLookupTextField.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 02.02.2010
 */
public class TextFieldList extends FieldComponentWithList
{
  private RTextField textField = null;

  protected TextFieldList(DynamicDialogPanel panel, ComplexComponent parentContainer,
          TextFieldListParameters parameters, int index)
  {
    super(panel, parentContainer, parameters, index);
  }

  @Override
  public final void focusLost()
  {
    validate();
    super.focusLost();
  }

  @Override
  protected final String getDisplayedText()
  {
    return textField.getText();
  }

  @Override
  public final ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  private RTextField getLookupTextField()
  {
    if (textField == null)
    {
      textField = new RTextField();
      textField.setName(getParameters().getName() + "TextFieldList");

      textField.addValueChangedListener(new ValueChangedListener(this, false));

      textField.addFocusListener(new FocusListener(this));

      textField.setEditable(getParameters().isEditable());

      getUlcComponents().add(textField);
    }
    return textField;
  }

  @Override
  public final ULCComponent getMainComponent()
  {
    return textField;
  }

  @Override
  public final TextFieldListParameters getParameters()
  {
    return (TextFieldListParameters) getComponentParameters();
  }

  @Override
  protected final int getSelectedIndex()
  {
    Integer index;

    index = getValueIndex(textField.getValueAsString());

    return index == null ? -1 : index;
  }

  @Override
  public final boolean isFocusable()
  {
    return textField.isFocusable();
  }

  @Override
  public final void setDisplayedText(String text)
  {
    textField.setText(text);
  }

  @Override
  public final void setFocusable(boolean b)
  {
    textField.setFocusable(b);
  }

  @Override
  protected final void setListData(ch.ivyteam.ivy.scripting.objects.List<String> lookupTextFieldData)
  {
    // Nothing to do
  }

  @Override
  protected final void setSelectedIndex(int index)
  {
    String value;
    String[] record;

    value = "";

    if (index != -1)
    {
      record = getRecord(index);
      if (record != null)
      {
        value = record[1];
      }
    }
    textField.setText(value);
  }

  @Override
  protected final void applyFieldStyles()
  {
    textField.setStyle(getParameters().getFieldStyle());

    setWeightX(textField);
  }

  @Override
  public final boolean validate()
  {
    boolean valid;

    if (getParameters().isEditable())
    {
      valid = TextValidation.validate(this, isMandatory(), getParameters().getTextValidationParameters());

      validationDone(valid);
    }
    else
    {
      valid = validateList();
    }

    return valid;
  }

  @Override
  protected final ULCComponent getFieldComponent()
  {
    return getLookupTextField();
  }

  @Override
  protected final boolean isFillable()
  {
    return true;
  }

  @Override
  protected final boolean isEditable()
  {
    return false;
  }

  @Override
  protected boolean isBackgroundColorChangedAllowed()
  {
    return true;
  }
}
