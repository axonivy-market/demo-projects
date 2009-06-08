package ch.ivyteam.ivy.addons.util;

import java.lang.reflect.InvocationTargetException;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.DataClassAttributeDetail;

public class IvyDataClass
{
  public static Object createDataClassInstance(Object targetObject, DataClassAttributeDetail attributeDetail)
  {
    Object subDataClassInstance = null;
    try
    {
      subDataClassInstance = attributeDetail.read.invoke(targetObject, new Object[0]);
      if (subDataClassInstance == null)
      {
        subDataClassInstance = attributeDetail.propertyType.getConstructor(new Class[] {}).newInstance(
                new Object[] {});
        attributeDetail.write.invoke(targetObject, subDataClassInstance);
      }
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
    catch (SecurityException e)
    {
      throw new AddonsException(e);
    }
    catch (InstantiationException e)
    {
      throw new AddonsException(e);
    }
    catch (NoSuchMethodException e)
    {
      throw new AddonsException(e);
    }

    return subDataClassInstance;
  }

}
