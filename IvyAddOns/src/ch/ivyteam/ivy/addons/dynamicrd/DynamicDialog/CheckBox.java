package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

import com.ulcjava.base.application.ULCComponent;

/**
 * This is the implementation of fields that use a RCheckBox.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 28.09.2009
 */
public class CheckBox extends FieldComponent
{
  private RCheckBox checkBox = null;

  /**
   * Constructs a new CheckBox object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected CheckBox(DynamicDialogPanel panel, ComplexComponent parentContainer,
          CheckBoxParameters parameters, int index)
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
  public final ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  @Override
  public final ULCComponent getMainComponent()
  {
    return checkBox;
  }

  @Override
  public final CheckBoxParameters getParameters()
  {
    return (CheckBoxParameters) getComponentParameters();
  }

  @Override
  public final String[] getSelectedRecord()
  {
    return null;
  }

  @Override
  public final String getText()
  {
    return getValueAsString();
  }

  private RCheckBox getCheckBox()
  {
    if (checkBox == null)
    {
      checkBox = new RCheckBox();
      checkBox.setName(getParameters().getName() + "CheckBox");

      checkBox.addValueChangedListener(new ValueChangedListener(this, true));

      checkBox.addFocusListener(new FocusListener(this));

      getUlcComponents().add(checkBox);
    }
    return checkBox;
  }

  @Override
  public final Object getValue()
  {
    return checkBox.isSelected() ? Boolean.TRUE : Boolean.FALSE;
  }

  @Override
  public final Date getValueAsDate()
  {
    return null;
  }

  @Override
  public final DateTime getValueAsDateTime()
  {
    return null;
  }

  @Override
  public final Duration getValueAsDuration()
  {
    return null;
  }

  @Override
  public final Number getValueAsNumber()
  {
    return getValueAsBoolean() ? 1 : 0;
  }

  @Override
  public final String getValueAsString()
  {
    return getValueAsNumber().toString();
  }

  @Override
  public final Time getValueAsTime()
  {
    return null;
  }

  @Override
  public final boolean isFocusable()
  {
    return checkBox.isFocusable();
  }

  @Override
  public final void setFocusable(boolean b)
  {
    checkBox.setFocusable(b);
  }

  @Override
  public final void setKeyValue(List<String[]> keyValue)
  {
    // Nothing to do
  }

  @Override
  protected final void applyFieldStyles()
  {
    checkBox.setStyle(getParameters().getFieldStyle());

    setWeightX(checkBox);
  }

  @Override
  public final void setValue(Object o, String text)
  {
    setValueAsString(o == null ? null : o.toString());
  }

  @Override
  public final void setValueAsDate(Date d, String text)
  {
    // Nothing to do
  }

  @Override
  public final void setValueAsDateTime(DateTime d, String text)
  {
    // Nothing to do
  }

  @Override
  public final void setValueAsDuration(Duration d, String text)
  {
    // Nothing to do
  }

  @Override
  public final void setValueAsNumber(Number n, String text)
  {
    setValueAsBoolean(n != null && n != Integer.valueOf(0));
  }

  @Override
  public final void setValueAsString(String s, String text)
  {
    setValueAsBoolean(s != null && !s.equals("") && !s.equals("0") && !s.equals("false"));
  }

  @Override
  public final void setValueAsTime(Time t, String text)
  {
    // Nothing to do
  }

  @Override
  public final boolean validate()
  {
    return true;
  }

  @Override
  public final Boolean getValueAsBoolean()
  {
    return checkBox.isSelected();
  }

  @Override
  public final void setValueAsBoolean(Boolean b, String text)
  {
    checkBox.setSelected(b);
  }

  @Override
  protected final ULCComponent getFieldComponent()
  {
    return getCheckBox();
  }

  @Override
  protected final boolean isEditable()
  {
    return false;
  }

  @Override
  protected void postInitializeField()
  {
    // Nothing to do
  }

  @Override
  protected boolean isBackgroundColorChangedAllowed()
  {
    return true;
  }
}