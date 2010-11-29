package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.event.IKeyListener;
import com.ulcjava.base.application.event.KeyEvent;

/**
 * This is the implementation of fields that use a RTextArea.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 03.12.2008
 */
public class TextArea extends FieldComponent
{

  private boolean firstValidation = true;

  private RScrollPane scrollPane = null;

  private RTextArea textArea = null;

  /**
   * Constructs a new TextArea object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected TextArea(DynamicDialogPanel panel, ComplexComponent parentContainer,
          TextAreaParameters parameters, int index)
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
    return textArea;
  }

  @Override
  public final TextAreaParameters getParameters()
  {
    return (TextAreaParameters) getComponentParameters();
  }

  private RScrollPane getScrollPane()
  {
    if (scrollPane == null)
    {
      scrollPane = new RScrollPane();
      scrollPane.setName("ScrollPane");
      scrollPane.setFocusable(false);
      scrollPane.setViewPortView(getTextArea());

      getUlcComponents().add(scrollPane);
    }
    return scrollPane;
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

  private RTextArea getTextArea()
  {
    int rows;

    if (textArea == null)
    {
      textArea = new RTextArea();
      textArea.setName(getParameters().getName() + "TextField");

      rows = getParameters().getRows();

      if (rows == 0)
      {
        rows = 3;
      }
      textArea.setRows(rows);
      // TODO Actually line wrap produces some scrollpane side effect.
      // See issue #19939
      // set line wrap to true true;

      textArea.addValueChangedListener(new ValueChangedListener(this, false));

      textArea.addFocusListener(new FocusListener(this));

      // It seems that without this listener the ValueChangedListener is not
      // invoked when something is typed inside the textfield
      textArea.addKeyListener(new IKeyListener()
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

      getUlcComponents().add(textArea);
    }
    return textArea;
  }

  @Override
  public final Object getValue()
  {
    return getValueAsString();
  }

  @Override
  public final Date getValueAsDate()
  {
    return null;
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
    Integer value;

    value = null;

    try
    {
      value = Integer.parseInt(getValueAsString());
    }
    catch (NumberFormatException e)
    {
      // Nothing to do
    }

    return value;
  }

  @Override
  public final String getValueAsString()
  {
    return textArea.getText();
  }

  @Override
  public final Time getValueAsTime()
  {
    return new Time(getValueAsString());
  }

  @Override
  public final Boolean getValueAsBoolean()
  {
    String s;

    s = getValueAsString();

    return s.equals("") || s.equals("0") || s.equals("false") ? false : true;
  }

  private boolean inlineValidate()
  {
    boolean valid;

    valid = true;
    if (!firstValidation)
    {
      valid = validate();
    }

    return valid;
  }

  @Override
  public final boolean isFocusable()
  {
    return textArea.isFocusable();
  }

  @Override
  public final void setFocusable(boolean b)
  {
    textArea.setFocusable(b);
  }

  @Override
  public final void setKeyValue(List<String[]> keyValue)
  {
    // Nothing to do
  }

  @Override
  protected final void applyFieldStyles()
  {
    textArea.setStyle(getParameters().getFieldStyle());
    scrollPane.setStyle(getParameters().getScrollPaneStyle());

    setWeightX(scrollPane);
  }

  @Override
  public final void setValue(Object o, String text)
  {
    // Nothing to do
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
    setValueAsString(n.toString(), text);
  }

  @Override
  public final void setValueAsString(String s, String text)
  {
    textArea.setText(s);
  }

  @Override
  public final void setValueAsTime(Time t, String text)
  {
    // Nothing to do
  }

  @Override
  public final void setValueAsBoolean(Boolean b, String text)
  {
    // Nothing to do
  }

  @Override
  public final boolean validate()
  {
    String value;
    boolean result;

    value = getTextArea().getText();

    if (value == null)
    {
      value = "";
    }

    result = isValid();
    if (isMandatory() && value.length() == 0)
    {
      result = false;
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
    return getScrollPane();
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