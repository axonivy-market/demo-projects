package ch.ivyteam.wf.common;

import java.util.List;

import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskProperty;

/**
 * This class provides the tasks of the HistoryTask dataTable. It is responsible
 * to filter and order the tasks list.
 */
public class HistoryTaskLazyDataModel extends AbstractTaskLazyDataModel
{

  @Override
  protected IQueryResult<ITask> findTasks(int first, int pageSize,
          List<PropertyOrder<TaskProperty>> propertyOrders, IPropertyFilter<TaskProperty> filter)
  {
    return ivy.session.findWorkedOnTasks(filter, propertyOrders, first, pageSize, true);
  }
}