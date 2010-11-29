package ch.ivyteam.ivy.addons.restricted.util;

import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.File;
import ch.ivyteam.ivy.scripting.objects.Record;
import ch.ivyteam.ivy.scripting.objects.Recordset;
import ch.ivyteam.ivy.scripting.objects.Time;
import ch.ivyteam.ivy.scripting.objects.Tree;
import ch.ivyteam.ivy.scripting.objects.Xml;

/**
 * This helper class permits to classify the type of attributes.
 * @author Patrick Joly, TI-Informatique
 * @since 26.11.2009
 */
public final class TypeCategory
{
  private TypeCategory()
  {
  }

  /**
   * Category used to classify types.
   */
  public enum TypeCategoryEnum
  {
    SIMPLE, COMPLEX, LIST
  }

  /**
   * Finds in which category a class is classified.
   * 
   * @param clazz class that should by classify
   * @return category in which the class is classified
   */
  public static TypeCategoryEnum getCategory(Class<?> clazz)
  {
    TypeCategoryEnum category;

    category = TypeCategoryEnum.SIMPLE;

    if (!isSimple(clazz))
    {
      if (Iterable.class.isAssignableFrom(clazz))
      {
        category = TypeCategoryEnum.LIST;
      }
      else
      {
        category = TypeCategoryEnum.COMPLEX;
      }
    }

    return category;
  }

  private static boolean isSimple(Class<?> clazz)
  {
    return clazz.isPrimitive() || clazz.isAssignableFrom(String.class) || clazz.isAssignableFrom(Date.class)
            || clazz.isAssignableFrom(DateTime.class) || clazz.isAssignableFrom(java.util.Date.class)
            || clazz.isAssignableFrom(Time.class) || clazz.isAssignableFrom(Duration.class)
            || clazz.isAssignableFrom(Number.class) || clazz.isAssignableFrom(Integer.class)
            || clazz.isAssignableFrom(Boolean.class) || clazz.isAssignableFrom(Xml.class)
            || clazz.isAssignableFrom(Tree.class) || clazz.isAssignableFrom(File.class)
            || clazz.isAssignableFrom(Record.class) || clazz.isAssignableFrom(Recordset.class);
  }
}
