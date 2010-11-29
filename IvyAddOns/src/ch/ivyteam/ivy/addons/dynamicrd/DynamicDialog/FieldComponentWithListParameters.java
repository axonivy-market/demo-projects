package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.addons.util.IvyDatabase;

/**
 * This is the common parameters for all field components that propose choices.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 14.09.2008
 */
abstract class FieldComponentWithListParameters extends FieldComponentParameters
{
  protected static final String EMPTY_VALUE = " ";

  private boolean isSorted;

  private List<String[]> recordsetRef;

  private String dbConfig;

  private String query;

  /**
   * Constructs the SQL query to fill components that propose choices.
   * 
   * @param cmsContexts context CMS where data needed to construct the query are found
   * @param isSorted true if the result of the query should be sorted; false otherwise
   * @return SQL query
   */
  protected static String getQuery(List<String> cmsContexts, boolean isSorted)
  {
    String keyColumnName;
    String sqlStatement;
    String tableName;
    String valueColumnName;
    String otherColumns;
    String where;
    String query;
    String fieldList;

    keyColumnName = Cms.co(cmsContexts, KnownParameters.KEY_COLUMN_NAME_PARAMETER);
    valueColumnName = Cms.co(cmsContexts, KnownParameters.VALUE_COLUMN_NAME_PARAMETER);
    tableName = Cms.co(cmsContexts, KnownParameters.TABLE_NAME_PARAMETER);
    otherColumns = Cms.co(cmsContexts, KnownParameters.OTHER_COLUMNS_PARAMETER);
    where = Cms.co(cmsContexts, KnownParameters.WHERE_PARAMETER);
    sqlStatement = Cms.co(cmsContexts, KnownParameters.SQL_STATEMENT_PARAMETER);

    query = "";
    if (!tableName.equals(""))
    {
      fieldList = keyColumnName;
      if (!valueColumnName.equals(""))
      {
        fieldList += ", " + valueColumnName;
      }
      else
      {
        fieldList += ", " + keyColumnName;
      }
      if (!otherColumns.equals(""))
      {
        fieldList += ", " + otherColumns;
      }

      query = "SELECT " + fieldList + " FROM " + tableName;

      if (!where.equals(""))
      {
        query = query + " WHERE " + where;
      }

      if (isSorted)
      {
        query += " ORDER BY ";
        if (!valueColumnName.equals(""))
        {
          query += valueColumnName;
        }
        else
        {
          query += keyColumnName;
        }
      }
    }
    else if (!sqlStatement.equals(""))
    {
      query = sqlStatement;
    }

    return query;
  }

  protected FieldComponentWithListParameters(List<String> cmsContexts, String name, String fullName,
          List<String[]> recordsetRef, ComplexComponentParameters parentContainerParameters,
          Integer position, Class<?> clazz, String defaultDBConfig)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);

    this.recordsetRef = recordsetRef;

    isSorted = Cms.coAsBoolean(cmsContexts, KnownParameters.SORT_PARAMETER, false);
    query = getQuery(getCmsContexts(), isSorted);

    this.dbConfig = getDBConfig(getCmsContexts(), defaultDBConfig);
  }

  /**
   * Gets the recordset associated to the component.
   * 
   * @return the recordset that is used to full the component if any; null otherwise
   */
  public final List<String[]> getRecordset()
  {
    List<String[]> result;

    result = null;
    if (recordsetRef != null)
    {
      result = Cms.coRecordSet(recordsetRef, isSorted);
    }
    else
    {
      if (query != null && !query.equals(""))
      {
        try
        {
          result = IvyDatabase.invokeConstantDBQuery(query, dbConfig);
        }
        catch (AddonsException e)
        {
          throw new DynamicDialogException(e);
        }
      }
    }

    return result;
  }

  protected abstract boolean hasEmptyValue();

  /**
   * Gets the Ivy DB config to use with the component.
   * 
   * @param cmsContexts context CMS where the db config is defined
   * @param defaultDBConfig
   * @return Ivy DB config
   */
  protected static String getDBConfig(List<String> cmsContexts, String defaultDBConfig)
  {
    return Cms.co(cmsContexts, KnownParameters.DBCONFIG_PARAMETER, defaultDBConfig);
  }
}
