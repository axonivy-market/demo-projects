package ch.ivyteam.wf.signal;

import java.util.ArrayList;
import java.util.List;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.query.TaskBoundarySignalEventReceiverQuery;
import ch.ivyteam.ivy.workflow.signal.IBpmSignalService;
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
    List<IStartSignalEventElement> starts = new ArrayList<>(getBpmSignalService().receivers().getStartEvents());
    return starts;
  }

}
