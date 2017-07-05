package ch.ivyteam.wf.common;

import java.util.Collections;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import ch.ivyteam.ivy.casemap.runtime.ICaseMapService;
import ch.ivyteam.ivy.casemap.runtime.model.IStage;
import ch.ivyteam.ivy.workflow.ICase;

@ManagedBean
@ViewScoped
public class CaseDetailsBean {

	public List<IStage> getStages(ICase wfCase) {
		if (wfCase == null) {
			return Collections.emptyList();
		}
		return ICaseMapService.get(wfCase.getBusinessCase()).findCaseMap().getStages();
	}

	public int getIndexOfCurrentStage(ICase wfCase) {
		if (wfCase == null) {
			return -1;
		}

		return getStages(wfCase).indexOf(
				ICaseMapService.get(wfCase.getBusinessCase())
						.findCurrentStage());
	}
}
