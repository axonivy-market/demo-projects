package ch.ivyteam.wf.common;

import java.util.List;

import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskProperty;

/**
 * When the User is in adminMode and opens the TaskList for admins, this class
 * provides the tasks and filters for the TaskListAdmin dataTable. It is
 * responsible to filter and order the tasks list.
 */
public class AdminTaskLazyDataModel extends AbstractTaskLazyDataModel
{
  private static final long serialVersionUID = 1L;
	
  @Override
  protected IQueryResult<ITask> findTasks(int first, int pageSize,
          List<PropertyOrder<TaskProperty>> propertyOrders, IPropertyFilter<TaskProperty> filters)
  {
    return ivy.wf.findTasks(filters, propertyOrders, first, pageSize, true);
  }
}