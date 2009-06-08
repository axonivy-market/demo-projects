package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.util.IvyDatabase;
import ch.ivyteam.ivy.addons.util.StringUtil;

/**
 * This is the common parameters for all field components that propose choices.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 14.09.2008
 */
abstract public class FieldComponentWithListParameters extends FieldComponentParameters
{
  public static final String EMPTY_VALUE = " ";

  public static String getQuery(Configuration configuration, List<String> cmsContexts, boolean isSorted)
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

    if (configuration.getDatabaseParameterSubFolder() != null)
    {
      keyColumnName = Cms.co(cmsContexts, String.format(KnownParameters.SPECIFIC_KEY_COLUMN_NAME_PARAMETER,
              configuration.getDatabaseParameterSubFolder()), keyColumnName);
      valueColumnName = Cms.co(cmsContexts, String.format(
              KnownParameters.SPECIFIC_VALUE_COLUMN_NAME_PARAMETER, configuration
                      .getDatabaseParameterSubFolder()), valueColumnName);
      tableName = Cms.co(cmsContexts, String.format(KnownParameters.SPECIFIC_TABLE_NAME_PARAMETER,
              configuration.getDatabaseParameterSubFolder()), tableName);
      otherColumns = Cms.co(cmsContexts, String.format(KnownParameters.SPECIFIC_OTHER_COLUMNS_PARAMETER,
              configuration.getDatabaseParameterSubFolder()), otherColumns);
      where = Cms.co(cmsContexts, String.format(KnownParameters.SPECIFIC_WHERE_PARAMETER, configuration
              .getDatabaseParameterSubFolder()), where);
      sqlStatement = Cms.co(cmsContexts, String.format(KnownParameters.SPECIFIC_SQL_STATEMENT_PARAMETER,
              configuration.getDatabaseParameterSubFolder()), sqlStatement);
      isSorted = Cms.coAsBoolean(cmsContexts, String.format(KnownParameters.SPECIFIC_SORT_PARAMETER,
              configuration.getDatabaseParameterSubFolder()), isSorted);
    }

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

    query = StringUtil.substitute(query, configuration.getValueSubstitutions(), "%", "%");

    return query;
  }

  protected boolean editable;

  // protected Hashtable<String, Integer> valueIndex;
  //
  // protected Hashtable<String, Integer> keyIndex;

  // protected Boolean isSorted = true;

  private boolean isSorted;

  private List<String[]> recordsetRef;

  // static protected void fillKeyValueIndex(List<String[]> recordset,
  // Hashtable<String, Integer> keyIndex,
  // Hashtable<String, Integer> valueIndex, boolean hasEmptyValue) {
  // int index;
  // index = 0;
  // if (recordset != null) {
  // if (hasEmptyValue) {
  // keyIndex.put("", index);
  // valueIndex.put(EMPTY_VALUE, index);
  // index++;
  // }
  // for (String[] record : recordset) {
  // if (record.length >= 1) {
  // keyIndex.put(record[0], index);
  // valueIndex.put(record[1], index);
  // index++;
  // }
  // }
  // }
  // }

  public FieldComponentWithListParameters(Configuration configuration, List<String> cmsContexts, String name,
          String fullName, List<String[]> _recordsetRef, ContainerParameters parentContainerParameters)
  {
    super(configuration, cmsContexts, name, fullName, parentContainerParameters);

    recordsetRef = _recordsetRef;

    editable = Cms.coAsBoolean(cmsContexts, KnownParameters.EDITABLE_PARAMETER, false);
    isSorted = Cms.coAsBoolean(cmsContexts, KnownParameters.SORT_PARAMETER, false);
  }

  /**
   * Gets the recordset associated to the component.
   * 
   * @return the recordset that is used to full the component if any; null otherwise
   */
  public List<String[]> getRecordset()
  {
    List<String[]> result;
    String query;

    result = null;
    if (recordsetRef != null)
    {
      result = Cms.coRecordSet(recordsetRef, isSorted);
    }
    else
    {
      query = getQuery(configuration, cmsContexts, isSorted);

      if (query != null && !query.equals(""))
      {
        result = IvyDatabase.invokeConstantDBQuery(query);
      }
    }

    return result;
  }

  abstract protected boolean hasEmptyValue();
}
