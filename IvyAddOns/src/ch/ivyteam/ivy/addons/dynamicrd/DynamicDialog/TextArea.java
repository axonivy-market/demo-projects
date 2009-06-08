package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.ULCScrollPane;
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

  protected boolean firstValidation = true;

  protected RScrollPane scrollPane = null;

  protected RTextArea textArea = null;

  public TextArea(DynamicDialogPanel panel, Container parentContainer, ULCContainer ulcContainer,
          TextAreaParameters _parameters)
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
    return textArea;
  }

  @Override
  public TextAreaParameters getParameters()
  {
    return (TextAreaParameters) parameters;
  }

  private RScrollPane getScrollPane()
  {
    if (scrollPane == null)
    {
      scrollPane = new RScrollPane();
      scrollPane.setName("ScrollPane");
      scrollPane.setFocusable(false);
      scrollPane.setHorizontalScrollBarPolicy(ULCScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
      // scrollPane.setBackground(new Color(244, 247, 255));
      scrollPane.setViewPortView(getTextArea());
    }
    return scrollPane;
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

  private RTextArea getTextArea()
  {
    int rows;

    if (textArea == null)
    {
      textArea = new RTextArea();
      textArea.setName(parameters.getName() + "TextField");

      rows = getParameters().rows;

      if (rows == 0)
      {
        rows = 3;
      }
      textArea.setRows(rows);
      // TODO Actually setLineWrap(true) produces some scrollpane side effect. An issue is open to IvyTeam.
      // textArea.setLineWrap(true);

    }
    return textArea;
  }

  @Override
  public Object getValue()
  {
    return getValueAsString();
  }

  @Override
  public Date getValueAsDate()
  {
    return null;
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
  public String getValueAsString()
  {
    return textArea.getText();
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
    ulcContainer.add(getScrollPane(), constraints);

    // container.add(getTextArea(), constraints);

    ulcComponents.add(textArea);
    ulcComponents.add(scrollPane);

    super.initialize(pos);

    textArea.addValueChangedListener(new ValueChangedListener(this, getParameters().getValueChangedMethod()));

    textArea.addFocusListener(new FocusListener(this, getParameters().getFocusGainedMethod(), getParameters()
            .getFocusLostMethod()));

    // It seems that without this listener the ValueChangedListener is not
    // invoked when something is typed inside the textfield
    textArea.addKeyListener(new IKeyListener()
      {
        private static final long serialVersionUID = -3251482348103155014L;

        public void keyTyped(KeyEvent arg0)
        {
          // Nothing

        }
      });
  }

  private boolean inlineValidate()
  {
    boolean valid;

    valid = true;
    if (firstValidation)
    {
      // Nothing to do
    }
    else
    {
      valid = validate();
    }

    return valid;
  }

  @Override
  public boolean isFocusable()
  {
    return textArea.isFocusable();
  }

  @Override
  public void setFocusable(boolean b)
  {
    textArea.setFocusable(b);
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
    textArea.setStyle(getParameters().getFieldStyle());
    scrollPane.setStyle(getParameters().getScrollPaneStyle());
  }

  @Override
  public void setValue(Object o, String text)
  {
    // Nothing to do
  }

  @Override
  public void setValueAsDate(Date d, String text)
  {
    // Nothing to do
  }

  @Override
  public void setValueAsDateTime(DateTime d, String text)
  {
    // Nothing to do
  }

  @Override
  public void setValueAsDuration(Duration d, String text)
  {
    // Nothing to do
  }

  @Override
  public void setValueAsNumber(Number n, String text)
  {
    setValueAsString(n.toString(), text);
  }

  @Override
  public void setValueAsString(String s, String text)
  {
    textArea.setText(s);
  }

  @Override
  public void setValueAsTime(Time t, String text)
  {
    // Nothing to do
  }

  @Override
  public boolean validate()
  {
    String value;
    boolean result;

    value = textArea.getText();

    result = valid;
    if (!isMandatory() && value.length() == 0)
    {
      // Nothing to do - the result is valid
    }
    else
    {
      // if (value.length() > getParameters().getMaxLength()) {
      // valid = false;
      // }
      if (isMandatory() && value.length() == 0)
      {
        result = false;
      }

      firstValidation = false;
    }

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