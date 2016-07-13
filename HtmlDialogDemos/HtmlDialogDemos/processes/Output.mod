[Ivy]
[>Created: Tue Jul 12 15:22:37 CEST 2016]
145D180807C60B4B 3.18 #module
>Proto >Proto Collection #zClass
Ot0 Output Big #zClass
Ot0 B #cInfo
Ot0 #process
Ot0 @TextInP .resExport .resExport #zField
Ot0 @TextInP .type .type #zField
Ot0 @TextInP .processKind .processKind #zField
Ot0 @AnnotationInP-0n ai ai #zField
Ot0 @MessageFlowInP-0n messageIn messageIn #zField
Ot0 @MessageFlowOutP-0n messageOut messageOut #zField
Ot0 @TextInP .xml .xml #zField
Ot0 @TextInP .responsibility .responsibility #zField
Ot0 @StartRequest f94 '' #zField
Ot0 @StartRequest f87 '' #zField
Ot0 @RichDialog f11 '' #zField
Ot0 @EndTask f26 '' #zField
Ot0 @StartRequest f25 '' #zField
Ot0 @EndTask f93 '' #zField
Ot0 @EndTask f31 '' #zField
Ot0 @EndTask f89 '' #zField
Ot0 @RichDialog f88 '' #zField
Ot0 @EndTask f13 '' #zField
Ot0 @RichDialog f27 '' #zField
Ot0 @RichDialog f32 '' #zField
Ot0 @StartRequest f5 '' #zField
Ot0 @EndTask f8 '' #zField
Ot0 @StartRequest f30 '' #zField
Ot0 @RichDialog f6 '' #zField
Ot0 @RichDialog f92 '' #zField
Ot0 @StartRequest f10 '' #zField
Ot0 @PushWFArc f7 '' #zField
Ot0 @PushWFArc f9 '' #zField
Ot0 @PushWFArc f12 '' #zField
Ot0 @PushWFArc f14 '' #zField
Ot0 @PushWFArc f28 '' #zField
Ot0 @PushWFArc f29 '' #zField
Ot0 @PushWFArc f33 '' #zField
Ot0 @PushWFArc f34 '' #zField
Ot0 @PushWFArc f90 '' #zField
Ot0 @PushWFArc f91 '' #zField
Ot0 @PushWFArc f95 '' #zField
Ot0 @PushWFArc f96 '' #zField
Ot0 @EndTask f1 '' #zField
Ot0 @RichDialog f2 '' #zField
Ot0 @PushWFArc f4 '' #zField
Ot0 @StartRequest f0 '' #zField
Ot0 @PushWFArc f3 '' #zField
Ot0 @StartRequest f20 '' #zField
Ot0 @RichDialog f21 '' #zField
Ot0 @EndTask f22 '' #zField
Ot0 @PushWFArc f23 '' #zField
Ot0 @PushWFArc f24 '' #zField
Ot0 @EndTask f15 '' #zField
Ot0 @RichDialog f16 '' #zField
Ot0 @StartRequest f17 '' #zField
Ot0 @PushWFArc f18 '' #zField
Ot0 @PushWFArc f19 '' #zField
>Proto Ot0 Ot0 Output #zField
Ot0 f94 outLink SelectManyCheckboxDemo.ivp #txt
Ot0 f94 type htmlDialogDemos.Data #txt
Ot0 f94 inParamDecl '<> param;' #txt
Ot0 f94 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f94 guid 145D180C91A7FDF9 #txt
Ot0 f94 requestEnabled true #txt
Ot0 f94 triggerEnabled false #txt
Ot0 f94 callSignature SelectManyCheckboxDemo() #txt
Ot0 f94 persist false #txt
Ot0 f94 startName 'Select Many Checkbox Demo' #txt
Ot0 f94 taskData '#
#Tue May 06 14:27:29 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ot0 f94 caseData '#
#Thu Jun 20 13:56:20 CEST 2013
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
Ot0 f94 showInStartList 1 #txt
Ot0 f94 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ot0 f94 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SelectManyCheckboxDemo</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ot0 f94 @C|.responsibility Everybody #txt
Ot0 f94 113 529 30 30 -75 15 #rect
Ot0 f94 @|StartRequestIcon #fIcon
Ot0 f94 -1|-1|-9671572 #nodeStyle
Ot0 f87 outLink SelectOneMenuDemo.ivp #txt
Ot0 f87 type htmlDialogDemos.Data #txt
Ot0 f87 inParamDecl '<> param;' #txt
Ot0 f87 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f87 guid 145D180C91AD23E2 #txt
Ot0 f87 requestEnabled true #txt
Ot0 f87 triggerEnabled false #txt
Ot0 f87 callSignature SelectOneMenuDemo() #txt
Ot0 f87 persist false #txt
Ot0 f87 startName 'Select One Menu Demo' #txt
Ot0 f87 taskData '#
#Tue May 06 14:27:29 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ot0 f87 caseData '#
#Thu Jun 13 11:26:19 CEST 2013
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
Ot0 f87 showInStartList 1 #txt
Ot0 f87 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ot0 f87 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SelectOneMenuDemo</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ot0 f87 @C|.responsibility Everybody #txt
Ot0 f87 113 433 30 30 -60 15 #rect
Ot0 f87 @|StartRequestIcon #fIcon
Ot0 f87 -1|-1|-9671572 #nodeStyle
Ot0 f11 targetWindow NEW:card: #txt
Ot0 f11 targetDisplay TOP #txt
Ot0 f11 richDialogId ch.ivyteam.htmldialog.demo.output.EditableTableDemo #txt
Ot0 f11 startMethod start() #txt
Ot0 f11 type htmlDialogDemos.Data #txt
Ot0 f11 requestActionDecl '<> param;' #txt
Ot0 f11 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f11 responseMappingAction 'out=in;
' #txt
Ot0 f11 windowConfiguration '* ' #txt
Ot0 f11 isAsynch false #txt
Ot0 f11 isInnerRd false #txt
Ot0 f11 userContext '* ' #txt
Ot0 f11 248 42 112 44 58 -2 #rect
Ot0 f11 @|RichDialogIcon #fIcon
Ot0 f11 -1|-1|-9671572 #nodeStyle
Ot0 f26 type htmlDialogDemos.Data #txt
Ot0 f26 465 337 30 30 0 15 #rect
Ot0 f26 @|EndIcon #fIcon
Ot0 f26 -1|-1|-9671572 #nodeStyle
Ot0 f25 outLink PickListDemo.ivp #txt
Ot0 f25 type htmlDialogDemos.Data #txt
Ot0 f25 inParamDecl '<> param;' #txt
Ot0 f25 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f25 guid 145D180C91AFE2F8 #txt
Ot0 f25 requestEnabled true #txt
Ot0 f25 triggerEnabled false #txt
Ot0 f25 callSignature PickListDemo() #txt
Ot0 f25 persist false #txt
Ot0 f25 startName 'PickList Demo' #txt
Ot0 f25 taskData '#
#Tue May 06 14:27:29 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ot0 f25 caseData '#
#Mon Sep 24 16:28:19 CEST 2012
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
Ot0 f25 showInStartList 1 #txt
Ot0 f25 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ot0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PickListDemo.ivp</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ot0 f25 @C|.responsibility Everybody #txt
Ot0 f25 113 337 30 30 -47 15 #rect
Ot0 f25 @|StartRequestIcon #fIcon
Ot0 f25 -1|-1|-9671572 #nodeStyle
Ot0 f93 type htmlDialogDemos.Data #txt
Ot0 f93 465 529 30 30 0 15 #rect
Ot0 f93 @|EndIcon #fIcon
Ot0 f93 -1|-1|-9671572 #nodeStyle
Ot0 f31 type htmlDialogDemos.Data #txt
Ot0 f31 465 145 30 30 0 15 #rect
Ot0 f31 @|EndIcon #fIcon
Ot0 f31 -1|-1|-9671572 #nodeStyle
Ot0 f89 type htmlDialogDemos.Data #txt
Ot0 f89 465 433 30 30 0 15 #rect
Ot0 f89 @|EndIcon #fIcon
Ot0 f89 -1|-1|-9671572 #nodeStyle
Ot0 f88 targetWindow NEW:card: #txt
Ot0 f88 targetDisplay TOP #txt
Ot0 f88 richDialogId ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo #txt
Ot0 f88 startMethod start() #txt
Ot0 f88 type htmlDialogDemos.Data #txt
Ot0 f88 requestActionDecl '<> param;' #txt
Ot0 f88 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f88 responseMappingAction 'out=in;
' #txt
Ot0 f88 windowConfiguration '* ' #txt
Ot0 f88 isAsynch false #txt
Ot0 f88 isInnerRd false #txt
Ot0 f88 userContext '* ' #txt
Ot0 f88 248 426 112 44 58 -2 #rect
Ot0 f88 @|RichDialogIcon #fIcon
Ot0 f88 -1|-1|-9671572 #nodeStyle
Ot0 f13 type htmlDialogDemos.Data #txt
Ot0 f13 465 49 30 30 0 15 #rect
Ot0 f13 @|EndIcon #fIcon
Ot0 f13 -1|-1|-9671572 #nodeStyle
Ot0 f27 targetWindow NEW:card: #txt
Ot0 f27 targetDisplay TOP #txt
Ot0 f27 richDialogId ch.ivyteam.htmldialog.demo.output.PickListDemo #txt
Ot0 f27 startMethod start() #txt
Ot0 f27 type htmlDialogDemos.Data #txt
Ot0 f27 requestActionDecl '<> param;' #txt
Ot0 f27 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f27 responseMappingAction 'out=in;
' #txt
Ot0 f27 windowConfiguration '* ' #txt
Ot0 f27 isAsynch false #txt
Ot0 f27 isInnerRd false #txt
Ot0 f27 userContext '* ' #txt
Ot0 f27 248 330 112 44 58 -2 #rect
Ot0 f27 @|RichDialogIcon #fIcon
Ot0 f27 -1|-1|-9671572 #nodeStyle
Ot0 f32 targetWindow NEW:card: #txt
Ot0 f32 targetDisplay TOP #txt
Ot0 f32 richDialogId ch.ivyteam.htmldialog.demo.output.ResourceDemo #txt
Ot0 f32 startMethod start() #txt
Ot0 f32 type htmlDialogDemos.Data #txt
Ot0 f32 requestActionDecl '<> param;' #txt
Ot0 f32 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f32 responseMappingAction 'out=in;
' #txt
Ot0 f32 windowConfiguration '* ' #txt
Ot0 f32 isAsynch false #txt
Ot0 f32 isInnerRd false #txt
Ot0 f32 userContext '* ' #txt
Ot0 f32 248 138 112 44 58 -2 #rect
Ot0 f32 @|RichDialogIcon #fIcon
Ot0 f32 -1|-1|-9671572 #nodeStyle
Ot0 f5 outLink OrderListDemo.ivp #txt
Ot0 f5 type htmlDialogDemos.Data #txt
Ot0 f5 inParamDecl '<> param;' #txt
Ot0 f5 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f5 guid 145D180C91039564 #txt
Ot0 f5 requestEnabled true #txt
Ot0 f5 triggerEnabled false #txt
Ot0 f5 callSignature OrderListDemo() #txt
Ot0 f5 persist false #txt
Ot0 f5 startName OrderListDemo #txt
Ot0 f5 taskData '#
#Tue May 06 14:27:29 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ot0 f5 caseData '#
#Thu Jun 13 09:30:45 CEST 2013
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
Ot0 f5 showInStartList 1 #txt
Ot0 f5 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ot0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OrderListDemo.ivp</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ot0 f5 @C|.responsibility Everybody #txt
Ot0 f5 113 241 30 30 -51 15 #rect
Ot0 f5 @|StartRequestIcon #fIcon
Ot0 f5 -1|-1|-9671572 #nodeStyle
Ot0 f8 type htmlDialogDemos.Data #txt
Ot0 f8 465 241 30 30 0 15 #rect
Ot0 f8 @|EndIcon #fIcon
Ot0 f8 -1|-1|-9671572 #nodeStyle
Ot0 f30 outLink ResourceDemo.ivp #txt
Ot0 f30 type htmlDialogDemos.Data #txt
Ot0 f30 inParamDecl '<> param;' #txt
Ot0 f30 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f30 guid 145D180C910EF669 #txt
Ot0 f30 requestEnabled true #txt
Ot0 f30 triggerEnabled false #txt
Ot0 f30 callSignature ResourceDemo() #txt
Ot0 f30 persist false #txt
Ot0 f30 startName 'Resource Demo' #txt
Ot0 f30 taskData '#
#Tue May 06 14:27:29 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ot0 f30 caseData '#
#Thu Sep 27 09:07:48 CEST 2012
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
Ot0 f30 showInStartList 1 #txt
Ot0 f30 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ot0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ResourceDemo.ivp</name>
    </language>
</elementInfo>
' #txt
Ot0 f30 @C|.responsibility Everybody #txt
Ot0 f30 113 145 30 30 -53 15 #rect
Ot0 f30 @|StartRequestIcon #fIcon
Ot0 f30 -1|-1|-9671572 #nodeStyle
Ot0 f6 targetWindow NEW:card: #txt
Ot0 f6 targetDisplay TOP #txt
Ot0 f6 richDialogId ch.ivyteam.htmldialog.demo.output.OrderListDemo #txt
Ot0 f6 startMethod start() #txt
Ot0 f6 type htmlDialogDemos.Data #txt
Ot0 f6 requestActionDecl '<> param;' #txt
Ot0 f6 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f6 responseMappingAction 'out=in;
' #txt
Ot0 f6 windowConfiguration '* ' #txt
Ot0 f6 isAsynch false #txt
Ot0 f6 isInnerRd false #txt
Ot0 f6 userContext '* ' #txt
Ot0 f6 248 234 112 44 58 -2 #rect
Ot0 f6 @|RichDialogIcon #fIcon
Ot0 f6 -1|-1|-9671572 #nodeStyle
Ot0 f92 targetWindow NEW:card: #txt
Ot0 f92 targetDisplay TOP #txt
Ot0 f92 richDialogId ch.ivyteam.htmldialog.demo.output.SelectManyCheckboxDemo #txt
Ot0 f92 startMethod start() #txt
Ot0 f92 type htmlDialogDemos.Data #txt
Ot0 f92 requestActionDecl '<> param;' #txt
Ot0 f92 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f92 responseMappingAction 'out=in;
' #txt
Ot0 f92 windowConfiguration '* ' #txt
Ot0 f92 isAsynch false #txt
Ot0 f92 isInnerRd false #txt
Ot0 f92 userContext '* ' #txt
Ot0 f92 248 522 112 44 58 -2 #rect
Ot0 f92 @|RichDialogIcon #fIcon
Ot0 f92 -1|-1|-9671572 #nodeStyle
Ot0 f10 outLink EditableTableDemo.ivp #txt
Ot0 f10 type htmlDialogDemos.Data #txt
Ot0 f10 inParamDecl '<> param;' #txt
Ot0 f10 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f10 guid 145D180C910E9D3F #txt
Ot0 f10 requestEnabled true #txt
Ot0 f10 triggerEnabled false #txt
Ot0 f10 callSignature EditableTableDemo() #txt
Ot0 f10 persist false #txt
Ot0 f10 startName 'Editable Table Demo' #txt
Ot0 f10 taskData '#
#Tue May 06 14:27:29 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ot0 f10 caseData '#
#Thu Sep 20 15:31:19 CEST 2012
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
Ot0 f10 showInStartList 1 #txt
Ot0 f10 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ot0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>EditableTableDemo.ivp</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ot0 f10 @C|.responsibility Everybody #txt
Ot0 f10 113 49 30 30 -64 15 #rect
Ot0 f10 @|StartRequestIcon #fIcon
Ot0 f10 -1|-1|-9671572 #nodeStyle
Ot0 f7 expr out #txt
Ot0 f7 143 256 248 256 #arcP
Ot0 f9 expr out #txt
Ot0 f9 360 256 465 256 #arcP
Ot0 f12 expr out #txt
Ot0 f12 143 64 248 64 #arcP
Ot0 f14 expr out #txt
Ot0 f14 360 64 465 64 #arcP
Ot0 f28 expr out #txt
Ot0 f28 143 352 248 352 #arcP
Ot0 f29 expr out #txt
Ot0 f29 360 352 465 352 #arcP
Ot0 f33 expr out #txt
Ot0 f33 143 160 248 160 #arcP
Ot0 f34 expr out #txt
Ot0 f34 360 160 465 160 #arcP
Ot0 f90 expr out #txt
Ot0 f90 143 448 248 448 #arcP
Ot0 f91 expr out #txt
Ot0 f91 360 448 465 448 #arcP
Ot0 f95 expr out #txt
Ot0 f95 143 544 248 544 #arcP
Ot0 f96 expr out #txt
Ot0 f96 360 544 465 544 #arcP
Ot0 f1 type htmlDialogDemos.Data #txt
Ot0 f1 465 625 30 30 0 15 #rect
Ot0 f1 @|EndIcon #fIcon
Ot0 f1 -1|-1|-9671572 #nodeStyle
Ot0 f2 targetWindow NEW:card: #txt
Ot0 f2 targetDisplay TOP #txt
Ot0 f2 richDialogId ch.ivyteam.htmldialog.demo.output.ChartDemo #txt
Ot0 f2 startMethod start() #txt
Ot0 f2 type htmlDialogDemos.Data #txt
Ot0 f2 requestActionDecl '<> param;' #txt
Ot0 f2 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f2 responseMappingAction 'out=in;
' #txt
Ot0 f2 windowConfiguration '* ' #txt
Ot0 f2 isAsynch false #txt
Ot0 f2 isInnerRd false #txt
Ot0 f2 userContext '* ' #txt
Ot0 f2 248 618 112 44 58 -2 #rect
Ot0 f2 @|RichDialogIcon #fIcon
Ot0 f2 -1|-1|-9671572 #nodeStyle
Ot0 f4 expr out #txt
Ot0 f4 360 640 465 640 #arcP
Ot0 f0 outLink ChartDemo.ivp #txt
Ot0 f0 type htmlDialogDemos.Data #txt
Ot0 f0 inParamDecl '<> param;' #txt
Ot0 f0 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f0 guid 1460535DE5033FE1 #txt
Ot0 f0 requestEnabled true #txt
Ot0 f0 triggerEnabled false #txt
Ot0 f0 callSignature ChartDemo() #txt
Ot0 f0 persist false #txt
Ot0 f0 startName 'Chart Demo' #txt
Ot0 f0 taskData '#
#Fri May 16 16:11:41 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ot0 f0 caseData '#
#Fri May 16 16:11:41 CEST 2014
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
Ot0 f0 showInStartList 1 #txt
Ot0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ot0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ChartDemo.ivp</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ot0 f0 @C|.responsibility Everybody #txt
Ot0 f0 113 625 30 30 -45 17 #rect
Ot0 f0 @|StartRequestIcon #fIcon
Ot0 f0 -1|-1|-9671572 #nodeStyle
Ot0 f3 expr out #txt
Ot0 f3 143 640 248 640 #arcP
Ot0 f20 outLink AutoCompleteDemo.ivp #txt
Ot0 f20 type htmlDialogDemos.Data #txt
Ot0 f20 inParamDecl '<> param;' #txt
Ot0 f20 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f20 guid 1468B174CE38CA96 #txt
Ot0 f20 requestEnabled true #txt
Ot0 f20 triggerEnabled false #txt
Ot0 f20 callSignature AutoCompleteDemo() #txt
Ot0 f20 persist false #txt
Ot0 f20 startName 'Auto Complete Demo' #txt
Ot0 f20 taskData '#
#Wed Jun 11 15:21:38 CEST 2014
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Ot0 f20 caseData '#
#Wed Jun 11 12:50:45 CEST 2014
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
Ot0 f20 showInStartList 1 #txt
Ot0 f20 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ot0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>AutoCompleteDemo.ivp</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ot0 f20 @C|.responsibility Everybody #txt
Ot0 f20 113 721 30 30 -65 17 #rect
Ot0 f20 @|StartRequestIcon #fIcon
Ot0 f20 -1|-1|-9671572 #nodeStyle
Ot0 f21 targetWindow NEW:card: #txt
Ot0 f21 targetDisplay TOP #txt
Ot0 f21 richDialogId ch.ivyteam.htmldialog.demo.output.AutoCompleteDemo #txt
Ot0 f21 startMethod start() #txt
Ot0 f21 type htmlDialogDemos.Data #txt
Ot0 f21 requestActionDecl '<> param;' #txt
Ot0 f21 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f21 responseMappingAction 'out=in;
' #txt
Ot0 f21 windowConfiguration '* ' #txt
Ot0 f21 isAsynch false #txt
Ot0 f21 isInnerRd false #txt
Ot0 f21 userContext '* ' #txt
Ot0 f21 248 714 112 44 0 -8 #rect
Ot0 f21 @|RichDialogIcon #fIcon
Ot0 f21 -1|-1|-9671572 #nodeStyle
Ot0 f22 type htmlDialogDemos.Data #txt
Ot0 f22 465 721 30 30 0 15 #rect
Ot0 f22 @|EndIcon #fIcon
Ot0 f22 -1|-1|-9671572 #nodeStyle
Ot0 f23 expr out #txt
Ot0 f23 143 736 248 736 #arcP
Ot0 f24 expr out #txt
Ot0 f24 360 736 465 736 #arcP
Ot0 f15 type htmlDialogDemos.Data #txt
Ot0 f15 465 817 30 30 0 15 #rect
Ot0 f15 @|EndIcon #fIcon
Ot0 f15 -1|-1|-9671572 #nodeStyle
Ot0 f16 targetWindow NEW:card: #txt
Ot0 f16 targetDisplay TOP #txt
Ot0 f16 richDialogId ch.ivyteam.htmldialog.demo.output.DataTableDemo #txt
Ot0 f16 startMethod start() #txt
Ot0 f16 type htmlDialogDemos.Data #txt
Ot0 f16 requestActionDecl '<> param;' #txt
Ot0 f16 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f16 responseMappingAction 'out=in;
' #txt
Ot0 f16 windowConfiguration '* ' #txt
Ot0 f16 isAsynch false #txt
Ot0 f16 isInnerRd false #txt
Ot0 f16 userContext '* ' #txt
Ot0 f16 248 810 112 44 0 -8 #rect
Ot0 f16 @|RichDialogIcon #fIcon
Ot0 f16 -1|-1|-9671572 #nodeStyle
Ot0 f17 outLink DataTableDemo.ivp #txt
Ot0 f17 type htmlDialogDemos.Data #txt
Ot0 f17 inParamDecl '<> param;' #txt
Ot0 f17 actionDecl 'htmlDialogDemos.Data out;
' #txt
Ot0 f17 guid 153D1DFF48C60126 #txt
Ot0 f17 requestEnabled true #txt
Ot0 f17 triggerEnabled false #txt
Ot0 f17 callSignature DataTableDemo() #txt
Ot0 f17 persist false #txt
Ot0 f17 startName 'DataTable Demo' #txt
Ot0 f17 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Ot0 f17 showInStartList 1 #txt
Ot0 f17 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Ot0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DataTableDemo.ivp</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ot0 f17 @C|.responsibility Everybody #txt
Ot0 f17 113 817 30 30 -54 17 #rect
Ot0 f17 @|StartRequestIcon #fIcon
Ot0 f17 -1|-1|-9671572 #nodeStyle
Ot0 f18 expr out #txt
Ot0 f18 143 832 248 832 #arcP
Ot0 f19 expr out #txt
Ot0 f19 360 832 465 832 #arcP
>Proto Ot0 .type htmlDialogDemos.Data #txt
>Proto Ot0 .processKind NORMAL #txt
>Proto Ot0 0 0 32 24 18 0 #rect
>Proto Ot0 @|BIcon #fIcon
Ot0 f5 mainOut f7 tail #connect
Ot0 f7 head f6 mainIn #connect
Ot0 f6 mainOut f9 tail #connect
Ot0 f9 head f8 mainIn #connect
Ot0 f10 mainOut f12 tail #connect
Ot0 f12 head f11 mainIn #connect
Ot0 f11 mainOut f14 tail #connect
Ot0 f14 head f13 mainIn #connect
Ot0 f25 mainOut f28 tail #connect
Ot0 f28 head f27 mainIn #connect
Ot0 f27 mainOut f29 tail #connect
Ot0 f29 head f26 mainIn #connect
Ot0 f30 mainOut f33 tail #connect
Ot0 f33 head f32 mainIn #connect
Ot0 f32 mainOut f34 tail #connect
Ot0 f34 head f31 mainIn #connect
Ot0 f87 mainOut f90 tail #connect
Ot0 f90 head f88 mainIn #connect
Ot0 f88 mainOut f91 tail #connect
Ot0 f91 head f89 mainIn #connect
Ot0 f94 mainOut f95 tail #connect
Ot0 f95 head f92 mainIn #connect
Ot0 f92 mainOut f96 tail #connect
Ot0 f96 head f93 mainIn #connect
Ot0 f2 mainOut f4 tail #connect
Ot0 f4 head f1 mainIn #connect
Ot0 f0 mainOut f3 tail #connect
Ot0 f3 head f2 mainIn #connect
Ot0 f20 mainOut f23 tail #connect
Ot0 f23 head f21 mainIn #connect
Ot0 f21 mainOut f24 tail #connect
Ot0 f24 head f22 mainIn #connect
Ot0 f17 mainOut f18 tail #connect
Ot0 f18 head f16 mainIn #connect
Ot0 f16 mainOut f19 tail #connect
Ot0 f19 head f15 mainIn #connect
