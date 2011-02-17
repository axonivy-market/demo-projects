package ch.ivyteam.ivy.addons.restricted.eventlog;

import java.util.Date;
import java.util.List;

import ch.ivyteam.ivy.application.IApplication;
import ch.ivyteam.ivy.application.IProcessModel;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.INote;
import ch.ivyteam.ivy.workflow.IPageArchive;
import ch.ivyteam.ivy.workflow.IProcessStart;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IWorkflowContext;
import ch.ivyteam.ivy.workflow.IWorkflowEvent;
import ch.ivyteam.ivy.workflow.IWorkflowProcessModelVersion;
import ch.ivyteam.ivy.workflow.IWorkflowSession;
import ch.ivyteam.ivy.workflow.WorkflowPriority;

/**
 * This class gives access to the case id through the ICase interface without be able to obtain a real ICase.
 * It permits searching in event logs of event attached to a non persistent case.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 11.02.2011
 */
class DummyCase implements ICase
{

  private int caseId;

  public DummyCase(Integer caseId)
  {
    this.caseId = caseId;
  }

  @Override
  public void destroy() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("destroy()"));
  }

  @Override
  public List<ITask> getActiveTasks() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getActiveTasks()"));
  }

  @Override
  public IApplication getApplication() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getApplication()"));
  }

  @Override
  public Integer getBusinessCorrespondentId() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessCorrespondentId()"));
  }

  @Override
  public String getBusinessCreatorUser() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessCreatorUser()"));
  }

  @Override
  public String getBusinessMainContactDocumentDatabaseCode() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessMainContactDocumentDatabaseCode()"));
  }

  @Override
  public String getBusinessMainContactFolderId() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessMainContactFolderId()"));
  }

  @Override
  public Integer getBusinessMainContactId() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessMainContactId()"));
  }

  @Override
  public String getBusinessMainContactName() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessMainContactName()"));
  }

  @Override
  public String getBusinessMainContactType() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessMainContactType()"));
  }

  @Override
  public Date getBusinessMilestoneTimestamp() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessMilestoneTimestamp()"));
  }

  @Override
  public String getBusinessObjectCode() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessObjectCode()"));
  }

  @Override
  public String getBusinessObjectDocumentDatabaseCode() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessObjectDocumentDatabaseCode()"));
  }

  @Override
  public String getBusinessObjectFolderId() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessObjectFolderId()"));
  }

  @Override
  public String getBusinessObjectName() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessObjectName()"));
  }

  @Override
  public String getBusinessPriority() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessPriority()"));
  }

  @Override
  public Date getBusinessStartTimestamp() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getBusinessStartTimestamp()"));
  }

  @Override
  public ITask getCreatorTask() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCreatorTask()"));
  }

  @Override
  public IUser getCreatorUser() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCreatorUser()"));
  }

  @Override
  public String getCreatorUserName() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCreatorUserName()"));
  }

  @Override
  public Number getCustomDecimalField1() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomDecimalField1()"));
  }

  @Override
  public Number getCustomDecimalField2() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomDecimalField2()"));
  }

  @Override
  public Number getCustomDecimalField3() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomDecimalField3()"));
  }

  @Override
  public Number getCustomDecimalField4() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomDecimalField4()"));
  }

  @Override
  public Number getCustomDecimalField5() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomDecimalField5()"));
  }

  @Override
  public Date getCustomTimestampField1() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomTimestampField1()"));
  }

  @Override
  public Date getCustomTimestampField2() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomTimestampField2()"));
  }

  @Override
  public Date getCustomTimestampField3() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomTimestampField3()"));
  }

  @Override
  public Date getCustomTimestampField4() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomTimestampField4()"));
  }

  @Override
  public Date getCustomTimestampField5() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomTimestampField5()"));
  }

  @Override
  public String getCustomVarCharField1() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomVarCharField1()"));
  }

  @Override
  public String getCustomVarCharField2() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomVarCharField2()"));
  }

  @Override
  public String getCustomVarCharField3() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomVarCharField3()"));
  }

  @Override
  public String getCustomVarCharField4() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomVarCharField4()"));
  }

  @Override
  public String getCustomVarCharField5() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getCustomVarCharField5()"));
  }

  @Override
  public String getDescription() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getDescription()"));
  }

  @Override
  public String getDisplayDescriptionTemplate() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getDisplayDescriptionTemplate()"));
  }

  @Override
  public String getDisplayNameTemplate() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getDisplayNameTemplate()"));
  }

  @Override
  public Date getEndTimestamp() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getEndTimestamp()"));
  }

  @Override
  public int getIdentifier()
  {
    return caseId;
  }

  @Override
  public String getName() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getName()"));
  }

  @Override
  public List<IPageArchive> getPageArchives() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getPageArchives()"));
  }

  @Override
  public WorkflowPriority getPriority() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getPriority()"));
  }

  @Override
  public String getProcessCategoryCode() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getProcessCategoryCode()"));
  }

  @Override
  public String getProcessCategoryName() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getProcessCategoryName()"));
  }

  @Override
  public String getProcessCode() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getProcessCode()"));
  }

  @Override
  public IProcessModel getProcessModel() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getProcessModel()"));
  }

  @Override
  public IWorkflowProcessModelVersion getProcessModelVersion() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getProcessModelVersion()"));
  }

  @Override
  public String getProcessName() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getProcessName()"));
  }

  @Override
  public IProcessStart getProcessStart() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getProcessStart()"));
  }

  @Override
  public Date getStartTimestamp() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getStartTimestamp()"));
  }

  @Override
  public CaseState getState() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getState()"));
  }

  @Override
  public String getSubTypeCode() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getSubTypeCode()"));
  }

  @Override
  public String getSubTypeName() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getSubTypeName()"));
  }

  @Override
  public List<ITask> getTasks() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getTasks()"));
  }

  @Override
  public String getTypeCode() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getTypeCode()"));
  }

  @Override
  public String getTypeName() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getTypeName()"));
  }

  @Override
  public IWorkflowContext getWorkflowContext() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getWorkflowContext()"));
  }

  @Override
  public List<IWorkflowEvent> getWorkflowEvents() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getWorkflowEvents()"));
  }

  @Override
  public boolean isPersistent()
  {
    throw new RuntimeException(new NoSuchMethodException("isPersistent()"));
  }

  @Override
  public void setBusinessCorrespondentId(Integer arg0) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setBusinessCorrespondentId(Integer"));
  }

  @Override
  public void setBusinessCreatorUser(String arg0) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setBusinessCreatorUser(String"));
  }

  @Override
  public void setBusinessMainContactDocumentDatabaseCode(String arg0) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException(
            "setBusinessMainContactDocumentDatabaseCode(String"));
  }

  @Override
  public void setBusinessMainContactFolderId(String arg0) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setBusinessMainContactFolderId(String"));
  }

  @Override
  public void setBusinessMainContactId(Integer arg0) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setBusinessMainContactId(Integer"));
  }

  @Override
  public void setBusinessMainContactName(String arg0) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setBusinessMainContactName(String"));
  }

  @Override
  public void setBusinessMainContactType(String arg0) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setBusinessMainContactType(String"));
  }

  @Override
  public void setBusinessMilestoneTimestamp(Date arg0) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setBusinessMilestoneTimestamp(Date"));
  }

  @Override
  public void setBusinessObjectCode(String arg0) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setBusinessObjectCode(String"));
  }

  @Override
  public void setBusinessObjectDocumentDatabaseCode(String arg0) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setBusinessObjectDocumentDatabaseCode(String"));
  }

  @Override
  public void setBusinessObjectFolderId(String arg0) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setBusinessObjectFolderId(String"));
  }

  @Override
  public void setBusinessObjectName(String arg0) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setBusinessObjectName(String"));
  }

  @Override
  public void setBusinessPriority(String arg0) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setBusinessPriority(String"));
  }

  @Override
  public void setBusinessStartTimestamp(Date businessStartTimestamp) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setBusinessStartTimestamp(Date"));
  }

  @Override
  public void setCustomDecimalField1(Number customDecimalField1) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomDecimalField1(Number"));
  }

  @Override
  public void setCustomDecimalField2(Number customDecimalField2) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomDecimalField2(Number"));
  }

  @Override
  public void setCustomDecimalField3(Number customDecimalField3) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomDecimalField3(Number"));
  }

  @Override
  public void setCustomDecimalField4(Number customDecimalField4) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomDecimalField4(Number"));
  }

  @Override
  public void setCustomDecimalField5(Number customDecimalField5) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomDecimalField5(Number"));
  }

  @Override
  public void setCustomTimestampField1(Date customTimestampField1) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomTimestampField1(Date"));
  }

  @Override
  public void setCustomTimestampField2(Date customTimestampField2) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomTimestampField2(Date"));
  }

  @Override
  public void setCustomTimestampField3(Date customTimestampField3) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomTimestampField3(Date"));
  }

  @Override
  public void setCustomTimestampField4(Date customTimestampField4) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomTimestampField4(Date"));
  }

  @Override
  public void setCustomTimestampField5(Date customTimestampField5) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomTimestampField5(Date"));
  }

  @Override
  public void setCustomVarCharField1(String customVarCharField1) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomVarCharField1(String"));
  }

  @Override
  public void setCustomVarCharField2(String customVarCharField2) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomVarCharField2(String"));
  }

  @Override
  public void setCustomVarCharField3(String customVarCharField3) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomVarCharField3(String"));
  }

  @Override
  public void setCustomVarCharField4(String customVarCharField4) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomVarCharField4(String"));
  }

  @Override
  public void setCustomVarCharField5(String customVarCharField5) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setCustomVarCharField5(String"));
  }

  @Override
  public void setDescription(String description) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setDescription(String"));
  }

  @Override
  public void setName(String name) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setName(String"));
  }

  @Override
  public void setPriority(WorkflowPriority priority) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setPriority(WorkflowPriority"));
  }

  @Override
  public void setProcess(String processCode, String processName) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setProcess(String"));
  }

  @Override
  public void setProcessCategory(String processCategoryCode, String processCategoryName)
          throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setProcessCategory(String"));
  }

  @Override
  public void setSubType(String subTypeCode, String subTypeName) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setSubType(String"));
  }

  @Override
  public void setType(String typeCode, String typeName) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setType(String"));
  }

  @Override
  public INote createNote(IWorkflowSession session, String message) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("createNote(IWorkflowSession"));
  }

  @Override
  public void deleteNote(INote note) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("deleteNote(INote"));
  }

  @Override
  public List<INote> getNotes() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getNotes()"));
  }

  @Override
  public boolean hasNotes() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("hasNotes()"));
  }

  @Override
  public String getAdditionalProperty(String name) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getAdditionalProperty(String"));
  }

  @Override
  public List<String> getAdditionalPropertyNames() throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("getAdditionalPropertyNames()"));
  }

  @Override
  public void setAdditionalProperty(String name, String value) throws PersistencyException
  {
    throw new PersistencyException(new NoSuchMethodException("setAdditionalProperty(String"));
  }

}
