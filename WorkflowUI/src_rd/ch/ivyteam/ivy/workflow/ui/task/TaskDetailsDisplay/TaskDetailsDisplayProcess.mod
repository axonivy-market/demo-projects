[Ivy]
[>Created: Fri Nov 25 12:45:04 CET 2011]
12985A17AEE78EF5 3.17 #module
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
Ts0 @RichDialogMethodStart f9 '' #zField
Ts0 @RichDialogBroadcastStart f21 '' #zField
Ts0 @RichDialogProcessStep f26 '' #zField
Ts0 @PushWFArc f14 '' #zField
Ts0 @RichDialogInitStart f1 '' #zField
Ts0 @RichDialogBroadcastStart f17 '' #zField
Ts0 @InfoButton f19 '' #zField
Ts0 @AnnotationArc f20 '' #zField
Ts0 @RichDialogProcessStep f4 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @PushWFArc f8 '' #zField
Ts0 @RichDialogProcessEnd f7 '' #zField
Ts0 @PushWFArc f10 '' #zField
Ts0 @PushWFArc f12 '' #zField
Ts0 @RichDialogProcessStep f5 '' #zField
Ts0 @PushWFArc f13 '' #zField
Ts0 @PushWFArc f6 '' #zField
Ts0 @PushWFArc f15 '' #zField
>Proto Ts0 Ts0 TaskDetailsDisplayProcess #zField
Ts0 f0 guid 1168C7DFD01F3BE3 #txt
Ts0 f0 type ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData #txt
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
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 30 78 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f3 type ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData #txt
Ts0 f3 99 259 26 26 14 0 #rect
Ts0 f3 @|RichDialogProcessEndIcon #fIcon
Ts0 f9 guid 118ADDD29C756465 #txt
Ts0 f9 type ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData #txt
Ts0 f9 method setTask(ch.ivyteam.ivy.workflow.ITask) #txt
Ts0 f9 disableUIEvents false #txt
Ts0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ITask aTask> param = methodEvent.getInputArguments();
' #txt
Ts0 f9 inParameterMapAction 'out.task=param.aTask;
' #txt
Ts0 f9 outParameterDecl '<> result;
' #txt
Ts0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setTask(ITask)</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f9 454 78 20 20 13 0 #rect
Ts0 f9 @|RichDialogMethodStartIcon #fIcon
Ts0 f21 guid 118BDEDA209E5E6D #txt
Ts0 f21 type ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData #txt
Ts0 f21 broadcast xivyTaskStateChanged #txt
Ts0 f21 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData out;
' #txt
Ts0 f21 actionTable 'out=in;
' #txt
Ts0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Accepted broadcast: xivyTaskStateChanged</name>
        <nameStyle>40,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f21 638 78 20 20 13 0 #rect
Ts0 f21 @|RichDialogBroadcastStartIcon #fIcon
Ts0 f26 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData out;
' #txt
Ts0 f26 actionTable 'out=in;
' #txt
Ts0 f26 type ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData #txt
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
Ts0 f26 630 140 36 24 20 -2 #rect
Ts0 f26 @|RichDialogProcessStepIcon #fIcon
Ts0 f14 expr out #txt
Ts0 f14 648 98 648 140 #arcP
Ts0 f14 0 0.7122978380369184 0 0 #arcLabel
Ts0 f1 guid 1194BE8DC42AE51C #txt
Ts0 f1 type ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData #txt
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
Ts0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ITask)</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f1 102 78 20 20 13 0 #rect
Ts0 f1 @|RichDialogInitStartIcon #fIcon
Ts0 f17 guid 11E46326FF259534 #txt
Ts0 f17 type ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData #txt
Ts0 f17 broadcast ivy_systemevent_workflow_task_changed #txt
Ts0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData out;
' #txt
Ts0 f17 actionTable 'out=in;
' #txt
Ts0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy_systemevent_workflow_task_changed</name>
    </language>
</elementInfo>
' #txt
Ts0 f17 886 70 20 20 13 0 #rect
Ts0 f17 @|RichDialogBroadcastStartIcon #fIcon
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
Ts0 f19 940 141 24 54 10 0 #rect
Ts0 f19 @|IBIcon #fIcon
Ts0 f20 940 168 900 88 #arcP
Ts0 f4 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData out;
' #txt
Ts0 f4 actionTable 'out=in;
' #txt
Ts0 f4 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.CustomFieldsHelper;

if (in.#task is initialized)
{
	out.setCustomFieldsLabels(CustomFieldsHelper.getTaskCustomFieldsLabels(in.task, ivy.log));
}' #txt
Ts0 f4 type ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData #txt
Ts0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the 
custom fields labels</name>
        <nameStyle>11,7,9
20,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f4 94 188 36 24 20 -2 #rect
Ts0 f4 @|RichDialogProcessStepIcon #fIcon
Ts0 f2 expr out #txt
Ts0 f2 112 212 112 259 #arcP
Ts0 f2 0 0.4075585020511766 0 0 #arcLabel
Ts0 f8 expr out #txt
Ts0 f8 464 98 130 200 #arcP
Ts0 f8 1 464 200 #addKink
Ts0 f8 1 0.1433108194909679 0 0 #arcLabel
Ts0 f7 type ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData #txt
Ts0 f7 638 254 20 20 13 0 #rect
Ts0 f7 @|RichDialogProcessEndIcon #fIcon
Ts0 f10 expr out #txt
Ts0 f10 896 90 657 263 #arcP
Ts0 f10 1 896 240 #addKink
Ts0 f10 1 0.2985192596620074 0 0 #arcLabel
Ts0 f12 expr out #txt
Ts0 f12 648 164 648 254 #arcP
Ts0 f12 0 0.2973429828297244 0 0 #arcLabel
Ts0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData out;
' #txt
Ts0 f5 actionTable 'out=in;
' #txt
Ts0 f5 actionCode 'import ch.ivyteam.ivy.event.SystemEventCategory;
import ch.ivyteam.ivy.security.IPermission;


// register to the system events Workflow category
ivy.rd.subscribeToSystemEvents(SystemEventCategory.WORKFLOW);


out.hasWfAdministratorPermissions = 
	ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), IPermission.ADMINISTRATE_WORKFLOW);' #txt
Ts0 f5 type ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>register for the system events workflow
check if user has wf admin permission</name>
        <nameStyle>77,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f5 94 140 36 24 20 -2 #rect
Ts0 f5 @|RichDialogProcessStepIcon #fIcon
Ts0 f13 expr out #txt
Ts0 f13 112 98 112 140 #arcP
Ts0 f13 0 0.755865520055364 0 0 #arcLabel
Ts0 f6 expr out #txt
Ts0 f6 112 164 112 188 #arcP
Ts0 f15 expr out #txt
Ts0 f15 47 94 99 140 #arcP
>Proto Ts0 .rdData2UIAction 'panel.businessMilestoneLabel.visible=in.#task is initialized && in.#task.getBusinessMilestoneTimestamp() is initialized;
panel.businessMilestoneTextField.text=(in.#task is initialized && in.#task.getBusinessMilestoneTimestamp() is initialized)? in.task.businessMilestoneTimestamp.format(ivy.var.xivy_workflow_ui_restricted_dateFormatPattern): "";
panel.businessMilestoneTextField.visible=in.#task is initialized && in.#task.getBusinessMilestoneTimestamp() is initialized;
panel.customDecimalField1Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customDecimalField1Label is initialized?
	in.customFieldsLabels.customDecimalField1Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField") + " 1";
panel.customDecimalField1Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customDecimalField1 is initialized && in.#customFieldsLabels.#customDecimalField1Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customDecimalField1 is initialized));
panel.customDecimalField1TextField.text=(in.#task is initialized && in.#task.#customDecimalField1 is initialized)? in.task.customDecimalField1.toString(): "";
panel.customDecimalField1TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customDecimalField1 is initialized && in.#customFieldsLabels.#customDecimalField1Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customDecimalField1 is initialized));
panel.customDecimalField2Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customDecimalField2Label is initialized? 
	in.customFieldsLabels.customDecimalField2Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField") + " 2";
panel.customDecimalField2Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customDecimalField2 is initialized && in.#customFieldsLabels.#customDecimalField2Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customDecimalField2 is initialized));
panel.customDecimalField2TextField.text=(in.#task is initialized && in.#task.#customDecimalField2 is initialized)? in.task.customDecimalField2.toString(): "";
panel.customDecimalField2TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customDecimalField2 is initialized && in.#customFieldsLabels.#customDecimalField2Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customDecimalField2 is initialized));
panel.customDecimalField3Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customDecimalField3Label is initialized? 
	in.customFieldsLabels.customDecimalField3Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField") + " 3";
panel.customDecimalField3Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customDecimalField3 is initialized && in.#customFieldsLabels.#customDecimalField3Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customDecimalField3 is initialized));
panel.customDecimalField3TextField.text=(in.#task is initialized && in.#task.#customDecimalField3 is initialized)? in.task.customDecimalField3.toString(): "";
panel.customDecimalField3TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customDecimalField3 is initialized && in.#customFieldsLabels.#customDecimalField3Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customDecimalField3 is initialized));
panel.customDecimalField4Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customDecimalField4Label is initialized? 
	in.customFieldsLabels.customDecimalField4Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField") + " 4";
panel.customDecimalField4Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customDecimalField4 is initialized && in.#customFieldsLabels.#customDecimalField4Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customDecimalField4 is initialized));
panel.customDecimalField4TextField.text=(in.#task is initialized && in.#task.#customDecimalField4 is initialized)? in.task.customDecimalField4.toString(): "";
panel.customDecimalField4TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customDecimalField4 is initialized && in.#customFieldsLabels.#customDecimalField4Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customDecimalField4 is initialized));
panel.customDecimalField5Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customDecimalField5Label is initialized? 
	in.customFieldsLabels.customDecimalField5Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customDecimalField") + " 5";
panel.customDecimalField5Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customDecimalField5 is initialized && in.#customFieldsLabels.#customDecimalField5Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customDecimalField5 is initialized));
panel.customDecimalField5TextField.text=(in.#task is initialized && in.#task.#customDecimalField5 is initialized)? in.task.customDecimalField5.toString(): "";
panel.customDecimalField5TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customDecimalField5 is initialized && in.#customFieldsLabels.#customDecimalField5Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customDecimalField5 is initialized));
panel.customTimestampField1Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customTimestampField1Label is initialized? 
	in.customFieldsLabels.customTimestampField1Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField") + " 1";
panel.customTimestampField1Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customTimestampField1 is initialized && in.#customFieldsLabels.#customTimestampField1Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customTimestampField1 is initialized));
panel.customTimestampField1TextField.text=(in.#task is initialized && in.#task.#customTimestampField1 is initialized)? in.task.customTimestampField1.toString(): "";
panel.customTimestampField1TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customTimestampField1 is initialized && in.#customFieldsLabels.#customTimestampField1Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customTimestampField1 is initialized));
panel.customTimestampField2Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customTimestampField2Label is initialized? 
	in.customFieldsLabels.customTimestampField2Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField") + " 2";
panel.customTimestampField2Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customTimestampField2 is initialized && in.#customFieldsLabels.#customTimestampField2Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customTimestampField2 is initialized));
panel.customTimestampField2TextField.text=(in.#task is initialized && in.#task.#customTimestampField2 is initialized)? in.task.customTimestampField2.toString(): "";
panel.customTimestampField2TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customTimestampField2 is initialized && in.#customFieldsLabels.#customTimestampField2Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customTimestampField2 is initialized));
panel.customTimestampField3Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customTimestampField3Label is initialized? 
	in.customFieldsLabels.customTimestampField3Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField") + " 3";
panel.customTimestampField3Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customTimestampField3 is initialized && in.#customFieldsLabels.#customTimestampField3Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customTimestampField3 is initialized));
panel.customTimestampField3TextField.text=(in.#task is initialized && in.#task.#customTimestampField3 is initialized)? in.task.customTimestampField3.toString(): "";
panel.customTimestampField3TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customTimestampField3 is initialized && in.#customFieldsLabels.#customTimestampField3Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customTimestampField3 is initialized));
panel.customTimestampField4Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customTimestampField4Label is initialized? 
	in.customFieldsLabels.customTimestampField4Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField") + " 4";
panel.customTimestampField4Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customTimestampField4 is initialized && in.#customFieldsLabels.#customTimestampField4Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customTimestampField4 is initialized));
panel.customTimestampField4TextField.text=(in.#task is initialized && in.#task.#customTimestampField4 is initialized)? in.task.customTimestampField4.toString(): "";
panel.customTimestampField4TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customTimestampField4 is initialized && in.#customFieldsLabels.#customTimestampField4Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customTimestampField4 is initialized));
panel.customTimestampField5Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customTimestampField5Label is initialized? 
	in.customFieldsLabels.customTimestampField5Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customTimestampField") + " 5";
panel.customTimestampField5Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customTimestampField5 is initialized && in.#customFieldsLabels.#customTimestampField5Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customTimestampField5 is initialized));
panel.customTimestampField5TextField.text=(in.#task is initialized && in.#task.#customTimestampField5 is initialized)? in.task.customTimestampField5.toString(): "";
panel.customTimestampField5TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customTimestampField5 is initialized && in.#customFieldsLabels.#customTimestampField5Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customTimestampField5 is initialized));
panel.customVarcharField1Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customVarcharField1Label is initialized? 
	in.customFieldsLabels.customVarcharField1Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField") + " 1";
panel.customVarcharField1Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customVarCharField1 is initialized && in.#customFieldsLabels.#customVarcharField1Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customVarCharField1 is initialized));
panel.customVarcharField1TextField.text=(in.#task is initialized && in.#task.#customVarCharField1 is initialized)? in.task.customVarCharField1: "";
panel.customVarcharField1TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customVarCharField1 is initialized && in.#customFieldsLabels.#customVarcharField1Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customVarCharField1 is initialized));
panel.customVarcharField2Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customVarcharField2Label is initialized? 
	in.customFieldsLabels.customVarcharField2Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField") + " 2";
panel.customVarcharField2Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customVarCharField2 is initialized && in.#customFieldsLabels.#customVarcharField2Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customVarCharField2 is initialized));
panel.customVarcharField2TextField.text=(in.#task is initialized && in.#task.#customVarCharField2 is initialized)? in.task.customVarCharField2: "";
panel.customVarcharField2TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customVarCharField2 is initialized && in.#customFieldsLabels.#customVarcharField2Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customVarCharField2 is initialized));
panel.customVarcharField3Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customVarcharField3Label is initialized? 
	in.customFieldsLabels.customVarcharField3Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField") + " 3";
panel.customVarcharField3Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customVarCharField3 is initialized && in.#customFieldsLabels.#customVarcharField3Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customVarCharField3 is initialized));
panel.customVarcharField3TextField.text=(in.#task is initialized && in.#task.#customVarCharField3 is initialized)? in.task.customVarCharField3: "";
panel.customVarcharField3TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customVarCharField3 is initialized && in.#customFieldsLabels.#customVarcharField3Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customVarCharField3 is initialized));
panel.customVarcharField4Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customVarcharField4Label is initialized? 
	in.customFieldsLabels.customVarcharField4Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField") + " 4";
panel.customVarcharField4Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customVarCharField4 is initialized && in.#customFieldsLabels.#customVarcharField4Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customVarCharField4 is initialized));
panel.customVarcharField4TextField.text=(in.#task is initialized && in.#task.#customVarCharField4 is initialized)? in.task.customVarCharField4: "";
panel.customVarcharField4TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customVarCharField4 is initialized && in.#customFieldsLabels.#customVarcharField4Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customVarCharField4 is initialized));
panel.customVarcharField5Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customVarcharField5Label is initialized? 
	in.customFieldsLabels.customVarcharField5Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/customField/plainStrings/customVarcharField") + " 5";
panel.customVarcharField5Label.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customVarCharField5 is initialized && in.#customFieldsLabels.#customVarcharField5Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customVarCharField5 is initialized));
panel.customVarcharField5TextField.text=(in.#task is initialized && in.#task.#customVarCharField5 is initialized)? in.task.customVarCharField5: "";
panel.customVarcharField5TextField.visible=in.#task is initialized && 
	((!in.hasWfAdministratorPermissions && in.#task.#customVarCharField5 is initialized && in.#customFieldsLabels.#customVarcharField5Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#task.#customVarCharField5 is initialized));
panel.separatorPanel.separatorText=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskCustomFieldsDetails");
panel.separatorPanel.visible=in.#task is initialized && 
(in.#task.#customVarCharField1 is initialized || 
in.#task.#customVarCharField2 is initialized || 
in.#task.#customVarCharField3 is initialized ||
in.#task.#customVarCharField4 is initialized ||
in.#task.#customVarCharField5 is initialized ||
in.#task.#customDecimalField1 is initialized ||
in.#task.#customDecimalField2 is initialized ||
in.#task.#customDecimalField3 is initialized || 
in.#task.#customDecimalField4 is initialized ||
in.#task.#customDecimalField5 is initialized ||
in.#task.#customTimestampField1 is initialized ||
in.#task.#customTimestampField2 is initialized ||
in.#task.#customTimestampField3 is initialized ||
in.#task.#customTimestampField4 is initialized ||
in.#task.#customTimestampField5 is initialized);
panel.taskActivatorTextField.text=(in.#task is initialized && in.#task.#activator is initialized? in.task.activator.getMemberName(): "");
panel.taskBlockingDelayLabel.visible=in.#task is initialized && in.#task.getDelayTimestamp() is initialized;
panel.taskBlockingDelayTextField.text=(in.#task is initialized && in.#task.#delayTimestamp is initialized? in.task.delayTimestamp.format(ivy.var.xivy_workflow_ui_restricted_dateTimeFormatPattern): "");
panel.taskBlockingDelayTextField.visible=in.#task is initialized && in.#task.getDelayTimestamp() is initialized;
panel.taskDescriptionLabel.visible=in.#task is initialized && in.#task.#description is initialized && (!"".equals(in.#task.getDescription()));
panel.taskDescriptionScrollPane.visible=in.#task is initialized && in.#task.#description is initialized && (!"".equals(in.#task.getDescription()));
panel.taskDescriptionTextArea.text=(in.#task is initialized && in.#task.#description is initialized? in.task.description: "n/a");
panel.taskExpiryTimestampLabel.visible=in.#task is initialized && in.#task.getExpiryTimestamp() is initialized;
panel.taskExpiryTimestampTextField.text=(in.#task is initialized && in.#task.#expiryTimestamp is initialized? in.task.expiryTimestamp.format(ivy.var.xivy_workflow_ui_restricted_dateTimeFormatPattern): "");
panel.taskExpiryTimestampTextField.visible=in.#task is initialized && in.#task.getExpiryTimestamp() is initialized;
panel.taskIdLabel.toolTipText=(in.#task is initialized? in.task.getIdentifier().toString(): "");
panel.taskIdTextField.text=(in.#task is initialized? in.task.getIdentifier().toString(): "");
panel.taskKindCodeLabel.visible=in.#task is initialized && (in.task.getKindCode() is initialized || in.task.getKindName() is initialized);
panel.taskKindTextField.text=IF (in.#task is initialized,
// task is initialized
(in.task.getKindCode() is initialized? in.task.getKindCode(): "") + 
(in.task.getKindCode() is initialized && in.task.getKindName() is initialized? " | ": "") +
(in.task.getKindName() is initialized? in.task.getKindName(): "")

,
// task is not initialized
"");
panel.taskKindTextField.visible=in.#task is initialized && (in.task.getKindCode() is initialized || in.task.getKindName() is initialized);
panel.taskNameLabel.visible=in.#task is initialized && in.#task.getName() is initialized && (!"".equals(in.#task.getName()));
panel.taskNameTextField.text=(in.#task is initialized && in.#task.#name is initialized? in.task.name: "");
panel.taskNameTextField.visible=in.#task is initialized && in.#task.getName() is initialized && (!"".equals(in.#task.getName()));
panel.taskPriorityIconLabel.iconUri=in.#task is initialized? "/ch/ivyteam/ivy/workflow/ui/common/workflowPriorities/images/" + in.task.getPriority().intValue() + "_16": "";
panel.taskPriorityLabel.toolTipText=in.#task is initialized? ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/taskPriority/plainStrings/" + in.task.getPriority().intValue()): "";
panel.taskPriorityTextField.text=in.#task is initialized? ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/taskPriority/plainStrings/" + in.task.getPriority().intValue()): "";
panel.taskStartTimestampTextField.text=in.#task is initialized? in.task.getStartTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateTimeFormatPattern): "";
panel.taskStateIconLabel.iconUri=in.#task is initialized? "/ch/ivyteam/ivy/workflow/ui/task/taskState/images/" + in.task.getState() + "16": "";
panel.taskStateTextField.text=in.#task is initialized? ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/taskState/plainStrings/" + in.task.getState()): "";
panel.workerUserNameLabel.visible=in.#task is initialized && in.#task.getWorkerUserName() is initialized;
panel.workerUserNameTextField.text=(in.#task is initialized && in.task.getWorkerUserName() is initialized)?
	in.task.getWorkerUserName()
		+ (in.#task is initialized && in.#task.getEndTimestamp() is initialized? " (" + in.#task.getEndTimestamp().format() + ")": "")
	:"";
panel.workerUserNameTextField.visible=in.#task is initialized && in.#task.getWorkerUserName() is initialized;
' #txt
>Proto Ts0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Getters/Setters</swimlaneLabel>
        <swimlaneLabel>Broadcasts</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>353</swimlaneSize>
    <swimlaneSize>243</swimlaneSize>
    <swimlaneSize>667</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-6710785</swimlaneColor>
    <swimlaneColor>-13057</swimlaneColor>
</elementInfo>
' #txt
>Proto Ts0 .type ch.ivyteam.ivy.workflow.ui.task.TaskDetailsDisplay.TaskDetailsDisplayData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f21 mainOut f14 tail #connect
Ts0 f14 head f26 mainIn #connect
Ts0 f19 ao f20 tail #connect
Ts0 f20 head f17 @CG|ai #connect
Ts0 f4 mainOut f2 tail #connect
Ts0 f2 head f3 mainIn #connect
Ts0 f9 mainOut f8 tail #connect
Ts0 f8 head f4 mainIn #connect
Ts0 f17 mainOut f10 tail #connect
Ts0 f10 head f7 mainIn #connect
Ts0 f26 mainOut f12 tail #connect
Ts0 f12 head f7 mainIn #connect
Ts0 f1 mainOut f13 tail #connect
Ts0 f13 head f5 mainIn #connect
Ts0 f5 mainOut f6 tail #connect
Ts0 f6 head f4 mainIn #connect
Ts0 f0 mainOut f15 tail #connect
Ts0 f15 head f5 mainIn #connect
