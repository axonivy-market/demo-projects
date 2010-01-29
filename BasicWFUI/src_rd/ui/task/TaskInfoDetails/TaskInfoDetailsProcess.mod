[Ivy]
[>Created: Wed Dec 30 12:30:18 CET 2009]
125DF5806D3F6189 3.13 #module
>Proto >Proto Collection #zClass
Ts0 TaskDetailsDisplayProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f3 '' #zField
Ts0 @RichDialogInitStart f1 '' #zField
Ts0 @PushWFArc f15 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @RichDialogProcessStart f6 '' #zField
Ts0 @RichDialogProcessStep f13 '' #zField
Ts0 @PushWFArc f16 '' #zField
Ts0 @PushWFArc f12 '' #zField
>Proto Ts0 Ts0 TaskDetailsDisplayProcess #zField
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 guid 1168C7DFD01F3BE3 #txt
Ts0 f0 type ui.task.TaskInfoDetails.TaskInfoDetailsData #txt
Ts0 f0 method start() #txt
Ts0 f0 disableUIEvents false #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 inParameterMapAction 'out.task=null;
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 embeddedRdInitializations '* ' #txt
Ts0 f0 86 78 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f3 type ui.task.TaskInfoDetails.TaskInfoDetailsData #txt
Ts0 f3 83 339 26 26 14 0 #rect
Ts0 f3 @|RichDialogProcessEndIcon #fIcon
Ts0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ITask)</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f1 guid 1194BE8DC42AE51C #txt
Ts0 f1 type ui.task.TaskInfoDetails.TaskInfoDetailsData #txt
Ts0 f1 method start(ch.ivyteam.ivy.workflow.ITask) #txt
Ts0 f1 disableUIEvents false #txt
Ts0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ITask aTask> param = methodEvent.getInputArguments();
' #txt
Ts0 f1 inParameterMapAction 'out.task=param.aTask;
' #txt
Ts0 f1 outParameterDecl '<> result;
' #txt
Ts0 f1 embeddedRdInitializations '* ' #txt
Ts0 f1 158 78 20 20 13 0 #rect
Ts0 f1 @|RichDialogInitStartIcon #fIcon
Ts0 f15 expr out #txt
Ts0 f15 168 98 109 352 #arcP
Ts0 f15 1 168 352 #addKink
Ts0 f15 0 0.755865520055364 0 0 #arcLabel
Ts0 f2 expr out #txt
Ts0 f2 96 98 96 339 #arcP
Ts0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f6 guid 11B7F3A2BACC8B90 #txt
Ts0 f6 type ui.task.TaskInfoDetails.TaskInfoDetailsData #txt
Ts0 f6 actionDecl 'ui.task.TaskInfoDetails.TaskInfoDetailsData out;
' #txt
Ts0 f6 actionTable 'out=in;
' #txt
Ts0 f6 214 166 20 20 13 0 #rect
Ts0 f6 @|RichDialogProcessStartIcon #fIcon
Ts0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set titles on border
from CMS entries</name>
        <nameStyle>37,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f13 actionDecl 'ui.task.TaskInfoDetails.TaskInfoDetailsData out;
' #txt
Ts0 f13 actionTable 'out=in;
' #txt
Ts0 f13 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;


(panel.responsibleRoleUserGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskActivator"));
	
(panel.entryInTaskListGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskDetails")
);

(panel.taskStageGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskKindName")
);


(panel.businessMilestoneGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskMilestone")
);

(panel.processingDelayGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskExpiryTimestamp")
);

(panel.blockingDelayGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskBlockedUntilTimestamp")
);' #txt
Ts0 f13 type ui.task.TaskInfoDetails.TaskInfoDetailsData #txt
Ts0 f13 206 252 36 24 22 -6 #rect
Ts0 f13 @|RichDialogProcessStepIcon #fIcon
Ts0 f16 expr out #txt
Ts0 f16 224 186 224 252 #arcP
Ts0 f12 expr out #txt
Ts0 f12 224 276 109 352 #arcP
Ts0 f12 1 224 352 #addKink
Ts0 f12 1 0.24221569246662358 0 0 #arcLabel
>Proto Ts0 .rdData2UIAction 'panel.blockingDelayGridBagLayoutPane.visible=in.#task.#delayTimestamp is initialized;
panel.businessMilestoneGridBagLayoutPane.visible=in.#task.#businessMilestoneTimestamp is initialized;
panel.businessMilestoneTextField.text=(in.#task.#businessMilestoneTimestamp is initialized? new DateTime(in.task.businessMilestoneTimestamp).format("medium"): "n/a");
panel.processingDelayGridBagLayoutPane.visible=in.#task.#expiryTimestamp is initialized;
panel.taskActivatorLabel.iconUri=(in.#task.#activator is initialized? (in.task.activator.isUser()? "/ch/ivyteam/ivy/workflow/ui/security/images/user16": "/ch/ivyteam/ivy/workflow/ui/security/images/role16"): "");
panel.taskActivatorLabel.text=(in.#task.#activator is initialized? (in.task.activator.isUser()? "User": "Role"): "");
panel.taskActivatorTextField.text=(in.#task.#activator is initialized? in.task.activator.getMemberName(): "n/a");
panel.taskBlockingDelayTextField.text=(in.#task.#delayTimestamp is initialized? new DateTime(in.task.delayTimestamp).format("medium"): "n/a");
panel.taskDescriptionLabel.visible=in.#task.#description is initialized;
panel.taskDescriptionScrollPane.visible=in.#task.#description is initialized;
panel.taskDescriptionTextArea.text=(in.#task.#description is initialized? in.task.description: "n/a");
panel.taskExpiryTimestampTextField.text=(in.#task.#expiryTimestamp is initialized? new DateTime(in.task.expiryTimestamp).format("medium"): "n/a");
panel.taskIdIconLabel.toolTipText=(in.#task is initialized? in.task.getIdentifier().toString(): "n/a");
panel.taskIdTextField.text=(in.#task is initialized? in.task.getIdentifier().toString(): "n/a");
panel.taskKindCodeLabel.visible=in.#task is initialized && in.task.getKindCode() is initialized;
panel.taskKindCodeTextField.text=(in.#task is initialized && in.task.getKindCode() is initialized? in.task.getKindCode(): "n/a");
panel.taskKindCodeTextField.visible=in.#task is initialized && in.task.getKindCode() is initialized;
panel.taskKindLabel.visible=in.#task is initialized && in.task.getKindCode() is initialized;
panel.taskKindNameLabel.visible=in.#task is initialized && in.task.getKindName() is initialized;
panel.taskKindNameTextField.text=(in.#task is initialized && in.task.getKindName() is initialized? in.task.getKindName(): "n/a");
panel.taskKindNameTextField.visible=in.#task is initialized && in.task.getKindName() is initialized;
panel.taskNameTextField.text=(in.#task.#name is initialized? in.task.name: "n/a");
panel.taskPriorityIconLabel.iconUri=(in.#task is initialized && in.task.getState() is initialized? "/ch/ivyteam/ivy/workflow/ui/task/images/taskPriority" + in.task.getPriority().intValue() + "_16": "");
panel.taskPriorityIconLabel.toolTipText=(in.#task is initialized? ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/priority") + in.task.getPriority().toString(): "n/a");
panel.taskPriorityTextField.text=(in.#task is initialized? in.task.getPriority().toString(): "n/a");
panel.taskStartTimestampTextField.text=(in.#task is initialized && in.task.getStartTimestamp() is initialized? new DateTime(in.task.getStartTimestamp()).format("medium"): "n/a");
panel.taskStateIconLabel.iconUri=(in.#task is initialized? "/ch/ivyteam/ivy/workflow/ui/task/images/taskState" + in.task.getState() + "16": "");
panel.taskStateTextField.text=(in.#task is initialized && (in.#task.getState() is initialized)? in.task.getState().toString(): "n/a");
' #txt
>Proto Ts0 .type ui.task.TaskInfoDetails.TaskInfoDetailsData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f1 mainOut f15 tail #connect
Ts0 f15 head f3 mainIn #connect
Ts0 f0 mainOut f2 tail #connect
Ts0 f2 head f3 mainIn #connect
Ts0 f6 mainOut f16 tail #connect
Ts0 f16 head f13 mainIn #connect
Ts0 f13 mainOut f12 tail #connect
Ts0 f12 head f3 mainIn #connect
