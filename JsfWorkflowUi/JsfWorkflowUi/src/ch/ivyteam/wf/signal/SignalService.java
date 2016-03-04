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
  private List<ISignalEvent> fired;
  private List<ITaskBoundarySignalEventReceiver> receiver;
  private List<IStartSignalEventElement> starts;

  private IBpmSignalService getBpmSignalService()
  {
    return Ivy.wf().signals();
  }

  public List<ITaskBoundarySignalEventReceiver> getBoundaryTasks()
  {
    if (receiver == null)
    {
      TaskBoundarySignalEventReceiverQuery query = getBpmSignalService()
              .receivers().createTaskBoundaryQuery();
      receiver = new ArrayList<ITaskBoundarySignalEventReceiver>(query
              .executor().getResults());
    }
    return receiver;
  }

  public List<IStartSignalEventElement> getStarts()
  {
    if (starts == null)
    {
      StartSignalEventElementQuery query = getBpmSignalService()
              .receivers().createStartSignalQuery();
      starts = new ArrayList<IStartSignalEventElement>(query.executor()
              .getResults());
    }
    return starts;
  }

  public List<ISignalEvent> getFiredSignal()
  {
    if (fired == null)
    {
      SignalEventQuery query = getBpmSignalService().history()
              .createSignalEventQuery();
      fired = new ArrayList<ISignalEvent>(query.executor().getResults());
    }
    return fired;
  }

}
