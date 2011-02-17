package ch.ivyteam.ivy.addons.util;

import java.util.List;

import ch.ivyteam.ivy.addons.sudo.InvokeDBQuerySudo;
import ch.ivyteam.ivy.application.IProcessModelVersion;
import ch.ivyteam.ivy.data.cache.IDataCacheEntry;
import ch.ivyteam.ivy.data.cache.IDataCacheGroup;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.workflow.ITask;

/**
 * This helper class can execute sql query through ivy db configuration.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 03.10.2008
 */
public final class IvyDatabase
{
  private static final int CACHE_LIFE_TIME_IN_SECONDS = 60;

  /**
   * Default db configuration to use. This configuration is shared through all PMV that is this instance.
   */
  private static String configuration = null;

  private IvyDatabase()
  {
  }

  /**
   * Defines a default db configuration to use. This configuration is shared through all PMV of the
   * application.
   * 
   * @param value ivy db configuration name
   * @deprecated Prefers using {@link #invokeConstantDBQuery(String, String)} with configuration as parameter
   */
  @Deprecated
  public static void setConfiguration(String value)
  {
    configuration = value;
  }

  /**
   * Executes a SQL query and cache the resulting recordset.
   * 
   * @param query SQL query to execute
   * @return result recordset
   * @throws AddonsException
   * @deprecated Prefers using {@link #invokeConstantDBQuery(String, String)} with configuration as parameter
   */
  @Deprecated
  public static List<String[]> invokeConstantDBQuery(String query) throws AddonsException
  {
    return invokeConstantDBQuery(query, configuration);
  }

  /**
   * Executes a SQL query and cache the resulting recordset.
   * 
   * @param query SQL query to execute
   * @param configuration ivy db configuration name
   * @return result recordset
   * @throws AddonsException
   */
  @SuppressWarnings("unchecked")
  public static List<String[]> invokeConstantDBQuery(String query, String configuration)
          throws AddonsException
  {
    List<String[]> result;
    IDataCacheGroup group;
    IDataCacheEntry entry;
    String groupId;
    String entryId;

    groupId = getGroupId();
    entryId = getEntryId(query, configuration);

    result = null;
    group = Ivy.datacache().getApplicationCache().getGroup(groupId);
    if (group != null)
    {
      entry = group.getEntry(entryId);
      if (entry != null)
      {
        result = (List<String[]>) entry.getValue();
      }
    }

    if (result == null)
    {
      result = InvokeDBQuerySudo.executeQuery(query, configuration);

      if (result != null)
      {
        Ivy.datacache().getApplicationCache().setEntry(groupId, entryId, CACHE_LIFE_TIME_IN_SECONDS, result);
      }
    }
    return result;
  }

  /**
   * Clears the cache that stores the last queries results.
   * @throws AddonsException
   */
  public static void expireAllConstantDBQuery() throws AddonsException
  {
    String groupId;
    IDataCacheGroup group;

    groupId = getGroupId();
    group = Ivy.datacache().getApplicationCache().getGroup(groupId);
    if (group != null)
    {
      Ivy.datacache().getApplicationCache().invalidateGroup(group);
    }
  }

  /**
   * Gets the entry id used with the cache API.
   * 
   * @param query SQL query to execute
   * @param configuration ivy db configuration name
   * @return constructed entry id
   */
  private static String getEntryId(String query, String configuration)
  {
    return configuration + "/" + query;
  }

  /**
   * Gets the group id used with the cache API.
   * 
   * @return constructed group id
   * @throws AddonsException
   */
  private static String getGroupId() throws AddonsException
  {
    String env;
    StringBuffer buf;
    IProcessModelVersion pmv;
    ITask wfTask;

    buf = new StringBuffer(IvyDatabase.class.getName());

    env = Ivy.session().getActiveEnvironment();
    if (env != null && !"".equals(env))
    {
      buf.append("/").append(env);
    }

    wfTask = Ivy.wfTask();

    if (wfTask != null)
    {
      try
      {
        pmv = wfTask.getProcessModelVersion();

        if (pmv != null)
        {
          buf.append("/").append(pmv.getVersionName());
        }
      }
      catch (PersistencyException e)
      {
        throw new AddonsException(e);
      }
    }
    return buf.toString();
  }
}
