package ch.ivyteam.ivy.addons.util;

import java.util.Hashtable;
import java.util.List;

import ch.ivyteam.ivy.addons.sudo.InvokeDBQuerySudo;
import ch.ivyteam.ivy.security.SecurityManagerFactory;

public class IvyDatabase
{
  static protected Hashtable<String, List<String[]>> queries = null;

  static protected String configuration = null;

  static public void setConfiguration(String value)
  {
    configuration = value;
  }

  static public List<String[]> invokeConstantDBQuery(String query)
  {
    List<String[]> result;

    if (queries == null)
    {
      queries = new Hashtable<String, List<String[]>>();
    }

    result = queries.get(query);
    if (result == null)
    {
      try
      {
		// THIS METHOD USES NON-PUBLIC API CLASSES AND METHODS!
		// COPY AT OWN RISK (API IS NOT GUARANTEED TO BE STABLE)
        result = SecurityManagerFactory.getSecurityManager().executeAsSystem(
                new InvokeDBQuerySudo(query, configuration));
      }
      catch (Exception e)
      {
        throw new AddonsException(e);
      }

      if (result != null)
      {
        queries.put(query, result);
      }
    }
    return result;
  }

  static public void expireAllConstantDBQuery()
  {
    queries = null;
  }
}
