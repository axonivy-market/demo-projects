[Ivy]
[>Created: Fri Feb 15 16:02:42 CET 2013]
136F33D7CF6E4319 3.17 #module
>Proto >Proto Collection #zClass
Lt0 Logout Big #zClass
Lt0 B #cInfo
Lt0 #process
Lt0 @TextInP .resExport .resExport #zField
Lt0 @TextInP .type .type #zField
Lt0 @TextInP .processKind .processKind #zField
Lt0 @AnnotationInP-0n ai ai #zField
Lt0 @TextInP .xml .xml #zField
Lt0 @TextInP .responsibility .responsibility #zField
Lt0 @GridStep f8 '' #zField
Lt0 @StartRequest f0 '' #zField
Lt0 @PushWFArc f1 '' #zField
Lt0 @EndRequest f6 '' #zField
Lt0 @PushWFArc f2 '' #zField
>Proto Lt0 Lt0 Logout #zField
Lt0 f8 actionDecl 'htmlwfui.Data out;
' #txt
Lt0 f8 actionTable 'out=in;
out.temp.url=ivy.html.startref("127AE76143E89C91/DefaultApplicationHomePage.ivp");
' #txt
Lt0 f8 actionCode ivy.session.logoutSessionUser(ivy.task.getId()); #txt
Lt0 f8 type htmlwfui.Data #txt
Lt0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Logout</name>
        <nameStyle>6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Lt0 f8 110 116 36 24 20 -2 #rect
Lt0 f8 @|StepIcon #fIcon
Lt0 f0 outLink start.ivp #txt
Lt0 f0 type htmlwfui.Data #txt
Lt0 f0 inParamDecl '<> param;' #txt
Lt0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Lt0 f0 guid 136F33DBE623E427 #txt
Lt0 f0 requestEnabled true #txt
Lt0 f0 triggerEnabled false #txt
Lt0 f0 callSignature start() #txt
Lt0 f0 persist false #txt
Lt0 f0 startName Logout #txt
Lt0 f0 taskData '#
#Fri Apr 27 14:43:56 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Lt0 f0 caseData '#
#Fri Apr 27 14:43:56 CEST 2012
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
Lt0 f0 showInStartList 0 #txt
Lt0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Lt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Lt0 f0 @C|.responsibility Everybody #txt
Lt0 f0 115 51 26 26 14 0 #rect
Lt0 f0 @|StartRequestIcon #fIcon
Lt0 f1 expr out #txt
Lt0 f1 128 77 128 116 #arcP
Lt0 f6 type htmlwfui.Data #txt
Lt0 f6 template "redirect.jsp" #txt
Lt0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>redirect</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Lt0 f6 115 195 26 26 14 0 #rect
Lt0 f6 @|EndRequestIcon #fIcon
Lt0 f2 expr out #txt
Lt0 f2 128 140 128 195 #arcP
>Proto Lt0 .type htmlwfui.Data #txt
>Proto Lt0 .processKind NORMAL #txt
>Proto Lt0 0 0 32 24 18 0 #rect
>Proto Lt0 @|BIcon #fIcon
Lt0 f0 mainOut f1 tail #connect
Lt0 f1 head f8 mainIn #connect
Lt0 f8 mainOut f2 tail #connect
Lt0 f2 head f6 mainIn #connect
