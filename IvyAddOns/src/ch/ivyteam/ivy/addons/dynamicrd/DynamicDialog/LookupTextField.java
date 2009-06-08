package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.richdialog.widgets.components.RLookupTextField;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.InsideLookupTextFilter;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * This is the implementation of fields that use a RLookupTextField.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 14.09.2008
 */
public class LookupTextField extends FieldComponentWithList
{
  private RLookupTextField lookupTextField = null;

  public LookupTextField(DynamicDialogPanel panel, Container parentContainer, ULCContainer ulcContainer,
          LookupTextFieldParameters parameters)
  {
    super(panel, parentContainer, ulcContainer, parameters);
  }

  @Override
  public void focusGained(String method)
  {
    super.focusGained(method);
  }

  @Override
  public void focusLost(String method)
  {
    validate();
    super.focusLost(method);
  }

  @Override
  public String getDisplayedText()
  {
    return lookupTextField.getText();
  }

  @Override
  public ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  private RLookupTextField getLookupTextField()
  {
    if (lookupTextField == null)
    {
      lookupTextField = new RLookupTextField();
      lookupTextField.setName(parameters.getName() + "LookupTextField");
      lookupTextField.setFilter(new InsideLookupTextFilter());
    }
    return lookupTextField;
  }

  @Override
  public ULCComponent getMainComponent()
  {
    return lookupTextField;
  }

  @Override
  public LookupTextFieldParameters getParameters()
  {
    return (LookupTextFieldParameters) parameters;
  }

  @Override
  protected int getSelectedIndex()
  {
    Integer index;

    index = getValueIndex(lookupTextField.getValueAsString());

    return index == null ? -1 : index;
  }

  @Override
  public void initialize(Position pos)
  {
    GridBagConstraints constraints;

    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + 1);
    constraints.setGridY(pos.getPosY() + 0);
    ulcContainer.add(getLookupTextField(), constraints);

    ulcComponents.add(lookupTextField);

    super.initialize(pos);

    lookupTextField.addValueChangedListener(new ValueChangedListener(this, getParameters()
            .getValueChangedMethod()));

    lookupTextField.addFocusListener(new FocusListener(this, getParameters().getFocusGainedMethod(),
            getParameters().getFocusLostMethod()));
  }

  @Override
  public boolean isFocusable()
  {
    return lookupTextField.isFocusable();
  }

  @Override
  public void setDisplayedText(String text)
  {
    lookupTextField.setText(text);
  }

  @Override
  public void setFocusable(boolean b)
  {
    lookupTextField.setFocusable(b);
  }

  @Override
  protected void setListData(ch.ivyteam.ivy.scripting.objects.List<String> lookupTextFieldData)
  {
    try
    {
      lookupTextField.setListData(lookupTextFieldData);
    }
    catch (Exception e)
    {
      throw new DynamicDialogException(e);
    }
  }

  @Override
  protected void setSelectedIndex(int index)
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
    lookupTextField.setText(value);
  }

  @Override
  protected void applyStyles()
  {
    super.applyStyles();
    lookupTextField.setStyle("field");
  }

  @Override
  public boolean validate()
  {
    boolean valid;

    if (getParameters().editable)
    {
      valid = TextValidation.validate(this, isMandatory(), getParameters().getTextValidationParameters());

      updateIcon(valid);
    }
    else
    {
      valid = super.validate();
    }

    return valid;
  }
}
