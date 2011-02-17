[Ivy]
[>Created: Wed Feb 16 17:54:10 CET 2011]
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
He0 @PushWFArc f12 '' #zField
He0 @PushWFArc f3 '' #zField
He0 @StartRequest f7 '' #zField
He0 @PushWFArc f0 '' #zField
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
He0 f1 62 252 36 24 20 -2 #rect
He0 f1 @|PageIcon #fIcon
He0 f2 type htmlwfui.Data #txt
He0 f2 67 339 26 26 14 0 #rect
He0 f2 @|EndIcon #fIcon
He0 f4 expr data #txt
He0 f4 outCond ivp=="LinkA.ivp" #txt
He0 f4 80 276 80 339 #arcP
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
He0 f5 62 116 36 24 20 -2 #rect
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
He0 f8 150 252 36 24 20 -2 #rect
He0 f8 @|StepIcon #fIcon
He0 f9 expr data #txt
He0 f9 outCond ivp=="LinkB.ivp" #txt
He0 f9 98 264 150 264 #arcP
He0 f10 expr out #txt
He0 f10 156 276 89 342 #arcP
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
        <name>setReturnUrl</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f11 62 172 36 24 21 -4 #rect
He0 f11 @|StepIcon #fIcon
He0 f12 expr out #txt
He0 f12 80 140 80 172 #arcP
He0 f3 expr out #txt
He0 f3 80 196 80 252 #arcP
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
He0 f7 startName 'WF Home' #txt
He0 f7 taskData '#
#Wed Feb 16 17:50:26 CET 2011
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
He0 f7 caseData '#
#Wed Feb 16 17:50:26 CET 2011
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
He0 f7 showInStartList 1 #txt
He0 f7 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
He0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Start WF Home</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
He0 f7 @C|.responsibility Everybody #txt
He0 f7 67 51 26 26 14 -3 #rect
He0 f7 @|StartRequestIcon #fIcon
He0 f0 expr out #txt
He0 f0 80 77 80 116 #arcP
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
He0 f5 mainOut f12 tail #connect
He0 f12 head f11 mainIn #connect
He0 f11 mainOut f3 tail #connect
He0 f3 head f1 mainIn #connect
He0 f7 mainOut f0 tail #connect
He0 f0 head f5 mainIn #connect
