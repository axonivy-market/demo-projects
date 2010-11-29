package ch.ivyteam.ivy.addons.util;

import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import ch.ivyteam.ivy.addons.restricted.util.CmsWriteAccess;
import ch.ivyteam.ivy.cm.IContentManagementSystem;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * This helper class permits to initialize a data class from the CMS content and fills the CMS from a data
 * class content.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 03.03.2010
 */
public final class Cms2DataClass
{
  private static final String ISO_8601_DATE_FORMAT = "yyyy-MM-dd";

  private static final String ISO_8601_TIME_FORMAT = "HH:mm:ss";

  private static final String ISO_8601_DATETIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ss";

  private Cms2DataClass()
  {
  }

  /**
   * Fills a data class from the CMS. The attribute encapsulation is used to get values from the CMS. Uses the
   * current CMS obtained by <code>ivy.cms</code>.
   * 
   * @param object object that is read by this method
   * @param cmsUri uri of the CMS branch that is read
   * @throws AddonsException
   */
  public static void read(final Object object, String cmsUri) throws AddonsException
  {
    read(object, cmsUri, Ivy.cms());
  }

  /**
   * Fills a data class from the CMS. The attribute encapsulation is used to get values from the CMS.
   * 
   * @param object object that is read by this method
   * @param cmsUri uri of the CMS branch that is read
   * @param cms Content Management System to use
   * @throws AddonsException
   */
  public static void read(final Object object, String cmsUri, IContentManagementSystem cms)
          throws AddonsException
  {
    ReadHandler handler;
    DataClassExplorer<PropertyDescriptor> explorer;

    handler = new ReadHandler(cmsUri, object, cms);
    explorer = DataClassExplorer.createPropertyExplorer(handler);

    explorer.explore(object.getClass());
  }

  /**
   * Fills the CMS from a data class. The CMS tree is created to reproduce attribute encapsulation. Uses the
   * current CMS obtained by <code>ivy.cms</code>.
   * 
   * @param object object that is read by this method
   * @param cmsUri uri of the CMS branch that is filled
   * 
   * @throws AddonsException
   */
  public static void write(final Object object, String cmsUri) throws AddonsException
  {
    write(object, cmsUri, Ivy.cms());
  }

  /**
   * Fills the CMS from a data class. The CMS tree is created to reproduce attribute encapsulation.
   * 
   * @param object object that is read by this method
   * @param cmsUri uri of the CMS branch that is filled
   * @param cms Content Management System to use
   * 
   * @throws AddonsException
   */
  public static void write(final Object object, String cmsUri, IContentManagementSystem cms)
          throws AddonsException
  {
    WriteHandler handler;
    DataClassExplorer<PropertyDescriptor> explorer;

    handler = new WriteHandler(cmsUri, object, cms);
    explorer = DataClassExplorer.createPropertyExplorer(handler);

    explorer.explore(object.getClass());
  }

  private static final class ReadHandler extends ExploreHandler<PropertyDescriptor>
  {
    private Object rootObject;

    private String cmsUri;

    private IContentManagementSystem cms;

    private ReadHandler(String cmsUri, final Object object, IContentManagementSystem cms)
    {
      this.cmsUri = cmsUri;
      this.rootObject = object;
      this.cms = cms;
    }

    @Override
    public boolean startNode(PropertyDescriptor propertyDescriptor, String name, String qualifiedName)
            throws AddonsException
    {
      Class<?> clazz;
      Object value;
      String cmsValue;

      if (propertyDescriptor != null)
      {
        clazz = propertyDescriptor.getPropertyType();
        cmsValue = cms.co(this.cmsUri + "/" + name);
        if (cmsValue.equals("null"))
        {
          cmsValue = "";
        }

        value = null;
        try
        {
          if (clazz.isAssignableFrom(String.class))
          {
            value = cmsValue;
          }
          else if (clazz.isAssignableFrom(Date.class))
          {
            value = new Date(new SimpleDateFormat(ISO_8601_DATE_FORMAT).parse(cmsValue));
          }
          else if (clazz.isAssignableFrom(DateTime.class))
          {
            value = new DateTime(new SimpleDateFormat(ISO_8601_DATETIME_FORMAT).parse(cmsValue));
          }
          else if (clazz.isAssignableFrom(Time.class))
          {
            value = new Time(new SimpleDateFormat(ISO_8601_TIME_FORMAT).parse(cmsValue));
          }
          else if (clazz.isAssignableFrom(Duration.class))
          {
            value = new Duration(cmsValue);
          }
          else if (clazz.isAssignableFrom(java.util.Date.class))
          {
            value = new SimpleDateFormat(ISO_8601_DATETIME_FORMAT).parse(cmsValue);
          }
          else if (clazz.isAssignableFrom(Number.class))
          {
            value = new BigDecimal(cmsValue);
          }
          // Nothing to do with Integer - because Number is assignable from Integer
          else if (clazz.isAssignableFrom(Boolean.class))
          {
            value = cmsValue.equals("") || cmsValue.equals("0") || cmsValue.equals("false") ? false : true;
          }
          else if (clazz.isAssignableFrom(Integer.class))
          {
            value = new BigDecimal(cmsValue).intValue();
          }

          propertyDescriptor.getWriteMethod().invoke(rootObject, new Object[] {value});
        }
        catch (NumberFormatException e)
        {
          // Nothing to do
        }
        catch (ParseException e)
        {
          // Nothing to do
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
      }
      return propertyDescriptor == null;
    }
  }

  private static final class WriteHandler extends ExploreHandler<PropertyDescriptor>
  {
    private Object rootObject;

    private String cmsUri;

    private IContentManagementSystem cms;

    private WriteHandler(String cmsUri, final Object object, IContentManagementSystem cms)
    {
      this.cmsUri = cmsUri;
      this.rootObject = object;
      this.cms = cms;
    }

    @Override
    public boolean startNode(PropertyDescriptor propertyDescriptor, String name, String qualifiedName)
            throws AddonsException
    {
      Class<?> clazz;
      Object value;
      String cmsValue;
      String cmsPath;

      if (propertyDescriptor != null)
      {
        clazz = propertyDescriptor.getPropertyType();
        cmsPath = this.cmsUri + "/" + name;

        try
        {
          cmsValue = "";
          value = propertyDescriptor.getReadMethod().invoke(rootObject, new Object[] {});
          if (value != null)
          {
            cmsValue = value.toString();

            if (Date.class.isAssignableFrom(clazz))
            {
              cmsValue = new SimpleDateFormat(ISO_8601_DATE_FORMAT).format(((Date) value).toDate());
            }
            else if (DateTime.class.isAssignableFrom(clazz))
            {
              cmsValue = new SimpleDateFormat(ISO_8601_DATETIME_FORMAT).format(((DateTime) value).toDate());
            }
            else if (Time.class.isAssignableFrom(clazz))
            {
              cmsValue = new SimpleDateFormat(ISO_8601_TIME_FORMAT).format(((Time) value).toDate());
            }
            else if (Duration.class.isAssignableFrom(clazz))
            {
              cmsValue = value.toString();
            }
            else if (java.util.Date.class.isAssignableFrom(clazz))
            {
              cmsValue = new SimpleDateFormat(ISO_8601_DATETIME_FORMAT).format((java.util.Date) value);
            }
          }
          CmsWriteAccess.write(cmsPath, cmsValue, null, cms);
        }
        catch (NumberFormatException e)
        {
          // Nothing to do
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
      }
      return propertyDescriptor == null;
    }
  }
}
