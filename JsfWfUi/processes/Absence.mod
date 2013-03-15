[Ivy]
[>Created: Fri Mar 15 11:44:31 CET 2013]
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
Ae0 @PushWFArc f4 '' #zField
>Proto Ae0 Ae0 Absence #zField
Ae0 f0 outLink Absence.ivp #txt
Ae0 f0 type htmlwfui.Data #txt
Ae0 f0 inParamDecl '<> param;' #txt
Ae0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Ae0 f0 guid 1367E04CFA6ECF77 #txt
Ae0 f0 requestEnabled true #txt
Ae0 f0 triggerEnabled false #txt
Ae0 f0 callSignature Absence() #txt
Ae0 f0 persist false #txt
Ae0 f0 startName Absence #txt
Ae0 f0 startDescription 'My absences' #txt
Ae0 f0 taskData '#
#Fri Mar 15 11:43:31 CET 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ae0 f0 caseData '#
#Fri Mar 15 11:43:31 CET 2013
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
Ae0 f0 showInStartList 0 #txt
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
        <name>Absence.ivp</name>
        <nameStyle>11,5,7
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
Ae0 f8 142 116 36 24 20 -2 #rect
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
Ae0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Absence view</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f2 142 180 36 24 20 -2 #rect
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
Ae0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Absence add</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f17 142 236 36 24 20 -2 #rect
Ae0 f17 @|RichDialogIcon #fIcon
Ae0 f1 expr out #txt
Ae0 f1 178 248 178 192 #arcP
Ae0 f1 1 256 248 #addKink
Ae0 f1 2 256 192 #addKink
Ae0 f1 1 0.9877855306299546 0 0 #arcLabel
Ae0 f5 expr out #txt
Ae0 f5 160 140 160 180 #arcP
Ae0 f6 expr out #txt
Ae0 f6 160 204 160 236 #arcP
Ae0 f6 0 0.5581556486922693 0 0 #arcLabel
Ae0 f4 expr out #txt
Ae0 f4 160 77 160 116 #arcP
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
Ae0 f0 mainOut f4 tail #connect
Ae0 f4 head f8 mainIn #connect
