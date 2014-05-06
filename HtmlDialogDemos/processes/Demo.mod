[Ivy]
[>Created: Tue May 06 14:37:07 CEST 2014]
139D3A4CEEEDAA4B 3.17 #module
>Proto >Proto Collection #zClass
Do0 Demo Big #zClass
Do0 B #cInfo
Do0 #process
Do0 @TextInP .resExport .resExport #zField
Do0 @TextInP .type .type #zField
Do0 @TextInP .processKind .processKind #zField
Do0 @AnnotationInP-0n ai ai #zField
Do0 @TextInP .xml .xml #zField
Do0 @TextInP .responsibility .responsibility #zField
Do0 @StartRequest f0 '' #zField
Do0 @EndTask f1 '' #zField
Do0 @RichDialog f2 '' #zField
Do0 @PushWFArc f4 '' #zField
Do0 @PushWFArc f3 '' #zField
>Proto Do0 Do0 Demo #zField
Do0 f0 outLink start.ivp #txt
Do0 f0 type htmlDialogDemos.Data #txt
Do0 f0 inParamDecl '<> param;' #txt
Do0 f0 actionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f0 guid 139D3A4DA0038841 #txt
Do0 f0 requestEnabled true #txt
Do0 f0 triggerEnabled false #txt
Do0 f0 callSignature start() #txt
Do0 f0 persist false #txt
Do0 f0 startName 'All HtmlDialog Demos' #txt
Do0 f0 taskData '#
#Thu Sep 20 15:31:34 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Do0 f0 caseData '#
#Thu Sep 20 15:31:34 CEST 2012
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
Do0 f0 showInStartList 1 #txt
Do0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Do0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Do0 f0 @C|.responsibility Everybody #txt
Do0 f0 113 113 30 30 -21 15 #rect
Do0 f0 @|StartRequestIcon #fIcon
Do0 f0 -1|-1|-9671572 #nodeStyle
Do0 f1 type htmlDialogDemos.Data #txt
Do0 f1 465 113 30 30 0 15 #rect
Do0 f1 @|EndIcon #fIcon
Do0 f1 -1|-1|-9671572 #nodeStyle
Do0 f2 targetWindow NEW:card: #txt
Do0 f2 targetDisplay TOP #txt
Do0 f2 richDialogId ch.ivyteam.htmldialog.demo.Main #txt
Do0 f2 startMethod start() #txt
Do0 f2 type htmlDialogDemos.Data #txt
Do0 f2 requestActionDecl '<> param;' #txt
Do0 f2 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f2 responseMappingAction 'out=in;
' #txt
Do0 f2 windowConfiguration '* ' #txt
Do0 f2 isAsynch false #txt
Do0 f2 isInnerRd false #txt
Do0 f2 userContext '* ' #txt
Do0 f2 248 106 112 44 58 -2 #rect
Do0 f2 @|RichDialogIcon #fIcon
Do0 f2 -1|-1|-9671572 #nodeStyle
Do0 f4 expr out #txt
Do0 f4 360 128 465 128 #arcP
Do0 f3 expr out #txt
Do0 f3 143 128 248 128 #arcP
>Proto Do0 .type htmlDialogDemos.Data #txt
>Proto Do0 .processKind NORMAL #txt
>Proto Do0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Demo Start</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>255</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Do0 0 0 32 24 18 0 #rect
>Proto Do0 @|BIcon #fIcon
Do0 f2 mainOut f4 tail #connect
Do0 f4 head f1 mainIn #connect
Do0 f0 mainOut f3 tail #connect
Do0 f3 head f2 mainIn #connect
