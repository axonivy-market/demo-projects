[Ivy]
[>Created: Tue May 06 14:31:56 CEST 2014]
145D1849FACF0EAA 3.17 #module
>Proto >Proto Collection #zClass
Ct0 Component Big #zClass
Ct0 B #cInfo
Ct0 #process
Ct0 @TextInP .resExport .resExport #zField
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @MessageFlowInP-0n messageIn messageIn #zField
Ct0 @MessageFlowOutP-0n messageOut messageOut #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @EndTask f48 '' #zField
Ct0 @StartRequest f20 '' #zField
Ct0 @EndTask f22 '' #zField
Ct0 @StartRequest f47 '' #zField
Ct0 @StartRequest f82 '' #zField
Ct0 @RichDialog f58 '' #zField
Ct0 @RichDialog f84 '' #zField
Ct0 @RichDialog f99 '' #zField
Ct0 @EndTask f59 '' #zField
Ct0 @EndTask f98 '' #zField
Ct0 @RichDialog f21 '' #zField
Ct0 @RichDialog f49 '' #zField
Ct0 @StartRequest f57 '' #zField
Ct0 @EndTask f83 '' #zField
Ct0 @StartRequest f97 '' #zField
Ct0 @PushWFArc f23 '' #zField
Ct0 @PushWFArc f24 '' #zField
Ct0 @PushWFArc f50 '' #zField
Ct0 @PushWFArc f51 '' #zField
Ct0 @PushWFArc f60 '' #zField
Ct0 @PushWFArc f61 '' #zField
Ct0 @PushWFArc f85 '' #zField
Ct0 @PushWFArc f86 '' #zField
Ct0 @PushWFArc f100 '' #zField
Ct0 @PushWFArc f101 '' #zField
>Proto Ct0 Ct0 Component #zField
Ct0 f48 type htmlDialogDemos.Data #txt
Ct0 f48 465 49 30 30 0 15 #rect
Ct0 f48 @|EndIcon #fIcon
Ct0 f48 -1|-1|-9671572 #nodeStyle
Ct0 f20 outLink PartialUpdateDemo.ivp #txt
Ct0 f20 type htmlDialogDemos.Data #txt
Ct0 f20 inParamDecl '<> param;' #txt
Ct0 f20 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ct0 f20 guid 145D184CF68AB7EC #txt
Ct0 f20 requestEnabled true #txt
Ct0 f20 triggerEnabled false #txt
Ct0 f20 callSignature PartialUpdateDemo() #txt
Ct0 f20 persist false #txt
Ct0 f20 startName 'Partial Update Demo' #txt
Ct0 f20 taskData '#
#Tue May 06 14:31:53 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ct0 f20 caseData '#
#Thu Sep 20 16:00:07 CEST 2012
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
Ct0 f20 showInStartList 1 #txt
Ct0 f20 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ct0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PartialUpdateDemo.ivp</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f20 @C|.responsibility Everybody #txt
Ct0 f20 113 433 30 30 -63 15 #rect
Ct0 f20 @|StartRequestIcon #fIcon
Ct0 f20 -1|-1|-9671572 #nodeStyle
Ct0 f22 type htmlDialogDemos.Data #txt
Ct0 f22 465 433 30 30 0 15 #rect
Ct0 f22 @|EndIcon #fIcon
Ct0 f22 -1|-1|-9671572 #nodeStyle
Ct0 f47 outLink ComponentDemo.ivp #txt
Ct0 f47 type htmlDialogDemos.Data #txt
Ct0 f47 inParamDecl '<> param;' #txt
Ct0 f47 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ct0 f47 guid 145D184CF6888827 #txt
Ct0 f47 requestEnabled true #txt
Ct0 f47 triggerEnabled false #txt
Ct0 f47 callSignature ComponentDemo() #txt
Ct0 f47 persist false #txt
Ct0 f47 startName 'Component Demo' #txt
Ct0 f47 taskData '#
#Tue May 06 14:31:53 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ct0 f47 caseData '#
#Wed Dec 05 17:17:33 CET 2012
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
Ct0 f47 showInStartList 1 #txt
Ct0 f47 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ct0 f47 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ComponentDemo.ivp</name>
    </language>
</elementInfo>
' #txt
Ct0 f47 @C|.responsibility Everybody #txt
Ct0 f47 113 49 30 30 -58 15 #rect
Ct0 f47 @|StartRequestIcon #fIcon
Ct0 f47 -1|-1|-9671572 #nodeStyle
Ct0 f82 outLink ComponentEventListenerDemo.ivp #txt
Ct0 f82 type htmlDialogDemos.Data #txt
Ct0 f82 inParamDecl '<> param;' #txt
Ct0 f82 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ct0 f82 guid 145D184CF683C671 #txt
Ct0 f82 requestEnabled true #txt
Ct0 f82 triggerEnabled false #txt
Ct0 f82 callSignature ComponentEventListenerDemo() #txt
Ct0 f82 persist false #txt
Ct0 f82 startName 'Component Callback Demo' #txt
Ct0 f82 taskData '#
#Tue May 06 14:31:53 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ct0 f82 caseData '#
#Fri May 31 14:59:23 CEST 2013
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
Ct0 f82 showInStartList 1 #txt
Ct0 f82 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ct0 f82 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Component:
EventListenerDemo.ivp</name>
        <nameStyle>32,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f82 @C|.responsibility Everybody #txt
Ct0 f82 113 337 30 30 -63 15 #rect
Ct0 f82 @|StartRequestIcon #fIcon
Ct0 f82 -1|-1|-9671572 #nodeStyle
Ct0 f58 targetWindow NEW:card: #txt
Ct0 f58 targetDisplay TOP #txt
Ct0 f58 richDialogId ch.ivyteam.htmldialog.demo.component.ComponentCustomizingDemo #txt
Ct0 f58 startMethod start() #txt
Ct0 f58 type htmlDialogDemos.Data #txt
Ct0 f58 requestActionDecl '<> param;' #txt
Ct0 f58 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ct0 f58 responseMappingAction 'out=in;
' #txt
Ct0 f58 windowConfiguration '* ' #txt
Ct0 f58 isAsynch false #txt
Ct0 f58 isInnerRd false #txt
Ct0 f58 userContext '* ' #txt
Ct0 f58 248 138 112 44 58 -2 #rect
Ct0 f58 @|RichDialogIcon #fIcon
Ct0 f58 -1|-1|-9671572 #nodeStyle
Ct0 f84 targetWindow NEW:card: #txt
Ct0 f84 targetDisplay TOP #txt
Ct0 f84 richDialogId ch.ivyteam.htmldialog.demo.component.MethodCallbackDialog #txt
Ct0 f84 startMethod start() #txt
Ct0 f84 type htmlDialogDemos.Data #txt
Ct0 f84 requestActionDecl '<> param;' #txt
Ct0 f84 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ct0 f84 responseMappingAction 'out=in;
' #txt
Ct0 f84 windowConfiguration '* ' #txt
Ct0 f84 isAsynch false #txt
Ct0 f84 isInnerRd false #txt
Ct0 f84 userContext '* ' #txt
Ct0 f84 248 330 112 44 58 -2 #rect
Ct0 f84 @|RichDialogIcon #fIcon
Ct0 f84 -1|-1|-9671572 #nodeStyle
Ct0 f99 targetWindow NEW:card: #txt
Ct0 f99 targetDisplay TOP #txt
Ct0 f99 richDialogId ch.ivyteam.htmldialog.demo.component.JsfCompositeComponentDemo #txt
Ct0 f99 startMethod start() #txt
Ct0 f99 type htmlDialogDemos.Data #txt
Ct0 f99 requestActionDecl '<> param;' #txt
Ct0 f99 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ct0 f99 responseMappingAction 'out=in;
' #txt
Ct0 f99 windowConfiguration '* ' #txt
Ct0 f99 isAsynch false #txt
Ct0 f99 isInnerRd false #txt
Ct0 f99 userContext '* ' #txt
Ct0 f99 248 234 112 44 58 -2 #rect
Ct0 f99 @|RichDialogIcon #fIcon
Ct0 f99 -1|-1|-9671572 #nodeStyle
Ct0 f59 type htmlDialogDemos.Data #txt
Ct0 f59 465 145 30 30 0 15 #rect
Ct0 f59 @|EndIcon #fIcon
Ct0 f59 -1|-1|-9671572 #nodeStyle
Ct0 f98 type htmlDialogDemos.Data #txt
Ct0 f98 465 241 30 30 0 15 #rect
Ct0 f98 @|EndIcon #fIcon
Ct0 f98 -1|-1|-9671572 #nodeStyle
Ct0 f21 targetWindow NEW:card: #txt
Ct0 f21 targetDisplay TOP #txt
Ct0 f21 richDialogId ch.ivyteam.htmldialog.demo.component.PartialUpdateDemo #txt
Ct0 f21 startMethod start() #txt
Ct0 f21 type htmlDialogDemos.Data #txt
Ct0 f21 requestActionDecl '<> param;' #txt
Ct0 f21 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ct0 f21 responseMappingAction 'out=in;
' #txt
Ct0 f21 windowConfiguration '* ' #txt
Ct0 f21 isAsynch false #txt
Ct0 f21 isInnerRd false #txt
Ct0 f21 userContext '* ' #txt
Ct0 f21 248 426 112 44 58 -2 #rect
Ct0 f21 @|RichDialogIcon #fIcon
Ct0 f21 -1|-1|-9671572 #nodeStyle
Ct0 f49 targetWindow NEW:card: #txt
Ct0 f49 targetDisplay TOP #txt
Ct0 f49 richDialogId ch.ivyteam.htmldialog.demo.component.ComponentDemo #txt
Ct0 f49 startMethod start() #txt
Ct0 f49 type htmlDialogDemos.Data #txt
Ct0 f49 requestActionDecl '<> param;' #txt
Ct0 f49 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ct0 f49 responseMappingAction 'out=in;
' #txt
Ct0 f49 windowConfiguration '* ' #txt
Ct0 f49 isAsynch false #txt
Ct0 f49 isInnerRd false #txt
Ct0 f49 userContext '* ' #txt
Ct0 f49 248 42 112 44 58 -2 #rect
Ct0 f49 @|RichDialogIcon #fIcon
Ct0 f49 -1|-1|-9671572 #nodeStyle
Ct0 f57 outLink ComponentCustomizingDemo.ivp #txt
Ct0 f57 type htmlDialogDemos.Data #txt
Ct0 f57 inParamDecl '<> param;' #txt
Ct0 f57 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ct0 f57 guid 145D184CF68ED8DA #txt
Ct0 f57 requestEnabled true #txt
Ct0 f57 triggerEnabled false #txt
Ct0 f57 callSignature ComponentCustomizingDemo() #txt
Ct0 f57 persist false #txt
Ct0 f57 startName 'Component Customizing Demo' #txt
Ct0 f57 taskData '#
#Tue May 06 14:31:53 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ct0 f57 caseData '#
#Fri May 31 14:59:11 CEST 2013
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
Ct0 f57 showInStartList 1 #txt
Ct0 f57 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ct0 f57 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Component:
CustomizingDemo</name>
        <nameStyle>26,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f57 @C|.responsibility Everybody #txt
Ct0 f57 113 145 30 30 -51 15 #rect
Ct0 f57 @|StartRequestIcon #fIcon
Ct0 f57 -1|-1|-9671572 #nodeStyle
Ct0 f83 type htmlDialogDemos.Data #txt
Ct0 f83 465 337 30 30 0 15 #rect
Ct0 f83 @|EndIcon #fIcon
Ct0 f83 -1|-1|-9671572 #nodeStyle
Ct0 f97 outLink JsfCompositeComponent.ivp #txt
Ct0 f97 type htmlDialogDemos.Data #txt
Ct0 f97 inParamDecl '<> param;' #txt
Ct0 f97 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ct0 f97 guid 145D184CF68E6FF1 #txt
Ct0 f97 requestEnabled true #txt
Ct0 f97 triggerEnabled false #txt
Ct0 f97 callSignature JsfCompositeComponent() #txt
Ct0 f97 persist false #txt
Ct0 f97 startName 'Jsf Composite Component Demo' #txt
Ct0 f97 taskData '#
#Tue May 06 14:31:53 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ct0 f97 caseData '#
#Fri Jan 10 08:33:37 CET 2014
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
Ct0 f97 showInStartList 1 #txt
Ct0 f97 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ct0 f97 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>JsfCompositeComponent.ivp</name>
        <nameStyle>25,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f97 @C|.responsibility Everybody #txt
Ct0 f97 113 241 30 30 -80 15 #rect
Ct0 f97 @|StartRequestIcon #fIcon
Ct0 f97 -1|-1|-9671572 #nodeStyle
Ct0 f23 expr out #txt
Ct0 f23 143 448 248 448 #arcP
Ct0 f24 expr out #txt
Ct0 f24 360 448 465 448 #arcP
Ct0 f50 expr out #txt
Ct0 f50 143 64 248 64 #arcP
Ct0 f51 expr out #txt
Ct0 f51 360 64 465 64 #arcP
Ct0 f60 expr out #txt
Ct0 f60 143 160 248 160 #arcP
Ct0 f61 expr out #txt
Ct0 f61 360 160 465 160 #arcP
Ct0 f85 expr out #txt
Ct0 f85 143 352 248 352 #arcP
Ct0 f86 expr out #txt
Ct0 f86 360 352 465 352 #arcP
Ct0 f100 expr out #txt
Ct0 f100 143 256 248 256 #arcP
Ct0 f101 expr out #txt
Ct0 f101 360 256 465 256 #arcP
>Proto Ct0 .type htmlDialogDemos.Data #txt
>Proto Ct0 .processKind NORMAL #txt
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ct0 f20 mainOut f23 tail #connect
Ct0 f23 head f21 mainIn #connect
Ct0 f21 mainOut f24 tail #connect
Ct0 f24 head f22 mainIn #connect
Ct0 f47 mainOut f50 tail #connect
Ct0 f50 head f49 mainIn #connect
Ct0 f49 mainOut f51 tail #connect
Ct0 f51 head f48 mainIn #connect
Ct0 f57 mainOut f60 tail #connect
Ct0 f60 head f58 mainIn #connect
Ct0 f58 mainOut f61 tail #connect
Ct0 f61 head f59 mainIn #connect
Ct0 f82 mainOut f85 tail #connect
Ct0 f85 head f84 mainIn #connect
Ct0 f84 mainOut f86 tail #connect
Ct0 f86 head f83 mainIn #connect
Ct0 f97 mainOut f100 tail #connect
Ct0 f100 head f99 mainIn #connect
Ct0 f99 mainOut f101 tail #connect
Ct0 f101 head f98 mainIn #connect
