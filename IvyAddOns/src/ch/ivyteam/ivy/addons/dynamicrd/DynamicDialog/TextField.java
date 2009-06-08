package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;
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

  protected boolean firstValidation = true;

  protected RTextField textField = null;

  public TextField(DynamicDialogPanel panel, Container parentContainer, ULCContainer ulcContainer,
          TextFieldParameters _parameters)
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
    return textField;
  }

  @Override
  public TextFieldParameters getParameters()
  {
    return (TextFieldParameters) parameters;
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

  private RTextField getTextField()
  {
    if (textField == null)
    {
      textField = new RTextField();
      textField.setName(parameters.getName() + "TextField");
    }
    return textField;
  }

  @Override
  public Object getValue()
  {
    return textField.getValue();
  }

  @Override
  public Date getValueAsDate()
  {
    SimpleDateFormat format;
    java.util.Date date;

    format = new SimpleDateFormat("dd.MM.yyyy");
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
  public String getValueAsString()
  {
    return textField.getText();
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

    ulcComponents.add(textField);

    super.initialize(pos);

    // It seems that without this listener the ValueChangedListener is not
    // invoked when something is typed inside the textfield
    textField.addKeyListener(new IKeyListener()
      {
        private static final long serialVersionUID = -3251482348103155014L;

        public void keyTyped(KeyEvent arg0)
        {
          // Nothing

        }
      });

    textField
            .addValueChangedListener(new ValueChangedListener(this, getParameters().getValueChangedMethod()));

    textField.addFocusListener(new FocusListener(this, getParameters().getFocusGainedMethod(),
            getParameters().getFocusLostMethod()));
  }

  private boolean inlineValidate()
  {
    boolean valid;

    valid = TextValidation.inlineValidate(this, isMandatory(), firstValidation, getParameters()
            .getTextValidationParameters());

    updateIcon(valid);

    return valid;
  }

  @Override
  public boolean isFocusable()
  {
    return textField.isFocusable();
  }

  @Override
  public void setFocusable(boolean b)
  {
    textField.setFocusable(b);
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

    TextFieldParameters parameters;

    parameters = getParameters();

    textField.setStyle(parameters.getFieldStyle());
    if (parameters.getColumns() != 0)
    {
      textField.setColumns(parameters.getColumns());
    }
  }

  @Override
  public void setValue(Object o, String text)
  {
    setValueAsString(o.toString());
  }

  @Override
  public void setValueAsDate(Date d, String text)
  {
    setValueAsString(d == null || d.equals(new Date(1, 1, 1)) ? "" : d.format("dd.MM.yyyy"), text);
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
    setValueAsString(n.toString());
  }

  @Override
  public void setValueAsString(String s, String text)
  {
    if (getParameters().isDate && s.equals("now"))
    {
      setValueAsDate(new Date(), text);
    }
    else
    {
      textField.setText(s);
    }
  }

  @Override
  public void setValueAsTime(Time t, String text)
  {
    setValueAsString(t.toString(), text);
  }

  @Override
  public boolean validate()
  {
    boolean result;

    result = valid;

    if (!TextValidation.validate(this, isMandatory(), getParameters().getTextValidationParameters()))
      result = false;

    updateIcon(result);

    firstValidation = false;

    return result;
  }

  @Override
  protected void valueChanged(String method)
  {
    inlineValidate();

    super.valueChanged(method);
  }
}