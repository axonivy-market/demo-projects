[Ivy]
[>Created: Thu May 08 16:05:13 CEST 2014]
13F1D890C62823FF 3.17 #module
>Proto >Proto Collection #zClass
Ct0 CaseList Big #zClass
Ct0 B #cInfo
Ct0 #process
Ct0 @TextInP .resExport .resExport #zField
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @StartRequest f0 '' #zField
Ct0 @StartRequest f1 '' #zField
Ct0 @RichDialog f2 '' #zField
Ct0 @PushWFArc f9 '' #zField
Ct0 @PushWFArc f5 '' #zField
>Proto Ct0 Ct0 CaseList #zField
Ct0 f0 outLink CaseList.ivp #txt
Ct0 f0 type ch.ivyteam.wf.Data #txt
Ct0 f0 inParamDecl '<> param;' #txt
Ct0 f0 inParamTable 'out.mode="my_cases";
' #txt
Ct0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ct0 f0 guid 13F1D8DAD10A239E #txt
Ct0 f0 requestEnabled true #txt
Ct0 f0 triggerEnabled false #txt
Ct0 f0 callSignature CaseList() #txt
Ct0 f0 persist false #txt
Ct0 f0 taskData '#
#Thu Jun 13 10:31:43 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ct0 f0 caseData '#
#Thu Jun 13 10:31:43 CEST 2013
businessCalendarName=
businessCreator.user=
businessMilestone.timestamp=
businessObject.code=
businessObject.docDb.code=
businessObject.folder.id=
businessObject.name=
businessPriority=
businessStart.timestamp=
case.description=
case.name=
correspondent.id=
mainContact.docDb.code=
mainContact.folder.id=
mainContact.id=
mainContact.name=
mainContact.type=
process.code=
process.name=
processCategory.code=
processCategory.name=
subType.code=
subType.name=
type.code=
type.name=
' #txt
Ct0 f0 showInStartList 0 #txt
Ct0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ct0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CaseList.ivp</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f0 @C|.responsibility Everybody #txt
Ct0 f0 81 177 30 30 -34 15 #rect
Ct0 f0 @|StartRequestIcon #fIcon
Ct0 f0 -1|-1|-9671572 #nodeStyle
Ct0 f1 outLink CaseListAdmin.ivp #txt
Ct0 f1 type ch.ivyteam.wf.Data #txt
Ct0 f1 inParamDecl '<> param;' #txt
Ct0 f1 inParamTable 'out.mode="admin_cases";
' #txt
Ct0 f1 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ct0 f1 guid 13F1D90493534936 #txt
Ct0 f1 requestEnabled true #txt
Ct0 f1 triggerEnabled false #txt
Ct0 f1 callSignature CaseListAdmin() #txt
Ct0 f1 persist false #txt
Ct0 f1 taskData '#
#Thu Jun 13 10:32:02 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ct0 f1 caseData '#
#Thu Jun 13 10:32:02 CEST 2013
businessCalendarName=
businessCreator.user=
businessMilestone.timestamp=
businessObject.code=
businessObject.docDb.code=
businessObject.folder.id=
businessObject.name=
businessPriority=
businessStart.timestamp=
case.description=
case.name=
correspondent.id=
mainContact.docDb.code=
mainContact.folder.id=
mainContact.id=
mainContact.name=
mainContact.type=
process.code=
process.name=
processCategory.code=
processCategory.name=
subType.code=
subType.name=
type.code=
type.name=
' #txt
Ct0 f1 showInStartList 0 #txt
Ct0 f1 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ct0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CaseListAdmin.ivp</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f1 @C|.responsibility Everybody #txt
Ct0 f1 81 49 30 30 -51 15 #rect
Ct0 f1 @|StartRequestIcon #fIcon
Ct0 f1 -1|-1|-9671572 #nodeStyle
Ct0 f2 targetWindow NEW:card: #txt
Ct0 f2 targetDisplay TOP #txt
Ct0 f2 richDialogId ch.ivyteam.wf.history.CaseList #txt
Ct0 f2 startMethod start(String) #txt
Ct0 f2 type ch.ivyteam.wf.Data #txt
Ct0 f2 requestActionDecl '<String caseListMode> param;' #txt
Ct0 f2 requestMappingAction 'param.caseListMode=in.mode;
' #txt
Ct0 f2 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ct0 f2 responseMappingAction 'out=in;
' #txt
Ct0 f2 windowConfiguration '* ' #txt
Ct0 f2 isAsynch false #txt
Ct0 f2 isInnerRd false #txt
Ct0 f2 userContext '* ' #txt
Ct0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>case list</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f2 168 106 112 44 -23 -8 #rect
Ct0 f2 @|RichDialogIcon #fIcon
Ct0 f2 -1|-1|-9671572 #nodeStyle
Ct0 f9 expr out #txt
Ct0 f9 111 192 224 150 #arcP
Ct0 f9 1 224 192 #addKink
Ct0 f9 1 0.13334866033085085 0 0 #arcLabel
Ct0 f5 expr out #txt
Ct0 f5 111 64 224 106 #arcP
Ct0 f5 1 224 64 #addKink
Ct0 f5 1 0.2282419108538009 0 0 #arcLabel
>Proto Ct0 .type ch.ivyteam.wf.Data #txt
>Proto Ct0 .processKind NORMAL #txt
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ct0 f0 mainOut f9 tail #connect
Ct0 f9 head f2 mainIn #connect
Ct0 f1 mainOut f5 tail #connect
Ct0 f5 head f2 mainIn #connect
