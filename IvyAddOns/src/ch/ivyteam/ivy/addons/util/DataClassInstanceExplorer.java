package ch.ivyteam.ivy.addons.util;

import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;

import ch.ivyteam.ivy.addons.restricted.util.DataClassFactory;
import ch.ivyteam.ivy.addons.restricted.util.TypeCategory;
import ch.ivyteam.ivy.addons.restricted.util.TypeCategory.TypeCategoryEnum;

/**
 * Explores a data class instance and calls handler's methods. The startNode() and endNode() handler's methods
 * are called for every attributes and sub-attributes.<br />
 * If an attribute is iterable, all items are explored.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 02.06.2009
 */
public final class DataClassInstanceExplorer extends ExploreHandler<Object>
{
  private ExploreHandler<Object> handler;

  private Boolean createAttributes;

  private Boolean createLeafAttributes;

  private DataClassExplorer<PropertyDescriptor> explorer;

  private Object rootObject;

  private Stack<Pair> stack;

  /**
   * Creates an explorer with a specific handler.
   * 
   * @param handler handle that should be used
   * @throws AddonsException
   */
  public DataClassInstanceExplorer(ExploreHandler<Object> handler) throws AddonsException
  {
    super();
    this.handler = handler;

    explorer = DataClassExplorer.createPropertyExplorer(new Handler());
  }

  /**
   * Explores all the attributes and sub-attributes of the given object and creates attributes if they are
   * null.
   * 
   * @param object object that should be explored
   * @throws AddonsException
   */
  public void explore(Object object) throws AddonsException
  {
    explore(object, true);
  }

  /**
   * Explores all the attributes and sub-attributes of the given object.
   * 
   * @param object object that should be explored
   * @param createAttributes true if attributes should be created by the explorer; false otherwise
   * @throws AddonsException
   */
  public void explore(Object object, Boolean createAttributes) throws AddonsException
  {
    explore(object, createAttributes, createAttributes);
  }

  /**
   * Explores all the attributes and sub-attributes of the given object.
   * 
   * @param object object that should be explored
   * @param createAttributes true if attributes should be created by the explorer; false otherwise
   * @param createLeafAttributes true if attributes that contains no other attribute should be created by the
   *          explorer; false otherwise
   * @throws AddonsException
   */
  public void explore(Object object, Boolean createAttributes, Boolean createLeafAttributes)
          throws AddonsException
  {
    stack = new Stack<Pair>();

    this.createAttributes = createAttributes;
    this.createLeafAttributes = createLeafAttributes;

    rootObject = object;

    explorer.explore(rootObject.getClass());
  }

  private class Handler extends ExploreHandler<PropertyDescriptor>
  {
    @Override
    public void endDocument() throws AddonsException
    {
      super.endDocument();
      handler.endDocument();
    }

    @Override
    public void endNode(PropertyDescriptor propertyDescriptor, String name, String uri)
    {
      Pair pair;
      Object attribute;

      pair = stack.pop();
      attribute = pair.getObject();

      handler.endNode(attribute, name, uri);
    }

    @Override
    public boolean redoSameNode()
    {
      boolean result;
      Iterator iterator;

      result = false;
      if (!stack.empty())
      {
        iterator = stack.peek().getIterator();
        if (iterator != null)
        {
          result = iterator.hasNext();
        }
      }
      return result;
    }

    @Override
    public void startDocument() throws AddonsException
    {
      super.startDocument();
      handler.startDocument();
    }

    @Override
    public boolean startNode(PropertyDescriptor propertyDescriptor, String name, String qualifiedName)
            throws AddonsException
    {
      boolean result;
      Object attribute;
      PropertyDescriptor property;
      Iterator iterator;
      Pair parentPair;
      TypeCategoryEnum category;
      Boolean create;

      parentPair = stack.empty() ? null : stack.peek();
      attribute = null;

      if (propertyDescriptor instanceof PropertyDescriptor)
      {
        property = (PropertyDescriptor) propertyDescriptor;

        category = TypeCategory.getCategory(property.getPropertyType());

        attribute = readAttribute(property, parentPair.getObject());

        create = shouldCreateAttribute(attribute, category);

        if (create)
        {
          attribute = createAttribute(property, parentPair);
        }
      }
      iterator = null;
      if (propertyDescriptor == null)
      {
        if (parentPair == null)
        {
          attribute = rootObject;
        }
        else if (parentPair.getObject() instanceof Iterable && parentPair.getIterator() != null)
        {
          attribute = parentPair.getIterator().next();
        }
      }
      result = attribute != null;
      if (attribute instanceof Iterable)
      {
        iterator = ((Iterable) attribute).iterator();
        result = iterator.hasNext();
      }

      result = handler.startNode(attribute, name, qualifiedName) && result;

      stack.push(new Pair(attribute, iterator));
      return result;
    }

    private Object readAttribute(PropertyDescriptor property, Object object) throws AddonsException
    {
      Method method;
      Object attribute;

      method = property.getReadMethod();
      attribute = invoke(object, method, null);
      return attribute;
    }

    private Object createAttribute(PropertyDescriptor property, Pair parentPair) throws AddonsException
    {
      Method method;
      Object attribute;
      Class<?> propertyType;
      String attributeQualifiedName;
      Map<String, Class<?>> classMap;

      propertyType = property.getPropertyType();

      classMap = explorer.getClassMap();
      if (classMap != null)
      {
        attributeQualifiedName = parentPair.object.getClass().getName() + "." + property.getName();
        if (classMap.containsKey(attributeQualifiedName))
        {
          propertyType = classMap.get(attributeQualifiedName);
        }
      }
      attribute = DataClassFactory.newInstance(propertyType);
      method = property.getWriteMethod();
      invoke(parentPair.getObject(), method, new Object[] {attribute});
      return attribute;
    }

    private Boolean shouldCreateAttribute(Object attribute, TypeCategoryEnum category)
    {
      Boolean create;
      create = false;
      if (attribute == null)
      {
        if (createAttributes)
        {
          create = true;
        }
        if ((category == TypeCategoryEnum.SIMPLE || category == TypeCategoryEnum.LIST)
                && !createLeafAttributes)
        {
          create = false;
        }
      }
      return create;
    }

    private Object invoke(Object parent, Method method, Object[] params) throws AddonsException
    {
      Object attribute;

      try
      {
        attribute = method.invoke(parent, params);
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
      return attribute;
    }
  }

  private final class Pair
  {
    private Object object;

    private Iterator iterator;

    private Pair(Object object, Iterator iterator)
    {
      super();
      this.object = object;
      this.iterator = iterator;
    }

    protected Iterator getIterator()
    {
      return iterator;
    }

    protected Object getObject()
    {
      return object;
    }
  }

  /**
   * @see DataClassExplorer#setClassMap(Map)
   */
  public void setClassMap(Map<String, Class<?>> classMap)
  {
    explorer.setClassMap(classMap);
  }

  /**
   * @see DataClassExplorer#getClassMap()
   */
  public Map<String, Class<?>> getClassMap()
  {
    return explorer.getClassMap();
  }
}
