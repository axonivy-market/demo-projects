package ch.ivyteam.ivy.addons.restricted.util;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.List;

/**
 * This helper class permit to create new instance of a given class.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 02.12.2009
 */
public final class DataClassFactory
{
  private DataClassFactory()
  {
  }

  /**
   * @param <T> type of the object created
   * @param clazz class that a new instance is required
   * @return newly created object
   * 
   * @throws AddonsException
   */
  @SuppressWarnings("unchecked")
  public static <T extends Object> T newInstance(Class<T> clazz) throws AddonsException
  {
    Object object;

    object = null;
    try
    {
      if (clazz.isAssignableFrom(Number.class))
      {
        object = BigDecimal.ZERO;
      }
      else if (clazz.isAssignableFrom(Integer.class))
      {
        object = 0;
      }
      else if (clazz.isAssignableFrom(Boolean.class))
      {
        object = Boolean.FALSE;
      }
      else if (clazz.isAssignableFrom(Duration.class))
      {
        object = new Duration(0);
      }

      else if (clazz.isAssignableFrom(Set.class))
      {
        object = new HashSet<Object>();
      }
      else if (clazz.isAssignableFrom(List.class))
      {
        object = List.create();
      }
      else
      {
        object = clazz.newInstance();
      }
    }
    catch (InstantiationException e)
    {
      throw new AddonsException(e);
    }
    catch (IllegalAccessException e)
    {
      throw new AddonsException(e);
    }
    catch (IllegalArgumentException e)
    {
      throw new AddonsException(e);
    }

    return (T) object;
  }
}
