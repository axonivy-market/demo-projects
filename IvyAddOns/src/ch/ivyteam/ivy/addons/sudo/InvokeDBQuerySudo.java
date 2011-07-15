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
import ch.ivyteam.ivy.db.IExternalDatabaseConnection;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.security.SecurityManagerFactory;

/**
 * Uses JDBC connection with the Ivy db configuration.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 02.06.2009
 */
public final class InvokeDBQuerySudo implements Callable<List<String[]>>
{
  private String query;

  private String dbConfigName;

  @SuppressWarnings("unused")
  private InvokeDBQuerySudo()
  {
  }

  /**
   * Constructs a ProcessModelVersion object that can be used with
   * SecurityManagerFactory.getSecurityManager().executeAsSystem.
   * @see SecurityManagerFactory#getSecurityManager()
   * 
   * @deprecated Prefers using static method executeQuery.
   * @see #executeQuery(String, String)
   * 
   * @param query sql query
   * @param configuration ivy db configuration
   */
  @Deprecated
  public InvokeDBQuerySudo(String query, String configuration)
  {
    this.query = query;
    this.dbConfigName = configuration;
  }

  /**
   * {@inheritDoc}
   */
  public final List<String[]> call() throws PersistencyException, SQLException, AddonsException
  {
    // THIS METHOD USES NON-PUBLIC API CLASSES AND METHODS!
    // COPY AT OWN RISK (API IS NOT GUARANTEED TO BE STABLE)
    IExternalDatabaseApplicationContext context;
    IExternalDatabase database;
    IExternalDatabaseConnection connection;
    Connection jdbcConnection;

    Statement statement;
    ResultSet resultSet;
    ResultSetMetaData metaData;
    int columnCount;
    String[] row;
    List<String[]> result;

    result = null;
    statement = null;
    resultSet = null;

    // get a connection from the environment
    context = (IExternalDatabaseApplicationContext) Ivy.session().getWorkflowContext().getApplication()
            .getAdapter(IExternalDatabaseApplicationContext.class);
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
      if (resultSet != null)
      {
        resultSet.close();
      }
      if (statement != null)
      {
        statement.close();
      }
      // give back the connection to the environment
      database.giveBackAndUnlockConnection(connection);
    }
    return result;
  }

  /**
   * Executes a SQL query through an Ivy db connection.
   * 
   * @param query sql query
   * @param configuration ivy db configuration
   * @return result recordset
   * @throws AddonsException
   */
  public static List<String[]> executeQuery(String query, String configuration) throws AddonsException
  {
    List<String[]> result;

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

    return result;
  }
}