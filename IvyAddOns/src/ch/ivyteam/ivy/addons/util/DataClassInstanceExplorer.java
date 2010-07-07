package ch.ivyteam.ivy.addons.util;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * Explores a data class instance and calls handler's methods. The startNode() and endNode() handler's methods
 * are called for every attributes and sub-attributes.<br />
 * If an attribute is iterable, all items are explored.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 02.06.2009
 */
public class DataClassInstanceExplorer
{
  private ExploreHandler handler;

  /**
   * Creates an explorer with a specific handler.
   * 
   * @param _handler handle that should be used
   */
  public DataClassInstanceExplorer(ExploreHandler _handler)
  {
    handler = _handler;
  }

  /**
   * Explores all the attributes and sub-attributes of the given instance.
   * 
   * @param object instance that should be explored
   */
  public void explore(Object object)
  {
    handler.startDocument();
    explore(object, "", "");
    handler.endDocument();
  }

  @SuppressWarnings("unchecked")
private void explore(Object object, String name, String path)
  {
    Class<? extends Object> clazz;

    clazz = object.getClass();

    if (!clazz.equals(Class.class))
    {
      if (!name.equals(""))
      {
        path = path + "/" + name;
      }

      if (handler.startNode(object, name, path))
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
        else if (object instanceof Iterable)
        {
          for (Object item : (Iterable) object)
          {
            explore(item, "item", path);
          }
        }
        else
        {
          BeanInfo beanInfo;

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
            Method method;
            Object attribute;

            method = currentProperty.getReadMethod();
            try
            {
              attribute = method.invoke(object);
            }
            catch (IllegalArgumentException e)
            {
              throw new AddonsException(e);
            }
            catch (IllegalAccessException e)
            {
              throw new AddonsException(e);
            }
            catch (InvocationTargetException e)
            {
              throw new AddonsException(e);
            }

            if (attribute == null)
            {
              try
              {
                attribute = currentProperty.getPropertyType().newInstance();
              }
              catch (InstantiationException e)
              {
                new AddonsException(e);
              }
              catch (IllegalAccessException e)
              {
                new AddonsException(e);
              }
            }

            explore(attribute, currentProperty.getName(), path);

          }
        }
      }
      handler.endNode(object, name, path);
    }
  }
}
