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
import java.util.StringTokenizer;

import javax.swing.JLabel;
import javax.swing.JPanel;

import org.eclipse.core.runtime.IProgressMonitor;

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
import ch.ivyteam.ivy.service.ServiceException;
import ch.ivyteam.log.Logger;
import ch.ivyteam.util.Flag;

/**
 * The class EventLogImportDBStartEventBean reads the external shared eventlog database and fires an ivy event
 * for each new eventlog.
 * 
 * @author Barreiro François-Xavier, TI-Informatique
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
    private IIvyScriptEditor editorDatabasecConfig;

    private IIvyScriptEditor editorPollTimeIntervall;

    private static final long serialVersionUID = 1L;

    public Editor()
    {
      super(new GridLayout(4, 2));
    }

    public void setEnvironment(IProcessExtensionConfigurationEditorEnvironment env)
    {
      editorDatabasecConfig = env.createIvyScriptEditor(null, null, "String");
      editorPollTimeIntervall = env.createIvyScriptEditor(null, null, "Long");

      add(new JLabel("Global variable name with database configuration."));
      add(editorDatabasecConfig.getComponent());
      add(new JLabel("Poll Time Intervall (milliseconds)."));
      add(editorPollTimeIntervall.getComponent());
    }

    public void setConfiguration(String config)
    {
      StringTokenizer st = new StringTokenizer(config, "|");
      if (st.hasMoreElements())
        editorDatabasecConfig.setText(st.nextElement().toString());
      if (st.hasMoreElements())
        editorPollTimeIntervall.setText(st.nextElement().toString());
    }

    public Component getComponent()
    {
      return this;
    }

    public String getConfiguration()
    {
      return editorDatabasecConfig.getText() + "|" + editorPollTimeIntervall.getText();
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
      // Defaults Poll Time Intervall to every minute
      pollTimeIntervall = 60000L;

      String globalVariableDatabaseConfig = null;

      // logger.info("EventLogImportDBStartEventBean - Configuration : " + configuration, getName());

      StringTokenizer st = new StringTokenizer(configuration, "|");
      if (st.hasMoreElements())
        globalVariableDatabaseConfig = st.nextElement().toString().replaceAll("\"", "");

      if (st.hasMoreElements())
        pollTimeIntervall = Long.parseLong(st.nextElement().toString());

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

        if (element.getName().equals("eventLogImportDatabaseEnabled"))
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
        logger
                .info(
                        "EventLogImportDBStartEventBean - Start Event Bean Disabled. Set the global varibale \"eventLogImportDatabaseEnabled\" to True to enable the Event Log Import DB feature.",
                        getName());
        logger.info("XMLFileStartEventBean - Set Poll Time Intervall (0) milliseconds.", getName());
        eventRuntime.setPollTimeInterval(0L);
      }
    }
    catch (Exception e)
    {
      isError = true;
      logger
              .error(
                      "EventLogImportDBStartEventBean - Error initalizing start event bean, database configuration defined on global variables configuration ("
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
              Map<String, Object> results = new HashMap<String, Object>();

              String server = rs.getString(6);
              String application = rs.getString(7);
              String tower = rs.getString(8);
              String module = rs.getString(9);
              String environment = rs.getString(10);
              String groupId = rs.getString(11);
              String eventDate = rs.getString(12);
              ;
              String eventTime = rs.getString(13);
              String userName = rs.getString(14);
              String initiator = rs.getString(15);
              String source = rs.getString(16);
              String severity = rs.getString(17);
              String objectId = rs.getString(18);
              String context = rs.getString(19);
              String isBusinessEvent = rs.getString(20);
              String eventType = rs.getString(21);
              String eventSubType = rs.getString(22);
              String userComment = rs.getString(23);
              String errorCode = rs.getString(24);
              String message = rs.getString(25);
              String eventData = getEventLogData(jdbcConnection, eventLogId);

              if (server != null)
                results.put("server", server.trim());

              if (application != null)
                results.put("application", application.trim());

              if (tower != null)
                results.put("tower", tower.trim());

              if (module != null)
                results.put("module", module.trim());

              if (environment != null)
                results.put("environment", environment.trim());

              if (groupId != null)
                results.put("groupId", groupId.trim());

              if (initiator != null)
                results.put("initiator", initiator.trim());

              if (eventDate != null)
                results.put("eventDate", eventDate.trim());

              if (eventTime != null)
                results.put("eventTime", eventTime.trim());

              if (userName != null)
                results.put("userName", userName.trim());

              if (source != null)
                results.put("source", source.trim());

              if (severity != null)
                results.put("severity", severity.trim());

              if (objectId != null)
                results.put("objectId", objectId.trim());

              if (context != null)
                results.put("context", context.trim());

              if (isBusinessEvent != null)
                results.put("isBusinessEvent", isBusinessEvent.trim());

              if (eventType != null)
                results.put("eventType", eventType.trim());

              if (eventSubType != null)
                results.put("eventSubType", eventSubType.trim());

              if (userComment != null)
                results.put("userComment", userComment.trim());

              if (errorCode != null)
                results.put("errorCode", errorCode.trim());

              if (message != null)
                results.put("message", message.trim());

              if (eventData != null)
                results.put("eventData", eventData.trim());

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
                    + ") - " + e.getMessage());
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

}
