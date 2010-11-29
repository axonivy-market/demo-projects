package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

import com.ulcjava.base.application.ULCComponent;

/**
 * This is the implementation of fields that use a DatePicker.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 29.12.2008
 */
public class DatePicker extends FieldComponent
{
  private RDatePicker datePicker = null;

  /**
   * Constructs a new DatePicker object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected DatePicker(DynamicDialogPanel panel, ComplexComponent parentContainer,
          DatePickerParameters parameters, int index)
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
    return datePicker;
  }

  @Override
  public final DatePickerParameters getParameters()
  {
    return (DatePickerParameters) getComponentParameters();
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

  private RDatePicker getDatePicker()
  {
    SimpleDateFormat simpleFormat;

    if (datePicker == null)
    {
      datePicker = new RDatePicker();
      datePicker.setName(getParameters().getName() + "DatePicker");

      datePicker.addValueChangedListener(new ValueChangedListener(this, true));

      datePicker.addFocusListener(new FocusListener(this));

      simpleFormat = getDateFormat();
      datePicker.setFormats(new SimpleDateFormat[] {simpleFormat});

      getUlcComponents().add(datePicker);
    }
    return datePicker;
  }

  @Override
  public final Object getValue()
  {
    return datePicker.getValueAsDate();
  }

  @Override
  public final Date getValueAsDate()
  {
    Date date;

    // .getValueAsDate doesn't return null if the content is empty
    date = datePicker.getValueAsDate();

    return date == Date.UNINITIALIZED_DATE ? null : date;
  }

  @Override
  public final DateTime getValueAsDateTime()
  {
    return new DateTime(getValueAsString());
  }

  @Override
  public final Duration getValueAsDuration()
  {
    return new Duration(getValueAsNumber().longValue());
  }

  @Override
  public final Number getValueAsNumber()
  {
    Date date;

    date = getValueAsDate();
    return date == null ? null : date.toNumber();
  }

  @Override
  public final String getValueAsString()
  {
    SimpleDateFormat format;
    Date date;

    // TODO Update date format
    format = new SimpleDateFormat("dd.MM.yyyy");
    format.setLenient(false);

    date = getValueAsDate();
    return date == null ? "" : format.format(date.toDate());
  }

  @Override
  public final Time getValueAsTime()
  {
    return new Time(getValueAsString());
  }

  @Override
  public final Boolean getValueAsBoolean()
  {
    return null;
  }

  @Override
  public final boolean isFocusable()
  {
    return datePicker.isFocusable();
  }

  @Override
  public final void setFocusable(boolean b)
  {
    datePicker.setFocusable(b);
  }

  @Override
  public final void setKeyValue(List<String[]> keyValue)
  {
    // Nothing to do
  }

  @Override
  protected final void applyFieldStyles()
  {
    datePicker.setStyle(getParameters().getFieldStyle());

    setWeightX(datePicker);
  }

  @Override
  public final void setValue(Object o, String text)
  {
    // Nothing to do
  }

  @Override
  public final void setValueAsDate(Date d, String text)
  {
    datePicker.setValueAsDate(d);
  }

  @Override
  public final void setValueAsDateTime(DateTime d, String text)
  {
    setValueAsString(d.toString(), text);
  }

  @Override
  public final void setValueAsDuration(Duration d, String text)
  {
    setValueAsNumber(d.toNumber(), text);
  }

  @Override
  public final void setValueAsNumber(Number n, String text)
  {
    setValueAsDate(new Date(new java.util.Date(n.longValue())));
  }

  @Override
  public final void setValueAsString(String s, String text)
  {
    Date date;

    if (s.equals("now"))
    {
      date = new Date();
    }
    else
    {
      SimpleDateFormat format;

      // TODO Update date format
      format = new SimpleDateFormat("dd.MM.yyyy");
      format.setLenient(false);

      try
      {
        date = new Date(format.parse(s));
      }
      catch (ParseException e)
      {
        date = null;
      }
    }
    setValueAsDate(date);
  }

  @Override
  public final void setValueAsTime(Time t, String text)
  {
    setValueAsString(t.toString(), text);
  }

  @Override
  public final void setValueAsBoolean(Boolean b, String text)
  {
    // Nothing to do
  }

  @Override
  public final boolean validate()
  {
    boolean valid;

    valid = true;

    if (isMandatory() && getValueAsDate() == null)
    {
      valid = false;
    }

    validationDone(valid);

    return valid;
  }

  @Override
  protected final ULCComponent getFieldComponent()
  {
    return getDatePicker();
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