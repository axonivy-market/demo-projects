package ch.ivyteam.wf.history;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collectors;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;

import org.apache.commons.lang3.StringUtils;
import org.primefaces.component.datatable.DataTable;
import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortOrder;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.security.IPermission;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.logicalexpression.RelationalOperator;

public abstract class AbstractCaseLazyDataModel extends LazyDataModel<ICase>
{
  protected final Ivy ivy = Ivy.getInstance();
  private IPropertyFilter<CaseProperty> caseFilters;
  public String caseUserMode = "startedCases";
  private String dataTableId;

  public boolean filterChanged;
  private String searchFilter;
  private String processFilter;
  private String categoryFilter;
  private CaseState stateFilter;

  @Override
  public List<ICase> load(int first, int pageSize, String sortField,
          SortOrder sortOrder, Map<String, Object> filters)
  {
    if (filterChanged)
    {
      first = 0;
      resetUiDataTableToFirstPage();
    }

    CaseProperty caseProperty = getCaseProperty(sortField);
    OrderDirection caseDirection = getCaseDirection(sortOrder);
    List<PropertyOrder<CaseProperty>> casePropertyOrder = PropertyOrder.create(caseProperty, caseDirection);

    IPropertyFilter<CaseProperty> casePropertyFilters = getCaseFilters();
    IQueryResult<ICase> queryResult = findCases(first, pageSize, casePropertyOrder, casePropertyFilters);

    setRowCount(queryResult.getAllCount());

    List<ICase> cases = queryResult.getResultList();
    return cases;
  }

  protected abstract IQueryResult<ICase> findCases(int first, int pageSize,
          List<PropertyOrder<CaseProperty>> propertyOrders, IPropertyFilter<CaseProperty> filters);

  private void resetUiDataTableToFirstPage()
  {
    UIComponent uiComponent = FacesContext.getCurrentInstance().getViewRoot().findComponent(dataTableId);
    if (uiComponent instanceof DataTable)
    {
      ((DataTable) uiComponent).setFirst(0);
    }
  }

  public static CaseProperty getCaseProperty(String sortField)
  {
    CaseProperty caseProperty = CaseProperty.ID;
    if (sortField != null)
    {
      caseProperty = CaseProperty.valueOf(sortField);
    }
    return caseProperty;
  }

  public OrderDirection getCaseDirection(SortOrder sortOrder)
  {
    OrderDirection direction;
    switch (sortOrder)
    {
      case ASCENDING:
        direction = OrderDirection.ASCENDING;
        break;
      default:
        direction = OrderDirection.DESCENDING;
        break;
    }
    return direction;
  }

  public String getSearchFilter()
  {
    return searchFilter;
  }

  public void setSearchFilter(String newSearchFilter)
  {
    if (StringUtils.equals(this.searchFilter, newSearchFilter))
    {
      return;
    }

    this.searchFilter = newSearchFilter;
    this.filterChanged = true;
  }

  public CaseState getStateFilter()
  {
    return stateFilter;
  }

  public void setStateFilter(CaseState newState)
  {
    if (this.stateFilter == newState)
    {
      return;
    }

    this.stateFilter = newState;
    this.filterChanged = true;
  }

  public String getCategoryFilter()
  {
    return categoryFilter;
  }

  public void setCategoryFilter(String newCategoryFilter)
  {
    if (Objects.equals(categoryFilter, newCategoryFilter))
    {
      return;
    }

    this.categoryFilter = newCategoryFilter;
    this.filterChanged = true;
  }

  public String getProcessFilter()
  {
    return processFilter;
  }

  public void setProcessFilter(String newProcessFilter)
  {
    if (Objects.equals(processFilter, newProcessFilter))
    {
      return;
    }

    this.processFilter = newProcessFilter;
    this.filterChanged = true;
  }

  public String getCaseUserMode()
  {
    return caseUserMode;
  }

  public void setCaseUserMode(String newCaseUserMode)
  {
    if (Objects.equals(this.caseUserMode, newCaseUserMode))
    {
      return;
    }

    this.caseUserMode = newCaseUserMode;
    this.filterChanged = true;
  }

  private IPropertyFilter<CaseProperty> getCaseFilters()
  {
    if (filterChanged)
    {
      filterChanged = false;
      caseFilters = createcaseFilters();
    }
    return caseFilters;
  }

  private IPropertyFilter<CaseProperty> createcaseFilters()
  {
    IPropertyFilter<CaseProperty> filter = createNameFilter(null);
    filter = createCategoryFilter(filter);
    filter = createProcessFilter(filter);
    filter = createStateFilter(filter);
    return filter;
  }

  private IPropertyFilter<CaseProperty> createNameFilter(IPropertyFilter<CaseProperty> filter)
  {
    if (StringUtils.isNotEmpty(searchFilter))
    {
      String[] tokens = searchFilter.split(" ");
      for (String token : tokens)
      {
        IPropertyFilter<CaseProperty> nameFilter = ivy.wf.createCasePropertyFilter(CaseProperty.NAME,
                RelationalOperator.LIKE, "%" + token + "%");
        filter = addToFilter(filter, nameFilter);
      }
    }
    return filter;
  }

  private IPropertyFilter<CaseProperty> createCategoryFilter(IPropertyFilter<CaseProperty> filter)
  {
    if (StringUtils.isNotEmpty(categoryFilter))
    {
      IPropertyFilter<CaseProperty> categoryPropertyFilter = ivy.wf.createCasePropertyFilter(
              CaseProperty.PROCESS_CATEGORY_CODE,
              RelationalOperator.EQUAL, categoryFilter);
      filter = addToFilter(filter, categoryPropertyFilter);
    }
    return filter;
  }

  private IPropertyFilter<CaseProperty> createProcessFilter(IPropertyFilter<CaseProperty> filter)
  {
    if (StringUtils.isNotEmpty(processFilter))
    {
      IPropertyFilter<CaseProperty> processPropertyFilter = ivy.wf.createCasePropertyFilter(
              CaseProperty.PROCESS_CODE,
              RelationalOperator.EQUAL, processFilter);
      filter = addToFilter(filter, processPropertyFilter);
    }
    return filter;
  }

  private IPropertyFilter<CaseProperty> createStateFilter(IPropertyFilter<CaseProperty> filter)
  {
    if (stateFilter != null)
    {
      IPropertyFilter<CaseProperty> statePropertyFilter = ivy.wf.createCasePropertyFilter(CaseProperty.STATE,
              RelationalOperator.EQUAL, stateFilter);
      filter = addToFilter(filter, statePropertyFilter);
    }
    return filter;
  }

  private IPropertyFilter<CaseProperty> addToFilter(IPropertyFilter<CaseProperty> filter,
          IPropertyFilter<CaseProperty> additionalFilter)
  {
    if (filter == null)
    {
      return additionalFilter;
    }
    return filter.and(additionalFilter);
  }

  public void setDataTableId(String dataTableId)
  {
    this.dataTableId = dataTableId;
  }

  public List<String> getCaseCategories()
  {
    return getCaseGroups(CaseProperty.PROCESS_CATEGORY_CODE,
            group -> group.getFirstObjectInGroup().getProcessCategoryCode());
  }

  public List<String> getCaseProcesses()
  {
    return getCaseGroups(CaseProperty.PROCESS_CODE, group -> group.getFirstObjectInGroup().getProcessCode());
  }

  private List<String> getCaseGroups(CaseProperty caseProperty,
          Function<IGroup<ICase>, String> caseGroupToStringFunction)
  {
    if (!hasPermission(IPermission.CASE_CATEGORY_READ_ALL))
    {
      return Collections.emptyList();
    }

    List<IGroup<ICase>> caseProcessCodeGroups = getCaseGroups(caseProperty);
    return caseProcessCodeGroups.stream().map(caseGroupToStringFunction)
            .filter(group -> StringUtils.isNotEmpty(group))
            .collect(Collectors.toList());
  }

  private boolean hasPermission(IPermission permission)
  {
    return ivy.session.getSecurityContext().hasPermission(
            ivy.request.getApplication().getSecurityDescriptor(),
            permission);
  }

  protected abstract List<IGroup<ICase>> getCaseGroups(CaseProperty caseProperty);

}
