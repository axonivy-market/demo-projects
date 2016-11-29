package ch.ivyteam.wf.history;

import java.util.List;

import org.apache.commons.lang3.StringUtils;

import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.query.CaseQuery;

public class UserCaseLazyDataModel extends AbstractCaseLazyDataModel
{

  @Override
  protected IQueryResult<ICase> findCases(int first, int pageSize,
          List<PropertyOrder<CaseProperty>> propertyOrders, IPropertyFilter<CaseProperty> filters)
  {
    filters = onlyBusinessCases(filters);
    if (isInvolvedCasesMode())
    {
      return ivy.session.findInvolvedCases(filters, propertyOrders, first, pageSize, true);
    }
    else
    {
      return ivy.session.findStartedCases(filters, propertyOrders, first, pageSize, true);
    }
  }
  
  @Override
  protected CaseQuery getCaseQuery()
  {
    if (isInvolvedCasesMode())
    {
      return CaseQuery.create().where().isBusinessCase().and().currentUserIsInvolved();
    }
    else
    {
      return CaseQuery.create().where().isBusinessCase().and().currentUserHasStarted();
    }
  }
  
  private boolean isInvolvedCasesMode()
  {
    return  StringUtils.equals(caseUserMode, "involvedCases");
  }
}