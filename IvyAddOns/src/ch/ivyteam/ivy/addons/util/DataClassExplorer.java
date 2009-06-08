package ch.ivyteam.ivy.addons.util;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.ParameterizedType;

import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * Explores a data class and calls handler's methods. The startNode() and endNode() handler's methods are called
 * for every attributes and sub-attributes.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 02.06.2009
 */
public class DataClassExplorer
{
  private ExploreHandler handler;

  /**
   * Creates an explorer with a specific handler.
   * 
   * @param _handler handle that should be used
   */
 public DataClassExplorer(ExploreHandler _handler)
  {
    handler = _handler;
  }

 /**
   * Explores all the attributes and sub-attributes of the given class.
   * 
   * @param clazz class that should be explored
   */
public void explore(Class clazz)
  {
    handler.startDocument();
    explore(clazz, "", "", null);
    handler.endDocument();
  }

  private void explore(Class clazz, String name, String path, PropertyDescriptor property)
  {
    if (!clazz.equals(Class.class))
    {
      if (!name.equals(""))
      {
        path = path + "/" + name;
      }

      if (handler.startNode(clazz, name, path))
      {
        if (clazz.equals(String.class))
        {
        }
        else if (clazz.equals(Date.class))
        {
        }
        else if (clazz.equals(DateTime.class))
        {
        }
        else if (clazz.equals(Time.class))
        {
        }
        else if (clazz.equals(Duration.class))
        {
        }
        else if (clazz.equals(Number.class))
        {
        }
        else if (clazz.equals(Boolean.class))
        {
        }
        else if (clazz.equals(ch.ivyteam.ivy.scripting.objects.List.class))
        {
          ParameterizedType parameterizedType;

          parameterizedType = (ParameterizedType) property.getReadMethod().getGenericReturnType();

          explore((Class) parameterizedType.getActualTypeArguments()[0], "item", path, null);
        }
        else
        {
          BeanInfo beanInfo;
          Class currentPropertyType;

          try
          {
            beanInfo = Introspector.getBeanInfo(clazz);
          }
          catch (IntrospectionException e)
          {
            throw new AddonsException(e);
          }

          for (PropertyDescriptor currentProperty : beanInfo.getPropertyDescriptors())
          {
            currentPropertyType = currentProperty.getPropertyType();

            explore(currentPropertyType, currentProperty.getName(), path, currentProperty);
          }
        }
      }
      handler.endNode(clazz, name, path);
    }
  }
}
