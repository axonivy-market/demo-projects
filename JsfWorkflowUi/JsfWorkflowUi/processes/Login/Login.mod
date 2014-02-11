[Ivy]
[>Created: Thu Jul 11 15:46:46 CEST 2013]
13FC3AE417DDEE27 3.17 #module
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
Ln0 @RichDialog f1 '' #zField
Ln0 @Alternative f2 '' #zField
Ln0 @EndTask f4 '' #zField
Ln0 @EndRequest f3 '' #zField
Ln0 @PushWFArc f7 '' #zField
Ln0 @PushWFArc f8 '' #zField
Ln0 @PushWFArc f6 '' #zField
Ln0 @PushWFArc f12 '' #zField
>Proto Ln0 Ln0 Login #zField
Ln0 f0 outLink DefaultLoginPage.ivp #txt
Ln0 f0 type ch.ivyteam.wf.Data #txt
Ln0 f0 inParamDecl '<java.lang.String originalUrl> param;' #txt
Ln0 f0 inParamTable 'out.url=param.originalUrl;
' #txt
Ln0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ln0 f0 guid 13FC3AE7431D262F #txt
Ln0 f0 requestEnabled true #txt
Ln0 f0 triggerEnabled false #txt
Ln0 f0 callSignature DefaultLoginPage(String) #txt
Ln0 f0 persist false #txt
Ln0 f0 startName 'WF Login' #txt
Ln0 f0 taskData '#
#Thu Jul 11 15:46:44 CEST 2013
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ln0 f0 caseData '#
#Thu Jul 11 15:46:44 CEST 2013
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
Ln0 f0 showInStartList 0 #txt
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
Ln0 f0 115 51 26 26 14 0 #rect
Ln0 f0 @|StartRequestIcon #fIcon
Ln0 f1 targetWindow NEW:card: #txt
Ln0 f1 targetDisplay TOP #txt
Ln0 f1 richDialogId ch.ivyteam.wf.login.DefaultLogin #txt
Ln0 f1 startMethod start() #txt
Ln0 f1 type ch.ivyteam.wf.Data #txt
Ln0 f1 requestActionDecl '<> param;' #txt
Ln0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ln0 f1 responseMappingAction 'out=in;
' #txt
Ln0 f1 windowConfiguration '* ' #txt
Ln0 f1 isAsynch false #txt
Ln0 f1 isInnerRd false #txt
Ln0 f1 userContext '* ' #txt
Ln0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>default login</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f1 110 116 36 24 20 -2 #rect
Ln0 f1 @|RichDialogIcon #fIcon
Ln0 f2 type ch.ivyteam.wf.Data #txt
Ln0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startUrl given?</name>
        <nameStyle>15
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f2 114 178 28 28 14 0 #rect
Ln0 f2 @|AlternativeIcon #fIcon
Ln0 f4 type ch.ivyteam.wf.Data #txt
Ln0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>default End</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f4 179 243 26 26 14 0 #rect
Ln0 f4 @|EndIcon #fIcon
Ln0 f3 type ch.ivyteam.wf.Data #txt
Ln0 f3 template "redirect.jsp" #txt
Ln0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>redirect</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f3 51 243 26 26 14 0 #rect
Ln0 f3 @|EndRequestIcon #fIcon
Ln0 f7 expr in #txt
Ln0 f7 outCond in.url.length()>0 #txt
Ln0 f7 121 199 73 246 #arcP
Ln0 f8 expr in #txt
Ln0 f8 135 199 182 246 #arcP
Ln0 f6 expr out #txt
Ln0 f6 128 140 128 178 #arcP
Ln0 f12 expr out #txt
Ln0 f12 128 77 128 116 #arcP
>Proto Ln0 .type ch.ivyteam.wf.Data #txt
>Proto Ln0 .processKind NORMAL #txt
>Proto Ln0 0 0 32 24 18 0 #rect
>Proto Ln0 @|BIcon #fIcon
Ln0 f2 out f7 tail #connect
Ln0 f7 head f3 mainIn #connect
Ln0 f2 out f8 tail #connect
Ln0 f8 head f4 mainIn #connect
Ln0 f1 mainOut f6 tail #connect
Ln0 f6 head f2 in #connect
Ln0 f0 mainOut f12 tail #connect
Ln0 f12 head f1 mainIn #connect
