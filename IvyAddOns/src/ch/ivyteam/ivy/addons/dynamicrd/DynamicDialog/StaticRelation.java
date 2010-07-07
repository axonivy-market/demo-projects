package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.DataClassAttributeDetail;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.StaticRelationItem;
import ch.ivyteam.ivy.addons.util.IvyDataClass;
import ch.ivyteam.ivy.addons.util.IvyDatabase;
import ch.ivyteam.ivy.addons.util.Triple;
import ch.ivyteam.ivy.scripting.objects.CompositeObject;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

//TODO Uses DataClassInstanceExplorer and DataClassExplorer.

/** 
 * This keeps the relations between data class and data class.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 03.10.2008
 */
public class StaticRelation
{
  public static class StaticRelations extends Hashtable<String, StaticRelationItem>
  {
    private static final long serialVersionUID = -7826092057857912169L;

    private Configuration configuration = null;

    public List<String> roots = null;

    public StaticRelations(String databaseParameterSubFolder, Hashtable<String, String> sqlQuerySubstitution,
            String databaseConfiguration, ClassLoader classLoader)
    {
      roots = new ArrayList<String>();
      configuration = new Configuration(databaseParameterSubFolder, sqlQuerySubstitution,
              databaseConfiguration, classLoader);
    }
  }

  protected StaticRelations staticRelations = null;

  /**
   * Clean up the relation. Used to recycle the object.
   */
  public void clean()
  {
    staticRelations = null;
  }

  protected void constructParameters(List<DataClassAttributeDetail> attributeDetails,
          String databaseConfiguration, ContainerParameters parentContainerParameters,
          Hashtable<String, String> sqlQuerySubstitution, String databaseParameterSubFolder)
  {
    for (DataClassAttributeDetail attributeDetail : attributeDetails)
    {
      boolean isContainer;
      StaticRelationItem relation;

      isContainer = attributeDetail.children != null;

      relation = get(attributeDetail.fullName);

      relation.setComponentParameters(ComponentParameterFactory.CreateParametersComponent(
              staticRelations.configuration, attributeDetail, databaseConfiguration, isContainer,
              parentContainerParameters, sqlQuerySubstitution, databaseParameterSubFolder));

      if (isContainer)
      {
        constructParameters(attributeDetail.children, databaseConfiguration, (ContainerParameters) relation
                .getComponentParameters(), sqlQuerySubstitution, databaseParameterSubFolder);
      }
    }
  }

  /**
   * Creates relations.
   * 
   * @param targetObject object that represents this relation
   * @param rootName base name of all fully qualified names
   * @param cmsContexts CMS context
   * @param databaseConfiguration Ivy data base configuration name
   */
  public void create(CompositeObject targetObject, String rootName, List<String> cmsContexts,
          String databaseConfiguration)
  {
    create(targetObject, rootName, cmsContexts, databaseConfiguration, null, null);
  }

  /**
   * Creates relations.
   * 
   * @param targetObject object that represents this relation
   * @param rootName base name of all fully qualified names
   * @param cmsContexts CMS context
   * @param databaseConfiguration Ivy data base configuration name
   * @param sqlQuerySubstitution values that should be substituted in queries
   * @param databaseParameterSubFolder CMS sub folder where to get data base specific parameters
   */
  public void create(CompositeObject targetObject, String rootName, List<String> cmsContexts,
          String databaseConfiguration, Hashtable<String, String> sqlQuerySubstitution,
          String databaseParameterSubFolder)
  {
    if (staticRelations == null)
    {
      staticRelations = new StaticRelations(databaseParameterSubFolder, sqlQuerySubstitution,
              databaseConfiguration, targetObject.getClass().getClassLoader());
    }

    try
    {
      BeanInfo beanInfo;
      StaticRelationItem relation;
      DataClassAttributeDetail attributeDetail;

      cmsContexts = Cms.getCmsContexts(cmsContexts);

      IvyDatabase.setConfiguration(databaseConfiguration);

      relation = new StaticRelationItem();

      relation.setComponentParameters(new ContainerParameters(staticRelations.configuration, cmsContexts,
              rootName, rootName, null));

      beanInfo = Introspector.getBeanInfo(targetObject.getClass());

      attributeDetail = new DataClassAttributeDetail(cmsContexts, rootName, null, targetObject, beanInfo
              .getBeanDescriptor(), null);
      attributeDetail.children = create(targetObject, attributeDetail, cmsContexts);
      relation.setAttributeDetail(attributeDetail);

      staticRelations.put(attributeDetail.fullName, relation);

      constructParameters(attributeDetail.children, databaseConfiguration, (ContainerParameters) relation
              .getComponentParameters(), sqlQuerySubstitution, databaseParameterSubFolder);

      staticRelations.roots.add(attributeDetail.fullName);
    }
    catch (IntrospectionException e)
    {
      throw new DynamicDialogException(e);
    }
  }

  @SuppressWarnings("unchecked")
private List<DataClassAttributeDetail> create(Object targetObject,
          DataClassAttributeDetail parentAttributeDetail, List<String> cmsContexts)
  {
    BeanInfo beanInfo;
    Class propertyType;
    DataClassAttributeDetail attributeDetail;
    StaticRelationItem staticRelation;
    Object subDataClassInstance;
    Triple<PropertyDescriptor, PropertyDescriptor, BeanInfo> triple;
    List<DataClassAttributeDetail> attributeDetails;
    Hashtable<String, Triple<PropertyDescriptor, PropertyDescriptor, BeanInfo>> propertyTriples;
    Integer itemCount;
    List<String> attributeCmsContexts;

    ch.ivyteam.ivy.scripting.objects.List list;

    try
    {
      beanInfo = Introspector.getBeanInfo(targetObject.getClass());
    }
    catch (IntrospectionException e)
    {
      throw new DynamicDialogException(e);
    }

    attributeDetails = new ArrayList<DataClassAttributeDetail>();

    propertyTriples = new Hashtable<String, Triple<PropertyDescriptor, PropertyDescriptor, BeanInfo>>();

    // Get all the properties and match data properties with descripton
    // properties
    for (PropertyDescriptor property : beanInfo.getPropertyDescriptors())
    {
      String propertyName;
      boolean isDescription;

      propertyName = property.getName();

      isDescription = false;
      if (propertyName.matches("^.*Description"))
      {
        isDescription = true;
        propertyName = propertyName.replace("Description", "");
      }

      triple = null;
      if (propertyTriples.containsKey(propertyName))
      {
        triple = propertyTriples.get(propertyName);
      }
      else
      {
        triple = new Triple<PropertyDescriptor, PropertyDescriptor, BeanInfo>();
        propertyTriples.put(propertyName, triple);
      }

      if (isDescription)
      {
        triple.setSecond(property);
      }
      else
      {
        triple.setFirst(property);
      }
      triple.setThird(beanInfo);
    }

    // Fill properties' structure
    PropertyDescriptor property;
    PropertyDescriptor descriptionProperty;
    Enumeration<String> keys = propertyTriples.keys();
    while (keys.hasMoreElements())
    {
      String key = keys.nextElement();

      triple = propertyTriples.get(key);

      property = triple.getFirst();
      if (property == null)
      {
        property = triple.getSecond();
        descriptionProperty = null;
      }
      else
      {
        descriptionProperty = triple.getSecond();
      }

      propertyType = property.getPropertyType();

      if (propertyType == null || propertyType.isInstance(Class.class))
        continue;

      attributeDetail = new DataClassAttributeDetail(cmsContexts, null, parentAttributeDetail, null,
              property, descriptionProperty);

      attributeCmsContexts = Cms.getCmsContexts(attributeDetail.name, cmsContexts);

      if (!Cms.coAsBoolean(attributeCmsContexts, "parameters/exists", true))
        continue;

      if (propertyType.equals(ch.ivyteam.ivy.scripting.objects.List.class))
      {
        try
        {
          list = (ch.ivyteam.ivy.scripting.objects.List) attributeDetail.read.invoke(targetObject,
                  new Object[0]);

          if (list != null && list.size() != 0)
          {
            attributeDetail.children = create(list.get(0), attributeDetail, Cms.getCmsContexts(
                    attributeDetail.name + "/item", cmsContexts));
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
      else if (attributeDetail.propertyTypeClassName.equals(String.class.getName()))
      {
      }
      else if (attributeDetail.propertyTypeClassName.equals(Date.class.getName()))
      {
      }
      else if (attributeDetail.propertyTypeClassName.equals(DateTime.class.getName()))
      {
      }
      else if (attributeDetail.propertyTypeClassName.equals(Time.class.getName()))
      {
      }
      else if (attributeDetail.propertyTypeClassName.equals(Duration.class.getName()))
      {
      }
      else if (attributeDetail.propertyTypeClassName.equals(Number.class.getName()))
      {
      }
      else if (attributeDetail.propertyTypeClassName.equals(Boolean.class.getName()))
      {
      }
      else
      {
        subDataClassInstance = IvyDataClass.createDataClassInstance(targetObject, attributeDetail);

        attributeDetail.children = create(subDataClassInstance, attributeDetail, attributeCmsContexts);

        itemCount = 0;
        for (DataClassAttributeDetail d : attributeDetail.children)
        {
          itemCount += d.itemCount;
        }
        attributeDetail.itemCount = itemCount;
      }

      staticRelation = new StaticRelationItem();

      staticRelation.setAttributeDetail(attributeDetail);

      staticRelations.put(attributeDetail.fullName, staticRelation);

      attributeDetails.add(attributeDetail);
    }

    Collections.sort(attributeDetails);

    return attributeDetails;
  }

  /**
   * Restore an object from a serialisation file.
   * 
   * @param fileName serialisation file
   */
  public void create(String fileName)
  {
    ObjectInputStream in;

    clean();

    if (staticRelations == null)
    {
      try
      {
        in = new ObjectInputStream(new FileInputStream(fileName));
        staticRelations = (StaticRelations) in.readObject();
        in.close();
      }
      catch (FileNotFoundException e)
      {
        throw new DynamicDialogException(e);
      }
      catch (IOException e)
      {
        throw new DynamicDialogException(e);
      }
      catch (ClassNotFoundException e)
      {
        throw new DynamicDialogException(e);
      }
    }
  }

  /**
   * Finds a specific static relation from a fully qualifed name.
   * 
   * @param fullName fully qualified name of the relation
   * @return relation
   */
  public StaticRelationItem get(String fullName)
  {
    return staticRelations == null ? null : staticRelations.get(fullName);
  }

  /**
   * Saves this object into a file to speed up the initialisation steps.
   * 
   * @param fileName serialisation file
   */
  public void save(String fileName)
  {
    try
    {
      ObjectOutputStream out;
      out = new ObjectOutputStream(new FileOutputStream(fileName));
      out.writeObject(staticRelations);
    }
    catch (FileNotFoundException e)
    {
      throw new DynamicDialogException(e);
    }
    catch (IOException e)
    {
      throw new DynamicDialogException(e);
    }
  }

  /**
   * Updates transient attributes that should not be serialised.
   * 
   * @param targetObject object that represents this relation
   * @param fullName fully qualified name
   */
  public void update(CompositeObject targetObject, String fullName)
  {
    StaticRelationItem staticRelation;

    staticRelation = staticRelations.get(fullName);
    staticRelation.getAttributeDetail().updateMethods(targetObject);
  }
}
