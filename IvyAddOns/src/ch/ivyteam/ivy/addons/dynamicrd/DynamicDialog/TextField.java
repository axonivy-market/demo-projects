package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.List;

import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.event.IKeyListener;
import com.ulcjava.base.application.event.KeyEvent;

/**
 * This is the implementation of fields that use a RTextField.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 19.11.2008
 */
public class TextField extends FieldComponent
{
  private RTextField textField = null;

  /**
   * Constructs a new TextField object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected TextField(DynamicDialogPanel panel, ComplexComponent parentContainer,
          TextFieldParameters parameters, int index)
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
    return textField;
  }

  @Override
  public final TextFieldParameters getParameters()
  {
    return (TextFieldParameters) getComponentParameters();
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

  @Override
  protected boolean isOldStyleValidation()
  {
    return getParameters().isOldStyleValidation();
  }

  private RTextField getTextField()
  {
    if (textField == null)
    {
      textField = new RTextField();
      textField.setName(getParameters().getName() + "TextField");

      if (isOldStyleValidation() || !getParameters().getValueChangedMethod().equals(""))
      {
        // It seems that without this listener the ValueChangedListener is not
        // invoked when something is typed inside the textfield
        textField.addKeyListener(new IKeyListener()
          {
            private static final long serialVersionUID = -3251482348103155014L;

            /**
             * {@inheritDoc}
             */
            public void keyTyped(KeyEvent arg0)
            {
              // Nothing
            }
          });
        textField.addValueChangedListener(new ValueChangedListener(this, false));
      }
      if (!getParameters().getButtonActionMethod().equals(""))
      {
        textField.addActionListener(new IActionListener()
          {
            private static final long serialVersionUID = -3249100169254592270L;

            /**
             * {@inheritDoc}
             */
            public void actionPerformed(ActionEvent arg0)
            {
              invoke(getParameters().getButtonActionMethod());
            }
          });

      }

      textField.addFocusListener(new FocusListener(this));

      textField.setEditable(getParameters().isEditable());

      textField.setSelectAllOnFocusGained(getParameters().isSelectAllOnFocusGained());

      getUlcComponents().add(textField);
    }
    return textField;
  }

  @Override
  public final Object getValue()
  {
    return textField.getValue();
  }

  @Override
  public final Date getValueAsDate()
  {
    if (isOldStyleValidation())
    {
      return getValueAsDateOldStyle();
    }
    else
    {
      return textField.getValueAsDate();
    }
  }

  private Date getValueAsDateOldStyle()
  {
    DateFormat format;
    java.util.Date date;

    format = getDateFormat();
    format.setLenient(false);

    try
    {
      date = format.parse(getValueAsString());
    }
    catch (ParseException e)
    {
      date = null;
    }

    return date == null ? null : new Date(date);
  }

  @Override
  public final DateTime getValueAsDateTime()
  {
    if (isOldStyleValidation())
    {
      return getValueAsDateTimeOldStyle();
    }
    else
    {
      return textField.getValueAsDateTime();
    }
  }

  private DateTime getValueAsDateTimeOldStyle()
  {
    DateFormat format;
    java.util.Date dateTime;

    format = getDateTimeFormat();
    format.setLenient(false);

    try
    {
      dateTime = format.parse(getValueAsString());
    }
    catch (ParseException e)
    {
      dateTime = null;
    }

    return dateTime == null ? null : new DateTime(dateTime);
  }

  @Override
  public final Duration getValueAsDuration()
  {
    return new Duration(getValueAsNumber().longValue());
  }

  @Override
  public final Number getValueAsNumber()
  {
    if (isOldStyleValidation())
    {
      return getValueAsNumberOldStyle();
    }
    else
    {
      return textField.getValueAsNumber();
    }
  }

  private Number getValueAsNumberOldStyle()
  {
    Number value;

    try
    {
      value = new BigDecimal(getValueAsString());
    }
    catch (NumberFormatException e)
    {
      value = null;
    }

    return value;
  }

  @Override
  public final String getValueAsString()
  {
    if (isOldStyleValidation())
    {
      return textField.getText();
    }
    else
    {
      return textField.getValueAsString();
    }
  }

  @Override
  public final Time getValueAsTime()
  {
    if (isOldStyleValidation())
    {
      return getValueAsTimeOldStyle();
    }
    else
    {
      return textField.getValueAsTime();
    }
  }

  private Time getValueAsTimeOldStyle()
  {
    String s;

    s = getValueAsString();
    if (s.equals(""))
    {
      return Time.UNINITIALIZED_TIME;
    }
    else
    {
      return new Time(getValueAsString());
    }
  }

  @Override
  public final Boolean getValueAsBoolean()
  {
    String s;

    s = getValueAsString();

    return s.equals("") || s.equals("0") || s.equals("false") ? false : true;
  }

  private void inlineValidate()
  {
    boolean valid;

    if (isOldStyleValidation())
    {
      valid = TextValidation.inlineValidate(this, isMandatory(), isFirstValidation(), getParameters()
              .getTextValidationParameters());
      updateIconAndBackground(valid);
    }
  }

  @Override
  public final boolean isFocusable()
  {
    return textField.isFocusable();
  }

  @Override
  public final void setFocusable(boolean b)
  {
    textField.setFocusable(b);
  }

  @Override
  public final void setKeyValue(List<String[]> keyValue)
  {
    // Nothing to do
  }

  @Override
  protected final void applyFieldStyles()
  {
    TextFieldParameters parameters;

    parameters = getParameters();

    getTextField().setStyle(parameters.getFieldStyle());
    if (parameters.getColumns() != 0)
    {
      getTextField().setColumns(parameters.getColumns());
      addStyleProperties(getTextField(), "fill", "NONE");
      addStyleProperties(getTextField(), "weightX", "");
    }
    else
    {
      setWeightX(getTextField());
    }
  }

  @Override
  public final void setValue(Object o, String text)
  {
    if (isOldStyleValidation())
    {
      setValueAsString(o.toString());
    }
    else
    {
      textField.setValue(o);
    }
  }

  @Override
  public final void setValueAsDate(Date d, String text)
  {
    if (isOldStyleValidation())
    {
      setValueAsString(d == null || d == Date.UNINITIALIZED_DATE ? "" : getDateFormat().format(d.toDate()),
              text);
    }
    else
    {
      textField.setValueAsDate(d);
    }
  }

  @Override
  public final void setValueAsDateTime(DateTime dt, String text)
  {
    if (isOldStyleValidation())
    {
      setValueAsString(dt == null || dt == DateTime.UNINITIALIZED_DATE_TIME ? "" : getDateTimeFormat()
              .format(dt.toDate()), text);
    }
    else
    {
      textField.setValueAsDateTime(dt);
    }
  }

  @Override
  public final void setValueAsDuration(Duration d, String text)
  {
    setValueAsNumber(d.toNumber(), text);
  }

  @Override
  public final void setValueAsNumber(Number n, String text)
  {
    if (isOldStyleValidation())
    {
      setValueAsString(n.toString());
    }
    else
    {
      textField.setValueAsNumber(n);
    }
  }

  @Override
  public final void setValueAsString(String s, String text)
  {
    if (s.equals("now"))
    {
      if (getParameters().isAssignableFromDate())
      {
        setValueAsDate(new Date(), text);
      }
      if (getParameters().isAssignableFromDateTime())
      {
        setValueAsDateTime(new DateTime(), text);
      }
    }
    else
    {
      if (isOldStyleValidation())
      {
        textField.setText(s);
      }
      else
      {
        textField.setValueAsString(s);
      }
    }
  }

  @Override
  public final void setValueAsTime(Time t, String text)
  {
    if (isOldStyleValidation())
    {
      setValueAsString(t.toString(), text);
    }
    else
    {
      textField.setValueAsTime(t);
    }
  }

  @Override
  public final void setValueAsBoolean(Boolean b, String text)
  {
    setValueAsString(b.toString(), text);
  }

  @Override
  public final boolean validate()
  {
    boolean result;
    
    if (!isOldStyleValidation())
    {
      textField.setMandatory(isMandatory());
    }

    result = isValid();

    if (isOldStyleValidation())
    {
      if (!TextValidation.validate(this, isMandatory(), getParameters().getTextValidationParameters()))
      {
        result = false;
      }
    }
    else
    {
      if (getPanel().getRdContext().getValidator(textField).hasErrors())
      {
        result = false;
      }
    }

    validationDone(result);

    return result;
  }

  @Override
  public final void valueChanged()
  {
    inlineValidate();

    super.valueChanged();
  }

  @Override
  protected final ULCComponent getFieldComponent()
  {
    return getTextField();
  }

  @Override
  public final void setEditable(boolean b)
  {
    getTextField().setEditable(b);
  }

  @Override
  protected final boolean isEditable()
  {
    return getTextField().isEditable();
  }

  @Override
  protected void postInitializeField()
  {
    if (getParameters().isBackgroundTransparent())
    {
      textField.setBackground(textField.getParent().getBackground());
    }

    if (!isOldStyleValidation())
    {
      textField.setValidation(getParameters().getValidation());
      getIconLabelWidget().setEnabler(textField);
      textField.setMandatory(isMandatory());
    }
    updateIconAndBackground(true);
  }

  @Override
  protected boolean isBackgroundColorChangedAllowed()
  {
    return true;
  }
}