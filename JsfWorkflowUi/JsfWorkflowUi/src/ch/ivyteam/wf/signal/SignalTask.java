package ch.ivyteam.wf.signal;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import ch.ivyteam.ivy.process.model.value.SignalCode;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.WorkflowNavigationUtil;
import ch.ivyteam.ivy.workflow.signal.IBpmSignalService;
import ch.ivyteam.ivy.workflow.signal.ISignalEvent;
import ch.ivyteam.ivy.workflow.signal.ISignaledTask;
import ch.ivyteam.ivy.workflow.signal.ITaskBoundarySignalEventReceiver;

public class SignalTask
{
  private ITask task;

  public SignalTask(ITask task)
  {
    this.task = task;    
  }
  
  public boolean isSignaled()
  {
    return wasStartedByASignal()||isOrWasListeningForSignals();
  }
                 
  public boolean isOrWasListeningForSignals()
  {
    return !getSignalService().history().getAttachedBoundaryEvents(task).isEmpty();
  }
  
  public boolean isWaitingForSignals()
  {
    return getSignalService().history().getAttachedBoundaryEvents(task).stream()
            .filter(it->it.isWaitingForSignal()).findAny().isPresent();
  }

  public boolean hasReceivedASignal()
  {
    return getReceivedReceivers().findAny().isPresent();
  }
  
  public boolean wasStartedByASignal()
  {
    return getSignaledTask() != null;
  }

  public String getReceiverMessage()
  {
    StringBuilder builder = new StringBuilder();
    if (hasReceivedASignal())
    {
      builder.append("Received signal '");
      SignalCode receivedSignalCode = getReceivedSignalCode();
      builder.append(receivedSignalCode);
      builder.append("'");
      List<SignalCode> receivedMatchedPatterns = getReceivedMatchedPatterns();
      if (receivedMatchedPatterns.size() !=1 || !receivedMatchedPatterns.get(0).equals(receivedSignalCode))
      {
        builder.append(" matched pattern");
        appendSignalCodes(builder, receivedMatchedPatterns);
      }
      builder.append(", task was destroyed and ");
      builder.append("boundary event ");
      if (receivedMatchedPatterns.size()>1)
      {
        builder.append("tasks were");
      }
      else
      {
        builder.append("task was");
      }
      builder.append(" started.");
    }
    else if (isOrWasListeningForSignals())
    {
      if (isWaitingForSignals())
      {
        builder.append("Is listening for signal pattern");
      }
      else
      {
        builder.append("Was listening for signal pattern");
      }
      appendSignalCodes(builder, getListeningSignalPatterns());      
    }
    return builder.toString();
  }
  
  public String getStarterMessage()
  {    
    StringBuilder builder = new StringBuilder();
    if (wasStartedByASignal())
    {
      builder.append("Was started by signal '");
      builder.append(getStartedBySignalCode());
      builder.append("'");
      if (!getStartedBySignalCode().equals(getStartedByMatchedPattern()))
      {
        builder.append(" matched pattern '");
        builder.append(getStartedByMatchedPattern());
        builder.append("'");
      }
    }
    return builder.toString();
  }
  
  public ISignalEvent getStartedBySignalEvent()
  {
    return getSignaledTask().getReceivedEvent();
  }
  
  public SignalCode getReceivedSignalCode()
  {
    ISignalEvent receivedSignalEvent = getReceivedSignalEvent();
    return receivedSignalEvent.getSignalCode();
  }

  public List<SignalCode> getReceivedMatchedPatterns()
  {
    return getReceivedReceivers()
            .map(taskSignalReceiver->taskSignalReceiver.getSignalPattern())
            .collect(Collectors.toList());
  }

  public List<SignalCode> getListeningSignalPatterns()
  {
    return getSignalService().history().getAttachedBoundaryEvents(task)
            .stream()
            .map(taskSignalReceiver->taskSignalReceiver.getSignalPattern())
            .collect(Collectors.toList());
  }

  public String getSignalIconName()
  {
    if (wasStartedByASignal())
    {
      return "IconSignalSent";
    }
    if (isOrWasListeningForSignals())
    {
      if (hasReceivedASignal())
      {
        return "IconSignalSent";
      }
      return "IconSignal";
    }
    return "";
  }
  
  public SignalCode getStartedByMatchedPattern()
  {
    return getSignaledTask().getPattern();
  }

  // TODO implement with query as soon as available
  public ITask getPreviousDestroyedTask()
  {
    for (ITask destroyedTask : getStartedBySignalEvent().getDestroyedTasks())
    {
      SignalTask  jspDestroyedTask = new SignalTask(destroyedTask);
      if (jspDestroyedTask.getSignaledBoundaryEventTasks().contains(task))
      {
        return jspDestroyedTask.task;
      }
    }
    return null;
  }

  public SignalCode getStartedBySignalCode()
  {
    return getStartedBySignalEvent().getSignalCode();
  }
  
  public List<ITask> getSignaledBoundaryEventTasks()
  {
    return getReceivedReceivers()
            .map(taskSignalReceiver->taskSignalReceiver.getStartedSignaledTask().getTask())
            .collect(Collectors.toList());
  }

  private ISignaledTask getSignaledTask()
  {
    return getSignalService().history().getSignaledTask(task);
  }

  private IBpmSignalService getSignalService()
  {
    return WorkflowNavigationUtil.getWorkflowContext(task.getApplication()).signals();
  }
  
  public ISignalEvent getReceivedSignalEvent()
  {
    ITaskBoundarySignalEventReceiver taskSignalEventReceiver = getReceivedReceivers().findAny().get();
    ISignalEvent receivedSignalEvent = taskSignalEventReceiver.getStartedSignaledTask().getReceivedEvent();
    return receivedSignalEvent;
  }

  private Stream<ITaskBoundarySignalEventReceiver> getReceivedReceivers()
  {
    return getSignalService().history().getAttachedBoundaryEvents(task)
            .stream()
            .filter(taskSignalReceiver->taskSignalReceiver.getStartedSignaledTask() != null);
  }
  
  private void appendSignalCodes(StringBuilder builder, List<SignalCode> signalCodes)
  {
    if (signalCodes.size()>1)
    {
      builder.append("s ");        
    }
    else
    {
      builder.append(" ");
    }
    int pos = 0;
    for (SignalCode pattern : signalCodes)
    {
      if (pos > 0)
      {
        if (pos == signalCodes.size()-1)
        {
          builder.append(" and ");
        }
        else
        {
          builder.append(", ");
        }
      }
      pos++;
      builder.append("'");
      builder.append(pattern);
      builder.append("'");        
    }
  }
}
