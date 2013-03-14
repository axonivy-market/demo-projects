[Ivy]
[>Created: Fri Mar 08 10:41:32 CET 2013]
1367DCC9EAB32A2E 3.17 #module
>Proto >Proto Collection #zClass
Sn0 Substitution Big #zClass
Sn0 B #cInfo
Sn0 #process
Sn0 @TextInP .resExport .resExport #zField
Sn0 @TextInP .type .type #zField
Sn0 @TextInP .processKind .processKind #zField
Sn0 @AnnotationInP-0n ai ai #zField
Sn0 @TextInP .xml .xml #zField
Sn0 @TextInP .responsibility .responsibility #zField
Sn0 @StartRequest f0 '' #zField
Sn0 @CallSub f8 '' #zField
Sn0 @RichDialog f22 '' #zField
Sn0 @RichDialog f23 '' #zField
Sn0 @PushWFArc f17 '' #zField
Sn0 @RichDialog f26 '' #zField
Sn0 @Alternative f27 '' #zField
Sn0 @PushWFArc f28 '' #zField
Sn0 @PushWFArc f24 '' #zField
Sn0 @PushWFArc f29 '' #zField
Sn0 @PushWFArc f30 '' #zField
Sn0 @PushWFArc f10 '' #zField
Sn0 @PushWFArc f35 '' #zField
>Proto Sn0 Sn0 Substitution #zField
Sn0 f0 outLink start.ivp #txt
Sn0 f0 type htmlwfui.Data #txt
Sn0 f0 inParamDecl '<> param;' #txt
Sn0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Sn0 f0 guid 1324E06E5DC9CAF4 #txt
Sn0 f0 requestEnabled true #txt
Sn0 f0 triggerEnabled false #txt
Sn0 f0 callSignature start() #txt
Sn0 f0 persist false #txt
Sn0 f0 taskData '#
#Fri Apr 27 14:44:52 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Sn0 f0 caseData '#
#Fri Apr 27 14:44:52 CEST 2012
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
Sn0 f0 showInStartList 0 #txt
Sn0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Sn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f0 @C|.responsibility Everybody #txt
Sn0 f0 291 43 26 26 14 0 #rect
Sn0 f0 @|StartRequestIcon #fIcon
Sn0 f8 type htmlwfui.Data #txt
Sn0 f8 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Sn0 f8 doCall true #txt
Sn0 f8 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Sn0 f8 requestMappingAction 'param.in=in;
' #txt
Sn0 f8 responseActionDecl 'htmlwfui.Data out;
' #txt
Sn0 f8 responseMappingAction 'out=result.out;
' #txt
Sn0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f8 286 116 36 24 20 -2 #rect
Sn0 f8 @|CallSubIcon #fIcon
Sn0 f22 targetWindow NEW:card: #txt
Sn0 f22 targetDisplay TOP #txt
Sn0 f22 richDialogId htmlwfui.Substitutes #txt
Sn0 f22 startMethod start(htmlwfui.Substitute) #txt
Sn0 f22 type htmlwfui.Data #txt
Sn0 f22 requestActionDecl '<htmlwfui.Substitute substitute> param;' #txt
Sn0 f22 requestMappingAction 'param.substitute=in.substitute;
' #txt
Sn0 f22 responseActionDecl 'htmlwfui.Data out;
' #txt
Sn0 f22 responseMappingAction 'out=in;
out.option=result.option;
out.substitute=result.substitute;
' #txt
Sn0 f22 windowConfiguration '* ' #txt
Sn0 f22 isAsynch false #txt
Sn0 f22 isInnerRd false #txt
Sn0 f22 userContext '* ' #txt
Sn0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Substitutes</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f22 286 188 36 24 20 -2 #rect
Sn0 f22 @|RichDialogIcon #fIcon
Sn0 f23 targetWindow NEW:card: #txt
Sn0 f23 targetDisplay TOP #txt
Sn0 f23 richDialogId htmlwfui.SubstitutionAdd #txt
Sn0 f23 startMethod start(htmlwfui.Substitute) #txt
Sn0 f23 type htmlwfui.Data #txt
Sn0 f23 requestActionDecl '<htmlwfui.Substitute substitute> param;' #txt
Sn0 f23 requestMappingAction 'param.substitute=in.substitute;
' #txt
Sn0 f23 responseActionDecl 'htmlwfui.Data out;
' #txt
Sn0 f23 responseMappingAction 'out=in;
' #txt
Sn0 f23 windowConfiguration '* ' #txt
Sn0 f23 isAsynch false #txt
Sn0 f23 isInnerRd false #txt
Sn0 f23 userContext '* ' #txt
Sn0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add Substitution</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f23 318 268 36 24 20 -2 #rect
Sn0 f23 @|RichDialogIcon #fIcon
Sn0 f17 expr out #txt
Sn0 f17 354 280 322 200 #arcP
Sn0 f17 1 408 280 #addKink
Sn0 f17 2 408 200 #addKink
Sn0 f17 0 0.922857142857143 0 0 #arcLabel
Sn0 f26 targetWindow NEW:card: #txt
Sn0 f26 targetDisplay TOP #txt
Sn0 f26 richDialogId htmlwfui.MySubstitutions #txt
Sn0 f26 startMethod start(htmlwfui.Substitute) #txt
Sn0 f26 type htmlwfui.Data #txt
Sn0 f26 requestActionDecl '<htmlwfui.Substitute substitute> param;' #txt
Sn0 f26 requestMappingAction 'param.substitute=in.substitute;
' #txt
Sn0 f26 responseActionDecl 'htmlwfui.Data out;
' #txt
Sn0 f26 responseMappingAction 'out=in;
' #txt
Sn0 f26 windowConfiguration '* ' #txt
Sn0 f26 isAsynch false #txt
Sn0 f26 isInnerRd false #txt
Sn0 f26 userContext '* ' #txt
Sn0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Substitution</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f26 254 268 36 24 -89 -2 #rect
Sn0 f26 @|RichDialogIcon #fIcon
Sn0 f27 type htmlwfui.Data #txt
Sn0 f27 290 226 28 28 14 0 #rect
Sn0 f27 @|AlternativeIcon #fIcon
Sn0 f28 expr out #txt
Sn0 f28 304 212 304 226 #arcP
Sn0 f24 expr in #txt
Sn0 f24 outCond 'in.option == "add"' #txt
Sn0 f24 310 248 326 268 #arcP
Sn0 f29 expr in #txt
Sn0 f29 298 248 282 268 #arcP
Sn0 f30 expr out #txt
Sn0 f30 254 280 286 200 #arcP
Sn0 f30 1 192 280 #addKink
Sn0 f30 2 192 200 #addKink
Sn0 f30 1 0.8893984380894214 0 0 #arcLabel
Sn0 f10 expr out #txt
Sn0 f10 304 140 304 188 #arcP
Sn0 f35 expr out #txt
Sn0 f35 304 69 304 116 #arcP
>Proto Sn0 .type htmlwfui.Data #txt
>Proto Sn0 .processKind NORMAL #txt
>Proto Sn0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Sn0 0 0 32 24 18 0 #rect
>Proto Sn0 @|BIcon #fIcon
Sn0 f23 mainOut f17 tail #connect
Sn0 f17 head f22 mainIn #connect
Sn0 f22 mainOut f28 tail #connect
Sn0 f28 head f27 in #connect
Sn0 f27 out f24 tail #connect
Sn0 f24 head f23 mainIn #connect
Sn0 f27 out f29 tail #connect
Sn0 f29 head f26 mainIn #connect
Sn0 f26 mainOut f30 tail #connect
Sn0 f30 head f22 mainIn #connect
Sn0 f8 mainOut f10 tail #connect
Sn0 f10 head f22 mainIn #connect
Sn0 f0 mainOut f35 tail #connect
Sn0 f35 head f8 mainIn #connect
