[Ivy]
[>Created: Mon Jan 21 10:44:51 CET 2013]
<<<<<<< 3.17 #module
>Proto >Proto Collection #zClass
Mg0 MailNotificationSetting Big #zClass
Mg0 B #cInfo
Mg0 #process
Mg0 @TextInP .resExport .resExport #zField
Mg0 @TextInP .type .type #zField
Mg0 @TextInP .processKind .processKind #zField
Mg0 @AnnotationInP-0n ai ai #zField
Mg0 @TextInP .xml .xml #zField
Mg0 @TextInP .responsibility .responsibility #zField
Mg0 @StartRequest f0 '' #zField
Mg0 @CallSub f8 '' #zField
Mg0 @EndRequest f6 '' #zField
Mg0 @RichDialog f5 '' #zField
Mg0 @PushWFArc f7 '' #zField
Mg0 @PushWFArc f12 '' #zField
Mg0 @PushWFArc f3 '' #zField
>Proto Mg0 Mg0 MailNotificationSetting #zField
Mg0 f0 outLink start.ivp #txt
Mg0 f0 type htmlwfui.Data #txt
Mg0 f0 inParamDecl '<> param;' #txt
Mg0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Mg0 f0 guid 136F4343BDF2121D #txt
Mg0 f0 requestEnabled true #txt
Mg0 f0 triggerEnabled false #txt
Mg0 f0 callSignature start() #txt
Mg0 f0 persist false #txt
Mg0 f0 startName 'Mail Notification' #txt
Mg0 f0 taskData '#
#Tue Jan 08 13:31:13 CET 2013
TaskTriggered.EXTYPE=0
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
>>>>>>>=.r41827
TaskTriggered.EXPRI=2
<<<<<<<=.mine
TaskTriggered.ROL=Everybody
TaskTriggered.EXROL=Everybody
=\=\=\=\=\=\=
' #txt
Mg0 f0 caseData '#
#Tue Jan 08 13:31:13 CET 2013
=\=\=\=\=\=\=
<<<<<<<=.mine
>>>>>>>=.r41827
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
Mg0 f0 showInStartList 1 #txt
Mg0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Mg0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Mg0 f0 @C|.responsibility Everybody #txt
Mg0 f0 195 51 26 26 14 0 #rect
Mg0 f0 @|StartRequestIcon #fIcon
Mg0 f8 type htmlwfui.Data #txt
Mg0 f8 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Mg0 f8 doCall true #txt
Mg0 f8 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Mg0 f8 requestMappingAction 'param.in=in;
' #txt
Mg0 f8 responseActionDecl 'htmlwfui.Data out;
' #txt
Mg0 f8 responseMappingAction 'out=result.out;
' #txt
Mg0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Mg0 f8 190 132 36 24 20 -2 #rect
Mg0 f8 @|CallSubIcon #fIcon
Mg0 f6 type htmlwfui.Data #txt
Mg0 f6 template "redirect.jsp" #txt
Mg0 f6 195 259 26 26 14 0 #rect
Mg0 f6 @|EndRequestIcon #fIcon
Mg0 f5 targetWindow NEW:card: #txt
Mg0 f5 targetDisplay TOP #txt
Mg0 f5 richDialogId htmlwfui.MailNotificationSetting #txt
Mg0 f5 startMethod start() #txt
Mg0 f5 type htmlwfui.Data #txt
Mg0 f5 requestActionDecl '<> param;' #txt
Mg0 f5 responseActionDecl 'htmlwfui.Data out;
' #txt
Mg0 f5 responseMappingAction 'out=in;
' #txt
Mg0 f5 windowConfiguration '* ' #txt
Mg0 f5 isAsynch false #txt
Mg0 f5 isInnerRd false #txt
Mg0 f5 userContext '* ' #txt
Mg0 f5 190 204 36 24 20 -2 #rect
Mg0 f5 @|RichDialogIcon #fIcon
Mg0 f7 expr out #txt
Mg0 f7 208 228 208 259 #arcP
Mg0 f12 expr out #txt
Mg0 f12 208 156 208 204 #arcP
Mg0 f12 0 0.49999999999999983 0 0 #arcLabel
Mg0 f3 expr out #txt
Mg0 f3 208 77 208 132 #arcP
>Proto Mg0 .type htmlwfui.Data #txt
>Proto Mg0 .processKind NORMAL #txt
>Proto Mg0 0 0 32 24 18 0 #rect
>Proto Mg0 @|BIcon #fIcon
Mg0 f5 mainOut f7 tail #connect
Mg0 f7 head f6 mainIn #connect
Mg0 f8 mainOut f12 tail #connect
Mg0 f12 head f5 mainIn #connect
Mg0 f0 mainOut f3 tail #connect
Mg0 f3 head f8 mainIn #connect
