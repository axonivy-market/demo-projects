[Ivy]
[>Created: Tue Jun 15 13:39:45 CEST 2010]
1168C7BC48A94CAE 3.12 #module
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
Ts0 @RichDialogMethodStart f8 '' #zField
Ts0 @RichDialogMethodStart f9 '' #zField
Ts0 @RichDialogBroadcastStart f21 '' #zField
Ts0 @RichDialogProcessStep f26 '' #zField
Ts0 @PushWFArc f10 '' #zField
Ts0 @PushWFArc f14 '' #zField
Ts0 @PushWFArc f11 '' #zField
Ts0 @RichDialogInitStart f1 '' #zField
Ts0 @PushWFArc f7 '' #zField
Ts0 @PushWFArc f15 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @RichDialogMethodStart f4 '' #zField
Ts0 @PushWFArc f5 '' #zField
Ts0 @RichDialogProcessStart f6 '' #zField
Ts0 @RichDialogBroadcastStart f17 '' #zField
Ts0 @PushWFArc f18 '' #zField
Ts0 @InfoButton f19 '' #zField
Ts0 @AnnotationArc f20 '' #zField
Ts0 @PushWFArc f22 '' #zField
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
Ts0 f0 type ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData #txt
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
Ts0 f3 type ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData #txt
Ts0 f3 83 339 26 26 14 0 #rect
Ts0 f3 @|RichDialogProcessEndIcon #fIcon
Ts0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Ts0 f8 guid 118ADDD1FC476035 #txt
Ts0 f8 type ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData #txt
Ts0 f8 method refresh() #txt
Ts0 f8 disableUIEvents false #txt
Ts0 f8 454 78 20 20 13 0 #rect
Ts0 f8 @|RichDialogMethodStartIcon #fIcon
Ts0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setTask(ITask)</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f9 guid 118ADDD29C756465 #txt
Ts0 f9 type ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData #txt
Ts0 f9 method setTask(ch.ivyteam.ivy.workflow.ITask) #txt
Ts0 f9 disableUIEvents false #txt
Ts0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ITask aTask> param = methodEvent.getInputArguments();
' #txt
Ts0 f9 inParameterMapAction 'out.task=param.aTask;
' #txt
Ts0 f9 outParameterDecl '<> result;
' #txt
Ts0 f9 350 78 20 20 13 0 #rect
Ts0 f9 @|RichDialogMethodStartIcon #fIcon
Ts0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Accepted broadcast: xivyTaskStateChanged</name>
        <nameStyle>40,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f21 guid 118BDEDA209E5E6D #txt
Ts0 f21 type ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData #txt
Ts0 f21 broadcast xivyTaskStateChanged #txt
Ts0 f21 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData out;
' #txt
Ts0 f21 actionTable 'out=in;
' #txt
Ts0 f21 534 78 20 20 13 0 #rect
Ts0 f21 @|RichDialogBroadcastStartIcon #fIcon
Ts0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>do nothing
just finish the RD process 
and fires the up databinding (rdData2ui)</name>
        <nameStyle>79,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f26 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData out;
' #txt
Ts0 f26 actionTable 'out=in;
' #txt
Ts0 f26 type ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData #txt
Ts0 f26 446 220 36 24 20 -2 #rect
Ts0 f26 @|RichDialogProcessStepIcon #fIcon
Ts0 f10 expr out #txt
Ts0 f10 464 98 464 220 #arcP
Ts0 f10 0 0.24287762749842817 0 0 #arcLabel
Ts0 f14 expr out #txt
Ts0 f14 544 98 482 232 #arcP
Ts0 f14 1 544 232 #addKink
Ts0 f14 1 0.09048993960058087 0 0 #arcLabel
Ts0 f11 expr out #txt
Ts0 f11 464 244 109 352 #arcP
Ts0 f11 1 464 352 #addKink
Ts0 f11 1 0.2973429828297244 0 0 #arcLabel
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
Ts0 f1 type ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData #txt
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
Ts0 f7 expr out #txt
Ts0 f7 360 98 109 352 #arcP
Ts0 f7 1 360 352 #addKink
Ts0 f7 1 0.1433108194909679 0 0 #arcLabel
Ts0 f15 expr out #txt
Ts0 f15 168 98 109 352 #arcP
Ts0 f15 1 168 352 #addKink
Ts0 f15 0 0.755865520055364 0 0 #arcLabel
Ts0 f2 expr out #txt
Ts0 f2 96 98 96 339 #arcP
Ts0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>taskIsInitialized()</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f4 guid 11A012E98BEECD36 #txt
Ts0 f4 type ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData #txt
Ts0 f4 method taskIsInitialized() #txt
Ts0 f4 disableUIEvents false #txt
Ts0 f4 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f4 outParameterDecl '<java.lang.Boolean isInitialized> result;
' #txt
Ts0 f4 outParameterMapAction 'result.isInitialized=(in.#task != null);
' #txt
Ts0 f4 382 126 20 20 13 0 #rect
Ts0 f4 @|RichDialogMethodStartIcon #fIcon
Ts0 f5 expr out #txt
Ts0 f5 392 146 109 352 #arcP
Ts0 f5 1 392 352 #addKink
Ts0 f5 1 0.13092782784001744 0 0 #arcLabel
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
Ts0 f6 type ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData #txt
Ts0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData out;
' #txt
Ts0 f6 actionTable 'out=in;
' #txt
Ts0 f6 214 166 20 20 13 0 #rect
Ts0 f6 @|RichDialogProcessStartIcon #fIcon
Ts0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy_systemevent_workflow_task_changed</name>
    </language>
</elementInfo>
' #txt
Ts0 f17 guid 11E46326FF259534 #txt
Ts0 f17 type ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData #txt
Ts0 f17 broadcast ivy_systemevent_workflow_task_changed #txt
Ts0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData out;
' #txt
Ts0 f17 actionTable 'out=in;
' #txt
Ts0 f17 766 70 20 20 13 0 #rect
Ts0 f17 @|RichDialogBroadcastStartIcon #fIcon
Ts0 f18 expr out #txt
Ts0 f18 776 90 109 352 #arcP
Ts0 f18 1 776 352 #addKink
Ts0 f18 1 0.2985192596620074 0 0 #arcLabel
Ts0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Do nothing, just update accept the broadcast message,
the databinding should load the latest data...</name>
        <nameStyle>100,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f19 908 44 24 24 10 0 #rect
Ts0 f19 @|IBIcon #fIcon
Ts0 f20 908 56 785 78 #arcP
Ts0 f22 expr out #txt
Ts0 f22 224 186 108 351 #arcP
Ts0 f22 1 224 344 #addKink
Ts0 f22 0 0.877975530475613 0 0 #arcLabel
>Proto Ts0 .rdData2UIAction 'panel.businessMilestoneLabel.visible=in.#task.getBusinessMilestoneTimestamp() is initialized;
panel.businessMilestoneTextField.text=(in.#task.#businessMilestoneTimestamp is initialized? in.task.businessMilestoneTimestamp.format(""): "");
panel.taskActivatorTextField.text=(in.#task.#activator is initialized? in.task.activator.getMemberName(): "");
panel.taskBlockingDelayLabel.visible=in.#task.getDelayTimestamp() is initialized;
panel.taskBlockingDelayTextField.text=(in.#task.#delayTimestamp is initialized? in.task.delayTimestamp.format(""): "");
panel.taskBlockingDelayTextField.visible=in.#task.getDelayTimestamp() is initialized;
panel.taskDescriptionLabel.visible=in.#task.#description is initialized;
panel.taskDescriptionScrollPane.visible=in.#task.#description is initialized;
panel.taskDescriptionTextArea.text=(in.#task.#description is initialized? in.task.description: "n/a");
panel.taskExpiryTimestampTextField.text=(in.#task.#expiryTimestamp is initialized? in.task.expiryTimestamp.format(""): "");
panel.taskIdLabel.toolTipText=(in.#task is initialized? in.task.getId().toString(): "");
panel.taskIdTextField.text=(in.#task is initialized? in.task.getId().toString(): "");
panel.taskKindCodeLabel.visible=in.task.getKindCode() is initialized || in.task.getKindName() is initialized;
panel.taskKindCodeTextField.text=(in.#task is initialized && in.task.getKindCode() is initialized? in.task.getKindCode(): "");
panel.taskKindCodeTextField.visible=in.task.getKindCode() is initialized;
panel.taskKindNameTextField.text=in.task.getKindName() is initialized? in.task.getKindName(): "";
panel.taskKindNameTextField.visible=in.task.getKindName() is initialized;
panel.taskNameTextField.text=(in.#task.#name is initialized? in.task.name: "");
panel.taskPriorityLabel.iconUri="/ch/ivyteam/ivy/workflow/ui/common/workflowPriorities/images/" + in.task.getPriority().intValue() + "_16";
panel.taskPriorityLabel.toolTipText=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/taskPriority/plainStrings/" + in.task.getPriority().intValue());
panel.taskPriorityTextField.text=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/taskPriority/plainStrings/" + in.task.getPriority().intValue());
panel.taskStartTimestampTextField.text=in.task.getStartTimestamp() is initialized? in.task.getStartTimestamp().format(""): "";
panel.taskStateLabel.iconUri="/ch/ivyteam/ivy/workflow/ui/task/taskState/images/" + in.task.getState() + "16";
panel.taskStateTextField.text=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/taskState/plainStrings/" + in.task.getState());
panel.workerUserNameLabel.visible=in.#task.getWorkerUserName() is initialized;
panel.workerUserNameTextField.text=in.task.getWorkerUserName() is initialized?
	in.task.getWorkerUserName()
		+ (in.#task is initialized && in.#task.getEndTimestamp() is initialized? " (" + in.#task.getEndTimestamp().format() + ")": "")
	:"";
panel.workerUserNameTextField.visible=in.#task.getWorkerUserName() is initialized;
panel.taskExpiryTimestampLabel.visible=in.#task.getExpiryTimestamp() is initialized;
panel.taskExpiryTimestampTextField.visible=in.#task.getExpiryTimestamp() is initialized;
' #txt
>Proto Ts0 .type ch.ivyteam.ivy.workflow.ui.task.TaskInformationDetailsDisplay.TaskInformationDetailsDisplayData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f8 mainOut f10 tail #connect
Ts0 f10 head f26 mainIn #connect
Ts0 f21 mainOut f14 tail #connect
Ts0 f14 head f26 mainIn #connect
Ts0 f26 mainOut f11 tail #connect
Ts0 f11 head f3 mainIn #connect
Ts0 f9 mainOut f7 tail #connect
Ts0 f7 head f3 mainIn #connect
Ts0 f1 mainOut f15 tail #connect
Ts0 f15 head f3 mainIn #connect
Ts0 f0 mainOut f2 tail #connect
Ts0 f2 head f3 mainIn #connect
Ts0 f4 mainOut f5 tail #connect
Ts0 f5 head f3 mainIn #connect
Ts0 f17 mainOut f18 tail #connect
Ts0 f18 head f3 mainIn #connect
Ts0 f19 ao f20 tail #connect
Ts0 f20 head f17 @CG|ai #connect
Ts0 f6 mainOut f22 tail #connect
Ts0 f22 head f3 mainIn #connect
