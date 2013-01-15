[Ivy]
[>Created: Mon Jan 14 15:15:18 CET 2013]
1367E046117353D3 3.17 #module
>Proto >Proto Collection #zClass
Ae0 Absence Big #zClass
Ae0 B #cInfo
Ae0 #process
Ae0 @TextInP .resExport .resExport #zField
Ae0 @TextInP .type .type #zField
Ae0 @TextInP .processKind .processKind #zField
Ae0 @AnnotationInP-0n ai ai #zField
Ae0 @TextInP .xml .xml #zField
Ae0 @TextInP .responsibility .responsibility #zField
Ae0 @StartRequest f0 '' #zField
Ae0 @CallSub f8 '' #zField
Ae0 @RichDialog f2 '' #zField
Ae0 @RichDialog f17 '' #zField
Ae0 @PushWFArc f1 '' #zField
Ae0 @PushWFArc f5 '' #zField
Ae0 @PushWFArc f6 '' #zField
Ae0 @RichDialog f10 '' #zField
Ae0 @GridStep f9 '' #zField
Ae0 @PushWFArc f11 '' #zField
Ae0 @PushWFArc f3 '' #zField
Ae0 @PushWFArc f7 '' #zField
>Proto Ae0 Ae0 Absence #zField
Ae0 f0 outLink start.ivp #txt
Ae0 f0 type htmlwfui.Data #txt
Ae0 f0 inParamDecl '<> param;' #txt
Ae0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Ae0 f0 guid 1367E04CFA6ECF77 #txt
Ae0 f0 requestEnabled true #txt
Ae0 f0 triggerEnabled false #txt
Ae0 f0 callSignature start() #txt
Ae0 f0 persist false #txt
Ae0 f0 startName Absence #txt
Ae0 f0 taskData '#
#Thu Jan 03 08:36:50 CET 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ae0 f0 caseData '#
#Thu Jan 03 08:36:50 CET 2013
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
Ae0 f0 showInStartList 1 #txt
Ae0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ae0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f0 @C|.responsibility Everybody #txt
Ae0 f0 147 51 26 26 14 0 #rect
Ae0 f0 @|StartRequestIcon #fIcon
Ae0 f8 type htmlwfui.Data #txt
Ae0 f8 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Ae0 f8 doCall true #txt
Ae0 f8 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Ae0 f8 requestMappingAction 'param.in=in;
' #txt
Ae0 f8 responseActionDecl 'htmlwfui.Data out;
' #txt
Ae0 f8 responseMappingAction 'out=result.out;
' #txt
Ae0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f8 142 100 36 24 20 -2 #rect
Ae0 f8 @|CallSubIcon #fIcon
Ae0 f2 targetWindow NEW:card: #txt
Ae0 f2 targetDisplay TOP #txt
Ae0 f2 richDialogId htmlwfui.AbsenceView #txt
Ae0 f2 startMethod start(htmlwfui.Absence) #txt
Ae0 f2 type htmlwfui.Data #txt
Ae0 f2 requestActionDecl '<htmlwfui.Absence absence> param;' #txt
Ae0 f2 requestMappingAction 'param.absence=in.absence;
' #txt
Ae0 f2 responseActionDecl 'htmlwfui.Data out;
' #txt
Ae0 f2 responseMappingAction 'out=in;
out.option=result.option;
' #txt
Ae0 f2 windowConfiguration '* ' #txt
Ae0 f2 isAsynch false #txt
Ae0 f2 isInnerRd false #txt
Ae0 f2 userContext '* ' #txt
Ae0 f2 142 156 36 24 20 -2 #rect
Ae0 f2 @|RichDialogIcon #fIcon
Ae0 f17 targetWindow NEW:card: #txt
Ae0 f17 targetDisplay TOP #txt
Ae0 f17 richDialogId htmlwfui.AbsenceAdd #txt
Ae0 f17 startMethod start(htmlwfui.Absence) #txt
Ae0 f17 type htmlwfui.Data #txt
Ae0 f17 requestActionDecl '<htmlwfui.Absence absence> param;' #txt
Ae0 f17 requestMappingAction 'param.absence=in.absence;
' #txt
Ae0 f17 responseActionDecl 'htmlwfui.Data out;
' #txt
Ae0 f17 responseMappingAction 'out=in;
out.option=result.option;
' #txt
Ae0 f17 windowConfiguration '* ' #txt
Ae0 f17 isAsynch false #txt
Ae0 f17 isInnerRd false #txt
Ae0 f17 userContext '* ' #txt
Ae0 f17 142 212 36 24 20 -2 #rect
Ae0 f17 @|RichDialogIcon #fIcon
Ae0 f1 expr out #txt
Ae0 f1 178 224 178 168 #arcP
Ae0 f1 1 216 224 #addKink
Ae0 f1 2 216 168 #addKink
Ae0 f1 1 0.9877855306299546 0 0 #arcLabel
Ae0 f5 expr out #txt
Ae0 f5 160 124 160 156 #arcP
Ae0 f6 expr out #txt
Ae0 f6 160 180 160 212 #arcP
Ae0 f6 0 0.5581556486922693 0 0 #arcLabel
Ae0 f10 targetWindow NEW:card: #txt
Ae0 f10 targetDisplay TOP #txt
Ae0 f10 richDialogId htmlwfui.LoginSequence #txt
Ae0 f10 startMethod start() #txt
Ae0 f10 type htmlwfui.Data #txt
Ae0 f10 requestActionDecl '<> param;' #txt
Ae0 f10 responseActionDecl 'htmlwfui.Data out;
' #txt
Ae0 f10 responseMappingAction 'out=in;
' #txt
Ae0 f10 windowConfiguration '* ' #txt
Ae0 f10 isAsynch false #txt
Ae0 f10 isInnerRd false #txt
Ae0 f10 userContext '* ' #txt
Ae0 f10 318 132 36 24 20 -2 #rect
Ae0 f10 @|RichDialogIcon #fIcon
Ae0 f9 actionDecl 'htmlwfui.Data out;
' #txt
Ae0 f9 actionTable 'out=in;
out.appname=ivy.wf.getApplication().getName();
out.request=ivy.request;
out.username=ivy.session.isSessionUserUnknown() ? "" : ivy.session.getSessionUserName();
out.wfSession=ivy.session;
' #txt
Ae0 f9 type htmlwfui.Data #txt
Ae0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>inits</name>
        <nameStyle>5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f9 318 84 36 24 22 -16 #rect
Ae0 f9 @|StepIcon #fIcon
Ae0 f11 expr out #txt
Ae0 f11 336 108 336 132 #arcP
Ae0 f3 expr out #txt
Ae0 f3 318 146 178 166 #arcP
Ae0 f7 expr out #txt
Ae0 f7 160 77 160 100 #arcP
>Proto Ae0 .type htmlwfui.Data #txt
>Proto Ae0 .processKind NORMAL #txt
>Proto Ae0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ae0 0 0 32 24 18 0 #rect
>Proto Ae0 @|BIcon #fIcon
Ae0 f17 mainOut f1 tail #connect
Ae0 f1 head f2 mainIn #connect
Ae0 f8 mainOut f5 tail #connect
Ae0 f5 head f2 mainIn #connect
Ae0 f2 mainOut f6 tail #connect
Ae0 f6 head f17 mainIn #connect
Ae0 f9 mainOut f11 tail #connect
Ae0 f11 head f10 mainIn #connect
Ae0 f10 mainOut f3 tail #connect
Ae0 f3 head f2 mainIn #connect
Ae0 f0 mainOut f7 tail #connect
Ae0 f7 head f8 mainIn #connect
