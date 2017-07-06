package ch.ivyteam.wf.common;

import java.util.Collections;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import ch.ivyteam.ivy.casemap.runtime.ICaseMapService;
import ch.ivyteam.ivy.casemap.runtime.model.ICaseMap;
import ch.ivyteam.ivy.casemap.runtime.model.IStage;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ICase;

@ManagedBean
@ViewScoped
public class CaseDetailsBean {

	public List<IStage> getStages(ICase wfCase) {
		if (wfCase == null) {
			return Collections.emptyList();
		}
		ICaseMap caseMap = getCaseMapService(wfCase.getBusinessCase()).findCaseMap();
		if (caseMap == null) {
			return Collections.emptyList();
		}
		
		return caseMap.getStages();
	}

	public int getIndexOfCurrentStage(ICase wfCase) {
		if (wfCase == null) {
			return -1;
		}
		return getStages(wfCase).indexOf(getCaseMapService(wfCase).findCurrentStage());
	}

	private ICaseMapService getCaseMapService(ICase wfCase) {
		return Ivy.get(ICaseMapService.class).getCaseMapService(wfCase.getBusinessCase());
	}
}
