[Ivy]
[>Created: Mon Jan 14 14:40:52 CET 2013]
12E2EFDD83CB2D4C 3.17 #module
>Proto >Proto Collection #zClass
Ln0 Login Big #zClass
Ln0 B #cInfo
Ln0 #process
Ln0 @TextInP .resExport .resExport #zField
Ln0 @TextInP .type .type #zField
Ln0 @TextInP .processKind .processKind #zField
Ln0 @AnnotationInP-0n ai ai #zField
Ln0 @TextInP .xml .xml #zField
Ln0 @TextInP .responsibility .responsibility #zField
Ln0 @StartRequest f0 '' #zField
Ln0 @CallSub f5 '' #zField
Ln0 @EndRequest f2 '' #zField
Ln0 @Alternative f4 '' #zField
Ln0 @PushWFArc f6 '' #zField
Ln0 @PushWFArc f3 '' #zField
Ln0 @EndTask f7 '' #zField
Ln0 @PushWFArc f8 '' #zField
Ln0 @GridStep f9 '' #zField
Ln0 @RichDialog f10 '' #zField
Ln0 @PushWFArc f11 '' #zField
Ln0 @PushWFArc f1 '' #zField
Ln0 @PushWFArc f13 '' #zField
>Proto Ln0 Ln0 Login #zField
Ln0 f0 outLink DefaultLoginPage.ivp #txt
Ln0 f0 type htmlwfui.Data #txt
Ln0 f0 inParamDecl '<java.lang.String originalUrl> param;' #txt
Ln0 f0 inParamTable 'out.temp.url=param.originalUrl;
' #txt
Ln0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Ln0 f0 guid 12E2EFDE42259A1E #txt
Ln0 f0 requestEnabled true #txt
Ln0 f0 triggerEnabled false #txt
Ln0 f0 callSignature DefaultLoginPage(String) #txt
Ln0 f0 persist false #txt
Ln0 f0 startName 'WF Login' #txt
Ln0 f0 taskData '#
#Fri Dec 28 10:26:09 CET 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ln0 f0 caseData '#
#Fri Dec 28 10:26:09 CET 2012
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
Ln0 f0 showInStartList 1 #txt
Ln0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ln0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DefaultLoginPage.ivp</name>
        <nameStyle>20,5,7
</nameStyle>
        <desc>This start is used to overwrite the default login.
Use /ivy/wf/login to call it.
This process is called whenever a login is required.</desc>
    </language>
</elementInfo>
' #txt
Ln0 f0 @C|.responsibility Everybody #txt
Ln0 f0 115 43 26 26 18 -9 #rect
Ln0 f0 @|StartRequestIcon #fIcon
Ln0 f5 type htmlwfui.Data #txt
Ln0 f5 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Ln0 f5 doCall true #txt
Ln0 f5 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Ln0 f5 requestMappingAction 'param.in=in;
' #txt
Ln0 f5 responseActionDecl 'htmlwfui.Data out;
' #txt
Ln0 f5 responseMappingAction 'out=result.out;
' #txt
Ln0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f5 110 100 36 24 21 -6 #rect
Ln0 f5 @|CallSubIcon #fIcon
Ln0 f2 type htmlwfui.Data #txt
Ln0 f2 template "redirect.jsp" #txt
Ln0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>redirect</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f2 59 219 26 26 17 -5 #rect
Ln0 f2 @|EndRequestIcon #fIcon
Ln0 f4 type htmlwfui.Data #txt
Ln0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startUrl given?</name>
        <nameStyle>15
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f4 114 154 28 28 14 0 #rect
Ln0 f4 @|AlternativeIcon #fIcon
Ln0 f6 expr out #txt
Ln0 f6 128 124 128 154 #arcP
Ln0 f3 expr in #txt
Ln0 f3 outCond in.temp.url.length()>0 #txt
Ln0 f3 121 175 80 222 #arcP
Ln0 f7 type htmlwfui.Data #txt
Ln0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>default End</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f7 187 219 26 26 14 0 #rect
Ln0 f7 @|EndIcon #fIcon
Ln0 f8 expr in #txt
Ln0 f8 135 175 190 223 #arcP
Ln0 f9 actionDecl 'htmlwfui.Data out;
' #txt
Ln0 f9 actionTable 'out=in;
out.appname=ivy.wf.getApplication().getName();
out.request=ivy.request;
out.username=ivy.session.isSessionUserUnknown() ? "" : ivy.session.getSessionUserName();
out.wfSession=ivy.session;
' #txt
Ln0 f9 type htmlwfui.Data #txt
Ln0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>inits</name>
        <nameStyle>5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f9 334 92 36 24 22 -16 #rect
Ln0 f9 @|StepIcon #fIcon
Ln0 f10 targetWindow NEW:card: #txt
Ln0 f10 targetDisplay TOP #txt
Ln0 f10 richDialogId htmlwfui.LoginSequence #txt
Ln0 f10 startMethod start() #txt
Ln0 f10 type htmlwfui.Data #txt
Ln0 f10 requestActionDecl '<> param;' #txt
Ln0 f10 responseActionDecl 'htmlwfui.Data out;
' #txt
Ln0 f10 responseMappingAction 'out=in;
' #txt
Ln0 f10 windowConfiguration '* ' #txt
Ln0 f10 isAsynch false #txt
Ln0 f10 isInnerRd false #txt
Ln0 f10 userContext '* ' #txt
Ln0 f10 334 140 36 24 20 -2 #rect
Ln0 f10 @|RichDialogIcon #fIcon
Ln0 f11 expr out #txt
Ln0 f11 352 116 352 140 #arcP
Ln0 f1 expr out #txt
Ln0 f1 334 153 141 167 #arcP
Ln0 f13 expr out #txt
Ln0 f13 128 69 128 100 #arcP
Ln0 f13 0 0.48896339077831585 0 0 #arcLabel
>Proto Ln0 .type htmlwfui.Data #txt
>Proto Ln0 .processKind NORMAL #txt
>Proto Ln0 0 0 32 24 18 0 #rect
>Proto Ln0 @|BIcon #fIcon
Ln0 f5 mainOut f6 tail #connect
Ln0 f6 head f4 in #connect
Ln0 f4 out f3 tail #connect
Ln0 f3 head f2 mainIn #connect
Ln0 f4 out f8 tail #connect
Ln0 f8 head f7 mainIn #connect
Ln0 f9 mainOut f11 tail #connect
Ln0 f11 head f10 mainIn #connect
Ln0 f10 mainOut f1 tail #connect
Ln0 f1 head f4 in #connect
Ln0 f0 mainOut f13 tail #connect
Ln0 f13 head f5 mainIn #connect
