package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal;

import java.lang.reflect.InvocationTargetException;
import java.util.Hashtable;
import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.Component;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogException;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.FieldComponent;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.StaticRelation;
import ch.ivyteam.ivy.addons.util.IvyDataClass;
import ch.ivyteam.ivy.scripting.objects.CompositeObject;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;

//TODO Uses DataClassInstanceExplorer and DataClassExplorer.

/**
 * This keeps the relations between a DynamicDialog instance and its parameters and data class.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 03.10.2008
 */
public class RuntimeRelations
{
  public class RuntimeRelationItem
  {
    public Component component;

    public Object targetObject;

    public StaticRelationItem staticRelation;

    public FieldComponent getFieldComponent()
    {
      FieldComponent fieldComponent;

      fieldComponent = null;

      if (component != null && component instanceof FieldComponent)
      {
        fieldComponent = (FieldComponent) component;
      }

      return fieldComponent;
    }

  }

  protected Hashtable<String, RuntimeRelationItem> dynamicRelations = null;

  protected Object object;

  protected StaticRelation staticRelation;

  protected StaticRelationItem staticRelationItem = null;

  public RuntimeRelations(String fullName, StaticRelation _staticRelation)
  {
    staticRelation = _staticRelation;

    staticRelationItem = staticRelation.get(fullName);

    dynamicRelations = new Hashtable<String, RuntimeRelationItem>();
  }

  /**
   * Creates relations between dialog and static stuff.
   * 
   * @param attributeDetails list of attributes that is displayed by the dialog
   * @param source data class instance that this dialog represents
   */
  public void create(List<DataClassAttributeDetail> attributeDetails, Object source)
  {
    RuntimeRelationItem runtimeRelationItem;
    Object sourceAttribute;

    object = source;

    if (attributeDetails != null)
    {
      for (DataClassAttributeDetail attributeDetail : attributeDetails)
      {

        runtimeRelationItem = dynamicRelations.get(attributeDetail.fullName);
        if (source != null && source.getClass().equals(runtimeRelationItem.targetObject.getClass()))
        {
          throw new ClassCastException("Unable to cast from " + source.getClass().getName() + " to "
                  + runtimeRelationItem.targetObject.getClass().getName());
        }

        try
        {
          if (source == null)
            sourceAttribute = null;
          else
            sourceAttribute = attributeDetail.read.invoke(source, new Object[] {});

          if (attributeDetail.children != null)
          {
            attributeDetail.write.invoke(runtimeRelationItem.targetObject, sourceAttribute);
          }
          else
          {
            create(attributeDetail.children, sourceAttribute);
          }
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
    }
  }

  /**
   * Finds a specific runtime relation from a fully qualifed name.
   * 
   * @param fullName fully qualified name of the relation
   * @return relation
   */
  public RuntimeRelationItem get(String fullName)
  {
    return dynamicRelations.get(fullName);
  }

  /**
   * Gets the data class attribute detail of the attribute that represent a specific component.
   * 
   * @return attribute detail
   */
  public DataClassAttributeDetail getAttributeDetail()
  {
    return staticRelationItem.getAttributeDetail();
  }

  /**
   * Gets the root runtime relation that is used to create the dialog.
   * 
   * @return root relation
   */
  public StaticRelationItem getRootStaticRelation()
  {
    return staticRelationItem;
  }

  /**
   * Gets static stuff relations.
   * 
   * @return relation between static stuff
   */
  public StaticRelation getStaticRelation()
  {
    return staticRelation;
  }

  /**
   * Fills and returns an object that contains all data that the dialog displays.
   * 
   * @return values displayed
   */
  public CompositeObject getValue()
  {
    getValue(staticRelationItem.getAttributeDetail().children);

    return object instanceof CompositeObject ? (CompositeObject) object : null;
  }

  protected void getValue(RuntimeRelations.RuntimeRelationItem runtimeRelationItem)
  {
    DataClassAttributeDetail attributeDetail;
    FieldComponent fieldComponent;
    Object targetObject;
    Object value;

    attributeDetail = runtimeRelationItem.staticRelation.getAttributeDetail();
    targetObject = runtimeRelationItem.targetObject;
    fieldComponent = runtimeRelationItem.getFieldComponent();
    value = null;

    getValue(attributeDetail.children);

    if (fieldComponent != null)
    {
      if (attributeDetail.propertyType.equals(ch.ivyteam.ivy.scripting.objects.List.class))
      {
      }
      else if (attributeDetail.propertyType.equals(String.class))
      {
        value = fieldComponent.getValueAsString();
      }
      else if (attributeDetail.propertyType.equals(Date.class))
      {
        value = fieldComponent.getValueAsDate();
      }
      else if (attributeDetail.propertyType.equals(DateTime.class))
      {
        value = fieldComponent.getValueAsDateTime();
      }
      else if (attributeDetail.propertyType.equals(Duration.class))
      {
        value = fieldComponent.getValueAsDuration();
      }
      else if (attributeDetail.propertyType.equals(Number.class))
      {
        value = fieldComponent.getValueAsNumber();
      }
      else if (attributeDetail.propertyType.equals(Boolean.class))
      {
        value = fieldComponent.getValueAsNumber() == null ? null : new Boolean(fieldComponent
                .getValueAsNumber().longValue() != 0);
      }

      if (targetObject != null)
      {
        try
        {
          attributeDetail.write.invoke(targetObject, new Object[] {value});
          if (attributeDetail.writeText != null)
          {
            attributeDetail.writeText.invoke(targetObject, new Object[] {fieldComponent.getText()});
          }
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
    }
  }

  private void getValue(List<DataClassAttributeDetail> attributeDetails)
  {
    RuntimeRelations.RuntimeRelationItem runtimeRelationItem;

    if (attributeDetails != null)
    {
      for (DataClassAttributeDetail attributeDetail : attributeDetails)
      {
        runtimeRelationItem = get(attributeDetail.fullName);

        getValue(runtimeRelationItem);
      }
    }
  }

  /**
   * Creates attributes if not already crated and links its to relaiton.
   * 
   * @param targetObject object that is represented by the dialog
   */
  public void linkObjectToRelation(CompositeObject targetObject)
  {
    object = targetObject;

    linkObjectToRelation(targetObject, staticRelationItem.getAttributeDetail().children);
  }

  protected void linkObjectToRelation(Object targetObject, List<DataClassAttributeDetail> attributeDetails)
  {
    StaticRelationItem staticRelationItem;
    RuntimeRelations.RuntimeRelationItem runtimeRelations;
    String fullName;
    RuntimeRelations.RuntimeRelationItem oldRelation;

    for (DataClassAttributeDetail attributeDetail : attributeDetails)
    {
      fullName = attributeDetail.fullName;

      staticRelationItem = staticRelation.get(fullName);

      runtimeRelations = new RuntimeRelations.RuntimeRelationItem();
      runtimeRelations.staticRelation = staticRelationItem;
      runtimeRelations.targetObject = targetObject;
      oldRelation = get(fullName);
      if (oldRelation != null)
      {
        runtimeRelations.component = oldRelation.component;
      }

      if (attributeDetail.children != null)
      {
        linkObjectToRelation(IvyDataClass.createDataClassInstance(targetObject, attributeDetail),
                attributeDetail.children);
      }

      dynamicRelations.put(fullName, runtimeRelations);
    }
  }

  /**
   * Fills the dialog fields with new values.
   * 
   * @param object new values that the dialog should displays.
   */
  public void setValue(CompositeObject object)
  {
    List<DataClassAttributeDetail> attributeDetailArray;

    attributeDetailArray = staticRelationItem.getAttributeDetail().children;

    linkObjectToRelation(object);

    setValue(attributeDetailArray);
  }

  protected void setValue(RuntimeRelations.RuntimeRelationItem runtimeRelationItem)
  {
    DataClassAttributeDetail attributeDetail;
    FieldComponent fieldComponent;
    Object targetObject;
    Object value;
    Object valueDescription;
    String text;

    attributeDetail = runtimeRelationItem.staticRelation.getAttributeDetail();
    targetObject = runtimeRelationItem.targetObject;
    fieldComponent = runtimeRelationItem.getFieldComponent();
    value = null;
    valueDescription = null;
    text = null;

    setValue(attributeDetail.children);

    if (fieldComponent != null)
    {
      if (targetObject != null)
      {
        try
        {
          value = attributeDetail.read.invoke(targetObject, new Object[] {});
          valueDescription = attributeDetail.readText.invoke(targetObject, new Object[] {});
          if (valueDescription != null && valueDescription instanceof String)
          {
            text = (String) valueDescription;
          }
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

      if (value != null)
      {
        if (value instanceof String)
        {
          fieldComponent.setValueAsString((String) value, text);
        }
        else if (value instanceof Date)
        {
          fieldComponent.setValueAsDate((Date) value, text);
        }
        else if (value instanceof DateTime)
        {
          fieldComponent.setValueAsDateTime((DateTime) value, text);
        }
        else if (value instanceof Duration)
        {
          fieldComponent.setValueAsDuration((Duration) value, text);
        }
        else if (value instanceof Number)
        {
          fieldComponent.setValueAsNumber((Number) value, text);
        }
        else if (value instanceof Boolean)
        {
          fieldComponent.setValueAsNumber(((Boolean) value).equals(Boolean.TRUE) ? 1 : 0, text);
        }
      }
      else
      {
        // May be the current value is already the default value. Clear
        // it just to auto launch the change listener if there is a default value.
        fieldComponent.useDefaultValue();
      }
    }
  }

  private void setValue(List<DataClassAttributeDetail> attributeDetails)
  {
    RuntimeRelations.RuntimeRelationItem runtimeRelationItem;

    if (attributeDetails != null)
    {
      for (DataClassAttributeDetail attributeDetail : attributeDetails)
      {
        runtimeRelationItem = get(attributeDetail.fullName);

        setValue(runtimeRelationItem);
      }
    }
  }
}
