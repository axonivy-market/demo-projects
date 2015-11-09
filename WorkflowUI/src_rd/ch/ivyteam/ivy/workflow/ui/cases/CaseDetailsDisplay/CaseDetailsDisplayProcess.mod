[Ivy]
[>Created: Mon Nov 09 13:39:32 CET 2015]
129830871D8882E2 3.18 #module
>Proto >Proto Collection #zClass
Ts0 TaskHeaderDisplayProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f4 '' #zField
Ts0 @RichDialogInitStart f1 '' #zField
Ts0 @RichDialogMethodStart f7 '' #zField
Ts0 @RichDialogProcessStep f17 '' #zField
Ts0 @PushWFArc f18 '' #zField
Ts0 @RichDialogBroadcastStart f19 '' #zField
Ts0 @InfoButton f21 '' #zField
Ts0 @AnnotationArc f22 '' #zField
Ts0 @RichDialogProcessStep f2 '' #zField
Ts0 @PushWFArc f6 '' #zField
Ts0 @PushWFArc f8 '' #zField
Ts0 @PushWFArc f3 '' #zField
Ts0 @RichDialogProcessEnd f9 '' #zField
Ts0 @PushWFArc f10 '' #zField
Ts0 @PushWFArc f11 '' #zField
>Proto Ts0 Ts0 TaskHeaderDisplayProcess #zField
Ts0 f0 guid 11850F34D2F890B1 #txt
Ts0 f0 type ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayData #txt
Ts0 f0 method start() #txt
Ts0 f0 disableUIEvents false #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 inParameterMapAction 'out.fCase=null;
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
Ts0 f0 102 78 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f4 type ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayData #txt
Ts0 f4 99 283 26 26 14 0 #rect
Ts0 f4 @|RichDialogProcessEndIcon #fIcon
Ts0 f1 guid 1194CDB08E523727 #txt
Ts0 f1 type ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayData #txt
Ts0 f1 method start(ch.ivyteam.ivy.workflow.ICase) #txt
Ts0 f1 disableUIEvents false #txt
Ts0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase aCase> param = methodEvent.getInputArguments();
' #txt
Ts0 f1 inParameterMapAction 'out.fCase=param.aCase;
' #txt
Ts0 f1 outParameterDecl '<> result;
' #txt
Ts0 f1 embeddedRdInitializations '* ' #txt
Ts0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase)</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f1 166 78 20 20 13 0 #rect
Ts0 f1 @|RichDialogInitStartIcon #fIcon
Ts0 f7 guid 1194CDB7A09B6BB4 #txt
Ts0 f7 type ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayData #txt
Ts0 f7 method setCase(ch.ivyteam.ivy.workflow.ICase) #txt
Ts0 f7 disableUIEvents false #txt
Ts0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase aCase> param = methodEvent.getInputArguments();
' #txt
Ts0 f7 inParameterMapAction 'out.fCase=param.aCase;
' #txt
Ts0 f7 outParameterDecl '<> result;
' #txt
Ts0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setCase(ICase)</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f7 486 78 20 20 13 0 #rect
Ts0 f7 @|RichDialogMethodStartIcon #fIcon
Ts0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayData out;
' #txt
Ts0 f17 actionTable 'out=in;
' #txt
Ts0 f17 actionCode 'import ch.ivyteam.ivy.event.SystemEventCategory;
import ch.ivyteam.ivy.security.IPermission;


// register to the system events Workflow category
ivy.rd.subscribeToSystemEvents(SystemEventCategory.WORKFLOW);


out.hasWfAdministratorPermissions = 
	ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), IPermission.TASK_READ_ALL) &&
	ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), IPermission.CASE_READ_ALL);' #txt
Ts0 f17 type ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayData #txt
Ts0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>register for the system events workflow
check if user has wf admin permission</name>
        <nameStyle>77,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f17 158 140 36 24 20 -2 #rect
Ts0 f17 @|RichDialogProcessStepIcon #fIcon
Ts0 f18 expr out #txt
Ts0 f18 176 98 176 140 #arcP
Ts0 f18 0 0.7402173550498343 0 0 #arcLabel
Ts0 f19 guid 11E4627095EC9C8B #txt
Ts0 f19 type ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayData #txt
Ts0 f19 broadcast ivy_systemevent_workflow_case_changed #txt
Ts0 f19 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayData out;
' #txt
Ts0 f19 actionTable 'out=in;
' #txt
Ts0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy_systemevent_workflow_case_changed</name>
        <nameStyle>37,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f19 662 70 20 20 13 0 #rect
Ts0 f19 @|RichDialogBroadcastStartIcon #fIcon
Ts0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Do nothing, just update accept the broadcast message,
the databinding should load the latest data...</name>
        <nameStyle>100,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f21 748 116 24 24 10 0 #rect
Ts0 f21 @|IBIcon #fIcon
Ts0 f22 748 128 680 85 #arcP
Ts0 f2 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayData out;
' #txt
Ts0 f2 actionTable 'out=in;
' #txt
Ts0 f2 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.CustomFieldsHelper;

out.setCustomFieldsLabels(CustomFieldsHelper.getCaseCustomFieldsLabels(in.fCase, ivy.log));
' #txt
Ts0 f2 type ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayData #txt
Ts0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build custom fields labels</name>
        <nameStyle>6,7,9
20,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f2 158 212 36 24 20 -2 #rect
Ts0 f2 @|RichDialogProcessStepIcon #fIcon
Ts0 f6 expr out #txt
Ts0 f6 176 236 124 292 #arcP
Ts0 f6 1 176 280 #addKink
Ts0 f6 1 0.12720477112517978 0 0 #arcLabel
Ts0 f8 expr out #txt
Ts0 f8 176 164 176 212 #arcP
Ts0 f8 0 0.7278970683396531 0 0 #arcLabel
Ts0 f3 expr out #txt
Ts0 f3 496 98 194 224 #arcP
Ts0 f3 1 496 224 #addKink
Ts0 f3 0 0.9351397634777254 0 0 #arcLabel
Ts0 f9 type ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayData #txt
Ts0 f9 662 278 20 20 13 0 #rect
Ts0 f9 @|RichDialogProcessEndIcon #fIcon
Ts0 f10 expr out #txt
Ts0 f10 672 90 672 278 #arcP
Ts0 f10 0 0.2680821848312587 0 0 #arcLabel
Ts0 f11 expr out #txt
Ts0 f11 112 98 112 283 #arcP
>Proto Ts0 .type ch.ivyteam.ivy.workflow.ui.cases.CaseDetailsDisplay.CaseDetailsDisplayData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 .rdData2UIAction 'panel.businessMainContactDocumentDbCodeLabel.visible=in.#fCase is initialized && in.#fCase.#businessMainContactDocumentDatabaseCode is initialized && in.hasWfAdministratorPermissions;
panel.businessMainContactDocumentDbCodeTextField.text=(in.#fCase is initialized && in.#fCase.#businessMainContactDocumentDatabaseCode is initialized)? in.#fCase.#businessMainContactDocumentDatabaseCode: "";
panel.businessMainContactFolderIdLabel.visible=in.#fCase is initialized && in.#fCase.#businessMainContactFolderId is initialized && in.hasWfAdministratorPermissions;
panel.businessMainContactFolderIdTextField.text=(in.#fCase is initialized && in.#fCase.#businessMainContactFolderId is initialized)? in.#fCase.#businessMainContactFolderId: "";
panel.businessMainContactFolderIdTextField.visible=in.#fCase is initialized && in.#fCase.#businessMainContactFolderId is initialized && in.hasWfAdministratorPermissions;
panel.businessMainContactLabel.visible=in.#fCase is initialized && (in.#fCase.#businessMainContactId is initialized || in.#fCase.#businessMainContactName is initialized);
panel.businessMainContactTextField.text=IF (in.#fCase is initialized,

// if case is initialized
(in.#fCase.getBusinessMainContactId() is initialized? "" + in.fCase.getBusinessMainContactId(): "") +  
(in.#fCase.getBusinessMainContactId() is initialized && in.#fCase.getBusinessMainContactName() is initialized? " | ": "") +  
(in.#fCase.getBusinessMainContactName() is initialized? in.fCase.getBusinessMainContactName(): "")
,

// if case is not initialized
"");
panel.businessMainContactTextField.visible=in.#fCase is initialized && in.#fCase.#businessMainContactId is initialized;
panel.businessMilestoneTimestampLabel.visible=in.#fCase is initialized && in.#fCase.#businessMilestoneTimestamp is initialized;
panel.businessMilestoneTimestampTextField.text=in.#fCase is initialized && in.#fCase.#businessMilestoneTimestamp is initialized? in.fCase.getBusinessMilestoneTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateFormatPattern): "";
panel.businessObjectDocumentDbCodeLabel.visible=in.#fCase is initialized && in.#fCase.#businessObjectDocumentDatabaseCode is initialized && in.hasWfAdministratorPermissions;
panel.businessObjectDocumentDbCodeTextField.text=(in.#fCase is initialized && in.#fCase.#businessObjectDocumentDatabaseCode is initialized)? in.#fCase.#businessObjectDocumentDatabaseCode: "";
panel.businessObjectDocumentDbCodeTextField.visible=in.#fCase is initialized && in.#fCase.#businessObjectDocumentDatabaseCode is initialized && in.hasWfAdministratorPermissions;
panel.businessObjectFolderIdLabel.visible=in.#fCase is initialized && in.#fCase.#businessObjectFolderId is initialized && in.hasWfAdministratorPermissions;
panel.businessObjectFolderIdTextField.text=(in.#fCase is initialized && in.#fCase.#businessObjectFolderId is initialized)? in.#fCase.#businessObjectFolderId: "";
panel.businessObjectFolderIdTextField.visible=in.#fCase is initialized && in.#fCase.#businessObjectFolderId is initialized && in.hasWfAdministratorPermissions;
panel.businessObjectLabel.visible=in.#fCase is initialized && 
((in.#fCase.#businessObjectCode is initialized && in.hasWfAdministratorPermissions) || in.#fCase.#businessObjectName is initialized);
panel.businessObjectTextField.text=IF (in.#fCase is initialized,

// if case is initialized
(in.#fCase.getBusinessObjectCode() is initialized? "" + in.fCase.getBusinessObjectCode(): "") +  
(in.#fCase.getBusinessObjectCode() is initialized && in.#fCase.getBusinessObjectName() is initialized? " | ": "") +  
(in.#fCase.getBusinessObjectName() is initialized? in.fCase.getBusinessObjectName(): "")
,

// if case is not initialized
"");
panel.businessObjectTextField.visible=in.#fCase is initialized && 
((in.#fCase.#businessObjectCode is initialized && in.hasWfAdministratorPermissions) || in.#fCase.#businessObjectName is initialized);
panel.businessStartTimestampLabel.visible=in.#fCase is initialized && in.#fCase.#businessStartTimestamp is initialized;
panel.businessStartTimestampTextField.text=in.#fCase is initialized && in.#fCase.getBusinessStartTimestamp() is initialized? in.fCase.getBusinessStartTimestamp().format(ivy.var.xivy_workflow_ui_restricted_dateTimeFormatPattern): "";
panel.caseDescriptionLabel.visible=in.#fCase is initialized && in.#fCase.getDescription() is initialized  && (!"".equals(in.#fCase.getDescription()));
panel.caseDescriptionScrollPane.visible=in.#fCase is initialized && in.#fCase.getDescription() is initialized  && (!"".equals(in.#fCase.getDescription()));
panel.caseDescriptionTextArea.text=(in.#fCase is initialized && in.#fCase.#description is initialized)? in.fCase.getDescription(): "n/a";
panel.caseIdLabel.toolTipText=in.#fCase is initialized? ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseId") + ": " + in.fCase.getId().toString(): "";
panel.caseIdLabel.visible=in.#fCase is initialized;
panel.caseIdTextField.text=in.#fCase is initialized? in.fCase.getId().toString(): "";
panel.caseIdTextField.visible=in.#fCase is initialized;
panel.caseNameLabel.visible=in.#fCase is initialized && in.#fCase.getName() is initialized && (!"".equals(in.#fCase.getName()));
panel.caseNameTextField.text=in.#fCase is initialized && in.#fCase.#name is initialized? in.fCase.name: "";
panel.casePriorityIconLabel.iconUri=(in.#fCase is initialized && in.#fCase.getBusinessPriority() is initialized)? 
	"/ch/ivyteam/ivy/workflow/ui/common/workflowPriorities/images/" + Enum.valueOf(ch.ivyteam.ivy.workflow.WorkflowPriority.class, in.fCase.getBusinessPriority()).ordinal() + "_16"
	: "";
panel.casePriorityLabel.toolTipText=in.#fCase is initialized && in.#fCase.getBusinessPriority() is initialized? 
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/workflowPriorities/plainStrings/" + Enum.valueOf(ch.ivyteam.ivy.workflow.WorkflowPriority.class, in.fCase.getBusinessPriority()).ordinal()): "";
panel.casePriorityLabel.visible=in.#fCase is initialized && in.#fCase.getBusinessPriority() is initialized;
panel.casePriorityTextField.text=(in.#fCase is initialized && in.#fCase.getBusinessPriority() is initialized)? 	
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/caseRisk/plainStrings/" + Enum.valueOf(ch.ivyteam.ivy.workflow.WorkflowPriority.class, in.fCase.getBusinessPriority()).ordinal() )
	: "";
panel.caseProcessCategoryLabel.visible=in.#fCase is initialized && (in.#fCase.getProcessCategoryCode() is initialized || in.#fCase.getProcessCategoryName() is initialized);
panel.caseProcessCategoryTextField.text=IF (in.#fCase is initialized,

// if case is initialized
(in.#fCase.getProcessCategoryCode() is initialized? in.fCase.getProcessCategoryCode(): "") +  
(in.#fCase.getProcessCategoryCode() is initialized && in.#fCase.getProcessCategoryName() is initialized? " | ": "") +  
(in.#fCase.getProcessCategoryName() is initialized? in.fCase.getProcessCategoryName(): "")
,

// if case is not initialized
"");
panel.caseProcessCategoryTextField.visible=in.#fCase is initialized && (in.#fCase.getProcessCategoryCode() is initialized || in.#fCase.getProcessCategoryName() is initialized);
panel.caseProcessLabel.visible=in.#fCase is initialized && (in.#fCase.getProcessCode() is initialized || in.#fCase.getProcessName() is initialized);
panel.caseProcessTextField.text=IF (in.#fCase is initialized,

// if case is initialized
(in.#fCase.getProcessCode() is initialized? in.fCase.getProcessCode(): "") +  
(in.#fCase.getProcessCode() is initialized && in.#fCase.getProcessName() is initialized? " | ": "") +  
(in.#fCase.getProcessName() is initialized? in.fCase.getProcessName(): "")
,

// if case is not initialized
"");
panel.caseProcessTextField.visible=in.#fCase is initialized && (in.#fCase.getProcessCode() is initialized || in.#fCase.getProcessName() is initialized);
panel.caseStartByTextField.text=(in.#fCase is initialized && in.#fCase.getBusinessCreatorUser() is initialized)? in.fCase.getBusinessCreatorUser(): "";
panel.caseStartedByLabel.visible=(in.#fCase is initialized && in.#fCase.#businessCreatorUser is initialized);
panel.caseStateIconLabel.iconUri=in.#fCase is initialized? "/ch/ivyteam/ivy/workflow/ui/case/caseState/images/" + in.fCase.getState() + "16": "";
panel.caseStateTextField.text=in.#fCase is initialized ? ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/caseState/plainStrings/"  + in.fCase.getState()): "";
panel.caseStateTextField.text=(in.#fCase is initialized && in.#fCase.getState() is initialized)? ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/caseState/plainStrings/"  + in.fCase.getState()): "";
panel.caseSubTypeLabel.visible=in.#fCase is initialized && (in.#fCase.getSubTypeCode() is initialized || in.#fCase.getSubTypeName() is initialized);
panel.caseSubTypeTextField.text=IF (in.#fCase is initialized,

// if case is initialized
(in.#fCase.getSubTypeCode() is initialized? in.fCase.getSubTypeCode(): "") +  
(in.#fCase.getSubTypeCode() is initialized && in.#fCase.getSubTypeName() is initialized? " | ": "") +  
(in.#fCase.getSubTypeName() is initialized? in.fCase.getSubTypeName(): "")
,

// if case is not initialized
"");
panel.caseSubTypeTextField.visible=in.#fCase is initialized && (in.#fCase.getSubTypeCode() is initialized || in.#fCase.getSubTypeName() is initialized);
panel.caseTypeLabel.visible=in.#fCase is initialized && (in.#fCase.getTypeCode() is initialized || in.#fCase.getTypeName() is initialized);
panel.caseTypeTextField.text=(in.#fCase is initialized && in.#fCase.getTypeCode() is initialized)? in.fCase.getTypeCode(): "";
panel.caseTypeTextField.text=IF (in.#fCase is initialized,

// if case is initialized
(in.#fCase.getTypeCode() is initialized? in.fCase.getTypeCode(): "") +  
(in.#fCase.getTypeCode() is initialized && in.#fCase.getTypeName() is initialized? " | ": "") +  
(in.#fCase.getTypeName() is initialized? in.fCase.getTypeName(): "")
,

// if case is not initialized
"");
panel.caseTypeTextField.visible=in.#fCase is initialized && (in.#fCase.getTypeCode() is initialized || in.#fCase.getTypeName() is initialized);
panel.correspondentContactIdLabel.visible=(in.#fCase is initialized && in.#fCase.#businessCorrespondentId is initialized && in.hasWfAdministratorPermissions);
panel.correspondentContactIdTextField.text=(in.#fCase is initialized && in.#fCase.#businessCorrespondentId is initialized)?  "" + in.#fCase.#businessCorrespondentId: "";
panel.correspondentContactIdTextField.visible=(in.#fCase is initialized && in.#fCase.#businessCorrespondentId is initialized && in.hasWfAdministratorPermissions);
panel.customDecimalField1Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customDecimalField1Label is initialized? 
	in.customFieldsLabels.customDecimalField1Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField") + " 1";
panel.customDecimalField1Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField1 is initialized && in.#customFieldsLabels.#customDecimalField1Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField1 is initialized));
panel.customDecimalField1TextField.text=(in.#fCase is initialized && in.#fCase.#customDecimalField1 is initialized)? in.fCase.customDecimalField1.toString(): "";
panel.customDecimalField1TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField1 is initialized && in.#customFieldsLabels.#customDecimalField1Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField1 is initialized));
panel.customDecimalField2Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customDecimalField2Label is initialized? 
	in.customFieldsLabels.customDecimalField2Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField") + " 2";
panel.customDecimalField2Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField2 is initialized && in.#customFieldsLabels.#customDecimalField2Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField2 is initialized));
panel.customDecimalField2TextField.text=(in.#fCase is initialized && in.#fCase.#customDecimalField2 is initialized)? in.fCase.customDecimalField2.toString(): "";
panel.customDecimalField2TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField2 is initialized && in.#customFieldsLabels.#customDecimalField2Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField2 is initialized));
panel.customDecimalField3Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customDecimalField3Label is initialized? 
	in.customFieldsLabels.customDecimalField3Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField") + " 3";
panel.customDecimalField3Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField3 is initialized && in.#customFieldsLabels.#customDecimalField3Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField3 is initialized));
panel.customDecimalField3TextField.text=(in.#fCase is initialized && in.#fCase.#customDecimalField3 is initialized)? in.fCase.customDecimalField3.toString(): "";
panel.customDecimalField3TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField3 is initialized && in.#customFieldsLabels.#customDecimalField3Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField3 is initialized));
panel.customDecimalField4Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customDecimalField4Label is initialized? 
	in.customFieldsLabels.customDecimalField4Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField") + " 4";
panel.customDecimalField4Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField4 is initialized && in.#customFieldsLabels.#customDecimalField4Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField4 is initialized));
panel.customDecimalField4TextField.text=(in.#fCase is initialized && in.#fCase.#customDecimalField4 is initialized)? in.fCase.customDecimalField4.toString(): "";
panel.customDecimalField4TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField4 is initialized && in.#customFieldsLabels.#customDecimalField4Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField4 is initialized));
panel.customDecimalField5Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customDecimalField5Label is initialized? 
	in.customFieldsLabels.customDecimalField5Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField") + " 5";
panel.customDecimalField5Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField5 is initialized && in.#customFieldsLabels.#customDecimalField5Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField5 is initialized));
panel.customDecimalField5TextField.text=(in.#fCase is initialized && in.#fCase.#customDecimalField5 is initialized)? in.fCase.customDecimalField5.toString(): "";
panel.customDecimalField5TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField5 is initialized && in.#customFieldsLabels.#customDecimalField5Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customDecimalField5 is initialized));
panel.customTimestampField1Label.text=in.#customFieldsLabels is initialized && in.customFieldsLabels.customTimestampField1Label is initialized? 
	in.customFieldsLabels.customTimestampField1Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField") + " 1";
panel.customTimestampField1Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField1 is initialized && in.#customFieldsLabels.#customTimestampField1Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField1 is initialized));
panel.customTimestampField1TextField.text=(in.#fCase is initialized && in.#fCase.#customTimestampField1 is initialized)? in.fCase.customTimestampField1.toString(): "";
panel.customTimestampField1TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField1 is initialized && in.#customFieldsLabels.#customTimestampField1Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField1 is initialized));
panel.customTimestampField2Label.text=in.#customFieldsLabels is initialized && in.customFieldsLabels.customTimestampField2Label is initialized? 
	in.customFieldsLabels.customTimestampField2Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField") + " 2";
panel.customTimestampField2Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField2 is initialized && in.#customFieldsLabels.#customTimestampField2Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField2 is initialized));
panel.customTimestampField2TextField.text=(in.#fCase is initialized && in.#fCase.#customTimestampField2 is initialized)? in.fCase.customTimestampField2.toString(): "";
panel.customTimestampField2TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField2 is initialized && in.#customFieldsLabels.#customTimestampField2Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField2 is initialized));
panel.customTimestampField3Label.text=in.#customFieldsLabels is initialized && in.customFieldsLabels.customTimestampField3Label is initialized? 
	in.customFieldsLabels.customTimestampField3Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField") + " 3";
panel.customTimestampField3Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField3 is initialized && in.#customFieldsLabels.#customTimestampField3Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField3 is initialized));
panel.customTimestampField3TextField.text=(in.#fCase is initialized && in.#fCase.#customTimestampField3 is initialized)? in.fCase.customTimestampField3.toString(): "";
panel.customTimestampField3TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField3 is initialized && in.#customFieldsLabels.#customTimestampField3Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField3 is initialized));
panel.customTimestampField4Label.text=in.#customFieldsLabels is initialized && in.customFieldsLabels.customTimestampField4Label is initialized? 
	in.customFieldsLabels.customTimestampField4Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField") + " 4";
panel.customTimestampField4Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField4 is initialized && in.#customFieldsLabels.#customTimestampField4Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField4 is initialized));
panel.customTimestampField4TextField.text=(in.#fCase is initialized && in.#fCase.#customTimestampField4 is initialized)? in.fCase.customTimestampField4.toString(): "";
panel.customTimestampField4TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField4 is initialized && in.#customFieldsLabels.#customTimestampField4Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField4 is initialized));
panel.customTimestampField5Label.text=in.#customFieldsLabels is initialized && in.customFieldsLabels.customTimestampField5Label is initialized? 
	in.customFieldsLabels.customTimestampField5Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField") + " 5";
panel.customTimestampField5Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField5 is initialized && in.#customFieldsLabels.#customTimestampField5Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField5 is initialized));
panel.customTimestampField5TextField.text=(in.#fCase is initialized && in.#fCase.#customTimestampField5 is initialized)? in.fCase.customTimestampField5.toString(): "";
panel.customTimestampField5TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField5 is initialized && in.#customFieldsLabels.#customTimestampField5Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customTimestampField5 is initialized));
panel.customVarcharField1Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customVarcharField1Label is initialized? 
	in.customFieldsLabels.customVarcharField1Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField") + " 1";
panel.customVarcharField1Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField1 is initialized && in.#customFieldsLabels.#customVarcharField1Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField1 is initialized));
panel.customVarcharField1TextField.text=(in.#fCase is initialized && in.#fCase.#customVarCharField1 is initialized)? in.fCase.customVarCharField1: "";
panel.customVarcharField1TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField1 is initialized && in.#customFieldsLabels.#customVarcharField1Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField1 is initialized));
panel.customVarcharField2Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customVarcharField2Label is initialized? 
	in.customFieldsLabels.customVarcharField2Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField") + " 2";
panel.customVarcharField2Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField2 is initialized && in.#customFieldsLabels.#customVarcharField2Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField2 is initialized));
panel.customVarcharField2TextField.text=(in.#fCase is initialized && in.#fCase.#customVarCharField2 is initialized)? in.fCase.customVarCharField2: "";
panel.customVarcharField2TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField2 is initialized && in.#customFieldsLabels.#customVarcharField2Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField2 is initialized));
panel.customVarcharField3Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customVarcharField3Label is initialized? 
	in.customFieldsLabels.customVarcharField3Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField") + " 3";
panel.customVarcharField3Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField3 is initialized && in.#customFieldsLabels.#customVarcharField3Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField3 is initialized));
panel.customVarcharField3TextField.text=(in.#fCase is initialized && in.#fCase.#customVarCharField3 is initialized)? in.fCase.customVarCharField3: "";
panel.customVarcharField3TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField3 is initialized && in.#customFieldsLabels.#customVarcharField3Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField3 is initialized));
panel.customVarcharField4Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customVarcharField4Label is initialized? 
	in.customFieldsLabels.customVarcharField4Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField") + " 4";
panel.customVarcharField4Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField4 is initialized && in.#customFieldsLabels.#customVarcharField4Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField4 is initialized));
panel.customVarcharField4TextField.text=(in.#fCase is initialized && in.#fCase.#customVarCharField4 is initialized)? in.fCase.customVarCharField4: "";
panel.customVarcharField4TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField4 is initialized && in.#customFieldsLabels.#customVarcharField4Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField4 is initialized));
panel.customVarcharField5Label.text=in.#customFieldsLabels is initialized && in.#customFieldsLabels.#customVarcharField5Label is initialized? 
	in.customFieldsLabels.customVarcharField5Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField") + " 5";
panel.customVarcharField5Label.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField5 is initialized && in.#customFieldsLabels.#customVarcharField5Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField5 is initialized));
panel.customVarcharField5TextField.text=(in.#fCase is initialized && in.#fCase.#customVarCharField5 is initialized)? in.fCase.customVarCharField5: "";
panel.customVarcharField5TextField.visible=in.#fCase is initialized && 
	((!in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField5 is initialized && in.#customFieldsLabels.#customVarcharField5Label is initialized) || 
	(in.hasWfAdministratorPermissions && in.#fCase.#customVarCharField5 is initialized));
panel.separatorRDC.separatorText=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseCustomFieldsDetails");
panel.separatorRDC.visible=in.#fCase is initialized && 
(in.#fCase.#customVarCharField1 is initialized || 
in.#fCase.#customVarCharField2 is initialized || 
in.#fCase.#customVarCharField3 is initialized ||
in.#fCase.#customVarCharField4 is initialized ||
in.#fCase.#customVarCharField5 is initialized ||
in.#fCase.#customDecimalField1 is initialized ||
in.#fCase.#customDecimalField2 is initialized ||
in.#fCase.#customDecimalField3 is initialized || 
in.#fCase.#customDecimalField4 is initialized ||
in.#fCase.#customDecimalField5 is initialized ||
in.#fCase.#customTimestampField1 is initialized ||
in.#fCase.#customTimestampField2 is initialized ||
in.#fCase.#customTimestampField3 is initialized ||
in.#fCase.#customTimestampField4 is initialized ||
in.#fCase.#customTimestampField5 is initialized);
' #txt
>Proto Ts0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Accepted broadcasts</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>414</swimlaneSize>
    <swimlaneSize>200</swimlaneSize>
    <swimlaneSize>468</swimlaneSize>
    <swimlaneColor>-16711732</swimlaneColor>
    <swimlaneColor>-16724788</swimlaneColor>
    <swimlaneColor>-3355393</swimlaneColor>
</elementInfo>
' #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f1 mainOut f18 tail #connect
Ts0 f18 head f17 mainIn #connect
Ts0 f21 ao f22 tail #connect
Ts0 f22 head f19 @CG|ai #connect
Ts0 f2 mainOut f6 tail #connect
Ts0 f6 head f4 mainIn #connect
Ts0 f17 mainOut f8 tail #connect
Ts0 f8 head f2 mainIn #connect
Ts0 f7 mainOut f3 tail #connect
Ts0 f3 head f2 mainIn #connect
Ts0 f19 mainOut f10 tail #connect
Ts0 f10 head f9 mainIn #connect
Ts0 f0 mainOut f11 tail #connect
Ts0 f11 head f4 mainIn #connect
