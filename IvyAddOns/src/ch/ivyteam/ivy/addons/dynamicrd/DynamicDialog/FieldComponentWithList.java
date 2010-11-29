package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * Base class for all field components that propose choices.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 14.09.2008
 */
public abstract class FieldComponentWithList extends FieldComponent
{
  private Map<String, Integer> keyIndex = null;

  private List<String[]> recordset = null;

  private Map<String, Integer> valueIndex = null;

  private String storedValue;

  protected FieldComponentWithList(DynamicDialogPanel panel, ComplexComponent parentContainer,
          FieldComponentWithListParameters parameters, int index)
  {
    super(panel, parentContainer, parameters, index);

    recordset = getParameters().getRecordset();
    if (recordset != null && recordset.isEmpty())
    {
      recordset = null;
    }
    storedValue = null;
  }

  protected final void fill()
  {
    if (recordset != null && isFillable())
    {
      ch.ivyteam.ivy.scripting.objects.List<String> widgetData = ch.ivyteam.ivy.scripting.objects.List
              .create(String.class);

      if (getParameters().hasEmptyValue() || recordset.isEmpty())
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

  protected final void fillKeyValueIndex()
  {
    int index;
    index = 0;

    keyIndex = new HashMap<String, Integer>();
    valueIndex = new HashMap<String, Integer>();

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
  protected abstract String getDisplayedText();

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

  @Override
  public abstract FieldComponentWithListParameters getParameters();

  protected String[] getRecord(int index)
  {
    String[] result;
    int usedIndex;

    usedIndex = index;

    result = null;

    if (getParameters().hasEmptyValue() && usedIndex >= 0)
    {
      // Index 0 is the empty value and not the first value of the
      // recordset
      usedIndex--;
    }

    if (usedIndex != -1 && usedIndex < recordset.size())
    {
      result = recordset.get(usedIndex);
    }
    return result;
  }

  protected abstract int getSelectedIndex();

  @Override
  public final String[] getSelectedRecord()
  {
    int index;
    String[] result;

    index = getSelectedIndex();
    result = getRecord(index);
    return result;
  }

  @Override
  public final String getText()
  {
    String[] record;
    String result;

    record = getSelectedRecord();

    result = "";
    if (record != null)
    {
      if (record.length == 1)
      {
        result = record[0];
      }
      if (record.length >= 2)
      {
        result = record[1];
      }
    }
    else
    {
      if (getParameters().isEditable())
      {
        result = getDisplayedText();
      }
    }
    return result;
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
  public final String getValueAsString()
  {
    String[] record;
    String result;

    result = "";

    record = getSelectedRecord();

    if (record != null && record.length >= 1)
    {
      return record[0];
    }
    if (recordset == null)
    {
      return storedValue;
    }

    return result;
  }

  @Override
  public final Time getValueAsTime()
  {
    return null;
  }

  @Override
  public final Boolean getValueAsBoolean()
  {
    Number n;

    n = getValueAsNumber();

    return n.intValue() >= 1 ? true : false;
  }

  protected final Integer getValueIndex(String value)
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
  protected final void postInitializeField()
  {
    fill();
  }

  protected final boolean isEmptyValue()
  {
    return getValueAsString().equals(FieldComponentWithListParameters.EMPTY_VALUE);
  }

  protected abstract boolean isFillable();

  /**
   * This method only works with field that can be edited.
   * 
   * @param text The value that the field should display
   */
  public abstract void setDisplayedText(String text);

  @Override
  public final void setKeyValue(List<String[]> recordset)
  {
    this.recordset = recordset;
    keyIndex = null;
    valueIndex = null;

    fill();

    setValueAsString(storedValue);
  }

  protected abstract void setListData(ch.ivyteam.ivy.scripting.objects.List<String> comboData);

  protected abstract void setSelectedIndex(int index);

  @Override
  public final void setValue(Object o, String text)
  {
    setValueAsString(o.toString(), text);
  }

  @Override
  public final void setValueAsDate(Date d, String text)
  {
    return;
  }

  @Override
  public final void setValueAsDateTime(DateTime d, String text)
  {
    return;
  }

  @Override
  public final void setValueAsDuration(Duration d, String text)
  {
    return;
  }

  @Override
  public final void setValueAsNumber(Number n, String text)
  {
    setValueAsString(n == null || n.longValue() == -1 ? null : n.toString(), text);
  }

  @Override
  public final void setValueAsString(String s, String text)
  {
    Integer index;

    index = -1;

    storedValue = s;

    if (s != null && !s.equals(""))
    {
      index = getKeyIndex(s);

      index = index == null ? -1 : index;
    }
    setSelectedIndex(index);

    if (index == -1 && getParameters().isEditable() && text != null)
    {
      setDisplayedText(text);
    }
  }

  @Override
  public final void setValueAsTime(Time d, String text)
  {
    return;
  }

  @Override
  public final void setValueAsBoolean(Boolean b, String text)
  {
    setValueAsNumber(b ? 1 : 0);
  }

  protected final boolean validateList()
  {
    String value;
    boolean result;

    value = getValueAsString();

    result = isValid();

    if (isMandatory() && value.length() == 0)
    {
      result = false;
    }

    validationDone(result);

    return result;
  }

  protected final List<String[]> getRecordset()
  {
    return recordset;
  }

  @Override
  public void valueChanged()
  {
    inlineValidation();

    super.valueChanged();
  }

  private void inlineValidation()
  {
    if (!isFirstValidation())
    {
      validate();
    }
  }
}
