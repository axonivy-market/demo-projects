package ch.ivyteam.wf.history;


import java.util.List;
import java.util.Map;

import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortOrder;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.persistence.OrderDirection;

import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.IPropertyFilter;

import ch.ivyteam.ivy.workflow.PropertyOrder;

public class CaseLazyDataModel extends LazyDataModel<ICase> {

	private IPropertyFilter<CaseProperty> caseFilter;
	private String caseMode;
	private String caseAdminMode;
	private IQueryResult<ICase> queryResult;

	@Override
	public List<ICase> load(int first, int pageSize, String sortField,
			SortOrder sortOrder, Map<String, Object> filters) {
		Ivy ivy = Ivy.getInstance();
		
		List<PropertyOrder<CaseProperty>> casePropertyOrder = PropertyOrder.create(getCaseProperty(sortField), getCaseDirection(sortOrder));
		if(caseMode.contentEquals("my_cases"))
		{
			queryResult = ivy.session.findStartedCases(caseFilter,casePropertyOrder,
					first, pageSize, true);
		}
		else
		{
			if(caseAdminMode.contentEquals("permissionInvolvedCases") )
			{
				queryResult = ivy.session.findInvolvedCases(caseFilter, casePropertyOrder,
						first, pageSize, true);
			}
			else
			{
				queryResult = ivy.wf.findCases(caseFilter, casePropertyOrder,
						first, pageSize, true);
			}
		}
		
		List<ICase> cases = queryResult.getResultList();
		this.setRowCount(queryResult.getAllCount());
		
		return cases;
	}
	
	public CaseProperty getCaseProperty(String sortField) {
		CaseProperty caseProperty = CaseProperty.ID;
		if (sortField != null)
		{
			caseProperty = CaseProperty.valueOf(sortField);
		}
		return caseProperty;
	}
	
	public OrderDirection getCaseDirection(SortOrder sortOrder) {
		OrderDirection direction;
		switch (sortOrder)
		{
		case ASCENDING:
			direction = OrderDirection.ASCENDING;
			break;
		default:
			direction = OrderDirection.DESCENDING;
		}
		return direction;
	}
	
	public void setCaseFilter(IPropertyFilter<CaseProperty> caseFilter) {
		this.caseFilter = caseFilter;
	}
	
	public void setCaseMode(String caseMode) {
		this.caseMode = caseMode;
	}
	
	public void setCaseAdminMode(String caseAdminMode) {
		this.caseAdminMode = caseAdminMode;
	}
}
