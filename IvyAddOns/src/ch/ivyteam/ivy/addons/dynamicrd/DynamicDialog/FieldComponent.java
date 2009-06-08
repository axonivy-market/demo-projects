package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCContainer;

/**
 * Base class for all field components.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 06.10.2008
 */
public abstract class FieldComponent extends Component
{
  private RLabel iconLabel = null;

  private RLabel label = null;

  private boolean mandatory = false;

  protected IRichDialogPanel parent = null;

  protected boolean valid = true;

  public FieldComponent(DynamicDialogPanel panel, Container parentContainer, ULCContainer ulcContainer,
          FieldComponentParameters _parameters)
  {
    super(panel, parentContainer, ulcContainer, _parameters);

    parameters = _parameters;
    mandatory = getParameters().isMandatory();
  }

  /**
   * Gets the default value that is defined in the parameters.
   * 
   * @return default value
   */
  public String getDefaultValue()
  {
    return getParameters().defaultValue;
  }

  /*
   * private RLabel getLabel() { StringBuffer toolTip; if (label == null) { label = new RLabel();
   * 
   * label.setText(parameters.getTitle()); label.setName(parameters.getName() + "Label");
   * 
   * toolTip = null; for (String s : parameters.cmsContexts) { if (toolTip == null) { toolTip = new
   * StringBuffer("<html>"); } else { toolTip.append("<br>"); } toolTip.append(s); } if (toolTip != null) {
   * toolTip.append("</html>"); label.setToolTipText(toolTip.toString()); } } return label; }
   */

  private RLabel getIconLabel()
  {
    if (iconLabel == null)
    {
      iconLabel = new RLabel();
      iconLabel.setName(parameters.getName() + "IconLabel");
    }
    return iconLabel;
  }

  private RLabel getLabel()
  {
    if (label == null)
    {
      label = new RLabel();

      label.setText(parameters.getTitle());
      label.setName(parameters.getName() + "Label");
    }
    return label;
  }

  @Override
  abstract public FieldComponentParameters getParameters();

  /**
   * Gets the record that is selected in fields that proposes multiple choices.
   * 
   * @return record
   */
  abstract public String[] getSelectedRecord();

  /**
   * @return
   */
  abstract public String getText();

  /**
   * Get the Object that is used inside the componet.
   * 
   * @return value as Object
   */
  abstract public Object getValue();

  /**
   * Gets the value as Date.
   * 
   * @return a Date when it's possible, null otherwise.
   */
  abstract public Date getValueAsDate();

  /**
   * Gets the value as DateTime.
   * 
   * @return a DateTime when it's possible, null oterwise.
   */
  abstract public DateTime getValueAsDateTime();

  /**
   * Gets the value as Duration.
   * @return a Duration when it's possible, null otherwise.
   */
  abstract public Duration getValueAsDuration();

  /**
   * Gets the value as Number.
   * 
   * @return a Number when it's possible, null otherwise.
   */
  abstract public Number getValueAsNumber();

  /**
   * Gets the value as String.
   * 
   * @return value as String.
   */
  abstract public String getValueAsString();

  /**
   * Gets the value as Time.
   * 
   * @return a Time when it's possible, null otherwise
   */
  abstract public Time getValueAsTime();

  @Override
  public void initialize(Position pos)
  {
    GridBagConstraints constraints;

    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + 0);
    constraints.setGridY(pos.getPosY() + 0);
    ulcContainer.add(getLabel(), constraints);

    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + 2);
    constraints.setGridY(pos.getPosY() + 0);
    ulcContainer.add(getIconLabel(), constraints);

    if (!getParameters().defaultValue.equals(""))
    {
      useDefaultValue();
    }
    updateIcon(true);

    ulcComponents.add(getLabel());
    ulcComponents.add(getIconLabel());

    super.initialize(pos);

    pos.setPosY(pos.getPosY() + 1);
  }

  /**
   * Returns if the field is mandatory.
   * 
   * @return true if the field should be filled by the user; false otherwise.
   */
  public boolean isMandatory()
  {
    return mandatory;
  }

  /**
   * Fill the field component with possible choices. For component that doesn't give choice, this method does
   * nothing.
   * 
   * @param keyValue key value list
   */
  abstract public void setKeyValue(List<String[]> keyValue);

  /**
   * Indicates if the content of the field should always be filled by the user.
   * 
   * @param value if true, the field is mandatory; otherwise, it isn't.
   */
  public void setMandatory(boolean value)
  {
    mandatory = value;
    validate();
  }

  @Override
  protected void applyStyles()
  {
    label.setStyle(getParameters().getLabelStyle());
    iconLabel.setStyle(getParameters().getIconStyle());
  }

  /**
   * Froce the validation mechanism to return always false.
   * 
   * @param value if false, the validation returns always false; otherwise, the real result of the validation.
   */
  public void setValid(boolean value)
  {
    valid = value;
    validate();
  }

  /**
   * Fills the field component with the value given.
   * 
   * @param value value
   */
  public void setValue(Object value)
  {
    setValue(value, null);
  }

  /**
   * @param value
   * @param text
   */
  abstract public void setValue(Object value, String text);

  /**
   * Fills the field component with the date given as Date.
   * 
   * @param value value
   */
  public void setValueAsDate(Date value)
  {
    setValueAsDate(value, null);
  }

  abstract public void setValueAsDate(Date value, String text);

  /**
   * Fills the field component with the value given as DateTime.
   * 
   * @param value value
   */
  public void setValueAsDateTime(DateTime value)
  {
    setValueAsDateTime(value, null);
  }

  abstract public void setValueAsDateTime(DateTime d, String text);

  /**
   * Fills the field component with the value given as Duration.
   * 
   * @param value value
   */
  public void setValueAsDuration(Duration value)
  {
    setValueAsDuration(value, null);
  }

  abstract public void setValueAsDuration(Duration d, String text);

  /**
   * Fills the field component with the value given as Number.
   * 
   * @param value value
   */
  public void setValueAsNumber(Number value)
  {
    setValueAsNumber(value, null);
  }

  abstract public void setValueAsNumber(Number n, String text);

  /**
   * Fills the field component with the value given as String.
   * 
   * @param value value
   */
  public void setValueAsString(String value)
  {
    setValueAsString(value, null);
  }

  abstract public void setValueAsString(String s, String text);

  /**
   * Fills the field component with the value given as Time.
   * 
   * @param value value
   */
  public void setValueAsTime(Time value)
  {
    setValueAsTime(value, null);
  }

  abstract public void setValueAsTime(Time t, String text);

  protected void updateIcon(boolean valid)
  {
    String iconUrl;
    if (valid)
    {
      if (isMandatory())
      {
        iconUrl = getParameters().getMandatoryIconUrl();
      }
      else
      {
        iconUrl = getParameters().getTransparentIconUrl();
      }
    }
    else
    {
      iconUrl = getParameters().getErrorIconUrl();
    }
    iconLabel.setIconUri(iconUrl);
  }

  /**
   * Fills the field component with its default value.
   */
  public void useDefaultValue()
  {
    setValueAsString(getParameters().defaultValue, null);
  }

  /**
   * Check if the content of the field is valid an update icons.
   * 
   * @return true if the content of the field component is valid; false otherwise.
   */
  abstract public boolean validate();

  /**
   * Invokes the UI logic method value changed associated to this component.
   */
  public void valueChanged()
  {
    valueChanged(getParameters().valueChangedMethod);
  }

  protected void valueChanged(String method)
  {
    invoke(method);
  }
}