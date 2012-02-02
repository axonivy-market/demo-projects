package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentParameters;

/**
 * This class group all needed information to construct a dynamic dialog user interfce.
 * Obtaining an instance of this class permits to avoid to run the parameter construction mechanism.
 * This class can be used in a 1st or 2nd level cache.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 05.10.2010
 */
public class DynamicDialogCacheEntry implements Serializable
{
  private static final long serialVersionUID = 1600138225757353589L;

  private List<String> fCMSContexts;

  private TreeNode<ComponentParameters> fParameterTree;

  private String fDBConfig;

  private Map<String, Class<?>> fClassMap;

  private Class<?> fObjectClass;

  public DynamicDialogCacheEntry(String dbConfig, TreeNode<ComponentParameters> parameterTree,
          List<String> cmsContexts, Map<String, Class<?>> classMap, Class<?> objectClass)
  {
    fDBConfig = dbConfig;
    fParameterTree = parameterTree;
    fCMSContexts = cmsContexts;
    fClassMap = classMap;
    fObjectClass = objectClass;
  }

  public TreeNode<ComponentParameters> getParameterTree()
  {
    return fParameterTree;
  }

  public List<String> getCmsContexts()
  {
    return fCMSContexts;
  }

  public String getDbConfig()
  {
    return fDBConfig;
  }

  public Map<String, Class<?>> getClassMap()
  {
    return fClassMap;
  }

  public Class<?> getObjectClass()
  {
    return fObjectClass;
  }
}
