package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.Hashtable;
import java.util.List;

import com.ulcjava.base.application.ULCContainer;

import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;

/**
 * Base class for all field components that propose choices.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 14.09.2008
 */
abstract public class FieldComponentWithList extends FieldComponent
{
  protected Hashtable<String, Integer> keyIndex = null;

  protected List<String[]> recordset = null;

  protected Hashtable<String, Integer> valueIndex = null;

  public FieldComponentWithList(DynamicDialogPanel panel, Container parentContainer, ULCContainer ulcContainer,
          FieldComponentWithListParameters parameters)
  {
    super(panel, parentContainer, ulcContainer, parameters);

    recordset = getParameters().getRecordset();
  }

  final protected void fill()
  {
    if (recordset != null && isFillable())
    {
      ch.ivyteam.ivy.scripting.objects.List<String> widgetData = ch.ivyteam.ivy.scripting.objects.List
              .create(String.class);

      if (getParameters().hasEmptyValue())
      {
        widgetData.add(FieldComponentWithListParameters.EMPTY_VALUE);
      }

      for (String[] record : recordset)
      {
        widgetData.add(record[1]);
      }
      setListData(widgetData);
    }
  }

  protected void fillKeyValueIndex()
  {
    int index;
    index = 0;

    keyIndex = new Hashtable<String, Integer>();
    valueIndex = new Hashtable<String, Integer>();

    if (recordset != null)
    {
      if (getParameters().hasEmptyValue())
      {
        keyIndex.put("", index);
        valueIndex.put(FieldComponentWithListParameters.EMPTY_VALUE, index);
        index++;
      }
      for (String[] record : recordset)
      {
        if (record.length >= 1)
        {
          keyIndex.put(record[0], index);
          valueIndex.put(record[1], index);
          index++;
        }
      }
    }
  }

  
  /**
   * @return The value displayed by the field
   */
  public String getDisplayedText()
  {
    throw new DynamicDialogException(getNoSuchMethodException("getDisplayedText", getClass()));
  }

  protected Integer getKeyIndex(String key)
  {
    Integer result;

    if (keyIndex == null)
    {
      fillKeyValueIndex();
    }
    result = keyIndex.get(key);

    return result == null ? -1 : result;
  }

  private NoSuchMethodException getNoSuchMethodException(String methodName, Class clazz)
  {
    return new NoSuchMethodException("Not implemented method " + methodName + " on class " + clazz.getName());
  }

  @Override
  abstract public FieldComponentWithListParameters getParameters();

  protected String[] getRecord(int index)
  {
    String[] result;

    result = null;

    if (getParameters().hasEmptyValue() && index >= 0)
    {
      // Index 0 is the empty value and not the first value of the
      // recordset
      index--;
    }

    if (index != -1)
    {
      result = recordset.get(index);
    }
    return result;
  }

  abstract protected int getSelectedIndex();

  @Override
  public String[] getSelectedRecord()
  {
    int index;
    String[] result;

    index = getSelectedIndex();
    result = getRecord(index);
    return result;
  }

  @Override
  public String getText()
  {
    String[] record;
    String result;

    record = getSelectedRecord();

    result = "";
    if (record != null)
    {
      if (record.length == 1)
        result = record[0];
      if (record.length >= 2)
        result = record[1];
    }
    else
    {
      if (getParameters().editable)
      {
        result = getDisplayedText();
      }
    }
    return result;
  }

  @Override
  final public Object getValue()
  {
    return getValueAsString();
  }

  @Override
  final public Date getValueAsDate()
  {
    return null;
  }

  @Override
  final public DateTime getValueAsDateTime()
  {
    return null;
  }

  @Override
  final public Duration getValueAsDuration()
  {
    return null;
  }

  @Override
  final public Number getValueAsNumber()
  {
    Number result;
    String value;

    value = getValueAsString();
    result = -1;

    if (value != null)
    {
      try
      {
        result = Integer.parseInt(value);
      }
      catch (NumberFormatException e)
      {
        // Nothing to do
      }
    }

    return result;
  }

  @Override
  final public String getValueAsString()
  {
    String[] record;
    String result;

    result = "";

    record = getSelectedRecord();

    if (record != null && record.length >= 1)
      return record[0];

    return result;
  }

  @Override
  final public Time getValueAsTime()
  {
    return null;
  }

  protected Integer getValueIndex(String value)
  {
    Integer result;

    if (valueIndex == null)
    {
      fillKeyValueIndex();
    }

    result = valueIndex.get(value);

    return result == null ? -1 : result;
  }

  @Override
  public void initialize(Position pos)
  {
    fill();

    super.initialize(pos);
  }

  protected boolean isEmptyValue()
  {
    return getValueAsString().equals(FieldComponentWithListParameters.EMPTY_VALUE);
  }

  protected boolean isFillable()
  {
    return true;
  }

  /**
   * This method only works with field that can be edited.
   * 
   * @param text The value that the field should display
   */
  public void setDisplayedText(String text)
  {
    throw new DynamicDialogException(getNoSuchMethodException("setDisplayedText", getClass()));
  }

  @Override
  final public void setKeyValue(List<String[]> _recordset)
  {
    recordset = _recordset;
    keyIndex = null;
    valueIndex = null;

    fill();
  }

  protected void setListData(ch.ivyteam.ivy.scripting.objects.List<String> comboData)

  {
    throw new DynamicDialogException(getNoSuchMethodException("setListData", getClass()));
  }

  abstract protected void setSelectedIndex(int index);

  @Override
  final public void setValue(Object o, String text)
  {
    setValueAsString(o.toString(), text);
  }

  @Override
  final public void setValueAsDate(Date d, String text)
  {
    return;
  }

  @Override
  final public void setValueAsDateTime(DateTime d, String text)
  {
    return;
  }

  @Override
  final public void setValueAsDuration(Duration d, String text)
  {
    return;
  }

  @Override
  final public void setValueAsNumber(Number n, String text)
  {
    setValueAsString(n == null || n.longValue() == -1 ? null : n.toString(), text);
  }

  @Override
  final public void setValueAsString(String s, String text)
  {
    Integer index;

    index = -1;

    if (s != null)
    {
      index = getKeyIndex(s);

      index = index == null ? -1 : index;

      setSelectedIndex(index);
    }

    if (index == -1)
    {
      if (getParameters().editable)
      {
        if (text != null)
        {
          setDisplayedText(text);
        }
      }
    }
  }

  @Override
  final public void setValueAsTime(Time d, String text)
  {
    return;
  }

  @Override
  public boolean validate()
  {
    String value;
    boolean result;

    value = getValueAsString();

    result = valid;

    if (isMandatory())
    {
      if (value.length() == 0)
      {
        result = false;
      }
    }

    updateIcon(result);

    return result;
  }
}
