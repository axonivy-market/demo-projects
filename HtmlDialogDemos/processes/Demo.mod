[Ivy]
[>Created: Tue Dec 04 12:39:43 CET 2012]
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
Do0 @GridStep f35 '' #zField
Do0 @PushWFArc f36 '' #zField
Do0 @PushWFArc f18 '' #zField
Do0 @EndTask f31 '' #zField
Do0 @StartRequest f30 '' #zField
Do0 @PushWFArc f33 '' #zField
Do0 @PushWFArc f34 '' #zField
Do0 @RichDialog f32 '' #zField
Do0 @EndTask f37 '' #zField
Do0 @RichDialog f38 '' #zField
Do0 @StartRequest f39 '' #zField
Do0 @PushWFArc f40 '' #zField
Do0 @PushWFArc f41 '' #zField
Do0 @EndTask f43 '' #zField
Do0 @RichDialog f44 '' #zField
Do0 @StartRequest f42 '' #zField
Do0 @PushWFArc f46 '' #zField
Do0 @PushWFArc f45 '' #zField
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
Do0 f17 430 348 36 24 20 -2 #rect
Do0 f17 @|RichDialogIcon #fIcon
Do0 f19 expr out #txt
Do0 f19 448 372 448 395 #arcP
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
Do0 f35 actionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f35 actionTable 'out=in;
' #txt
Do0 f35 actionCode 'import java.util.Locale;
import ch.ivyteam.ivy.request.IHttpRequest;
IHttpRequest httpRequest = ivy.request as IHttpRequest;
String locale = httpRequest.getFirstParameter("language");
if (locale != "")
{
	ivy.session.setContentLocale(new Locale(locale));
	ivy.session.setFormattingLocale(new Locale(locale));
}' #txt
Do0 f35 type htmlDialogDemos.Data #txt
Do0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set content language for selenium test</name>
        <nameStyle>38,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Do0 f35 430 308 36 24 22 -5 #rect
Do0 f35 @|StepIcon #fIcon
Do0 f36 expr out #txt
Do0 f36 448 301 448 308 #arcP
Do0 f18 expr out #txt
Do0 f18 448 332 448 348 #arcP
Do0 f31 type htmlDialogDemos.Data #txt
Do0 f31 435 595 26 26 14 0 #rect
Do0 f31 @|EndIcon #fIcon
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
Do0 f33 expr out #txt
Do0 f33 448 493 448 532 #arcP
Do0 f34 expr out #txt
Do0 f34 448 556 448 595 #arcP
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
Do0 f37 type htmlDialogDemos.Data #txt
Do0 f37 635 603 26 26 14 0 #rect
Do0 f37 @|EndIcon #fIcon
Do0 f38 targetWindow NEW:card: #txt
Do0 f38 targetDisplay TOP #txt
Do0 f38 richDialogId ch.ivyteam.htmldialog.demo.AjaxMethodCallDemo #txt
Do0 f38 startMethod start() #txt
Do0 f38 type htmlDialogDemos.Data #txt
Do0 f38 requestActionDecl '<> param;' #txt
Do0 f38 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f38 responseMappingAction 'out=in;
' #txt
Do0 f38 windowConfiguration '* ' #txt
Do0 f38 isAsynch false #txt
Do0 f38 isInnerRd false #txt
Do0 f38 userContext '* ' #txt
Do0 f38 630 540 36 24 20 -2 #rect
Do0 f38 @|RichDialogIcon #fIcon
Do0 f39 outLink MethodCallWithAjaxDemo.ivp #txt
Do0 f39 type htmlDialogDemos.Data #txt
Do0 f39 inParamDecl '<> param;' #txt
Do0 f39 actionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f39 guid 13A405E375229DB6 #txt
Do0 f39 requestEnabled true #txt
Do0 f39 triggerEnabled false #txt
Do0 f39 callSignature MethodCallWithAjaxDemo() #txt
Do0 f39 persist false #txt
Do0 f39 startName 'Method call with Ajax' #txt
Do0 f39 taskData '#
#Wed Nov 14 11:52:04 CET 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Do0 f39 caseData '#
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
Do0 f39 showInStartList 1 #txt
Do0 f39 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Do0 f39 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>MethodCallWithAjaxDemo.ivp</name>
        <nameStyle>26,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Do0 f39 @C|.responsibility Everybody #txt
Do0 f39 635 475 26 26 14 0 #rect
Do0 f39 @|StartRequestIcon #fIcon
Do0 f40 expr out #txt
Do0 f40 648 501 648 540 #arcP
Do0 f41 expr out #txt
Do0 f41 648 564 648 603 #arcP
Do0 f43 type htmlDialogDemos.Data #txt
Do0 f43 851 603 26 26 14 0 #rect
Do0 f43 @|EndIcon #fIcon
Do0 f44 targetWindow NEW:card: #txt
Do0 f44 targetDisplay TOP #txt
Do0 f44 richDialogId htmlDialogDemos.ManagedBeanDemo #txt
Do0 f44 startMethod start() #txt
Do0 f44 type htmlDialogDemos.Data #txt
Do0 f44 requestActionDecl '<> param;' #txt
Do0 f44 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f44 responseMappingAction 'out=in;
' #txt
Do0 f44 windowConfiguration '* ' #txt
Do0 f44 isAsynch false #txt
Do0 f44 isInnerRd false #txt
Do0 f44 userContext '* ' #txt
Do0 f44 846 540 36 24 20 -2 #rect
Do0 f44 @|RichDialogIcon #fIcon
Do0 f42 outLink ManagedBeanDemo.ivp #txt
Do0 f42 type htmlDialogDemos.Data #txt
Do0 f42 inParamDecl '<> param;' #txt
Do0 f42 actionDecl 'htmlDialogDemos.Data out;
' #txt
Do0 f42 guid 13B65B6D20632B6F #txt
Do0 f42 requestEnabled true #txt
Do0 f42 triggerEnabled false #txt
Do0 f42 callSignature ManagedBeanDemo() #txt
Do0 f42 persist false #txt
Do0 f42 startName 'ManagedBean Demo' #txt
Do0 f42 taskData '#
#Tue Dec 04 12:39:38 CET 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Do0 f42 caseData '#
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
Do0 f42 showInStartList 1 #txt
Do0 f42 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Do0 f42 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ManagedBeanDemo.ivp</name>
        <nameStyle>19,5,7
</nameStyle>
        <desc>ManagedBean Demo</desc>
    </language>
</elementInfo>
' #txt
Do0 f42 @C|.responsibility Everybody #txt
Do0 f42 851 475 26 26 14 0 #rect
Do0 f42 @|StartRequestIcon #fIcon
Do0 f46 expr out #txt
Do0 f46 864 564 864 603 #arcP
Do0 f45 expr out #txt
Do0 f45 864 501 864 540 #arcP
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
Do0 f15 mainOut f36 tail #connect
Do0 f36 head f35 mainIn #connect
Do0 f35 mainOut f18 tail #connect
Do0 f18 head f17 mainIn #connect
Do0 f39 mainOut f40 tail #connect
Do0 f40 head f38 mainIn #connect
Do0 f38 mainOut f41 tail #connect
Do0 f41 head f37 mainIn #connect
Do0 f42 mainOut f45 tail #connect
Do0 f45 head f44 mainIn #connect
Do0 f44 mainOut f46 tail #connect
Do0 f46 head f43 mainIn #connect
