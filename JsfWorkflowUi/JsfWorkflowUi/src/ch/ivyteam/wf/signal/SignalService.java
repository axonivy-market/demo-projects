package ch.ivyteam.wf.signal;

import java.util.ArrayList;
import java.util.List;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.query.SignalEventQuery;
import ch.ivyteam.ivy.workflow.query.StartSignalEventElementQuery;
import ch.ivyteam.ivy.workflow.query.TaskBoundarySignalEventReceiverQuery;
import ch.ivyteam.ivy.workflow.signal.IBpmSignalService;
import ch.ivyteam.ivy.workflow.signal.ISignalEvent;
import ch.ivyteam.ivy.workflow.signal.IStartSignalEventElement;
import ch.ivyteam.ivy.workflow.signal.ITaskBoundarySignalEventReceiver;

public class SignalService
{
  private IBpmSignalService getBpmSignalService()
  {
	return Ivy.wf().signals();
  }
  
  public List<ITaskBoundarySignalEventReceiver> getBoundaryTasks()
  {
    TaskBoundarySignalEventReceiverQuery query = getBpmSignalService().receivers().createTaskBoundaryQuery();
    return new ArrayList<ITaskBoundarySignalEventReceiver>(query.executor().getResults());
  }

  public List<IStartSignalEventElement> getStarts()
  {
    StartSignalEventElementQuery query = getBpmSignalService().receivers().createStartSignalQuery();
    return new ArrayList<IStartSignalEventElement>(query.executor().getResults());
  }
  
  public List<ISignalEvent> getFiredSignal()
  {
	  SignalEventQuery query = getBpmSignalService().history().createSignalEventQuery();
	  return new ArrayList<ISignalEvent>(query.executor().getResults());
  }
  
}
