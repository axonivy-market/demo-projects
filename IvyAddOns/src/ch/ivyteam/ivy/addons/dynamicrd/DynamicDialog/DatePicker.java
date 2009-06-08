package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * This is the implementation of fields that use a DatePicker.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 29.12.2008
 */
public class DatePicker extends FieldComponent
{
  protected RDatePicker datePicker = null;

  public DatePicker(DynamicDialogPanel panel, Container parentContainer, ULCContainer ulcContainer,
          DatePickerParameters _parameters)
  {
    super(panel, parentContainer, ulcContainer, _parameters);

    parameters = _parameters;
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
  public ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  @Override
  public ULCComponent getMainComponent()
  {
    return datePicker;
  }

  @Override
  public DatePickerParameters getParameters()
  {
    return (DatePickerParameters) parameters;
  }

  @Override
  public String[] getSelectedRecord()
  {
    return null;
  }

  @Override
  public String getText()
  {
    return getValueAsString();
  }

  private RDatePicker getTextField()
  {
    if (datePicker == null)
    {
      datePicker = new RDatePicker();
      datePicker.setName(parameters.getName() + "DatePicker");
    }
    return datePicker;
  }

  @Override
  public Object getValue()
  {
    return datePicker.getValueAsDate();
  }

  @Override
  public Date getValueAsDate()
  {
    return datePicker.getValueAsDate();
  }

  @Override
  public DateTime getValueAsDateTime()
  {
    return new DateTime(getValueAsString());
  }

  @Override
  public Duration getValueAsDuration()
  {
    return new Duration(getValueAsNumber().longValue());
  }

  @Override
  public Number getValueAsNumber()
  {
    return getValueAsDate().toNumber();
  }

  @Override
  public String getValueAsString()
  {
    SimpleDateFormat format;

    format = new SimpleDateFormat("dd.MM.yyyy");
    format.setLenient(false);

    return format.format(getValueAsDate().toDate());
  }

  @Override
  public Time getValueAsTime()
  {
    return new Time(getValueAsString());
  }

  @Override
  public void initialize(Position pos)
  {
    GridBagConstraints constraints;

    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + 1);
    constraints.setGridY(pos.getPosY() + 0);
    ulcContainer.add(getTextField(), constraints);

    ulcComponents.add(datePicker);

    super.initialize(pos);

    // datePicker.addActionListener(new ActionListener(this,
    // getParameters().getValueChangedMethod()));

    datePicker.addFocusListener(new FocusListener(this, getParameters().getFocusGainedMethod(),
            getParameters().getFocusLostMethod()));
  }

  @Override
  public boolean isFocusable()
  {
    return datePicker.isFocusable();
  }

  @Override
  public void setFocusable(boolean b)
  {
    datePicker.setFocusable(b);
  }

  @Override
  public void setKeyValue(List<String[]> keyValue)
  {
    // Nothing to do
  }

  @Override
  protected void applyStyles()
  {
    super.applyStyles();
    datePicker.setStyle(getParameters().getFieldStyle());
  }

  @Override
  public void setValue(Object o, String text)
  {
    // Nothing to do
  }

  @Override
  public void setValueAsDate(Date d, String text)
  {
    datePicker.setValueAsDate(d);
  }

  @Override
  public void setValueAsDateTime(DateTime d, String text)
  {
    setValueAsString(d.toString(), text);
  }

  @Override
  public void setValueAsDuration(Duration d, String text)
  {
    setValueAsNumber(d.toNumber(), text);
  }

  @Override
  public void setValueAsNumber(Number n, String text)
  {
    setValueAsDate(new Date(new java.util.Date(n.longValue())));
  }

  @Override
  public void setValueAsString(String s, String text)
  {
    Date date;

    if (s.equals("now"))
    {
      date = new Date();
    }
    else
    {
      SimpleDateFormat format;

      format = new SimpleDateFormat("dd.MM.yyyy");
      format.setLenient(false);

      try
      {
        date = new Date(format.parse(getValueAsString()));
      }
      catch (ParseException e)
      {
        date = null;
      }
    }
    setValueAsDate(date);
  }

  @Override
  public void setValueAsTime(Time t, String text)
  {
    setValueAsString(t.toString(), text);
  }

  @Override
  public boolean validate()
  {
    boolean valid;

    valid = true;
    if (isMandatory() && datePicker.getValueAsDate() == null)
    {
      valid = false;
    }

    updateIcon(valid);

    return valid;
  }

  @Override
  protected void valueChanged(String method)
  {
    super.valueChanged(method);
  }
}