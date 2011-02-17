[Ivy]
[>Created: Thu Feb 17 12:12:02 CET 2011]
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
He0 @Page f1 '' #zField
He0 @EndTask f2 '' #zField
He0 @PushWFArc f4 '' #zField
He0 @CallSub f5 '' #zField
He0 @GridStep f8 '' #zField
He0 @PushWFArc f9 '' #zField
He0 @PushWFArc f10 '' #zField
He0 @GridStep f11 '' #zField
He0 @PushWFArc f3 '' #zField
He0 @StartRequest f7 '' #zField
He0 @PushWFArc f0 '' #zField
He0 @Alternative f6 '' #zField
He0 @GridStep f20 '' #zField
He0 @PushWFArc f21 '' #zField
He0 @PushWFArc f13 '' #zField
He0 @EndRequest f14 '' #zField
He0 @PushWFArc f15 '' #zField
He0 @PushWFArc f12 '' #zField
He0 @StartRequest f16 '' #zField
He0 @CallSub f17 '' #zField
He0 @PushWFArc f18 '' #zField
He0 @PushWFArc f19 '' #zField
>Proto He0 He0 Home #zField
He0 f1 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
He0 f1 outLinks "LinkA.ivp","LinkB.ivp" #txt
He0 f1 template "home.ivc" #txt
He0 f1 type htmlwfui.Data #txt
He0 f1 skipLink skip.ivp #txt
He0 f1 sortLink sort.ivp #txt
He0 f1 templateWizard '#
#Wed Feb 16 17:21:16 CET 2011
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
He0 f1 230 316 36 24 21 0 #rect
He0 f1 @|PageIcon #fIcon
He0 f2 type htmlwfui.Data #txt
He0 f2 235 451 26 26 14 0 #rect
He0 f2 @|EndIcon #fIcon
He0 f4 expr data #txt
He0 f4 outCond ivp=="LinkA.ivp" #txt
He0 f4 248 340 248 451 #arcP
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
He0 f5 70 100 36 24 20 -2 #rect
He0 f5 @|CallSubIcon #fIcon
He0 f8 actionDecl 'htmlwfui.Data out;
' #txt
He0 f8 actionTable 'out=in;
' #txt
He0 f8 actionCode ivy.session.logoutSessionUser(ivy.task.getIdentifier()); #txt
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
He0 f8 350 316 36 24 20 -2 #rect
He0 f8 @|StepIcon #fIcon
He0 f9 expr data #txt
He0 f9 outCond ivp=="LinkB.ivp" #txt
He0 f9 266 328 350 328 #arcP
He0 f10 expr out #txt
He0 f10 357 340 256 454 #arcP
He0 f11 actionDecl 'htmlwfui.Data out;
' #txt
He0 f11 actionTable 'out=in;
' #txt
He0 f11 actionCode 'ch.ivyteam.ivy.request.impl.HttpProcessRequest r = ivy.request as ch.ivyteam.ivy.request.impl.HttpProcessRequest;
r.getHttpServletRequest().getSession().setAttribute("ch.ivy.wfui.returnUrl", ivy.html.startref("127AE76143E89C91/DefaultEndPage.ivp"));' #txt
He0 f11 type htmlwfui.Data #txt
He0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setReturnUrl &quot;home&quot;</name>
        <nameStyle>19,9
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f11 230 236 36 24 22 -7 #rect
He0 f11 @|StepIcon #fIcon
He0 f3 expr out #txt
He0 f3 248 260 248 316 #arcP
He0 f7 outLink DefaultEndPage.ivp #txt
He0 f7 type htmlwfui.Data #txt
He0 f7 inParamDecl '<java.lang.Number lastTaskId> param;' #txt
He0 f7 actionDecl 'htmlwfui.Data out;
' #txt
He0 f7 guid 12E2F5E4FE51B562 #txt
He0 f7 requestEnabled true #txt
He0 f7 triggerEnabled false #txt
He0 f7 callSignature DefaultEndPage(Number) #txt
He0 f7 persist false #txt
He0 f7 taskData '#
#Thu Feb 17 11:59:41 CET 2011
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
He0 f7 caseData '#
#Thu Feb 17 11:59:41 CET 2011
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
He0 f7 showInStartList 0 #txt
He0 f7 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
He0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DefaultEndPage</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f7 @C|.responsibility Everybody #txt
He0 f7 75 35 26 26 17 -4 #rect
He0 f7 @|StartRequestIcon #fIcon
He0 f0 expr out #txt
He0 f0 88 61 88 100 #arcP
He0 f6 type htmlwfui.Data #txt
He0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>returnUrl set?</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f6 74 234 28 28 14 -18 #rect
He0 f6 @|AlternativeIcon #fIcon
He0 f20 actionDecl 'htmlwfui.Data out;
' #txt
He0 f20 actionTable 'out=in;
' #txt
He0 f20 actionCode 'ch.ivyteam.ivy.request.impl.HttpProcessRequest r = ivy.request as ch.ivyteam.ivy.request.impl.HttpProcessRequest;
out.temp.url=r.getHttpServletRequest().getSession().getAttribute("ch.ivy.wfui.returnUrl").toString();

r.getHttpServletRequest().getSession().removeAttribute("ch.ivy.wfui.returnUrl");' #txt
He0 f20 type htmlwfui.Data #txt
He0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>checkReturnUrl</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f20 70 164 36 24 22 -8 #rect
He0 f20 @|StepIcon #fIcon
He0 f21 expr out #txt
He0 f21 88 124 88 164 #arcP
He0 f13 expr out #txt
He0 f13 88 188 88 234 #arcP
He0 f14 type htmlwfui.Data #txt
He0 f14 template "redirect.jsp" #txt
He0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>redirect</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f14 75 315 26 26 14 0 #rect
He0 f14 @|EndRequestIcon #fIcon
He0 f15 expr in #txt
He0 f15 outCond in.temp.url.length()>0 #txt
He0 f15 88 262 88 315 #arcP
He0 f12 expr in #txt
He0 f12 102 248 230 248 #arcP
He0 f16 outLink start1.ivp #txt
He0 f16 type htmlwfui.Data #txt
He0 f16 inParamDecl '<> param;' #txt
He0 f16 actionDecl 'htmlwfui.Data out;
' #txt
He0 f16 guid 12E3344F408D0C73 #txt
He0 f16 requestEnabled true #txt
He0 f16 triggerEnabled false #txt
He0 f16 callSignature start1() #txt
He0 f16 persist false #txt
He0 f16 startName 'WF Home' #txt
He0 f16 taskData '#
#Thu Feb 17 12:03:48 CET 2011
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
He0 f16 caseData '#
#Thu Feb 17 12:03:48 CET 2011
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
He0 f16 showInStartList 1 #txt
He0 f16 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
He0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>WF Home start1.ivp</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f16 @C|.responsibility Everybody #txt
He0 f16 235 35 26 26 19 -4 #rect
He0 f16 @|StartRequestIcon #fIcon
He0 f17 type htmlwfui.Data #txt
He0 f17 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
He0 f17 doCall true #txt
He0 f17 requestActionDecl '<htmlwfui.Data in> param;
' #txt
He0 f17 requestMappingAction 'param.in=in;
' #txt
He0 f17 responseActionDecl 'htmlwfui.Data out;
' #txt
He0 f17 responseMappingAction 'out=result.out;
' #txt
He0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f17 230 100 36 24 20 -2 #rect
He0 f17 @|CallSubIcon #fIcon
He0 f18 expr out #txt
He0 f18 248 61 248 100 #arcP
He0 f19 expr out #txt
He0 f19 248 124 248 236 #arcP
>Proto He0 .type htmlwfui.Data #txt
>Proto He0 .processKind NORMAL #txt
>Proto He0 0 0 32 24 18 0 #rect
>Proto He0 @|BIcon #fIcon
He0 f1 out f4 tail #connect
He0 f4 head f2 mainIn #connect
He0 f1 out f9 tail #connect
He0 f9 head f8 mainIn #connect
He0 f8 mainOut f10 tail #connect
He0 f10 head f2 mainIn #connect
He0 f11 mainOut f3 tail #connect
He0 f3 head f1 mainIn #connect
He0 f7 mainOut f0 tail #connect
He0 f0 head f5 mainIn #connect
He0 f5 mainOut f21 tail #connect
He0 f21 head f20 mainIn #connect
He0 f20 mainOut f13 tail #connect
He0 f13 head f6 in #connect
He0 f6 out f15 tail #connect
He0 f15 head f14 mainIn #connect
He0 f6 out f12 tail #connect
He0 f12 head f11 mainIn #connect
He0 f16 mainOut f18 tail #connect
He0 f18 head f17 mainIn #connect
He0 f17 mainOut f19 tail #connect
He0 f19 head f11 mainIn #connect
