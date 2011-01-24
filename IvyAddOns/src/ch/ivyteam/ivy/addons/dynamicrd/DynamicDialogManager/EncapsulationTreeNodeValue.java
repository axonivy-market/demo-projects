package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Groups/stores data needed by the manager to work with attributes.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 04.11.2009
 */
@SuppressWarnings("unchecked")
public class EncapsulationTreeNodeValue implements java.io.Serializable
{
  private static final long serialVersionUID = -532912885820702140L;

  private List<String> cmsContext;

  private Class clazz;

  private String name;

  private Boolean isLeaf;

  private Map<String, String> cmsMap;

  private String qualifiedName;

  protected EncapsulationTreeNodeValue(String name, Class clazz, Boolean isLeaf, List<String> cmsContext,
          Map<String, String> cmsMap, String qualifiedName)
  {
    super();
    setCmsContext(cmsContext);
    this.clazz = clazz;
    this.name = name;
    this.isLeaf = isLeaf;
    this.cmsMap = cmsMap;
    this.qualifiedName = qualifiedName;
  }

  /**
   * Gets the java class of the attribute.
   * 
   * @return class
   */
  public final Class getClazz()
  {
    return clazz;
  }

  /**
   * Gets the CMS context of the attribute.
   * 
   * @return CMS context
   */
  public final List<String> getCmsContext()
  {
    return cmsContext;
  }

  /**
   * Gets the name of the attribute.
   * 
   * @return name of the data class attribute
   */
  public final String getName()
  {
    return name;
  }

  /**
   * Sets the java class of the attribute.
   * 
   * @param clazz class
   */
  public final void setClazz(Class clazz)
  {
    this.clazz = clazz;
  }

  /**
   * Sets the CMS context of the attribute.
   * 
   * @param cmsContext CMS context
   */
  public final void setCmsContext(List<String> cmsContext)
  {
    this.cmsContext = new ArrayList<String>();
    for (String s : cmsContext)
    {
      this.cmsContext.add(s.startsWith("X") ? s.substring(1) : s);
    }
  }

  /**
   * Sets the name of the attribute.
   * 
   * @param name name of the data class attribute
   */
  public final void setName(String name)
  {
    this.name = name;
  }

  protected final boolean isLeaf()
  {
    return isLeaf;
  }

  protected final void setLeaf(boolean isLeaf)
  {
    this.isLeaf = isLeaf;
  }

  /**
   * Gets user friendly description for each cms path used in the CMS context
   * 
   * @return map that contains user friendly description
   */
  public final Map<String, String> getCmsMap()
  {
    return cmsMap;
  }

  /**
   * Associates user friendly description for each cms path used in the CMS context
   * 
   * @param cmsMap map that contains user friendly description
   */
  public final void setCmsMap(Map<String, String> cmsMap)
  {
    this.cmsMap = cmsMap;
  }

  /**
   * Gets the fully qualified name of the attribute.
   * 
   * @return fully qualified name
   */
  public final String getQualifiedName()
  {
    return qualifiedName;
  }

  /**
   * Sets the fully qualified name of the attribute.
   * 
   * @param qualifiedName fully qualified name
   */
  protected final void setQualifiedName(String qualifiedName)
  {
    this.qualifiedName = qualifiedName;
  }
}
