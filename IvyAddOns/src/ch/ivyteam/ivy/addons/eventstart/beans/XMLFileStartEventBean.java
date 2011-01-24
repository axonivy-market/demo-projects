package ch.ivyteam.ivy.addons.eventstart.beans;

import java.io.File;
import java.util.List;
import java.util.StringTokenizer;

import java.awt.GridLayout;
import java.awt.Component;
import javax.swing.*;

import javax.xml.parsers.SAXParserFactory;
import javax.xml.parsers.SAXParser;

import org.apache.commons.io.FileUtils;

import org.eclipse.core.runtime.IProgressMonitor;

import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanConfigurationEditorEx;
import ch.ivyteam.ivy.process.extension.*;

import ch.ivyteam.ivy.addons.restricted.util.XMLDataHandler;
import ch.ivyteam.ivy.application.ReleaseState;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBean;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanRuntime;
import ch.ivyteam.ivy.service.ServiceException;
import ch.ivyteam.log.Logger;
import ch.ivyteam.util.Flag;

/**
 * The class XMLFileStartEventBean parses a folder for xml files and fires an event for each file.
 * 
 * @author Barreiro François-Xavier, TI-Informatique
 * @since 07.06.2010
 */
public class XMLFileStartEventBean implements IProcessStartEventBean
{

  /**
   * A flag to avoid, than more than one thread is processing the files in the directory
   */
  private Flag oneThreadIsProcessingFiles = new Flag(false);

  private Logger logger;

  private IProcessStartEventBeanRuntime eventRuntime;

  private String folderName = null;

  private File importFolder = null;

  private File errorFolder = null;

  private boolean enableStartEventBean = false;

  private boolean running = false;

  private boolean isError = false;

  long pollTimeIntervall = 0L;

  public static class Editor extends JPanel implements IProcessStartEventBeanConfigurationEditorEx
  {
    private IIvyScriptEditor editorFolder;

    private IIvyScriptEditor editorPollTimeIntervall;

    private static final long serialVersionUID = 1L;

    public Editor()
    {
      super(new GridLayout(4, 2));
    }

    public void setEnvironment(IProcessExtensionConfigurationEditorEnvironment env)
    {
      editorFolder = env.createIvyScriptEditor(null, null, "String");
      editorPollTimeIntervall = env.createIvyScriptEditor(null, null, "Long");

      add(new JLabel("Global variable name with folder name value "));
      add(editorFolder.getComponent());
      add(new JLabel("Poll Time Intervall (milliseconds)."));
      add(editorPollTimeIntervall.getComponent());
    }

    public void setConfiguration(String config)
    {
      StringTokenizer st = new StringTokenizer(config, "|");
      if (st.hasMoreElements())
        editorFolder.setText(st.nextElement().toString());
      if (st.hasMoreElements())
        editorPollTimeIntervall.setText(st.nextElement().toString());
    }

    public Component getComponent()
    {
      return this;
    }

    public String getConfiguration()
    {
      return editorFolder.getText() + "|" + editorPollTimeIntervall.getText();
    }

    public boolean acceptInput()
    {
      return true;
    }
  }

  public XMLFileStartEventBean()
  {
  }

  /**
   * Processes an xml file and fires an event request with xml data
   * @param file the xml file to process
   * @throws Exception if processing fails
   */
  private void processFile(File file) throws Exception
  {
    SAXParserFactory factory = SAXParserFactory.newInstance();
    // Turn off validation, and turn off namespaces
    factory.setValidating(false);
    factory.setNamespaceAware(false);
    SAXParser parser = factory.newSAXParser();
    XMLDataHandler xmlData = new XMLDataHandler(logger);

    parser.parse(file, xmlData);

    eventRuntime.fireProcessStartEventRequest(null, "", xmlData.getResults());
    file.delete();
  }

  public String getDescription()
  {
    return "This Bean parses a folder for xml files and fires an event\n(will start a process at an EventStart element)\nfor each file.";
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

      String globalVariableFolderName = null;

      // logger.info("XMLFileStartEventBean - Configuration : " + configuration, getName());

      StringTokenizer st = new StringTokenizer(configuration, "|");
      if (st.hasMoreElements())
        globalVariableFolderName = st.nextElement().toString().replaceAll("\"", "");

      if (st.hasMoreElements())
        pollTimeIntervall = Long.parseLong(st.nextElement().toString());

      logger.info(
              "XMLFileStartEventBean - Set Poll Time Intervall (" + pollTimeIntervall + ") milliseconds.",
              getName());
      eventRuntime.setPollTimeInterval(pollTimeIntervall);

      if (globalVariableFolderName == null || globalVariableFolderName.length() == 0)
      {
        enableStartEventBean = false;
        logger
                .info(
                        "XMLFileStartEventBean - Start Event Bean Disabled. Global variable not set on the element configuration.",
                        getName());
        logger.info("XMLFileStartEventBean - Set Poll Time Intervall (0) milliseconds.", getName());
        eventRuntime.setPollTimeInterval(0L);
        return;
      }

      // TODO Use Ivy.var().getVariableNames() in 4.1.3
      List<ch.ivyteam.ivy.application.restricted.IGlobalVariable> variables = eventRuntime
              .getProcessModelVersion().getProcessModel().getApplication().getGlobalVariables();

      for (ch.ivyteam.ivy.application.restricted.IGlobalVariable element : variables)
      {
        if (globalVariableFolderName.equals(element.getName()))
        {
          folderName = element.getValue();

          if (folderName == null || folderName.length() == 0)
          {
            enableStartEventBean = false;
            logger.info(
                    "XMLFileStartEventBean - Start Event Bean Disabled. Global variable not set on the element configuration  ("
                            + configuration + ").", getName());
            return;
          }

          logger.info("XMLFileStartEventBean - Initialize Import Folder :  " + folderName, getName());

          // Initialize import folder
          importFolder = new File(folderName);
          importFolder.mkdirs();

          // Initialise error folder
          errorFolder = new File(folderName + File.separator + "error");
          errorFolder.mkdirs();

          enableStartEventBean = true;
        }
      }

      if (importFolder == null)
      {
        enableStartEventBean = false;
        isError = true;
        logger.error("XMLFileStartEventBean - Start Event Bean Disabled. Folder (" + folderName
                + ") defined on the Global variable configuration (" + configuration + ") not found.",
                getName());
        logger.info("XMLFileStartEventBean - Set Poll Time Intervall (0) milliseconds.", getName());
        eventRuntime.setPollTimeInterval(0L);
      }
    }
    catch (Exception e)
    {
      isError = true;
      enableStartEventBean = false;
      logger
              .error(
                      "XMLFileStartEventBean - Error initalizing start event bean, import folder defined on global variables configuration ("
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
        if (importFolder != null)
        {
          logger.info("XMLFileStartEventBean - Processing files in folder " + importFolder.getAbsolutePath(),
                  getName());

          File[] files = importFolder.listFiles();

          if (files != null)
          {
            for (File file : files)
            {
              try
              {
                if (file.exists() && file.isFile() && isRunning())
                {
                  count++;
                  processFile(file);
                  processed++;
                }
              }
              catch (Exception ex)
              {
                errors++;
                logger.error("XMLFileStartEventBean - Could not process file ", ex, getName(), file
                        .getAbsolutePath());

                if (errorFolder != null)
                {
                  File copy = new File(errorFolder, file.getName());
                  FileUtils.copyFile(file, copy);
                  if (copy.exists())
                  {
                    File errorInformationFile = new File(errorFolder, file.getName() + ".log");
                    FileUtils.writeStringToFile(errorInformationFile, ex.getMessage(), null);
                    file.delete();
                  }
                  else
                  {
                    logger.error("XMLFileStartEventBean - The file " + file.getPath()
                            + " can not be deleted !");
                  }
                }
              }
            }
          }
          logger.info("XMLFileStartEventBean - " + count + " files found. " + processed + " events fired. "
                  + errors + " errors. ", getName());
        }
      }
      catch (Exception ex)
      {
        logger.error("XMLFileStartEventBean - Could not process folder : " + ex.getMessage(), ex);
      }
      catch (Throwable th)
      {
        logger.fatal(th.getMessage());
      }
      finally
      {
        oneThreadIsProcessingFiles.setValue(false);
      }
    }
  }
}
