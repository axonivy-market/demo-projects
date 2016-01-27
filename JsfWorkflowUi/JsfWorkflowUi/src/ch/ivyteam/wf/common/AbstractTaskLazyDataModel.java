package ch.ivyteam.wf.common;

import java.util.List;
import java.util.Map;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;

import org.apache.commons.lang3.StringUtils;
import org.primefaces.component.datatable.DataTable;
import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortOrder;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.WorkflowPriority;
import ch.ivyteam.logicalexpression.RelationalOperator;

/**
 * The AbstractTaskLazyDataModel is to filter a TaskList. It checks if the
 * filter changed, applies them and sets the page to number 1.
 * 
 * {@link #findTasks(int, int, List, IPropertyFilter)} must be implemented by
 * the super class to return the filtered tasks. The task ordering and filter is
 * calculated by this class.
 * 
 * {@link #load(int, int, String, SortOrder, Map)} is called by the primefaces
 * {@link DataTable} to load all tasks.
 * 
 */
@SuppressWarnings("serial")
public abstract class AbstractTaskLazyDataModel extends LazyDataModel<ITask>
{
  protected final Ivy ivy = Ivy.getInstance();
  private String dataTableId;
  
  private boolean filterChanged;
  private IPropertyFilter<TaskProperty> taskFilters;
  private String searchFilter;
  private String responsibleFilter;
  private WorkflowPriority priorityFilter = null;
  private TaskState stateFilter;

  @Override
  public final List<ITask> load(int first, int pageSize, String sortField,
          SortOrder sortOrder, Map<String, Object> filters)
  {
    TaskProperty taskProperty = getTaskProperty(sortField);
    OrderDirection taskDirection = getTaskDirection(sortOrder);
    List<PropertyOrder<TaskProperty>> taskPropertyOrder = PropertyOrder.create(taskProperty, taskDirection);

    if (filterChanged)
    {
      first = 0;
      resetUiDataTableToFirstPage();
    }
    IPropertyFilter<TaskProperty> taskPropertyFilters = getTaskFilters();
    IQueryResult<ITask> queryResult = findTasks(first, pageSize, taskPropertyOrder, taskPropertyFilters);

    setRowCount(queryResult.getAllCount());

    List<ITask> tasks = queryResult.getResultList();
    return tasks;
  }

  protected abstract IQueryResult<ITask> findTasks(int first, int pageSize,
  List<PropertyOrder<TaskProperty>> taskPropertyOrder, IPropertyFilter<TaskProperty> filters);

  private void resetUiDataTableToFirstPage()
  {
    UIComponent uiComponent = FacesContext.getCurrentInstance().getViewRoot().findComponent(dataTableId);
    if (uiComponent instanceof DataTable)
    {
      ((DataTable) uiComponent).setFirst(0);
    }
  }

  public void setDataTableId(String dataTableId)
  {
    this.dataTableId = dataTableId;
  }

  public String getSearchFilter()
  {
    return searchFilter;
  }

  public void setSearchFilter(String newSearchFilter)
  {
    if (!StringUtils.equals(this.searchFilter, newSearchFilter))
    {
      this.searchFilter = newSearchFilter;
      this.filterChanged = true;
    }
  }

  public String getResponsibleFilter()
  {
    return responsibleFilter;
  }

  public void setResponsibleFilter(String newResponsible)
  {
    if (!StringUtils.equals(this.responsibleFilter, newResponsible))
    {
      this.responsibleFilter = newResponsible;
      this.filterChanged = true;
    }
  }

  public WorkflowPriority getPriorityFilter()
  {
    return priorityFilter;
  }

  public void setPriorityFilter(WorkflowPriority newPriority)
  {
    if (this.priorityFilter != newPriority)
    {
      this.priorityFilter = newPriority;
      this.filterChanged = true;
    }
  }

  public TaskState getStateFilter()
  {
    return stateFilter;
  }

  public void setStateFilter(TaskState newState)
  {
    if (this.stateFilter != newState)
    {
      this.stateFilter = newState;
      this.filterChanged = true;
    }
  }

  private TaskProperty getTaskProperty(String sortField)
  {
    TaskProperty taskProperty = TaskProperty.ID;
    if (sortField != null)
    {
      taskProperty = TaskProperty.valueOf(sortField);
    }
    return taskProperty;
  }

  private OrderDirection getTaskDirection(SortOrder sortOrder)
  {
    OrderDirection direction;
    switch (sortOrder)
    {
      case DESCENDING:
        direction = OrderDirection.DESCENDING;
        break;
      default:
        direction = OrderDirection.ASCENDING;
    }
    return direction;
  }

  private IPropertyFilter<TaskProperty> getTaskFilters()
  {
    if (filterChanged)
    {
      filterChanged = false;
      taskFilters = createTaskFilter();
    }
    return taskFilters;
  }

  private IPropertyFilter<TaskProperty> createTaskFilter()
  {
    IPropertyFilter<TaskProperty> filter = createNameFilter(null);
    filter = createResponsibleFilter(filter);
    filter = createPriorityFilter(filter);
    filter = createStateFilter(filter);
    return filter;
  }

  private IPropertyFilter<TaskProperty> createNameFilter(IPropertyFilter<TaskProperty> filter)
  {
    if (StringUtils.isNotEmpty(searchFilter))
    {
      String[] tokens = searchFilter.split(" ");
      for (String token : tokens)
      {
        IPropertyFilter<TaskProperty> nameFilter = ivy.wf.createTaskPropertyFilter(TaskProperty.NAME,
                RelationalOperator.LIKE, "%" + token + "%");
        filter = addToFilter(filter, nameFilter);
      }
    }
    return filter;
  }

  private IPropertyFilter<TaskProperty> createResponsibleFilter(IPropertyFilter<TaskProperty> filter)
  {
    if (StringUtils.isNotEmpty(responsibleFilter))
    {
      IPropertyFilter<TaskProperty> responsiblePropertyFilter = ivy.wf.createTaskPropertyFilter(
              TaskProperty.ACTIVATOR_NAME, RelationalOperator.EQUAL, responsibleFilter);
      filter = addToFilter(filter, responsiblePropertyFilter);
    }
    return filter;
  }

  private IPropertyFilter<TaskProperty> createPriorityFilter(IPropertyFilter<TaskProperty> filter)
  {
    if (priorityFilter != null)
    {
      IPropertyFilter<TaskProperty> priorityPropertyFilter = ivy.wf.createTaskPropertyFilter(
              TaskProperty.PRIORITY, RelationalOperator.EQUAL, priorityFilter);
      filter = addToFilter(filter, priorityPropertyFilter);
    }
    return filter;
  }

  private IPropertyFilter<TaskProperty> createStateFilter(IPropertyFilter<TaskProperty> filter)
  {
    if (stateFilter != null)
    {
      IPropertyFilter<TaskProperty> statePropertyFilter = ivy.wf.createTaskPropertyFilter(TaskProperty.STATE,
              RelationalOperator.EQUAL, stateFilter);
      filter = addToFilter(filter, statePropertyFilter);
    }
    return filter;
  }

  private IPropertyFilter<TaskProperty> addToFilter(IPropertyFilter<TaskProperty> baseFilter,
          IPropertyFilter<TaskProperty> additionalFilter)
  {
    if (baseFilter == null)
    {
      return additionalFilter;
    }
    return baseFilter.and(additionalFilter);
  }
}