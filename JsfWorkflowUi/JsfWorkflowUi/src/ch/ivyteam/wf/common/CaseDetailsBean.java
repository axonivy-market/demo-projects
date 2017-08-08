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

  private List<IStage> getStages(ICase wfCase) {
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

  public List<IStage> getStagesBaseOnCurrentStage(ICase wfCase) {
    if (wfCase == null) {
      return Collections.emptyList();
    }
    ICaseMap caseMap = getCaseMapService(wfCase.getBusinessCase()).findCaseMap();
    if (caseMap == null) {
      return Collections.emptyList();
    }
    List<IStage> stages = caseMap.getStages();
    // if current stage is in the main flow, do not display secondary flow
    int firstTerminatingStageIndex = getFirstTerminatingStageIndex(stages);
    if (firstTerminatingStageIndex >= getIndexOfCurrentStage(wfCase)) {
      stages = stages.subList(0, firstTerminatingStageIndex + 1);
    }
    return stages;
  }

  private int getFirstTerminatingStageIndex(List<IStage> stages) {
    int counter = 0;
    for (IStage stage : stages) {
      if (stage.isTerminating()) {
        return counter;
      }
      counter++;
    }
    return -1;
  }
}
