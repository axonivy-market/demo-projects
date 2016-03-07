package ch.ivyteam.wf.common;

import java.util.EnumSet;
import java.util.List;

import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.workflow.TaskState;

/**
 * When the User is in userMode and opens the TaskList, this class
 * provides the tasks and filters for the TaskListUser dataTable. It is
 * responsible to filter and order the tasks list.
 */
public class UserTaskLazyDataModel extends AbstractTaskLazyDataModel
{
  private static final long serialVersionUID = 1L;

  @Override
  protected IQueryResult<ITask> findTasks(int first, int pageSize,
          List<PropertyOrder<TaskProperty>> propertyOrders, IPropertyFilter<TaskProperty> filters)
  {
    return ivy.session.findWorkTasks(filters, propertyOrders,
            first, pageSize, true, EnumSet.of(TaskState.SUSPENDED, TaskState.RESUMED, TaskState.PARKED));
  }
}