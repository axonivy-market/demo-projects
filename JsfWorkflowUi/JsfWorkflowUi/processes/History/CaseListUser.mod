[Ivy]
[>Created: Wed Dec 16 12:11:31 CET 2015]
13F1D890C62823FF 3.18 #module
>Proto >Proto Collection #zClass
Ct0 CaseListUser Big #zClass
Ct0 B #cInfo
Ct0 #process
Ct0 @TextInP .resExport .resExport #zField
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @StartRequest f0 '' #zField
Ct0 @RichDialog f2 '' #zField
Ct0 @PushWFArc f9 '' #zField
>Proto Ct0 Ct0 CaseListUser #zField
Ct0 f0 outLink CaseListUser.ivp #txt
Ct0 f0 type ch.ivyteam.wf.Data #txt
Ct0 f0 inParamDecl '<> param;' #txt
Ct0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ct0 f0 guid 13F1D8DAD10A239E #txt
Ct0 f0 requestEnabled true #txt
Ct0 f0 triggerEnabled false #txt
Ct0 f0 callSignature CaseListUser() #txt
Ct0 f0 persist false #txt
Ct0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
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
        <name>CaseListUser.ivp</name>
    </language>
</elementInfo>
' #txt
Ct0 f0 @C|.responsibility Everybody #txt
Ct0 f0 81 73 30 30 -47 17 #rect
Ct0 f0 @|StartRequestIcon #fIcon
Ct0 f0 -1|-1|-9671572 #nodeStyle
Ct0 f2 targetWindow NEW:card: #txt
Ct0 f2 targetDisplay TOP #txt
Ct0 f2 richDialogId ch.ivyteam.wf.history.CaseListUser #txt
Ct0 f2 startMethod start() #txt
Ct0 f2 type ch.ivyteam.wf.Data #txt
Ct0 f2 requestActionDecl '<> param;' #txt
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
        <name>case list user</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f2 168 66 112 44 -37 -8 #rect
Ct0 f2 @|RichDialogIcon #fIcon
Ct0 f2 -1|-1|-9671572 #nodeStyle
Ct0 f9 expr out #txt
Ct0 f9 111 88 168 88 #arcP
Ct0 f9 0 0.7651654434444887 0 0 #arcLabel
>Proto Ct0 .type ch.ivyteam.wf.Data #txt
>Proto Ct0 .processKind NORMAL #txt
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ct0 f0 mainOut f9 tail #connect
Ct0 f9 head f2 mainIn #connect
