package ch.ivyteam.wf.history;

import java.util.List;

import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.query.CaseQuery;

public class AdminCaseLazyDataModel extends AbstractCaseLazyDataModel
{

  @Override
  protected IQueryResult<ICase> findCases(int first, int pageSize,
          List<PropertyOrder<CaseProperty>> propertyOrders, IPropertyFilter<CaseProperty> filters)
  {
    filters = onlyBusinessCases(filters);
    return ivy.wf.findCases(filters, propertyOrders, first, pageSize, true);
  }
  
  @Override
  protected CaseQuery getCaseQuery()
  {
    return CaseQuery.create().where().isBusinessCase();
  }
}
