[Ivy]
[>Created: Fri Apr 27 15:33:34 CEST 2012]
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
Pt0 @Page f1 '' #zField
Pt0 @EndTask f2 '' #zField
Pt0 @GridStep f20 '' #zField
Pt0 @PushWFArc f3 '' #zField
Pt0 @PushWFArc f4 '' #zField
Pt0 @CallSub f14 '' #zField
Pt0 @PushWFArc f5 '' #zField
Pt0 @PushWFArc f6 '' #zField
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
Pt0 f0 140 35 25 26 14 0 #rect
Pt0 f0 @|StartRequestIcon #fIcon
Pt0 f1 outTypes "htmlwfui.Data" #txt
Pt0 f1 outLinks "LinkA.ivp" #txt
Pt0 f1 template "/ProcessPages/Processlist/processliste.ivc" #txt
Pt0 f1 type htmlwfui.Data #txt
Pt0 f1 skipLink skip.ivp #txt
Pt0 f1 sortLink sort.ivp #txt
Pt0 f1 templateWizard '#
#Wed Apr 07 09:31:01 CEST 2010
' #txt
Pt0 f1 pageArchivingActivated false #txt
Pt0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Pt0 f1 @C|.responsibility Everybody #txt
Pt0 f1 134 228 36 24 20 -2 #rect
Pt0 f1 @|PageIcon #fIcon
Pt0 f2 type htmlwfui.Data #txt
Pt0 f2 139 315 26 26 14 0 #rect
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
Pt0 f20 134 156 36 24 28 -12 #rect
Pt0 f20 @|StepIcon #fIcon
Pt0 f3 expr out #txt
Pt0 f3 152 180 152 228 #arcP
Pt0 f4 expr data #txt
Pt0 f4 outCond ivp=="LinkA.ivp" #txt
Pt0 f4 152 252 152 315 #arcP
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
Pt0 f14 134 100 36 24 20 -2 #rect
Pt0 f14 @|CallSubIcon #fIcon
Pt0 f5 expr out #txt
Pt0 f5 151 60 152 100 #arcP
Pt0 f6 expr out #txt
Pt0 f6 152 124 152 156 #arcP
>Proto Pt0 .type htmlwfui.Data #txt
>Proto Pt0 .processKind NORMAL #txt
>Proto Pt0 0 0 32 24 18 0 #rect
>Proto Pt0 @|BIcon #fIcon
Pt0 f20 mainOut f3 tail #connect
Pt0 f3 head f1 mainIn #connect
Pt0 f1 out f4 tail #connect
Pt0 f4 head f2 mainIn #connect
Pt0 f0 mainOut f5 tail #connect
Pt0 f5 head f14 mainIn #connect
Pt0 f14 mainOut f6 tail #connect
Pt0 f6 head f20 mainIn #connect
