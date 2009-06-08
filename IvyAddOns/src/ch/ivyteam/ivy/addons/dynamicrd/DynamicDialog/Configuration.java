package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.io.Serializable;
import java.util.Hashtable;

/**
 * TODO
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 25.05.2009
 */
public class Configuration implements Serializable
{
  private static final long serialVersionUID = 3180318984439467893L;

  private String databaseConfiguration;

  private String databaseParameterSubFolder;

  private Hashtable<String, String> valueSubstitutions;

  Configuration(String _databaseParameterSubFolder, Hashtable<String, String> _sqlQuerySubstitution,
          String _databaseConfiguration, ClassLoader classLoader)
  {
    databaseConfiguration = _databaseConfiguration;
    valueSubstitutions = _sqlQuerySubstitution;
    databaseParameterSubFolder = _databaseParameterSubFolder;
  }

  public String getDatabaseConfiguration()
  {
    return databaseConfiguration;
  }

  public String getDatabaseParameterSubFolder()
  {
    return databaseParameterSubFolder;
  }

  public Hashtable<String, String> getValueSubstitutions()
  {
    return valueSubstitutions;
  }
}
