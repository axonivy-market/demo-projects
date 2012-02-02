package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.net.MalformedURLException;
import java.net.URL;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.InsideLookupTextFilter;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.widgets.components.RLookupTextField;

import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.util.ULCIcon;

/**
 * This is the implementation of fields that use a RLookupTextField.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 14.09.2008
 */
public class LookupTextField extends FieldComponentWithList
{
  private RLookupTextField lookupTextField = null;

  private boolean editable;

  /**
   * Constructs a new LookupTextField object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected LookupTextField(DynamicDialogPanel panel, ComplexComponent parentContainer,
          LookupTextFieldParameters parameters, int index)
  {
    super(panel, parentContainer, parameters, index);

    editable = getParameters().isEditable();
  }

  @Override
  public final void focusLost()
  {
    if (!isEditable() && lookupTextField.getSelectedListEntry() == null)
    {
      lookupTextField.setValueAsString("");
    }
    validate();
    super.focusLost();
  }

  @Override
  protected final String getDisplayedText()
  {
    return lookupTextField.getText();
  }

  @Override
  public final ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  private RLookupTextField getLookupTextField()
  {
    if (lookupTextField == null)
    {
      lookupTextField = new RLookupTextField();
      lookupTextField.setName(getParameters().getName() + "LookupTextField");
      lookupTextField.setFilter(new InsideLookupTextFilter());

      lookupTextField.addValueChangedListener(new ValueChangedListener(this, true));

      lookupTextField.addFocusListener(new FocusListener(this));

      lookupTextField.setSelectAllOnFocusGained(getParameters().isSelectAllOnFocusGained());

      // TODO Force selection doesn't seem to work. Try it with new Ivy version.
      // See issue #21609
      // Call setForcedSelection with isEditable has parameter

      if (getParameters().isIconVisible())
      {
        try
        {
          lookupTextField.setIndicatorIcon(new ULCIcon(new URL(Ivy.html().coref(
                  "/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialog/icons/LookupTextField16"))));
        }
        catch (MalformedURLException e)
        {
          Ivy.log().error("Set LookupTextField Icon : " + e.getMessage());
        }
      }

      getUlcComponents().add(lookupTextField);
    }
    return lookupTextField;
  }

  @Override
  public final ULCComponent getMainComponent()
  {
    return lookupTextField;
  }

  @Override
  public final LookupTextFieldParameters getParameters()
  {
    return (LookupTextFieldParameters) getComponentParameters();
  }

  @Override
  protected final int getSelectedIndex()
  {
    Object object;

    object = lookupTextField.getSelectedListEntry();

    return object == null ? -1 : getValueIndex(object.toString());
  }

  @Override
  public final boolean isFocusable()
  {
    return lookupTextField.isFocusable();
  }

  @Override
  public final void setDisplayedText(String text)
  {
    lookupTextField.setValueAsString(text);
  }

  @Override
  public final void setFocusable(boolean b)
  {
    lookupTextField.setFocusable(b);
  }

  @Override
  protected final void setListData(ch.ivyteam.ivy.scripting.objects.List<String> lookupTextFieldData)
  {
    boolean isEnabled;
    try
    {
      // Without that LookupTextField becomes enabled when the list data is changed
      isEnabled = lookupTextField.isEnabled();
      lookupTextField.setListData(lookupTextFieldData);
      lookupTextField.setEnabled(isEnabled);
    }
    catch (Exception e)
    {
      throw new DynamicDialogException(e);
    }
  }

  @Override
  protected final void setSelectedIndex(int index)
  {
    String value;
    String[] record;

    value = null;

    if (index != -1)
    {
      record = getRecord(index);
      if (record != null)
      {
        value = record[1];
      }
    }
    if (value != lookupTextField.getSelectedListEntry()
            || (value == null && !lookupTextField.getValueAsString().equals("")))
    {
      lookupTextField.setSelectedListEntry(value);
    }
  }

  @Override
  protected final void applyFieldStyles()
  {
    lookupTextField.setStyle(getParameters().getFieldStyle());

    if (getParameters().getColumns() != 0)
    {
      lookupTextField.setColumns(getParameters().getColumns());
      addStyleProperties(lookupTextField, "fill", "NONE");
      addStyleProperties(lookupTextField, "weightX", "");
    }
    else
    {
      setWeightX(lookupTextField);
    }
  }

  @Override
  public final boolean validate()
  {
    boolean valid;

    if (editable)
    {
      valid = TextValidation.validate(this, isMandatory(), getParameters().getTextValidationParameters());

      validationDone(valid);
    }
    else
    {
      valid = validateList();
      if (!valid && !getDisplayedText().equals(""))
      {
        lookupTextField.setSelectedListEntry(null);
        valid = validateList();
      }
    }

    return valid;
  }

  @Override
  protected final ULCComponent getFieldComponent()
  {
    return getLookupTextField();
  }

  @Override
  public final void setEditable(boolean b)
  {
    editable = b;
  }

  @Override
  protected final boolean isEditable()
  {
    return editable;
  }

  @Override
  public final void valueChanged()
  {
    super.valueChanged();
  }

  @Override
  protected final boolean isFillable()
  {
    return true;
  }

  @Override
  protected boolean isBackgroundColorChangedAllowed()
  {
    return true;
  }
}
