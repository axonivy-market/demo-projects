package ch.ivyteam.ivy.addons.intermediateevent.beans;

import java.awt.Component;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.util.List;

import javax.swing.JLabel;
import javax.swing.JPanel;

import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanConfigurationEditorEx;
import ch.ivyteam.ivy.process.extension.IProcessExtensionConfigurationEditorEnvironment;
import ch.ivyteam.ivy.process.intermediateevent.AbstractProcessIntermediateEventBean;
import ch.ivyteam.ivy.workflow.IIntermediateEvent;
import ch.ivyteam.ivy.workflow.IIntermediateEventElement;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IntermediateEventProperty;
import ch.ivyteam.ivy.workflow.IntermediateEventState;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.logicalexpression.RelationalOperator;

/**
 * Implements a bean that is waitint until the task waiting on this bean is the last of the case.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 21.01.2011
 */
public class WaitTillLastTaskOfCase extends AbstractProcessIntermediateEventBean
{
  private static final String EVENT_DESCRIPTION = "Wait till the other tasks have ended. The task waiting on this bean is fired when it is the last one of the case.";

  public static class Editor extends JPanel implements IProcessStartEventBeanConfigurationEditorEx
  {

    private static final long serialVersionUID = 1L;

    @SuppressWarnings("unused")
    private IProcessExtensionConfigurationEditorEnvironment env;

    public Editor()
    {
      super(new GridBagLayout());
      GridBagConstraints c;

      c = new GridBagConstraints();

      c.fill = GridBagConstraints.HORIZONTAL;
      c.weightx = 1;
      c.gridy = 0;
      c.gridx = 0;

      add(
              new JLabel("<html><body>" + EVENT_DESCRIPTION.replaceAll("\n", "<br>")
                      + "<br>&nbsp;</body></html>"), c);
    }

    public boolean acceptInput()
    {
      return true;
    }

    public Component getComponent()
    {
      return this;
    }

    public String getConfiguration()
    {
      return "";
    }

    public void setConfiguration(String config)
    {
    }

    public void setEnvironment(IProcessExtensionConfigurationEditorEnvironment env)
    {
      this.env = env;
    }
  }


  public WaitTillLastTaskOfCase()
  {
    super(EVENT_DESCRIPTION,
            "", Object.class);
  }

  @Override
  public void poll()
  {
    try
    {
      IIntermediateEventElement intermediateEventElement;
      boolean allTaskEnded;
      IPropertyFilter<IntermediateEventProperty> eventFilter;
      List<ITask> tasks;
      int count;
      ITask lastTask;

      getEventBeanRuntime().getRuntimeLogLogger().info("Start polling");

      // gets the intermediate event element of this intermediate event bean
      intermediateEventElement = getEventBeanRuntime().getIntermediateEventElement();

      // create filter to search for intermediate events that are still waiting
      eventFilter = intermediateEventElement.getProcessModelVersion().getWorkflowContext()
              .createIntermediateEventPropertyFilter(IntermediateEventProperty.STATE,
                      RelationalOperator.EQUAL, IntermediateEventState.WAITING.intValue());
      
      // iterate over all waiting intermediate events of the intermediate event element
      for (IIntermediateEvent event : intermediateEventElement.findIntermediateEvents(eventFilter, null, 0,
              -1, false).getResultList())
      {
        getEventBeanRuntime().getRuntimeLogLogger().debug("Found event {0}", event.getEventIdentifier());

        tasks = event.getTask().getCase().getTasks();

        allTaskEnded = false;
        count = 0;
        lastTask = null;
        for (ITask task : tasks)
        {
          if (task.getState() != TaskState.DONE)
          {
            count++;
            lastTask = task;
          }
        }
        if (count == 1 && lastTask != null && lastTask.equals(event.getTask()))
        {
          allTaskEnded = true;
        }

        // gets the task that ends at the intermediate event element
        if (allTaskEnded)
        {
          getEventBeanRuntime().getRuntimeLogLogger().debug("All task of case have ended -> Fire event");
          // all tasks that were started at the same task element the previous task has been started have
          // ended ==> fire intermediate event
          getEventBeanRuntime().fireProcessIntermediateEventEx(event.getEventIdentifier(), null,
                  "All tasks of case have ended " + event.getEventIdentifier());
        }
      }
    }
    catch (PersistencyException ex)
    {
      getEventBeanRuntime().getRuntimeLogLogger().error("Could not evaluate if all tasks have ended", ex);
    }

  }
}
