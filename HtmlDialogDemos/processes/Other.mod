[Ivy]
[>Created: Tue May 06 14:33:38 CEST 2014]
145D1862CF17F2C9 3.17 #module
>Proto >Proto Collection #zClass
Or0 Other Big #zClass
Or0 B #cInfo
Or0 #process
Or0 @TextInP .resExport .resExport #zField
Or0 @TextInP .type .type #zField
Or0 @TextInP .processKind .processKind #zField
Or0 @AnnotationInP-0n ai ai #zField
Or0 @MessageFlowInP-0n messageIn messageIn #zField
Or0 @MessageFlowOutP-0n messageOut messageOut #zField
Or0 @TextInP .xml .xml #zField
Or0 @TextInP .responsibility .responsibility #zField
Or0 @RichDialog f104 '' #zField
Or0 @RichDialog f44 '' #zField
Or0 @StartRequest f109 '' #zField
Or0 @RichDialog f38 '' #zField
Or0 @EndTask f105 '' #zField
Or0 @EndTask f37 '' #zField
Or0 @StartRequest f106 '' #zField
Or0 @StartRequest f42 '' #zField
Or0 @RichDialog f102 '' #zField
Or0 @EndTask f110 '' #zField
Or0 @EndTask f43 '' #zField
Or0 @RichDialog f112 '' #zField
Or0 @StartRequest f39 '' #zField
Or0 @PushWFArc f40 '' #zField
Or0 @PushWFArc f46 '' #zField
Or0 @PushWFArc f45 '' #zField
Or0 @PushWFArc f103 '' #zField
Or0 @PushWFArc f41 '' #zField
Or0 @PushWFArc f107 '' #zField
Or0 @PushWFArc f108 '' #zField
Or0 @PushWFArc f113 '' #zField
Or0 @PushWFArc f111 '' #zField
>Proto Or0 Or0 Other #zField
Or0 f104 targetWindow NEW:card: #txt
Or0 f104 targetDisplay TOP #txt
Or0 f104 richDialogId ch.ivyteam.htmldialog.demo.other.Html5Demo #txt
Or0 f104 startMethod start() #txt
Or0 f104 type htmlDialogDemos.Data #txt
Or0 f104 requestActionDecl '<> param;' #txt
Or0 f104 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Or0 f104 responseMappingAction 'out=in;
' #txt
Or0 f104 windowConfiguration '* ' #txt
Or0 f104 isAsynch false #txt
Or0 f104 isInnerRd false #txt
Or0 f104 userContext '* ' #txt
Or0 f104 248 42 112 44 58 -2 #rect
Or0 f104 @|RichDialogIcon #fIcon
Or0 f104 -1|-1|-9671572 #nodeStyle
Or0 f44 targetWindow NEW:card: #txt
Or0 f44 targetDisplay TOP #txt
Or0 f44 richDialogId ch.ivyteam.htmldialog.demo.other.ManagedBeanDemo #txt
Or0 f44 startMethod start() #txt
Or0 f44 type htmlDialogDemos.Data #txt
Or0 f44 requestActionDecl '<> param;' #txt
Or0 f44 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Or0 f44 responseMappingAction 'out=in;
' #txt
Or0 f44 windowConfiguration '* ' #txt
Or0 f44 isAsynch false #txt
Or0 f44 isInnerRd false #txt
Or0 f44 userContext '* ' #txt
Or0 f44 248 330 112 44 58 -2 #rect
Or0 f44 @|RichDialogIcon #fIcon
Or0 f44 -1|-1|-9671572 #nodeStyle
Or0 f109 outLink Html5BootstrapDemo.ivp #txt
Or0 f109 type htmlDialogDemos.Data #txt
Or0 f109 inParamDecl '<> param;' #txt
Or0 f109 actionDecl 'htmlDialogDemos.Data out;
' #txt
Or0 f109 guid 145D1865E65260A9 #txt
Or0 f109 requestEnabled true #txt
Or0 f109 triggerEnabled false #txt
Or0 f109 callSignature Html5BootstrapDemo() #txt
Or0 f109 persist false #txt
Or0 f109 startName 'Html 5 Bootstrap Demo' #txt
Or0 f109 taskData '#
#Tue May 06 14:33:35 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Or0 f109 caseData '#
#Fri Mar 28 15:29:45 CET 2014
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
Or0 f109 showInStartList 1 #txt
Or0 f109 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Or0 f109 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Html5BootstrapDemo.ivp</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Or0 f109 @C|.responsibility Everybody #txt
Or0 f109 113 145 30 30 -69 15 #rect
Or0 f109 @|StartRequestIcon #fIcon
Or0 f109 -1|-1|-9671572 #nodeStyle
Or0 f38 targetWindow NEW:card: #txt
Or0 f38 targetDisplay TOP #txt
Or0 f38 richDialogId ch.ivyteam.htmldialog.demo.other.AjaxMethodCallDemo #txt
Or0 f38 startMethod start() #txt
Or0 f38 type htmlDialogDemos.Data #txt
Or0 f38 requestActionDecl '<> param;' #txt
Or0 f38 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Or0 f38 responseMappingAction 'out=in;
' #txt
Or0 f38 windowConfiguration '* ' #txt
Or0 f38 isAsynch false #txt
Or0 f38 isInnerRd false #txt
Or0 f38 userContext '* ' #txt
Or0 f38 248 234 112 44 58 -2 #rect
Or0 f38 @|RichDialogIcon #fIcon
Or0 f38 -1|-1|-9671572 #nodeStyle
Or0 f105 type htmlDialogDemos.Data #txt
Or0 f105 465 49 30 30 0 15 #rect
Or0 f105 @|EndIcon #fIcon
Or0 f105 -1|-1|-9671572 #nodeStyle
Or0 f37 type htmlDialogDemos.Data #txt
Or0 f37 697 241 30 30 0 15 #rect
Or0 f37 @|EndIcon #fIcon
Or0 f37 -1|-1|-9671572 #nodeStyle
Or0 f106 outLink Html5Demo.ivp #txt
Or0 f106 type htmlDialogDemos.Data #txt
Or0 f106 inParamDecl '<> param;' #txt
Or0 f106 actionDecl 'htmlDialogDemos.Data out;
' #txt
Or0 f106 guid 145D1865E659E45C #txt
Or0 f106 requestEnabled true #txt
Or0 f106 triggerEnabled false #txt
Or0 f106 callSignature Html5Demo() #txt
Or0 f106 persist false #txt
Or0 f106 startName 'Html 5 Demo' #txt
Or0 f106 taskData '#
#Tue May 06 14:33:35 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Or0 f106 caseData '#
#Fri Mar 28 15:29:28 CET 2014
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
Or0 f106 showInStartList 1 #txt
Or0 f106 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Or0 f106 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Html5Demo.ivp</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Or0 f106 @C|.responsibility Everybody #txt
Or0 f106 113 49 30 30 -42 15 #rect
Or0 f106 @|StartRequestIcon #fIcon
Or0 f106 -1|-1|-9671572 #nodeStyle
Or0 f42 outLink ManagedBeanDemo.ivp #txt
Or0 f42 type htmlDialogDemos.Data #txt
Or0 f42 inParamDecl '<> param;' #txt
Or0 f42 actionDecl 'htmlDialogDemos.Data out;
' #txt
Or0 f42 guid 145D1865E6566884 #txt
Or0 f42 requestEnabled true #txt
Or0 f42 triggerEnabled false #txt
Or0 f42 callSignature ManagedBeanDemo() #txt
Or0 f42 persist false #txt
Or0 f42 startName 'ManagedBean Demo' #txt
Or0 f42 taskData '#
#Tue May 06 14:33:35 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Or0 f42 caseData '#
#Mon Dec 03 13:46:01 CET 2012
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
Or0 f42 showInStartList 1 #txt
Or0 f42 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Or0 f42 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ManagedBeanDemo.ivp</name>
        <nameStyle>19,5,7
</nameStyle>
        <desc>ManagedBean Demo</desc>
    </language>
</elementInfo>
' #txt
Or0 f42 @C|.responsibility Everybody #txt
Or0 f42 113 337 30 30 -66 15 #rect
Or0 f42 @|StartRequestIcon #fIcon
Or0 f42 -1|-1|-9671572 #nodeStyle
Or0 f102 targetWindow NEW:card: #txt
Or0 f102 targetDisplay TOP #txt
Or0 f102 richDialogId ch.ivyteam.htmldialog.demo.Main #txt
Or0 f102 startMethod start() #txt
Or0 f102 type htmlDialogDemos.Data #txt
Or0 f102 requestActionDecl '<> param;' #txt
Or0 f102 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Or0 f102 responseMappingAction 'out=in;
' #txt
Or0 f102 windowConfiguration '* ' #txt
Or0 f102 isAsynch false #txt
Or0 f102 isInnerRd false #txt
Or0 f102 userContext '* ' #txt
Or0 f102 472 234 112 44 58 -2 #rect
Or0 f102 @|RichDialogIcon #fIcon
Or0 f102 -1|-1|-9671572 #nodeStyle
Or0 f110 type htmlDialogDemos.Data #txt
Or0 f110 465 145 30 30 0 15 #rect
Or0 f110 @|EndIcon #fIcon
Or0 f110 -1|-1|-9671572 #nodeStyle
Or0 f43 type htmlDialogDemos.Data #txt
Or0 f43 465 337 30 30 0 15 #rect
Or0 f43 @|EndIcon #fIcon
Or0 f43 -1|-1|-9671572 #nodeStyle
Or0 f112 targetWindow NEW:card: #txt
Or0 f112 targetDisplay TOP #txt
Or0 f112 richDialogId ch.ivyteam.htmldialog.demo.other.Html5BootstrapDemo #txt
Or0 f112 startMethod start() #txt
Or0 f112 type htmlDialogDemos.Data #txt
Or0 f112 requestActionDecl '<> param;' #txt
Or0 f112 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Or0 f112 responseMappingAction 'out=in;
' #txt
Or0 f112 windowConfiguration '* ' #txt
Or0 f112 isAsynch false #txt
Or0 f112 isInnerRd false #txt
Or0 f112 userContext '* ' #txt
Or0 f112 248 138 112 44 58 -2 #rect
Or0 f112 @|RichDialogIcon #fIcon
Or0 f112 -1|-1|-9671572 #nodeStyle
Or0 f39 outLink MethodCallWithAjaxDemo.ivp #txt
Or0 f39 type htmlDialogDemos.Data #txt
Or0 f39 inParamDecl '<> param;' #txt
Or0 f39 actionDecl 'htmlDialogDemos.Data out;
' #txt
Or0 f39 guid 145D1865E651C086 #txt
Or0 f39 requestEnabled true #txt
Or0 f39 triggerEnabled false #txt
Or0 f39 callSignature MethodCallWithAjaxDemo() #txt
Or0 f39 persist false #txt
Or0 f39 startName 'Method call with Ajax' #txt
Or0 f39 taskData '#
#Tue May 06 14:33:35 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Or0 f39 caseData '#
#Wed Nov 14 11:52:04 CET 2012
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
Or0 f39 showInStartList 1 #txt
Or0 f39 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Or0 f39 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>MethodCallWithAjaxDemo.ivp</name>
        <nameStyle>26,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Or0 f39 @C|.responsibility Everybody #txt
Or0 f39 113 241 30 30 -80 15 #rect
Or0 f39 @|StartRequestIcon #fIcon
Or0 f39 -1|-1|-9671572 #nodeStyle
Or0 f40 expr out #txt
Or0 f40 143 256 248 256 #arcP
Or0 f46 expr out #txt
Or0 f46 360 352 465 352 #arcP
Or0 f45 expr out #txt
Or0 f45 143 352 248 352 #arcP
Or0 f103 expr out #txt
Or0 f103 360 256 472 256 #arcP
Or0 f41 expr out #txt
Or0 f41 584 256 697 256 #arcP
Or0 f107 expr out #txt
Or0 f107 143 64 248 64 #arcP
Or0 f108 expr out #txt
Or0 f108 360 64 465 64 #arcP
Or0 f113 expr out #txt
Or0 f113 143 160 248 160 #arcP
Or0 f111 expr out #txt
Or0 f111 360 160 465 160 #arcP
>Proto Or0 .type htmlDialogDemos.Data #txt
>Proto Or0 .processKind NORMAL #txt
>Proto Or0 0 0 32 24 18 0 #rect
>Proto Or0 @|BIcon #fIcon
Or0 f39 mainOut f40 tail #connect
Or0 f40 head f38 mainIn #connect
Or0 f42 mainOut f45 tail #connect
Or0 f45 head f44 mainIn #connect
Or0 f44 mainOut f46 tail #connect
Or0 f46 head f43 mainIn #connect
Or0 f38 mainOut f103 tail #connect
Or0 f103 head f102 mainIn #connect
Or0 f102 mainOut f41 tail #connect
Or0 f41 head f37 mainIn #connect
Or0 f106 mainOut f107 tail #connect
Or0 f107 head f104 mainIn #connect
Or0 f104 mainOut f108 tail #connect
Or0 f108 head f105 mainIn #connect
Or0 f109 mainOut f113 tail #connect
Or0 f113 head f112 mainIn #connect
Or0 f112 mainOut f111 tail #connect
Or0 f111 head f110 mainIn #connect
