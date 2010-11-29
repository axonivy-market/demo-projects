package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

import ch.ivyteam.ivy.addons.restricted.util.DataClassFactory;
import ch.ivyteam.ivy.addons.restricted.util.TypeCategory;
import ch.ivyteam.ivy.addons.restricted.util.TypeCategory.TypeCategoryEnum;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.addons.util.DataClassExplorer;
import ch.ivyteam.ivy.addons.util.DataClassInstanceExplorer;
import ch.ivyteam.ivy.addons.util.ExploreHandler;

/**
 * This helper class implements getter and setter for dynamic dialog.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 20.07.2010
 */
final class DynamicDialogMapper
{
  private static final class GetValueHandler extends ExploreHandler<PropertyDescriptor>
  {
    @Override
    public final void endNode(PropertyDescriptor property, String name, String uri)
    {
      stack.pop();
    }

    private Map<String, Component> componentMap;

    private Stack<Object> stack;

    private Object root;

    private String prefix;

    private Map<String, Object> inexistantAttributeValues;

    private Map<String, Class<?>> classMap;

    private GetValueHandler(Map<String, Component> componentMap,
            Map<String, Object> inexistantAttributeValues, Object value, String prefix,
            Map<String, Class<?>> classMap)
    {
      super();
      this.componentMap = componentMap;
      this.inexistantAttributeValues = inexistantAttributeValues;
      this.prefix = prefix;
      stack = new Stack<Object>();
      root = value;
      this.classMap = classMap;
    }

    @Override
    public final boolean startNode(PropertyDescriptor property, String name, String qualifiedName)
    {
      Boolean result;
      Object parent;
      TypeCategoryEnum category;
      Object value;
      String itemQualifiedName;

      itemQualifiedName = prefix + qualifiedName;

      if (property == null)
      {
        result = true;
        value = root;
      }
      else
      {
        category = TypeCategory.getCategory(property.getPropertyType());

        value = inexistantAttributeValues.get(itemQualifiedName);
        if (value == null)
        {
          if (category == TypeCategoryEnum.LIST || category == TypeCategoryEnum.SIMPLE)
          {
            result = false;
          }
          else
          {
            result = true;
          }

          value = extractValue(property, category, itemQualifiedName);
        }
        else
        {
          result = false;
        }
        parent = stack.peek();
        try
        {
          property.getWriteMethod().invoke(parent, new Object[] {value});
        }
        catch (IllegalArgumentException e)
        {
          throw new DynamicDialogException(e);
        }
        catch (IllegalAccessException e)
        {
          throw new DynamicDialogException(e);
        }
        catch (InvocationTargetException e)
        {
          throw new DynamicDialogException(e);
        }
      }
      stack.push(value);

      return result;
    }

    private final Object extractValue(PropertyDescriptor property, TypeCategoryEnum category,
            String itemQualifiedName)
    {
      Object value;
      Component component;
      Class<?> propertyType;
      String attributeQualifiedName;
      Object parent;

      parent = stack.peek();

      propertyType = property.getPropertyType();
      if (classMap != null && parent != null)
      {
        attributeQualifiedName = parent.getClass().getName() + "." + property.getName();
        if (classMap.containsKey(attributeQualifiedName))
        {
          propertyType = classMap.get(attributeQualifiedName);
        }

      }

      value = null;
      switch (category)
      {
        case COMPLEX:
          try
          {
            value = DataClassFactory.newInstance(propertyType);
          }
          catch (AddonsException e)
          {
            throw new DynamicDialogException(e);
          }
          break;
        case LIST:
          component = componentMap.get(itemQualifiedName);
          if (component instanceof ListComponent)
          {
            ListComponent list = (ListComponent) component;
            value = DynamicDialogBinding.getListData(list, property.getPropertyType());
          }
          break;
        case SIMPLE:
          if (itemQualifiedName.endsWith("Description"))
          {
            component = componentMap.get(itemQualifiedName.replaceFirst("Description$", ""));
            if (component instanceof FieldComponent)
            {
              FieldComponent field = (FieldComponent) component;
              value = field.getText();
              break;
            }
          }
          component = componentMap.get(itemQualifiedName);
          if (component instanceof FieldComponent)
          {
            FieldComponent field = (FieldComponent) component;
            value = DynamicDialogBinding.getValue(field, property.getPropertyType());
          }
          break;
      }
      return value;
    }
  }

  private DynamicDialogMapper()
  {
  }

  protected static void setValue(Object value, Map<String, Component> componentMap,
          Map<String, Object> inexistantValueMap, String prefix, boolean createDataClasses,
          Map<String, Class<?>> classMap) throws AddonsException
  {
    DataClassInstanceExplorer explorer;

    explorer = new DataClassInstanceExplorer(new SetValueHandler(componentMap, inexistantValueMap, prefix));
    explorer.setClassMap(classMap);
    try
    {
      explorer.explore(value, createDataClasses, false);
    }
    catch (AddonsException e)
    {
      throw new DynamicDialogException(e);
    }
  }

  private static final class SetValueHandler extends ExploreHandler<Object>
  {
    private Map<String, Component> componentMap;

    private String prefix;

    private Map<String, Object> valueMap;

    private Map<String, Object> inexistantAttributeValue;

    private SetValueHandler(Map<String, Component> componentMap,
            Map<String, Object> inexistantAttributeValue, String prefix)
    {
      super();
      this.componentMap = componentMap;
      this.prefix = prefix;
      this.inexistantAttributeValue = inexistantAttributeValue;
      this.valueMap = new HashMap<String, Object>();
    }

    @Override
    public final boolean startNode(Object object, String name, String qualifiedName)
    {
      boolean result;
      Component component;
      String itemQualifiedName;

      itemQualifiedName = prefix + qualifiedName;

      result = true;
      component = componentMap.get(itemQualifiedName);

      if (component instanceof FieldComponent || component instanceof ListComponent
              || itemQualifiedName.endsWith("Description"))
      {
        result = false;
        valueMap.put(itemQualifiedName, object);
      }
      else
      {
        if (component == null)
        {
          inexistantAttributeValue.put(itemQualifiedName, object);
          result = false;
        }
      }
      return result;
    }

    @Override
    protected final void endDocument()
    {
      Component component;
      Object object;
      String text;
      Object textObject;

      for (String qualifiedName : valueMap.keySet())
      {
        object = valueMap.get(qualifiedName);
        component = componentMap.get(qualifiedName);

        if (component instanceof FieldComponent)
        {
          FieldComponent field = (FieldComponent) component;

          text = "";
          textObject = valueMap.get(qualifiedName + "Description");
          if (textObject != null)
          {
            text = textObject.toString();
          }

          DynamicDialogBinding.setValue(field, object, text);
        }

        if (component instanceof ListComponent)
        {
          ListComponent list = (ListComponent) component;
          DynamicDialogBinding.setListData(list, (Collection<?>) object, componentMap.get(qualifiedName
                  + "/item"));
        }
      }
    }

  }

  protected static Object getValue(Map<String, Component> componentMap,
          Map<String, Object> inexistantAttributeValues, Class clazz, String prefix,
          Map<String, Class<?>> classMap)
  {
    Object value;

    try
    {
      value = clazz.newInstance();
    }
    catch (InstantiationException e)
    {
      throw new DynamicDialogException(e);
    }
    catch (IllegalAccessException e)
    {
      throw new DynamicDialogException(e);
    }

    return getValue(value, componentMap, inexistantAttributeValues, clazz, prefix, classMap);
  }

  protected static Object getValue(Object value, Map<String, Component> componentMap,
          Map<String, Object> inexistantAttributeValues, Class clazz, String prefix,
          Map<String, Class<?>> classMap)
  {
    DataClassExplorer<PropertyDescriptor> explorer;

    try
    {
      explorer = DataClassExplorer.createPropertyExplorer(new GetValueHandler(componentMap,
              inexistantAttributeValues, value, prefix, classMap));
      explorer.setClassMap(classMap);
      explorer.explore(value.getClass());
    }
    catch (AddonsException e)
    {
      throw new DynamicDialogException(e);
    }

    return value;
  }
}
