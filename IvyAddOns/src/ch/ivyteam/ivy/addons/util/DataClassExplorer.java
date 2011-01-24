package ch.ivyteam.ivy.addons.util;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.util.HashMap;
import java.util.Map;

import ch.ivyteam.ivy.addons.restricted.util.TypeCategory;

/**
 * Explores a data class and calls handler's methods. The startNode() and endNode() handler's methods are
 * called for every attributes and sub-attributes. When the redoSameNode method returns true, the last
 * attribute is explored again.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 02.06.2009
 */
@SuppressWarnings("unchecked")
public final class DataClassExplorer<T extends Object>
{
  private ExploreHandler<T> handler;

  private boolean useClass;

  private boolean usePropertyDescriptor;

  private Map<String, Class<?>> classMap;

  /**
   * Creates an explorer with a specific handler. The object parameter of startNode and endNode is of type
   * PropertyDescriptor.
   * 
   * @param handler handler that should be used
   * @throws AddonsException
   */
  public static DataClassExplorer<PropertyDescriptor> createPropertyExplorer(
          ExploreHandler<PropertyDescriptor> handler) throws AddonsException
  {
    return new DataClassExplorer<PropertyDescriptor>(handler, PropertyDescriptor.class);
  }

  /**
   * Creates an explorer with a specific handler. The object parameter of startNode and endNode is of type
   * Class.
   * 
   * @param handler handler that should be used
   * @throws AddonsException
   */
  public static DataClassExplorer<Class> createClassExplorer(ExploreHandler<Class> handler)
          throws AddonsException
  {
    return new DataClassExplorer<Class>(handler, Class.class);
  }

  
  /**
   * Constructs a new DataClassExplorer object.
   * 
   * @deprecated Prefers using methods createClassExplorer and createPropertyExplorer
   * @see #createClassExplorer(ExploreHandler)
   * @see #createPropertyExplorer(ExploreHandler)
   * 
   * @param handler handler that should be used.
   * @throws AddonsException
   */
  @Deprecated
  public DataClassExplorer(ExploreHandler handler) throws AddonsException
  {
    this(handler, Class.class);
  }

  private DataClassExplorer(ExploreHandler<T> handler, Class<?> clazz) throws AddonsException
  {
    this.handler = handler;

    this.usePropertyDescriptor = false;
    this.useClass = false;
    if (clazz.isAssignableFrom(PropertyDescriptor.class))
    {
      this.usePropertyDescriptor = true;
    }
    else if (clazz.isAssignableFrom(Class.class))
    {
      this.useClass = true;
    }

    if (!clazz.equals(Class.class) && !clazz.equals(PropertyDescriptor.class))
    {
      throw new AddonsException("The parameter type \"" + clazz.getName() + "\" isn't supported");
    }
  }

  /**
   * Explores all the attributes and sub-attributes of the given class.
   * 
   * @param clazz class that should be explored
   * @throws AddonsException
   */
  public void explore(Class clazz) throws AddonsException
  {
    handler.startDocument();
    explore(clazz, null, "", "", null);
    handler.endDocument();
  }

  private void explore(Class<?> attributeClass, Class<?> parentClass, String name, String path,
          PropertyDescriptor property) throws AddonsException
  {
    T handlerParam;
    String currentPath;
    String attributeQualifiedName;
    Class<?> clazz;

    clazz = attributeClass;
    if (property != null && classMap != null)
    {
      attributeQualifiedName = parentClass.getName() + "." + property.getName();
      if (classMap.containsKey(attributeQualifiedName))
      {
        clazz = classMap.get(attributeQualifiedName);
      }
    }

    currentPath = path;
    do
    {
      if (!clazz.equals(Class.class))
      {
        if (!name.equals(""))
        {
          currentPath = currentPath + "/" + name;
        }

        handlerParam = null;
        if (usePropertyDescriptor)
        {
          handlerParam = (T) property;
        }
        else if (useClass)
        {
          handlerParam = (T) clazz;
        }

        if (handler.startNode(handlerParam, name, currentPath))
        {
          exploreAttribute(clazz, parentClass, currentPath, property);
        }

        handler.endNode(handlerParam, name, currentPath);
      }
    } while (handler.redoSameNode());
  }

  private void exploreAttribute(Class<?> clazz, Class<?> parentClass, String path, PropertyDescriptor property)
          throws AddonsException
  {
    switch (TypeCategory.getCategory(clazz))
    {
      case SIMPLE:
        break;
      case LIST:
        ParameterizedType parameterizedType;

        parameterizedType = (ParameterizedType) property.getReadMethod().getGenericReturnType();

        explore((Class) parameterizedType.getActualTypeArguments()[0], parentClass, "item", path, null);
        break;
      case COMPLEX:
        exploreComplexType(clazz, path);
        break;
    }
  }

  private void exploreComplexType(Class<?> clazz, String path) throws AddonsException
  {
    Map<String, PropertyDescriptor> properties;
    PropertyDescriptor currentProperty;
    String propertyName;
    BeanInfo beanInfo;

    try
    {
      beanInfo = Introspector.getBeanInfo(clazz);
    }
    catch (IntrospectionException e)
    {
      throw new AddonsException(e);
    }

    properties = new HashMap<String, PropertyDescriptor>();
    for (PropertyDescriptor p : beanInfo.getPropertyDescriptors())
    {
      properties.put(p.getName().toUpperCase(), p);
    }
    // With that, the properties are listed in the same order than the dataclass definition
    for (Field f : clazz.getDeclaredFields())
    {
      propertyName = f.getName().toUpperCase();
      currentProperty = properties.get(propertyName);
      if (currentProperty != null)
      {
        explore(currentProperty.getPropertyType(), clazz, f.getName(), path, currentProperty);
        properties.remove(propertyName);
      }
    }
    // May be, some properties were not listed above
    for (PropertyDescriptor p : beanInfo.getPropertyDescriptors())
    {
      propertyName = p.getName().toUpperCase();
      if (properties.containsKey(propertyName))
      {
        explore(p.getPropertyType(), clazz, p.getName(), path, p);
      }
    }
  }

  /**
   * This explorer needs to know which Class is used for each attribute. Sometime when attributes have an
   * interface as type it is not possible to know which class to use. This method permits to give to the
   * explorer which class to use for a specific attribute. The map should only contains values for attributes
   * that the explorer can not find the class itself.<br />
   * The value should be of this type : <br />
   * <code>[qualified class name].[attribute name]<code>
   * For exemple : <code>ch.foo.bar.MyClass.myAttribute<code>
   * 
   * @param classMap map that contains the class to use for a specific attribute
   */
  public void setClassMap(Map<String, Class<?>> classMap)
  {
    this.classMap = classMap;
  }

  /**
   * Gets back the substitution map to find which class to use for a specifific attribute.
   * 
   * @return map that contains the class to use for specific attribute
   */
  public Map<String, Class<?>> getClassMap()
  {
    return classMap;
  }
}
