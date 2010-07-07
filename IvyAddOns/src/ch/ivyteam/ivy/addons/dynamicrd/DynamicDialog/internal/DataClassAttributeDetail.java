package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal;

import java.beans.BeanInfo;
import java.beans.FeatureDescriptor;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.Hashtable;
import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogException;
import ch.ivyteam.ivy.addons.util.IvyDataClass;
import ch.ivyteam.ivy.scripting.objects.CompositeObject;

/**
 * Keeps data class attribute's information together.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class DataClassAttributeDetail implements Comparable<DataClassAttributeDetail>, Serializable
{
  private static final long serialVersionUID = 1262068856552805431L;

  public String attributeName;

  public List<DataClassAttributeDetail> children = null;

  public List<String> cmsContexts = null;

  public String descriptionAttributeName;

  public String fullName;

  public boolean isList = false;

  public Integer itemCount;

  public String name;

  public Integer position;

  transient public Hashtable<String, PropertyDescriptor> propertyDescriptors = null;

  @SuppressWarnings("unchecked")
transient public Class propertyType = null;

  public String propertyTypeClassName;

  transient public Method read = null;

  transient public Method readText = null;

  transient public Method write = null;

  transient public Method writeText = null;

  @SuppressWarnings("unchecked")
public DataClassAttributeDetail(List<String> _cmsContexts, String _name,
          DataClassAttributeDetail parentAttributeDetail, Object object, FeatureDescriptor feature,
          PropertyDescriptor descriptionProperty)
  {
    super();

    Class propertyType;

    if (_name == null || _name.equals(""))
    {
      name = feature.getName();
    }
    else
    {
      name = _name;
    }

    itemCount = 1;

    cmsContexts = Cms.getCmsContexts(name, _cmsContexts);

    try
    {
      position = Integer.parseInt(Cms.co(cmsContexts, "parameters/position"));
    }
    catch (NumberFormatException e)
    {
      position = Integer.MAX_VALUE;
    }

    if (parentAttributeDetail != null && !parentAttributeDetail.fullName.equals(""))
    {
      fullName = parentAttributeDetail.fullName + "/" + name;
    }
    else
    {
      fullName = name;
    }

    if (feature instanceof PropertyDescriptor)
    {
      PropertyDescriptor property;

      property = (PropertyDescriptor) feature;

      propertyType = property.getPropertyType();
      propertyTypeClassName = propertyType.getName();

      attributeName = property.getName();
      if (descriptionProperty != null)
      {
        descriptionAttributeName = descriptionProperty.getName();
      }

      if (propertyType.equals(ch.ivyteam.ivy.scripting.objects.List.class))
      {
        isList = true;
        fullName = fullName += "/item";
      }

      setMethods(property, descriptionProperty);
    }
    else
    {
      propertyType = object.getClass();
      propertyTypeClassName = propertyType.getName();
    }
  }

  public int compareTo(DataClassAttributeDetail o)
  {
    int result;

    result = 0;
    if (o instanceof DataClassAttributeDetail)
    {
      DataClassAttributeDetail r;
      r = (DataClassAttributeDetail) o;

      result = position.compareTo(r.position);
    }

    return result;
  }

  public void setMethods(PropertyDescriptor property, PropertyDescriptor descriptionProperty)
  {
    Method method;

    propertyType = property.getPropertyType();
    propertyTypeClassName = propertyType.getName();

    method = property.getReadMethod();
    read = method;
    method = property.getWriteMethod();
    write = method;
    if (descriptionProperty != null)
    {
      method = descriptionProperty.getWriteMethod();
      writeText = method;
      method = descriptionProperty.getReadMethod();
      readText = method;
      descriptionAttributeName = descriptionProperty.getName();
    }
    else
    {
      readText = read;
    }

  }

  public void updateMethods(CompositeObject targetObject)
  {
    updateMethods(targetObject, null);
  }

  @SuppressWarnings("unchecked")
private void updateMethods(Object targetObject,
          Hashtable<String, PropertyDescriptor> parentPropertyDescriptors)
  {
    BeanInfo beanInfo;
    PropertyDescriptor property = null;
    PropertyDescriptor descriptionProperty = null;

    try
    {
      if (targetObject != null)
      {
        if (isList)
        {
          targetObject = ((List) targetObject).get(0);
        }
        propertyType = targetObject.getClass();
        if (children != null)
        {
          beanInfo = Introspector.getBeanInfo(propertyType);

          propertyDescriptors = new Hashtable<String, PropertyDescriptor>();

          for (PropertyDescriptor p : beanInfo.getPropertyDescriptors())
          {
            propertyDescriptors.put(p.getName(), p);
          }
        }

        if (children != null)
        {
          for (DataClassAttributeDetail child : children)
          {
            property = propertyDescriptors.get(child.attributeName);
            descriptionProperty = null;
            if (child.descriptionAttributeName != null)
            {
              descriptionProperty = propertyDescriptors.get(child.descriptionAttributeName);
            }

            child.setMethods(property, descriptionProperty);
            if (child.children != null)
            {
              // if (isList) {
              // child.updateMethods(((List)targetObject).get(0),
              // propertyDescriptors);
              // } else {
              child.setMethods(property, descriptionProperty);
              child.updateMethods(IvyDataClass.createDataClassInstance(targetObject, child),
                      propertyDescriptors);
              // }
            }
          }
        }
      }
    }
    catch (IntrospectionException e)
    {
      throw new DynamicDialogException(e);
    }
  }
}
