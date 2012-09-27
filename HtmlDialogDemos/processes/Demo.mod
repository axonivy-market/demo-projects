[Ivy]
[>Created: Thu Sep 27 09:08:05 CEST 2012]
139D3A4CEEEDAA4B 3.17 #module
>Proto >Proto Collection #zClass
Do0 Demo Big #zClass
Do0 B #cInfo
Do0 #process
Do0 @TextInP .resExport .resExport #zField
Do0 @TextInP .type .type #zField
Do0 @TextInP .processKind .processKind #zField
Do0 @AnnotationInP-0n ai ai #zField
Do0 @TextInP .xml .xml #zField
Do0 @TextInP .responsibility .responsibility #zField
Do0 @StartRequest f0 '' #zField
Do0 @EndTask f1 '' #zField
Do0 @RichDialog f2 '' #zField
Do0 @PushWFArc f4 '' #zField
Do0 @StartRequest f5 '' #zField
Do0 @RichDialog f6 '' #zField
Do0 @PushWFArc f7 '' #zField
Do0 @EndTask f8 '' #zField
Do0 @PushWFArc f9 '' #zField
Do0 @PushWFArc f3 '' #zField
Do0 @StartRequest f10 '' #zField
Do0 @RichDialog f11 '' #zField
Do0 @PushWFArc f12 '' #zField
Do0 @EndTask f13 '' #zField
Do0 @PushWFArc f14 '' #zField
Do0 @StartRequest f15 '' #zField
Do0 @EndTask f16 '' #zField
Do0 @RichDialog f17 '' #zField
Do0 @PushWFArc f18 '' #zField
Do0 @PushWFArc f19 '' #zField
Do0 @StartRequest f20 '' #zField
Do0 @RichDialog f21 '' #zField
Do0 @EndTask f22 '' #zField
Do0 @PushWFArc f23 '' #zField
Do0 @PushWFArc f24 '' #zField
Do0 @StartRequest f25 '' #zField
Do0 @EndTask f26 '' #zField
Do0 @RichDialog f27 '' #zField
Do0 @PushWFArc f28 '' #zField
Do0 @PushWFArc f29 '' #zField
Do0 @StartRequest f30 '' #zField
Do0 @EndTask f31 '' #zField
Do0 @RichDialog f32 '' #zField
Do0 @PushWFArc f33 '' #zField
Do0 @PushWFArc f34 '' #zField
>Proto Do0 Do0 Demo #zField
Do0 f0 outLink start.ivp #txt
Do0 f0 type htmlDialogDemos.Data #txt
Do0 f0 inParamDecl '<> param;' #txt
Do0 f0 actionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f0 guid 139D3A4DA0038841 #txt
Do0 f0 requestEnabled true #txt
Do0 f0 triggerEnabled false #txt
Do0 f0 callSignature start() #txt
Do0 f0 persist false #txt
Do0 f0 startName 'All HtmlDialog Demos' #txt
Do0 f0 taskData '#
#Thu Sep 20 15:31:34 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Do0 f0 caseData '#
#Thu Sep 20 15:31:34 CEST 2012
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
Do0 f0 showInStartList 1 #txt
Do0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Do0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Do0 f0 @C|.responsibility Everybody #txt
Do0 f0 83 51 26 26 14 0 #rect
Do0 f0 @|StartRequestIcon #fIcon
Do0 f1 type htmlDialogDemos.Data #txt
Do0 f1 83 179 26 26 14 0 #rect
Do0 f1 @|EndIcon #fIcon
Do0 f2 targetWindow NEW:card: #txt
Do0 f2 targetDisplay TOP #txt
Do0 f2 richDialogId ch.ivyteam.htmldialog.demo.Main #txt
Do0 f2 startMethod start() #txt
Do0 f2 type htmlDialogDemos.Data #txt
Do0 f2 requestActionDecl '<> param;' #txt
Do0 f2 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f2 responseMappingAction 'out=in;
' #txt
Do0 f2 windowConfiguration '* ' #txt
Do0 f2 isAsynch false #txt
Do0 f2 isInnerRd false #txt
Do0 f2 userContext '* ' #txt
Do0 f2 78 116 36 24 20 -2 #rect
Do0 f2 @|RichDialogIcon #fIcon
Do0 f4 expr out #txt
Do0 f4 96 140 96 179 #arcP
Do0 f5 outLink OrderListDemo.ivp #txt
Do0 f5 type htmlDialogDemos.Data #txt
Do0 f5 inParamDecl '<> param;' #txt
Do0 f5 actionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f5 guid 139D3AF6915A9C77 #txt
Do0 f5 requestEnabled true #txt
Do0 f5 triggerEnabled false #txt
Do0 f5 callSignature OrderListDemo() #txt
Do0 f5 persist false #txt
Do0 f5 startName OrderListDemo #txt
Do0 f5 taskData '#
#Mon Sep 17 14:54:03 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Do0 f5 caseData '#
#Mon Sep 17 14:54:03 CEST 2012
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
Do0 f5 showInStartList 1 #txt
Do0 f5 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Do0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OrderListDemo.ivp</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Do0 f5 @C|.responsibility Everybody #txt
Do0 f5 83 275 26 26 14 0 #rect
Do0 f5 @|StartRequestIcon #fIcon
Do0 f6 targetWindow NEW:card: #txt
Do0 f6 targetDisplay TOP #txt
Do0 f6 richDialogId htmlDialogDemos.OrderListDemo #txt
Do0 f6 startMethod start() #txt
Do0 f6 type htmlDialogDemos.Data #txt
Do0 f6 requestActionDecl '<> param;' #txt
Do0 f6 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f6 responseMappingAction 'out=in;
' #txt
Do0 f6 windowConfiguration '* ' #txt
Do0 f6 isAsynch false #txt
Do0 f6 isInnerRd false #txt
Do0 f6 userContext '* ' #txt
Do0 f6 78 340 36 24 20 -2 #rect
Do0 f6 @|RichDialogIcon #fIcon
Do0 f7 expr out #txt
Do0 f7 96 301 96 340 #arcP
Do0 f8 type htmlDialogDemos.Data #txt
Do0 f8 83 395 26 26 14 0 #rect
Do0 f8 @|EndIcon #fIcon
Do0 f9 expr out #txt
Do0 f9 96 364 96 395 #arcP
Do0 f3 expr out #txt
Do0 f3 96 77 96 116 #arcP
Do0 f10 outLink EditableTableDemo.ivp #txt
Do0 f10 type htmlDialogDemos.Data #txt
Do0 f10 inParamDecl '<> param;' #txt
Do0 f10 actionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f10 guid 139D97D3AA4DD56C #txt
Do0 f10 requestEnabled true #txt
Do0 f10 triggerEnabled false #txt
Do0 f10 callSignature EditableTableDemo() #txt
Do0 f10 persist false #txt
Do0 f10 startName 'Editable Table Demo' #txt
Do0 f10 taskData '#
#Thu Sep 20 15:31:19 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Do0 f10 caseData '#
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
Do0 f10 showInStartList 1 #txt
Do0 f10 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Do0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>EditableTableDemo.ivp</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Do0 f10 @C|.responsibility Everybody #txt
Do0 f10 243 275 26 26 14 0 #rect
Do0 f10 @|StartRequestIcon #fIcon
Do0 f11 targetWindow NEW:card: #txt
Do0 f11 targetDisplay TOP #txt
Do0 f11 richDialogId htmlDialogDemos.EditableTableDemo #txt
Do0 f11 startMethod start() #txt
Do0 f11 type htmlDialogDemos.Data #txt
Do0 f11 requestActionDecl '<> param;' #txt
Do0 f11 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f11 responseMappingAction 'out=in;
' #txt
Do0 f11 windowConfiguration '* ' #txt
Do0 f11 isAsynch false #txt
Do0 f11 isInnerRd false #txt
Do0 f11 userContext '* ' #txt
Do0 f11 238 340 36 24 20 -2 #rect
Do0 f11 @|RichDialogIcon #fIcon
Do0 f12 expr out #txt
Do0 f12 256 301 256 340 #arcP
Do0 f13 type htmlDialogDemos.Data #txt
Do0 f13 243 395 26 26 14 0 #rect
Do0 f13 @|EndIcon #fIcon
Do0 f14 expr out #txt
Do0 f14 256 364 256 395 #arcP
Do0 f15 outLink FormDemo.ivp #txt
Do0 f15 type htmlDialogDemos.Data #txt
Do0 f15 inParamDecl '<> param;' #txt
Do0 f15 actionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f15 guid 139E31D7F30F51DD #txt
Do0 f15 requestEnabled true #txt
Do0 f15 triggerEnabled false #txt
Do0 f15 callSignature FormDemo() #txt
Do0 f15 persist false #txt
Do0 f15 startName FormDemo #txt
Do0 f15 taskData '#
#Thu Sep 20 12:00:05 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Do0 f15 caseData '#
#Thu Sep 20 12:00:05 CEST 2012
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
Do0 f15 showInStartList 1 #txt
Do0 f15 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Do0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>FormDemo.ivp</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Do0 f15 @C|.responsibility Everybody #txt
Do0 f15 435 275 26 26 14 0 #rect
Do0 f15 @|StartRequestIcon #fIcon
Do0 f16 type htmlDialogDemos.Data #txt
Do0 f16 435 395 26 26 14 0 #rect
Do0 f16 @|EndIcon #fIcon
Do0 f17 targetWindow NEW:card: #txt
Do0 f17 targetDisplay TOP #txt
Do0 f17 richDialogId ch.ivyteam.htmldialog.demo.FormDemo #txt
Do0 f17 startMethod start() #txt
Do0 f17 type htmlDialogDemos.Data #txt
Do0 f17 requestActionDecl '<> param;' #txt
Do0 f17 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f17 responseMappingAction 'out=in;
' #txt
Do0 f17 windowConfiguration '* ' #txt
Do0 f17 isAsynch false #txt
Do0 f17 isInnerRd false #txt
Do0 f17 userContext '* ' #txt
Do0 f17 430 340 36 24 20 -2 #rect
Do0 f17 @|RichDialogIcon #fIcon
Do0 f18 expr out #txt
Do0 f18 448 301 448 340 #arcP
Do0 f19 expr out #txt
Do0 f19 448 364 448 395 #arcP
Do0 f20 outLink PartialUpdateDemo.ivp #txt
Do0 f20 type htmlDialogDemos.Data #txt
Do0 f20 inParamDecl '<> param;' #txt
Do0 f20 actionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f20 guid 139E3F9CF71F9D6B #txt
Do0 f20 requestEnabled true #txt
Do0 f20 triggerEnabled false #txt
Do0 f20 callSignature PartialUpdateDemo() #txt
Do0 f20 persist false #txt
Do0 f20 startName 'Partial Update Demo' #txt
Do0 f20 taskData '#
#Thu Sep 20 16:00:07 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Do0 f20 caseData '#
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
Do0 f20 showInStartList 1 #txt
Do0 f20 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Do0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PartialUpdateDemo.ivp</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Do0 f20 @C|.responsibility Everybody #txt
Do0 f20 83 467 26 26 14 0 #rect
Do0 f20 @|StartRequestIcon #fIcon
Do0 f21 targetWindow NEW:card: #txt
Do0 f21 targetDisplay TOP #txt
Do0 f21 richDialogId ch.ivyteam.htmldialog.demo.PartialUpdateDemo #txt
Do0 f21 startMethod start() #txt
Do0 f21 type htmlDialogDemos.Data #txt
Do0 f21 requestActionDecl '<> param;' #txt
Do0 f21 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f21 responseMappingAction 'out=in;
' #txt
Do0 f21 windowConfiguration '* ' #txt
Do0 f21 isAsynch false #txt
Do0 f21 isInnerRd false #txt
Do0 f21 userContext '* ' #txt
Do0 f21 78 532 36 24 20 -2 #rect
Do0 f21 @|RichDialogIcon #fIcon
Do0 f22 type htmlDialogDemos.Data #txt
Do0 f22 83 595 26 26 14 0 #rect
Do0 f22 @|EndIcon #fIcon
Do0 f23 expr out #txt
Do0 f23 96 493 96 532 #arcP
Do0 f24 expr out #txt
Do0 f24 96 556 96 595 #arcP
Do0 f25 outLink PickListDemo.ivp #txt
Do0 f25 type htmlDialogDemos.Data #txt
Do0 f25 inParamDecl '<> param;' #txt
Do0 f25 actionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f25 guid 139E7CB3B5F25EF5 #txt
Do0 f25 requestEnabled true #txt
Do0 f25 triggerEnabled false #txt
Do0 f25 callSignature PickListDemo() #txt
Do0 f25 persist false #txt
Do0 f25 startName 'PickList Demo' #txt
Do0 f25 taskData '#
#Mon Sep 24 16:28:19 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Do0 f25 caseData '#
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
Do0 f25 showInStartList 1 #txt
Do0 f25 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Do0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PickListDemo.ivp</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Do0 f25 @C|.responsibility Everybody #txt
Do0 f25 275 467 26 26 14 0 #rect
Do0 f25 @|StartRequestIcon #fIcon
Do0 f26 type htmlDialogDemos.Data #txt
Do0 f26 275 595 26 26 14 0 #rect
Do0 f26 @|EndIcon #fIcon
Do0 f27 targetWindow NEW:card: #txt
Do0 f27 targetDisplay TOP #txt
Do0 f27 richDialogId htmlDialogDemos.PickListDemo #txt
Do0 f27 startMethod start() #txt
Do0 f27 type htmlDialogDemos.Data #txt
Do0 f27 requestActionDecl '<> param;' #txt
Do0 f27 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f27 responseMappingAction 'out=in;
' #txt
Do0 f27 windowConfiguration '* ' #txt
Do0 f27 isAsynch false #txt
Do0 f27 isInnerRd false #txt
Do0 f27 userContext '* ' #txt
Do0 f27 270 532 36 24 20 -2 #rect
Do0 f27 @|RichDialogIcon #fIcon
Do0 f28 expr out #txt
Do0 f28 288 493 288 532 #arcP
Do0 f29 expr out #txt
Do0 f29 288 556 288 595 #arcP
Do0 f30 outLink ResourceDemo.ivp #txt
Do0 f30 type htmlDialogDemos.Data #txt
Do0 f30 inParamDecl '<> param;' #txt
Do0 f30 actionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f30 guid 13A020DCA6F9EF6A #txt
Do0 f30 requestEnabled true #txt
Do0 f30 triggerEnabled false #txt
Do0 f30 callSignature ResourceDemo() #txt
Do0 f30 persist false #txt
Do0 f30 startName 'Resource Demo' #txt
Do0 f30 taskData '#
#Thu Sep 27 09:07:48 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Do0 f30 caseData '#
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
Do0 f30 showInStartList 1 #txt
Do0 f30 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Do0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ResourceDemo.ivp</name>
    </language>
</elementInfo>
' #txt
Do0 f30 @C|.responsibility Everybody #txt
Do0 f30 435 467 26 26 14 0 #rect
Do0 f30 @|StartRequestIcon #fIcon
Do0 f31 type htmlDialogDemos.Data #txt
Do0 f31 435 595 26 26 14 0 #rect
Do0 f31 @|EndIcon #fIcon
Do0 f32 targetWindow NEW:card: #txt
Do0 f32 targetDisplay TOP #txt
Do0 f32 richDialogId ch.ivyteam.htmldialog.demo.ResourceDemo #txt
Do0 f32 startMethod start() #txt
Do0 f32 type htmlDialogDemos.Data #txt
Do0 f32 requestActionDecl '<> param;' #txt
Do0 f32 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f32 responseMappingAction 'out=in;
' #txt
Do0 f32 windowConfiguration '* ' #txt
Do0 f32 isAsynch false #txt
Do0 f32 isInnerRd false #txt
Do0 f32 userContext '* ' #txt
Do0 f32 430 532 36 24 20 -2 #rect
Do0 f32 @|RichDialogIcon #fIcon
Do0 f33 expr out #txt
Do0 f33 448 493 448 532 #arcP
Do0 f34 expr out #txt
Do0 f34 448 556 448 595 #arcP
>Proto Do0 .type htmlDialogDemos.Data #txt
>Proto Do0 .processKind NORMAL #txt
>Proto Do0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Main Demo </swimlaneLabel>
        <swimlaneLabel>Demos</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>248</swimlaneSize>
    <swimlaneSize>400</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-6710887</swimlaneColor>
</elementInfo>
' #txt
>Proto Do0 0 0 32 24 18 0 #rect
>Proto Do0 @|BIcon #fIcon
Do0 f2 mainOut f4 tail #connect
Do0 f4 head f1 mainIn #connect
Do0 f5 mainOut f7 tail #connect
Do0 f7 head f6 mainIn #connect
Do0 f6 mainOut f9 tail #connect
Do0 f9 head f8 mainIn #connect
Do0 f0 mainOut f3 tail #connect
Do0 f3 head f2 mainIn #connect
Do0 f10 mainOut f12 tail #connect
Do0 f12 head f11 mainIn #connect
Do0 f11 mainOut f14 tail #connect
Do0 f14 head f13 mainIn #connect
Do0 f15 mainOut f18 tail #connect
Do0 f18 head f17 mainIn #connect
Do0 f17 mainOut f19 tail #connect
Do0 f19 head f16 mainIn #connect
Do0 f20 mainOut f23 tail #connect
Do0 f23 head f21 mainIn #connect
Do0 f21 mainOut f24 tail #connect
Do0 f24 head f22 mainIn #connect
Do0 f25 mainOut f28 tail #connect
Do0 f28 head f27 mainIn #connect
Do0 f27 mainOut f29 tail #connect
Do0 f29 head f26 mainIn #connect
Do0 f30 mainOut f33 tail #connect
Do0 f33 head f32 mainIn #connect
Do0 f32 mainOut f34 tail #connect
Do0 f34 head f31 mainIn #connect
