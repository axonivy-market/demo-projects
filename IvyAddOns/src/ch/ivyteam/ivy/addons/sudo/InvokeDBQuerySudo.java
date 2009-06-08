package ch.ivyteam.ivy.addons.sudo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.db.IExternalDatabase;
import ch.ivyteam.ivy.db.IExternalDatabaseApplicationContext;
import ch.ivyteam.ivy.db.IExternalDatabaseRuntimeConnection;
import ch.ivyteam.ivy.environment.Ivy;

/**
 * Uses JDBC connection with the Ivy db configuration through a Callable. Useful with
 * SecurityManagerFactory.getSecurityManager().executeAsSystem.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 02.06.2009
 */
public class InvokeDBQuerySudo implements Callable<List<String[]>>
{
  private String query;

  private String dbConfigName;

  public InvokeDBQuerySudo(String _query, String _dbConfigName)
  {
    query = _query;
    dbConfigName = _dbConfigName;
  }

  public List<String[]> call() throws Exception
  {
	// THIS METHOD USES NON-PUBLIC API CLASSES AND METHODS!
	// COPY AT OWN RISK (API IS NOT GUARANTEED TO BE STABLE)
    IExternalDatabaseApplicationContext context;
    IExternalDatabase database;
    IExternalDatabaseRuntimeConnection connection;
    Connection jdbcConnection;

    Statement statement;
    ResultSet resultSet;
    ResultSetMetaData metaData;
    int columnCount;
    String[] row;
    List<String[]> result;

    result = null;

    // get a connection from the environment
    context = (IExternalDatabaseApplicationContext) Ivy.wf().getApplication().getAdapter(
            IExternalDatabaseApplicationContext.class);
    database = context.getExternalDatabase(dbConfigName);
    connection = database.getAndLockConnection();

    jdbcConnection = connection.getDatabaseConnection();
    try
    {
      // do whatever you want to do with the jdbc connection
      statement = jdbcConnection.createStatement();
      resultSet = statement.executeQuery(query);
      metaData = resultSet.getMetaData();

      columnCount = metaData.getColumnCount();

      result = new ArrayList<String[]>();

      while (resultSet.next())
      {
        row = new String[columnCount];
        result.add(row);
        for (int i = 0; i < columnCount; i++)
        {
          row[i] = resultSet.getString(i + 1);
        }
      }

      // do not close the connection because it is reused by other clients!
    }
    catch (SQLException e)
    {
      // close the connection in case of errors
      jdbcConnection.close();
      throw new AddonsException(e);
    }
    finally
    {
      // give back the connection to the environment
      database.giveBackAndUnlockConnection(connection);
    }
    return result;
  }
}