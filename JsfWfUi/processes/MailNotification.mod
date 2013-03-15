[Ivy]
[>Created: Fri Mar 15 11:48:41 CET 2013]
13CCE56647090F82 3.17 #module
>Proto >Proto Collection #zClass
Mn0 MailNotification Big #zClass
Mn0 B #cInfo
Mn0 #process
Mn0 @TextInP .resExport .resExport #zField
Mn0 @TextInP .type .type #zField
Mn0 @TextInP .processKind .processKind #zField
Mn0 @AnnotationInP-0n ai ai #zField
Mn0 @TextInP .xml .xml #zField
Mn0 @TextInP .responsibility .responsibility #zField
Mn0 @StartRequest f0 '' #zField
Mn0 @CallSub f1 '' #zField
Mn0 @RichDialog f2 '' #zField
Mn0 @PushWFArc f4 '' #zField
Mn0 @PushWFArc f5 '' #zField
Mn0 @EndRequest f14 '' #zField
Mn0 @GridStep f3 '' #zField
Mn0 @PushWFArc f6 '' #zField
Mn0 @PushWFArc f7 '' #zField
>Proto Mn0 Mn0 MailNotification #zField
Mn0 f0 outLink MailNotificationSettings.ivp #txt
Mn0 f0 type htmlwfui.Data #txt
Mn0 f0 inParamDecl '<> param;' #txt
Mn0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Mn0 f0 guid 13CCE568577C8086 #txt
Mn0 f0 requestEnabled true #txt
Mn0 f0 triggerEnabled false #txt
Mn0 f0 callSignature MailNotificationSettings() #txt
Mn0 f0 persist false #txt
Mn0 f0 taskData '#
#Fri Mar 15 11:47:48 CET 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Mn0 f0 caseData '#
#Fri Mar 15 11:47:48 CET 2013
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
Mn0 f0 showInStartList 0 #txt
Mn0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Mn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>MailNotificationSettings.ivp</name>
        <nameStyle>28,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Mn0 f0 @C|.responsibility Everybody #txt
Mn0 f0 339 83 26 26 14 0 #rect
Mn0 f0 @|StartRequestIcon #fIcon
Mn0 f1 type htmlwfui.Data #txt
Mn0 f1 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Mn0 f1 doCall true #txt
Mn0 f1 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Mn0 f1 requestMappingAction 'param.in=in;
' #txt
Mn0 f1 responseActionDecl 'htmlwfui.Data out;
' #txt
Mn0 f1 responseMappingAction 'out=result.out;
' #txt
Mn0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Mn0 f1 334 148 36 24 20 -2 #rect
Mn0 f1 @|CallSubIcon #fIcon
Mn0 f2 targetWindow NEW:card: #txt
Mn0 f2 targetDisplay TOP #txt
Mn0 f2 richDialogId htmlwfui.MailNotificationSetting #txt
Mn0 f2 startMethod start() #txt
Mn0 f2 type htmlwfui.Data #txt
Mn0 f2 requestActionDecl '<> param;' #txt
Mn0 f2 responseActionDecl 'htmlwfui.Data out;
' #txt
Mn0 f2 responseMappingAction 'out=in;
' #txt
Mn0 f2 windowConfiguration '* ' #txt
Mn0 f2 isAsynch false #txt
Mn0 f2 isInnerRd false #txt
Mn0 f2 userContext '* ' #txt
Mn0 f2 334 212 36 24 20 -2 #rect
Mn0 f2 @|RichDialogIcon #fIcon
Mn0 f4 expr out #txt
Mn0 f4 352 109 352 148 #arcP
Mn0 f5 expr out #txt
Mn0 f5 352 172 352 212 #arcP
Mn0 f14 type htmlwfui.Data #txt
Mn0 f14 template "redirect.jsp" #txt
Mn0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>redirect</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Mn0 f14 339 339 26 26 14 0 #rect
Mn0 f14 @|EndRequestIcon #fIcon
Mn0 f3 actionDecl 'htmlwfui.Data out;
' #txt
Mn0 f3 actionTable 'out=in;
out.temp.url=ivy.html.startref("127AE76143E89C91/HomePage.ivp");
' #txt
Mn0 f3 type htmlwfui.Data #txt
Mn0 f3 334 276 36 24 20 -2 #rect
Mn0 f3 @|StepIcon #fIcon
Mn0 f6 expr out #txt
Mn0 f6 352 236 352 276 #arcP
Mn0 f7 expr out #txt
Mn0 f7 352 300 352 339 #arcP
>Proto Mn0 .type htmlwfui.Data #txt
>Proto Mn0 .processKind NORMAL #txt
>Proto Mn0 0 0 32 24 18 0 #rect
>Proto Mn0 @|BIcon #fIcon
Mn0 f0 mainOut f4 tail #connect
Mn0 f4 head f1 mainIn #connect
Mn0 f1 mainOut f5 tail #connect
Mn0 f5 head f2 mainIn #connect
Mn0 f2 mainOut f6 tail #connect
Mn0 f6 head f3 mainIn #connect
Mn0 f3 mainOut f7 tail #connect
Mn0 f7 head f14 mainIn #connect
