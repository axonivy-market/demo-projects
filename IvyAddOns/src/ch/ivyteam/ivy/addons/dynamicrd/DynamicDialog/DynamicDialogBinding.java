package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.Collection;

import ch.ivyteam.ivy.addons.restricted.util.DataClassFactory;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * This helper class is reponsible to bind attribute value to dynamic dialog compenent.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 02.12.2009
 */
final class DynamicDialogBinding
{
  private DynamicDialogBinding()
  {
  }

  protected static Object getValue(FieldComponent fieldComponent, Class<?> clazz)
  {
    Object result;

    result = null;
    if (clazz.isAssignableFrom(String.class))
    {
      result = fieldComponent.getValueAsString();
    }
    else if (clazz.isAssignableFrom(Date.class))
    {
      result = fieldComponent.getValueAsDate();
    }
    else if (clazz.isAssignableFrom(DateTime.class))
    {
      result = fieldComponent.getValueAsDateTime();
    }
    else if (clazz.isAssignableFrom(Time.class))
    {
      result = fieldComponent.getValueAsTime();
    }
    else if (clazz.isAssignableFrom(Duration.class))
    {
      result = fieldComponent.getValueAsDuration();
    }
    else if (clazz.isAssignableFrom(java.util.Date.class))
    {
      result = fieldComponent.getValueAsDateTime().toDate();
    }
    else if (clazz.isAssignableFrom(Number.class))
    {
      result = fieldComponent.getValueAsNumber();
    }
    else if (clazz.isAssignableFrom(Boolean.class))
    {
      result = fieldComponent.getValueAsBoolean();
    }
    else if (clazz.isAssignableFrom(Integer.class))
    {
      Number n;

      n = fieldComponent.getValueAsNumber();
      result = n != null ? n.intValue() : null;
    }
    return result;
  }

  protected static void setValue(FieldComponent fieldComponent, Object object, String text)
  {
    Class<?> clazz;

    if (object == null)
    {
      fieldComponent.useDefaultValue();
    }
    else
    {
      clazz = object.getClass();

      if (String.class.isAssignableFrom(clazz))
      {
        fieldComponent.setValueAsString((String) object, text);
      }
      else if (Date.class.isAssignableFrom(clazz))
      {
        fieldComponent.setValueAsDate((Date) object, text);
      }
      else if (DateTime.class.isAssignableFrom(clazz))
      {
        fieldComponent.setValueAsDateTime((DateTime) object, text);
      }
      else if (Time.class.isAssignableFrom(clazz))
      {
        fieldComponent.setValueAsTime((Time) object, text);
      }
      else if (Duration.class.isAssignableFrom(clazz))
      {
        fieldComponent.setValueAsDuration((Duration) object, text);
      }
      else if (java.util.Date.class.isAssignableFrom(clazz))
      {
        fieldComponent.setValueAsDateTime(new DateTime((java.util.Date) object), text);
      }
      else if (Number.class.isAssignableFrom(clazz))
      {
        fieldComponent.setValueAsNumber((Number) object, text);
      }
      // Nothing to do with Integer - because Number is assignable from Integer
      else if (Boolean.class.isAssignableFrom(clazz))
      {
        fieldComponent.setValueAsBoolean((Boolean) object, text);
      }
    }
  }

  @SuppressWarnings("unchecked")
  protected static void setListData(ListComponent listComponent, Collection<?> collection, Component component)
  {
    List<Object> list;

    if (collection == null || collection instanceof List<?>)
    {
      list = (List<Object>) collection;
    }
    else
    {
      list = List.create(Object.class);

      for (Object item : collection)
      {
        list.add(item);
      }
    }
    listComponent.setListData(list);
  }

  @SuppressWarnings("unchecked")
  protected static Collection<?> getListData(ListComponent listComponent, Class<?> clazz)
  {
    Collection<?> result;
    List<?> list;

    result = null;
    list = listComponent.getListData();

    if (clazz.isAssignableFrom(List.class))
    {
      result = list;
    }
    else
    {
      if (Collection.class.isAssignableFrom(clazz))
      {
        try
        {
          result = (Collection<?>) DataClassFactory.newInstance(clazz);
        }
        catch (AddonsException e)
        {
          throw new DynamicDialogException(e);
        }
        result.addAll((Collection) list);
      }
    }
    return result;
  }
}
