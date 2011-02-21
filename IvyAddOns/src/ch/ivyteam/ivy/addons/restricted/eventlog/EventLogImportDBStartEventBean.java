package ch.ivyteam.ivy.addons.restricted.eventlog;

import java.awt.Component;
import java.awt.GridLayout;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.JLabel;
import javax.swing.JPanel;

import org.eclipse.core.runtime.IProgressMonitor;

import ch.ivyteam.ivy.addons.data.technical.eventlog.EventLogData;
import ch.ivyteam.ivy.addons.eventlog.data.technical.EventLogSeverity;
import ch.ivyteam.ivy.application.ReleaseState;
import ch.ivyteam.ivy.db.IExternalDatabase;
import ch.ivyteam.ivy.db.IExternalDatabaseApplicationContext;
import ch.ivyteam.ivy.db.IExternalDatabaseRuntimeConnection;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBean;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanConfigurationEditorEx;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanRuntime;
import ch.ivyteam.ivy.process.extension.IIvyScriptEditor;
import ch.ivyteam.ivy.process.extension.IProcessExtensionConfigurationEditorEnvironment;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.Time;
import ch.ivyteam.ivy.service.ServiceException;
import ch.ivyteam.log.Logger;
import ch.ivyteam.util.Flag;

/**
 * The class EventLogImportDBStartEventBean reads the external shared eventlog database and fires an ivy event
 * for each new eventlog.
 * 
 * @author Barreiro François-Xavier, Patrick Joly, TI-Informatique
 * @since 11.06.2010
 */
public class EventLogImportDBStartEventBean implements IProcessStartEventBean
{
  /**
   * A flag to avoid, than more than one thread is processing the files in the directory
   */
  private Flag oneThreadIsProcessingFiles = new Flag(false);

  private Logger logger;

  private String dbConfigName = null;

  private String attributeName = null;

  private IProcessStartEventBeanRuntime eventRuntime;

  private IExternalDatabase database;

  private boolean enableStartEventBean = false;

  private boolean running = false;

  private boolean isError = false;

  long pollTimeIntervall = 0L;

  /**
   * Gives a user interface to configure this event bean.
   */
  public static class Editor extends JPanel implements IProcessStartEventBeanConfigurationEditorEx
  {
    private IIvyScriptEditor editorDatabaseConfig;

    private IIvyScriptEditor editorDatabaseConfigEnable;

    private IIvyScriptEditor editorPollTimeIntervall;

    private IIvyScriptEditor editorAttributeName;

    private static final long serialVersionUID = 1L;

    public Editor()
    {
      super(new GridLayout(4, 2));
    }

    public void setEnvironment(IProcessExtensionConfigurationEditorEnvironment env)
    {
      editorDatabaseConfig = env.createIvyScriptEditor(null, null, "String");
      editorDatabaseConfigEnable = env.createIvyScriptEditor(null, null, "String");
      editorPollTimeIntervall = env.createIvyScriptEditor(null, null, "Long");
      editorAttributeName = env.createIvyScriptEditor(null, null, "String");

      add(new JLabel("Global variable name with database configuration."));
      add(editorDatabaseConfig.getComponent());
      add(new JLabel("Global variable name that says if this start event element is enable."));
      add(editorDatabaseConfigEnable.getComponent());
      add(new JLabel("Poll Time Intervall (milliseconds)."));
      add(editorPollTimeIntervall.getComponent());
      add(new JLabel("Name of the DC attribute that receives the event log data."));
      add(editorAttributeName.getComponent());
    }

    public void setConfiguration(String config)
    {
      String[] sp;

      sp = config.split("\\|");
      if (sp.length > 0)
        editorDatabaseConfig.setText(sp[0]);
      if (sp.length > 1)
        editorPollTimeIntervall.setText(sp[1]);
      if (sp.length > 2)
        editorDatabaseConfigEnable.setText(sp[2]);
      if (sp.length > 3)
        editorAttributeName.setText(sp[3]);
    }

    public Component getComponent()
    {
      return this;
    }

    public String getConfiguration()
    {
      return editorDatabaseConfig.getText() + "|" + editorPollTimeIntervall.getText() + "|"
              + editorDatabaseConfigEnable.getText() + "|" + editorAttributeName.getText();
    }

    public boolean acceptInput()
    {
      return true;
    }
  }

  public EventLogImportDBStartEventBean()
  {
  }

  public String getDescription()
  {
    return "This Bean reads the external shared eventlog database and fires an event\n(will start a process at an EventStart element)\nfor each new eventlog.";
  }

  public String getName()
  {
    return getClass().getName();
  }

  @SuppressWarnings("restriction")
  public void initialize(IProcessStartEventBeanRuntime eventRuntime, String configuration)
  {
    this.eventRuntime = eventRuntime;
    this.logger = eventRuntime.getRuntimeLogLogger();

    try
    {
      // Defaults Poll Time Interval to every minute
      pollTimeIntervall = 60000L;

      String globalVariableDatabaseConfig = null;

      String globalVariableDatabaseConfigEnable = null;

      // logger.info("EventLogImportDBStartEventBean - Configuration : " + configuration, getName());

      String[] sp;

      sp = configuration.split("\\|");
      if (sp.length > 0)
      {
        globalVariableDatabaseConfig = sp[0].replaceAll("\"", "");
      }
      if (sp.length > 1)
      {
        pollTimeIntervall = Long.parseLong(sp[1]);
      }
      if (sp.length > 2)
      {
        globalVariableDatabaseConfigEnable = sp[2].replaceAll("\"", "");
      }
      globalVariableDatabaseConfigEnable = "";
      attributeName = "event";
      if (sp.length > 3)
      {
        attributeName = sp[3].replaceAll("\"", "");
      }

      if (globalVariableDatabaseConfigEnable == null || "".equals(globalVariableDatabaseConfigEnable))
      {
        enableStartEventBean = true;
      }

      logger.info("EventLogImportDBStartEventBean - Set Poll Time Intervall (" + pollTimeIntervall
              + ") milliseconds.", getName());

      eventRuntime.setPollTimeInterval(pollTimeIntervall);

      if (globalVariableDatabaseConfig == null || globalVariableDatabaseConfig.length() == 0)
      {
        enableStartEventBean = false;
        logger
                .info(
                        "EventLogImportDBStartEventBean - Start Event Bean Disabled. Global variable not set on the element configuration.",
                        getName());
        logger.info("XMLFileStartEventBean - Set Poll Time Intervall (0) milliseconds.", getName());
        eventRuntime.setPollTimeInterval(0L);
        return;
      }

      List<ch.ivyteam.ivy.application.restricted.IGlobalVariable> variables = eventRuntime
              .getProcessModelVersion().getProcessModel().getApplication().getGlobalVariables();

      for (ch.ivyteam.ivy.application.restricted.IGlobalVariable element : variables)
      {
        if (globalVariableDatabaseConfig.equals(element.getName()))
        {
          dbConfigName = element.getValue();
        }

        if (globalVariableDatabaseConfigEnable.equals(element.getName()))
        {
          enableStartEventBean = Boolean.parseBoolean(element.getValue());
        }
      }

      if (enableStartEventBean)
      {
        logger.info("EventLogImportDBStartEventBean - Initialize Database Configuration :  " + dbConfigName,
                getName());

        IExternalDatabaseApplicationContext context = (IExternalDatabaseApplicationContext) eventRuntime
                .getProcessModelVersion().getApplication().getAdapter(
                        IExternalDatabaseApplicationContext.class);
        database = context.getExternalDatabase(dbConfigName);

        if (database == null)
          throw new Exception("External Database not found.");
      }
      else
      {
        logger.info("EventLogImportDBStartEventBean - Start Event Bean Disabled. Set the global varibale \""
                + globalVariableDatabaseConfigEnable
                + "\" to True to enable the Event Log Import DB feature.", getName());
        logger.info("XMLFileStartEventBean - Set Poll Time Intervall (0) milliseconds.", getName());
        eventRuntime.setPollTimeInterval(0L);
      }
    }
    catch (Exception e)
    {
      isError = true;
      logger
              .error(
                      "EventLogImportDBStartEventBean - Error initializing start event bean, database configuration defined on global variables configuration ("
                              + configuration + ") cannot be set. Exception : " + e.getMessage(), getName());
      logger.info("XMLFileStartEventBean - Set Poll Time Intervall (0) milliseconds.", getName());
      eventRuntime.setPollTimeInterval(0L);
    }
  }

  public boolean isMoreThanOneInstanceSupported()
  {
    return false;
  }

  public boolean isRunning()
  {
    return running;
  }

  public void start(IProgressMonitor monitor) throws ServiceException
  {
    running = true;
  }

  public void stop(IProgressMonitor monitor) throws ServiceException
  {
    running = false;
  }

  public void poll()
  {
    boolean isProcessModelVersionReleased = false;
    long count = 0;
    long errors = 0;
    long processed = 0;
    java.sql.Connection jdbcConnection = null;
    IExternalDatabaseRuntimeConnection connection = null;
    EventLogData eventLogData;
    Map<String, Object> results;

    if (!enableStartEventBean)
      return;

    if (isError)
      return;

    try
    {
      isProcessModelVersionReleased = eventRuntime.getProcessModelVersion().getReleaseState() == ReleaseState.RELEASED;
    }
    catch (PersistencyException e)
    {
      logger.error(e.getMessage());
    }

    if (!isProcessModelVersionReleased)
    {
      return;
    }

    if (oneThreadIsProcessingFiles.getValue())
    {
      // there is still an other thread reading, stop this thread
      return;
    }

    synchronized (oneThreadIsProcessingFiles)
    {
      oneThreadIsProcessingFiles.setValue(true);
      try
      {
        connection = database.getAndLockConnection();
        jdbcConnection = connection.getDatabaseConnection();

        // Get all events that are not active
        PreparedStatement st = jdbcConnection
                .prepareStatement("SELECT * FROM TSEVTLOG WHERE TSLIJTA != ? ORDER BY TSLIJSA");
        // Set TSLIJTA with value 1 -> Active
        st.setLong(1, 1);
        ResultSet rs = st.executeQuery();

        while (rs.next())
        {
          count++;
          long eventLogId = rs.getLong(1);

          logger.info("EventLogImportDBStartEventBean - Processing EventLogId : " + eventLogId);

          try
          {
            if (updateEventLog(jdbcConnection, rs.getLong(1)) > 0)
            {
              eventLogData = new EventLogData();

              String value;
              java.sql.Date date;
              java.sql.Time time;
              int integer;

              value = getString(rs, 6);
              if (!rs.wasNull())
              {
                eventLogData.setServer(value);
              }
              value = getString(rs, 7);
              if (!rs.wasNull())
              {
                eventLogData.setApplication(value);
              }
              if ("".equals(value)) // || rs.wasNull() implicit
              {
                eventLogData.setApplication(eventRuntime.getProcessModelVersion().getApplication().getName());
              }
              value = getString(rs, 8);
              if (!rs.wasNull())
              {
                eventLogData.setTower(value);
              }
              value = getString(rs, 9);
              if (!rs.wasNull())
              {
                eventLogData.setModule(value);
              }
              value = getString(rs, 10);
              if (!rs.wasNull())
              {
                eventLogData.setEnvironment(value);
              }
              value = getString(rs, 11);
              if (!rs.wasNull())
              {
                eventLogData.setGroupId(value);
              }
              date = rs.getDate(12);
              if (!rs.wasNull())
              {
                eventLogData.setEventDate(new Date(date));
              }
              time = rs.getTime(13);
              if (!rs.wasNull())
              {
                eventLogData.setEventTime(new Time(time));
              }
              value = getString(rs, 14);
              if (!rs.wasNull())
              {
                eventLogData.setUserName(value);
              }
              value = getString(rs, 15);
              if (!rs.wasNull())
              {
                eventLogData.setInitiator(value);
              }
              value = getString(rs, 16);
              if (!rs.wasNull())
              {
                eventLogData.setSource(value);
              }
              integer = rs.getInt(17);
              if (!rs.wasNull())
              {
                eventLogData.setSeverity(EventLogSeverity.valueOf(integer));
              }
              value = getString(rs, 18);
              if (!rs.wasNull())
              {
                eventLogData.setObjectId(value);
              }
              value = getString(rs, 19);
              if (!rs.wasNull())
              {
                eventLogData.setContext(value);
              }
              integer = rs.getInt(20);
              if (!rs.wasNull())
              {
                eventLogData.setIsBusinessEvent(integer != 0);
              }
              value = getString(rs, 21);
              if (!rs.wasNull())
              {
                eventLogData.setEventType(value);
              }
              value = getString(rs, 22);
              if (!rs.wasNull())
              {
                eventLogData.setEventSubType(value);
              }
              value = getString(rs, 23);
              if (!rs.wasNull())
              {
                eventLogData.setUserComment(value);
              }
              value = getString(rs, 24);
              if (!rs.wasNull())
              {
                eventLogData.setErrorCode(value);
              }
              value = getString(rs, 25);
              if (!rs.wasNull())
              {
                eventLogData.setMessage(value);
              }
              value = getEventLogData(jdbcConnection, eventLogId);
              if (value != null)
              {
                eventLogData.setEventData(value);
              }

              results = new HashMap<String, Object>();
              results.put(attributeName, eventLogData);

              // Fire Start Event Request
              eventRuntime.fireProcessStartEventRequest(null, "", results);

              processed++;

              // Delete Records
              deleteEventLogData(jdbcConnection, eventLogId);
              deleteEventLog(jdbcConnection, eventLogId);
            }
          }
          catch (Exception e)
          {
            errors++;
            logger.error("EventLogImportDBStartEventBean - Exception processing eventlogId (" + eventLogId
                    + ") - " + e.getMessage(), e);
            updateErrorEventLog(jdbcConnection, eventLogId);
          }
        }
        logger.info("EventLogImportDBStartEventBean - " + count + " records found. " + processed
                + " events fired. " + errors + " errors. ", getName());
        // do not close the connection because it is reused by other clients!
      }
      catch (SQLException e)
      {
        logger.error("EventLogImportDBStartEventBean - Could not process eventlog : " + e.getMessage(), e);
        // close the connection in case of errors
        try
        {
          jdbcConnection.close();
        }
        catch (Exception ex)
        {
          logger.error("EventLogImportDBStartEventBean - Could not close the database connection : "
                  + ex.getMessage(), ex);
        }

      }
      catch (Throwable th)
      {
        logger.fatal(th.getMessage());
      }
      finally
      {
        oneThreadIsProcessingFiles.setValue(false);
        // give back the connection to the environment
        if (connection != null)
          database.giveBackAndUnlockConnection(connection);
      }
    }
  }

  private String getString(ResultSet rs, int column) throws SQLException
  {
    return rs.getString(column).trim();
  }

  private String getEventLogData(Connection connection, long eventLogId) throws SQLException
  {
    StringBuffer buffer = new StringBuffer();
    // Get Event Data
    PreparedStatement st = connection
            .prepareStatement("SELECT * FROM TSEVTDTA WHERE TSLIJSA = ? ORDER BY TSLIJSA, TSLIKHA");

    try
    {
      st.setLong(1, eventLogId);
      ResultSet rs = st.executeQuery();
      while (rs.next())
      {
        buffer.append(rs.getString(3));
      }
    }
    catch (Exception e)
    {
      logger.error("EventLogImportDBStartEventBean - Event data not available for eventLogId : ("
              + eventLogId + ") - " + e.getMessage());
    }

    st.close();
    return buffer.toString();
  }

  private int updateEventLog(Connection connection, long eventLogId) throws SQLException
  {
    int result = 0;
    PreparedStatement std = connection
            .prepareStatement("UPDATE TSEVTLOG SET TSLIJTA = ? WHERE TSLIJSA = ? AND TSLIJTA != ?");
    // Set to Active - Value 1
    std.setLong(1, 1);
    std.setLong(2, eventLogId);
    std.setLong(3, 1);
    result = std.executeUpdate();
    std.close();
    return result;
  }

  private void updateErrorEventLog(Connection connection, long eventLogId) throws SQLException
  {
    PreparedStatement std = connection.prepareStatement("UPDATE TSEVTLOG SET TSLIJTA = ? WHERE TSLIJSA = ?");
    // Set to Error - Value 2
    std.setLong(1, 2);
    std.setLong(2, eventLogId);
    std.executeUpdate();
    std.close();
  }

  private void deleteEventLog(Connection connection, long eventLogId) throws SQLException
  {
    PreparedStatement std = connection.prepareStatement("DELETE FROM TSEVTLOG WHERE TSLIJSA = ?");
    std.setLong(1, eventLogId);
    std.executeUpdate();
    std.close();
  }

  private void deleteEventLogData(Connection connection, long eventLogId) throws SQLException
  {
    try
    {
      PreparedStatement std = connection.prepareStatement("DELETE FROM TSEVTDTA WHERE TSLIJSA = ?");
      std.setLong(1, eventLogId);
      std.executeUpdate();
      std.close();
    }
    catch (Exception e)
    {
      logger.error("EventLogImportDBStartEventBean - Exception deleting event data for eventLogId : ("
              + eventLogId + ") - " + e.getMessage());
    }
  }

  /**
   * Throws an exception with a given message. This method permit to throw an exception from IvyScript that
   * doesn't permit that.
   * 
   * @param message message included in the exception
   * @throws Exception
   */
  public static void throwException(String message) throws Exception
  {
    throw new Exception(message);
  }
}
