[Ivy]
[>Created: Mon Jan 21 10:44:25 CET 2013]
1270ADF72FF4AFF3 3.17 #module
>Proto >Proto Collection #zClass
Pt0 Processlist Big #zClass
Pt0 B #cInfo
Pt0 #process
Pt0 @TextInP .resExport .resExport #zField
Pt0 @TextInP .type .type #zField
Pt0 @TextInP .processKind .processKind #zField
Pt0 @AnnotationInP-0n ai ai #zField
Pt0 @TextInP .xml .xml #zField
Pt0 @TextInP .responsibility .responsibility #zField
Pt0 @MessageFlowInP-0n messageIn messageIn #zField
Pt0 @MessageFlowOutP-0n messageOut messageOut #zField
Pt0 @StartRequest f0 '' #zField
Pt0 @EndTask f2 '' #zField
Pt0 @GridStep f20 '' #zField
Pt0 @CallSub f14 '' #zField
Pt0 @PushWFArc f6 '' #zField
Pt0 @RichDialog f1 '' #zField
Pt0 @PushWFArc f3 '' #zField
Pt0 @PushWFArc f4 '' #zField
Pt0 @PushWFArc f8 '' #zField
>Proto Pt0 Pt0 Processlist #zField
Pt0 f0 outLink DefaultProcessStartListPage.ivp #txt
Pt0 f0 type htmlwfui.Data #txt
Pt0 f0 inParamDecl '<> param;' #txt
Pt0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Pt0 f0 requestEnabled true #txt
Pt0 f0 triggerEnabled false #txt
Pt0 f0 callSignature DefaultProcessStartListPage() #txt
Pt0 f0 persist false #txt
Pt0 f0 startName DefaultProcessStartListPage #txt
Pt0 f0 startDescription 'This is used to overwrite the default process start list.' #txt
Pt0 f0 taskData '#
#Wed Nov 16 10:01:21 CET 2011
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
.DESC=
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
.NAM=Start Processlist
' #txt
Pt0 f0 caseData '#
#Wed Nov 16 10:01:21 CET 2011
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
Pt0 f0 showInStartList 0 #txt
Pt0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Pt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DefaultProcessStartListPage</name>
        <nameStyle>27,5,7,9
</nameStyle>
        <desc>This start is used to overwrite the default process start list.
Use /ivy/wf/processStartList to call it.
ivy.html.processStartListRef() will return a link to this process.</desc>
    </language>
</elementInfo>
' #txt
Pt0 f0 @C|.responsibility Everybody #txt
Pt0 f0 116 51 25 26 14 0 #rect
Pt0 f0 @|StartRequestIcon #fIcon
Pt0 f2 type htmlwfui.Data #txt
Pt0 f2 115 411 26 26 14 0 #rect
Pt0 f2 @|EndIcon #fIcon
Pt0 f20 actionDecl 'htmlwfui.Data out;
' #txt
Pt0 f20 actionTable 'out=in;
' #txt
Pt0 f20 actionCode 'out.starts = ivy.session.getStartableProcessStarts();

ch.ivyteam.ivy.request.impl.HttpProcessRequest r = ivy.request as ch.ivyteam.ivy.request.impl.HttpProcessRequest;
r.getHttpServletRequest().getSession().setAttribute("ch.ivy.wfui.returnUrl",ivy.html.startref("1270ADF72FF4AFF3/DefaultProcessStartListPage.ivp"));

r.getHttpServletRequest().getSession().removeAttribute("ch.ivy.wfui.redirectMsg");
Object msg = r.getHttpServletRequest().getSession().getAttribute("ch.ivy.wfui.redirectMsg");



' #txt
Pt0 f20 type htmlwfui.Data #txt
Pt0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect processstarts
setReturnUrl</name>
        <nameStyle>34,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f20 110 260 36 24 28 -12 #rect
Pt0 f20 @|StepIcon #fIcon
Pt0 f14 type htmlwfui.Data #txt
Pt0 f14 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Pt0 f14 doCall true #txt
Pt0 f14 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Pt0 f14 requestMappingAction 'param.in=in;
' #txt
Pt0 f14 responseActionDecl 'htmlwfui.Data out;
' #txt
Pt0 f14 responseMappingAction 'out=result.out;
' #txt
Pt0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Pt0 f14 110 148 36 24 20 -2 #rect
Pt0 f14 @|CallSubIcon #fIcon
Pt0 f6 expr out #txt
Pt0 f6 128 172 128 260 #arcP
Pt0 f1 targetWindow NEW:card: #txt
Pt0 f1 targetDisplay TOP #txt
Pt0 f1 richDialogId htmlwfui.ProcessList #txt
Pt0 f1 startMethod start() #txt
Pt0 f1 type htmlwfui.Data #txt
Pt0 f1 requestActionDecl '<> param;' #txt
Pt0 f1 responseActionDecl 'htmlwfui.Data out;
' #txt
Pt0 f1 responseMappingAction 'out=in;
' #txt
Pt0 f1 windowConfiguration '* ' #txt
Pt0 f1 isAsynch false #txt
Pt0 f1 isInnerRd false #txt
Pt0 f1 userContext '* ' #txt
Pt0 f1 110 324 36 24 20 -2 #rect
Pt0 f1 @|RichDialogIcon #fIcon
Pt0 f3 expr out #txt
Pt0 f3 128 284 128 324 #arcP
Pt0 f4 expr out #txt
Pt0 f4 128 348 128 411 #arcP
Pt0 f8 expr out #txt
Pt0 f8 127 76 128 148 #arcP
>Proto Pt0 .type htmlwfui.Data #txt
>Proto Pt0 .processKind NORMAL #txt
>Proto Pt0 0 0 32 24 18 0 #rect
>Proto Pt0 @|BIcon #fIcon
Pt0 f14 mainOut f6 tail #connect
Pt0 f6 head f20 mainIn #connect
Pt0 f20 mainOut f3 tail #connect
Pt0 f3 head f1 mainIn #connect
Pt0 f1 mainOut f4 tail #connect
Pt0 f4 head f2 mainIn #connect
Pt0 f0 mainOut f8 tail #connect
Pt0 f8 head f14 mainIn #connect
