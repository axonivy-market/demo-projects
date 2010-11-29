package ch.ivyteam.ivy.addons.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ch.ivyteam.ivy.addons.sudo.InvokeDBQuerySudo;

/**
 * This helper class can execute sql query through ivy db configurtion.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 03.10.2008
 */
public final class IvyDatabase
{
  private static Map<String, List<String[]>> queries = null;

  private static String configuration = null;

  private IvyDatabase()
  {
  }

  /**
   * Defines a default db configuration to use. This configuration is shared through all PMV of the
   * applicaiton.
   * 
   * @param value ivy db configuration name
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
   */
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
  public static List<String[]> invokeConstantDBQuery(String query, String configuration)
          throws AddonsException
  {
    List<String[]> result;

    if (queries == null)
    {
      queries = new HashMap<String, List<String[]>>();
    }

    result = queries.get(query);
    if (result == null)
    {
      result = InvokeDBQuerySudo.executeQuery(query, configuration);

      if (result != null)
      {
        queries.put(query, result);
      }
    }
    return result;
  }

  /**
   * Clears the cache that stores the last queries results.
   */
  public static void expireAllConstantDBQuery()
  {
    queries = null;
  }
}
