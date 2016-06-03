package ch.ivyteam.wf.history;

import java.util.List;

import org.apache.commons.lang3.StringUtils;

import ch.ivyteam.ivy.persistence.IGroup;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.PropertyOrder;

public class UserCaseLazyDataModel extends AbstractCaseLazyDataModel
{

  @Override
  protected IQueryResult<ICase> findCases(int first, int pageSize,
          List<PropertyOrder<CaseProperty>> propertyOrders, IPropertyFilter<CaseProperty> filters)
  {
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
  protected List<IGroup<ICase>> getCaseGroups(CaseProperty caseProperty)
  {
    if (isInvolvedCasesMode())
    {
      return ivy.session.findInvolvedCasesCategories(null, caseProperty, OrderDirection.ASCENDING);
    }
    else
    {
      return ivy.session.findStartedCaseCategories(null, caseProperty, OrderDirection.ASCENDING);
    }
  }

  private boolean isInvolvedCasesMode()
  {
    return  StringUtils.equals(caseUserMode, "involvedCases");
  }
}