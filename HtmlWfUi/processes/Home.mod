[Ivy]
[>Created: Mon Feb 14 10:01:25 CET 2011]
127AE76143E89C91 3.15 #module
>Proto >Proto Collection #zClass
He0 Home Big #zClass
He0 B #cInfo
He0 #process
He0 @TextInP .xml .xml #zField
He0 @TextInP .responsibility .responsibility #zField
He0 @MessageFlowInP-0n messageIn messageIn #zField
He0 @MessageFlowOutP-0n messageOut messageOut #zField
He0 @TextInP .resExport .resExport #zField
He0 @TextInP .type .type #zField
He0 @TextInP .processKind .processKind #zField
He0 @AnnotationInP-0n ai ai #zField
He0 @StartRequest f0 '' #zField
He0 @Page f1 '' #zField
He0 @EndTask f2 '' #zField
He0 @PushWFArc f4 '' #zField
He0 @CallSub f5 '' #zField
He0 @PushWFArc f6 '' #zField
He0 @InfoButton f7 '' #zField
He0 @GridStep f8 '' #zField
He0 @PushWFArc f9 '' #zField
He0 @PushWFArc f10 '' #zField
He0 @GridStep f11 '' #zField
He0 @PushWFArc f12 '' #zField
He0 @PushWFArc f3 '' #zField
>Proto He0 He0 Home #zField
He0 f0 outLink start1.ivp #txt
He0 f0 type htmlwfui.Data #txt
He0 f0 actionDecl 'htmlwfui.Data out;
' #txt
He0 f0 requestEnabled true #txt
He0 f0 triggerEnabled false #txt
He0 f0 callSignature start1() #txt
He0 f0 persist false #txt
He0 f0 startName Home #txt
He0 f0 taskData '#
#Mon Nov 29 14:56:41 CET 2010
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
.DESC=
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
.NAM=Home
' #txt
He0 f0 caseData '#
#Mon Nov 29 14:56:41 CET 2010
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
He0 f0 showInStartList 1 #txt
He0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
He0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start1</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f0 @C|.responsibility Everybody #txt
He0 f0 67 35 26 26 14 0 #rect
He0 f0 @|StartRequestIcon #fIcon
He0 f1 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
He0 f1 outLinks "LinkA.ivp","LinkB.ivp" #txt
He0 f1 template "home.ivc" #txt
He0 f1 type htmlwfui.Data #txt
He0 f1 skipLink skip.ivp #txt
He0 f1 sortLink sort.ivp #txt
He0 f1 templateWizard '#
#Thu Jun 24 14:53:41 CEST 2010
' #txt
He0 f1 pageArchivingActivated false #txt
He0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Home</name>
        <nameStyle>4,9
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f1 @C|.responsibility Everybody #txt
He0 f1 62 196 36 24 20 -2 #rect
He0 f1 @|PageIcon #fIcon
He0 f2 type htmlwfui.Data #txt
He0 f2 67 267 26 26 14 0 #rect
He0 f2 @|EndIcon #fIcon
He0 f4 expr data #txt
He0 f4 outCond ivp=="LinkA.ivp" #txt
He0 f4 80 220 80 267 #arcP
He0 f5 type htmlwfui.Data #txt
He0 f5 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
He0 f5 doCall true #txt
He0 f5 requestActionDecl '<htmlwfui.Data in> param;
' #txt
He0 f5 requestMappingAction 'param.in=in;
' #txt
He0 f5 responseActionDecl 'htmlwfui.Data out;
' #txt
He0 f5 responseMappingAction 'out=result.out;
' #txt
He0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f5 62 92 36 24 20 -2 #rect
He0 f5 @|CallSubIcon #fIcon
He0 f6 expr out #txt
He0 f6 80 61 80 92 #arcP
He0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Prerequisites:

Im /webapps Dir vom ivyDesigner resp. ivyServer 
ist index.jsp und start_redirect.jsp modifiziert um 
nach Task Ende zurück aufs WFUI zu leiten.</name>
        <nameStyle>160,9
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f7 223 35 323 90 -156 -40 #rect
He0 f7 @|IBIcon #fIcon
He0 f7 -14336|-1|-16777216 #nodeStyle
He0 f8 actionDecl 'htmlwfui.Data out;
' #txt
He0 f8 actionTable 'out=in;
' #txt
He0 f8 actionCode ivy.session.logoutSessionUser(); #txt
He0 f8 type htmlwfui.Data #txt
He0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Logout</name>
        <nameStyle>6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f8 150 196 36 24 20 -2 #rect
He0 f8 @|StepIcon #fIcon
He0 f9 expr data #txt
He0 f9 outCond ivp=="LinkB.ivp" #txt
He0 f9 98 208 150 208 #arcP
He0 f10 expr out #txt
He0 f10 153 220 90 271 #arcP
He0 f11 actionDecl 'htmlwfui.Data out;
' #txt
He0 f11 actionTable 'out=in;
' #txt
He0 f11 actionCode 'ch.ivyteam.ivy.request.impl.HttpProcessRequest r = ivy.request as ch.ivyteam.ivy.request.impl.HttpProcessRequest;
r.getHttpServletRequest().getSession().setAttribute("ch.ivy.wfui.returnUrl","/ivy/pro/"+ivy.wf.getApplication().getName()+"/HtmlWFUI/127AE76143E89C91/start1.ivp");' #txt
He0 f11 type htmlwfui.Data #txt
He0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setReturnUrl</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f11 62 140 36 24 20 -2 #rect
He0 f11 @|StepIcon #fIcon
He0 f12 expr out #txt
He0 f12 80 116 80 140 #arcP
He0 f3 expr out #txt
He0 f3 80 164 80 196 #arcP
>Proto He0 .type htmlwfui.Data #txt
>Proto He0 .processKind NORMAL #txt
>Proto He0 0 0 32 24 18 0 #rect
>Proto He0 @|BIcon #fIcon
He0 f1 out f4 tail #connect
He0 f4 head f2 mainIn #connect
He0 f0 mainOut f6 tail #connect
He0 f6 head f5 mainIn #connect
He0 f1 out f9 tail #connect
He0 f9 head f8 mainIn #connect
He0 f8 mainOut f10 tail #connect
He0 f10 head f2 mainIn #connect
He0 f5 mainOut f12 tail #connect
He0 f12 head f11 mainIn #connect
He0 f11 mainOut f3 tail #connect
He0 f3 head f1 mainIn #connect
