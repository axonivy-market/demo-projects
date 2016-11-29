package ch.ivyteam.wf.history;

import java.util.List;

import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.query.CaseQuery;
import ch.ivyteam.logicalexpression.RelationalOperator;

public class CasesOfBusinessCaseLazyDataModel extends AbstractCaseLazyDataModel
{
  private long caseId;

  public CasesOfBusinessCaseLazyDataModel(long caseId)
  {
    this.caseId = caseId;
  }

  @Override
  protected IQueryResult<ICase> findCases(int first, int pageSize,
          List<PropertyOrder<CaseProperty>> propertyOrders,
          IPropertyFilter<CaseProperty> filters)
  {
    filters = onlyCasesOfBusinessCases(filters);
    return ivy.wf.findCases(filters, propertyOrders, first, pageSize, true);
  }
  
  @Override
  protected CaseQuery getCaseQuery()
  {
    return CaseQuery.create().where().businessCaseId().isEqual(caseId);
  }

  private IPropertyFilter<CaseProperty> onlyCasesOfBusinessCases(IPropertyFilter<CaseProperty> filter)
  {
    IPropertyFilter<CaseProperty> categoryPropertyFilter = ivy.wf
            .createCasePropertyFilter(CaseProperty.BUSINESS_CASE_ID, RelationalOperator.EQUAL, caseId);
    filter = addToFilter(filter, categoryPropertyFilter);
    return filter;
  }
}
