[Ivy]
[>Created: Wed May 13 16:11:32 CEST 2009]
11850C944B448AE7 3.11 #module
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
Ts0 @RichDialogMethodStart f5 '' #zField
Ts0 @RichDialogMethodStart f7 '' #zField
Ts0 @PushWFArc f10 '' #zField
Ts0 @PushWFArc f11 '' #zField
Ts0 @RichDialogProcessStep f2 '' #zField
Ts0 @PushWFArc f6 '' #zField
Ts0 @PushWFArc f8 '' #zField
Ts0 @RichDialogMethodStart f9 '' #zField
Ts0 @PushWFArc f12 '' #zField
Ts0 @RichDialogProcessStart f13 '' #zField
Ts0 @RichDialogProcessStep f14 '' #zField
Ts0 @PushWFArc f15 '' #zField
Ts0 @PushWFArc f16 '' #zField
Ts0 @RichDialogProcessStep f17 '' #zField
Ts0 @PushWFArc f18 '' #zField
Ts0 @PushWFArc f3 '' #zField
Ts0 @RichDialogBroadcastStart f19 '' #zField
Ts0 @PushWFArc f20 '' #zField
Ts0 @InfoButton f21 '' #zField
Ts0 @AnnotationArc f22 '' #zField
>Proto Ts0 Ts0 TaskHeaderDisplayProcess #zField
Ts0 f0 guid 11850F34D2F890B1 #txt
Ts0 f0 type ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData #txt
Ts0 f0 method start() #txt
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
Ts0 f4 type ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData #txt
Ts0 f4 99 355 26 26 14 0 #rect
Ts0 f4 @|RichDialogProcessEndIcon #fIcon
Ts0 f1 guid 1194CDB08E523727 #txt
Ts0 f1 type ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData #txt
Ts0 f1 method start(ch.ivyteam.ivy.workflow.ICase) #txt
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
Ts0 f5 guid 1194CDB70FF965C5 #txt
Ts0 f5 type ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData #txt
Ts0 f5 method refresh() #txt
Ts0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f5 outParameterDecl '<> result;
' #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f5 574 78 20 20 13 0 #rect
Ts0 f5 @|RichDialogMethodStartIcon #fIcon
Ts0 f7 guid 1194CDB7A09B6BB4 #txt
Ts0 f7 type ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData #txt
Ts0 f7 method setCase(ch.ivyteam.ivy.workflow.ICase) #txt
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
Ts0 f7 454 78 20 20 13 0 #rect
Ts0 f7 @|RichDialogMethodStartIcon #fIcon
Ts0 f10 expr out #txt
Ts0 f10 464 98 125 368 #arcP
Ts0 f10 1 464 368 #addKink
Ts0 f10 0 0.9351397634777254 0 0 #arcLabel
Ts0 f11 expr out #txt
Ts0 f11 112 98 112 355 #arcP
Ts0 f2 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData out;
' #txt
Ts0 f2 actionTable 'out=in;
' #txt
Ts0 f2 type ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData #txt
Ts0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>do nothing,
just finish this rd process
and fires the updatabinding (rdData2ui)</name>
        <nameStyle>79,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f2 566 196 36 24 20 -2 #rect
Ts0 f2 @|RichDialogProcessStepIcon #fIcon
Ts0 f6 expr out #txt
Ts0 f6 584 98 584 196 #arcP
Ts0 f6 0 0.542713855575422 0 0 #arcLabel
Ts0 f8 expr out #txt
Ts0 f8 584 220 125 368 #arcP
Ts0 f8 1 584 368 #addKink
Ts0 f8 1 0.2856576105368446 0 0 #arcLabel
Ts0 f9 guid 11A0129172D2C7A6 #txt
Ts0 f9 type ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData #txt
Ts0 f9 method caseIsInitialized() #txt
Ts0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f9 outParameterDecl '<java.lang.Boolean isInitialized> result;
' #txt
Ts0 f9 outParameterMapAction 'result.isInitialized=(in.#fCase != null);
' #txt
Ts0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>caseIsInitialized()</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f9 486 142 20 20 13 0 #rect
Ts0 f9 @|RichDialogMethodStartIcon #fIcon
Ts0 f12 expr out #txt
Ts0 f12 496 162 125 368 #arcP
Ts0 f12 1 496 368 #addKink
Ts0 f12 1 0.11099974357895129 0 0 #arcLabel
Ts0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f13 guid 11B45A60557D114D #txt
Ts0 f13 type ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData #txt
Ts0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData out;
' #txt
Ts0 f13 actionTable 'out=in;
' #txt
Ts0 f13 334 158 20 20 13 0 #rect
Ts0 f13 @|RichDialogProcessStartIcon #fIcon
Ts0 f14 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData out;
' #txt
Ts0 f14 actionTable 'out=in;
' #txt
Ts0 f14 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;

(panel.caseGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/case"));
	
(panel.processCategoryGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessCategoryName")
);


(panel.caseProcessGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessName")
);

(panel.caseTypeGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseTypeName")
);

(panel.caseSubTypeGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseSubTypeName")
);
' #txt
Ts0 f14 type ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData #txt
Ts0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the titles on border
with cms entries</name>
        <nameStyle>43,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f14 326 260 36 24 20 -2 #rect
Ts0 f14 @|RichDialogProcessStepIcon #fIcon
Ts0 f15 expr out #txt
Ts0 f15 344 178 344 260 #arcP
Ts0 f16 expr out #txt
Ts0 f16 344 284 125 368 #arcP
Ts0 f16 1 344 368 #addKink
Ts0 f16 1 0.2132097251838562 0 0 #arcLabel
Ts0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData out;
' #txt
Ts0 f17 actionTable 'out=in;
' #txt
Ts0 f17 actionCode 'import ch.ivyteam.ivy.event.SystemEventCategory;


// register to the system events Workflow category
ivy.rd.subscribeToSystemEvents(SystemEventCategory.WORKFLOW);' #txt
Ts0 f17 type ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData #txt
Ts0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>register for the 
system events workflow</name>
        <nameStyle>40,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f17 158 212 36 24 20 -2 #rect
Ts0 f17 @|RichDialogProcessStepIcon #fIcon
Ts0 f18 expr out #txt
Ts0 f18 176 98 176 212 #arcP
Ts0 f18 0 0.7402173550498343 0 0 #arcLabel
Ts0 f3 expr out #txt
Ts0 f3 176 236 125 368 #arcP
Ts0 f3 1 176 368 #addKink
Ts0 f3 0 0.7278970683396531 0 0 #arcLabel
Ts0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy_systemevent_workflow_case_changed</name>
        <nameStyle>37,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f19 guid 11E4627095EC9C8B #txt
Ts0 f19 type ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData #txt
Ts0 f19 broadcast ivy_systemevent_workflow_case_changed #txt
Ts0 f19 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData out;
' #txt
Ts0 f19 actionTable 'out=in;
' #txt
Ts0 f19 806 78 20 20 13 0 #rect
Ts0 f19 @|RichDialogBroadcastStartIcon #fIcon
Ts0 f20 expr out #txt
Ts0 f20 816 98 125 368 #arcP
Ts0 f20 1 816 368 #addKink
Ts0 f20 1 0.2680821848312587 0 0 #arcLabel
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
Ts0 f21 892 28 24 24 10 0 #rect
Ts0 f21 @|IBIcon #fIcon
Ts0 f22 892 40 824 82 #arcP
>Proto Ts0 .type ch.ivyteam.ivy.workflow.ui.cases.CaseCategorizationDetailsDisplay.CaseCategorizationDetailsDisplayData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 .rdData2UIAction 'panel.caseDescriptionLabel.visible=(in.#fCase.#description is initialized);
panel.caseDescriptionScrollPane.visible=(in.#fCase.#description is initialized);
panel.caseDescriptionTextArea.text=(in.#fCase.#description is initialized? in.fCase.getDescription(): "n/a");
panel.caseIdIconLabel.toolTipText=(in.#fCase is initialized? ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseId") + ": " + in.fCase.getIdentifier().toString(): "n/a");
panel.caseIdTextField.text=(in.#fCase is initialized? in.fCase.getIdentifier().toString(): "n/a");
panel.caseNameLabel.visible=(in.#fCase.#name is initialized);
panel.caseNameTextField.text=in.fCase.name;
panel.caseNameTextField.visible=(in.#fCase.#name is initialized);
panel.casePriorityIconLabel.iconUri=(in.#fCase is initialized? "/ch/ivyteam/ivy/workflow/ui/case/images/casePriority" + in.fCase.getPriority().intValue() + "_16": "");
panel.casePriorityIconLabel.toolTipText=(in.#fCase is initialized? ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/priority") + in.fCase.getPriority().toString(): "n/a");
panel.casePriorityTextField.text=(in.#fCase is initialized? in.fCase.getPriority().toString(): "n/a");
panel.caseProcessCategoryCodeLabel.visible=(in.#fCase.getProcessCategoryCode() is initialized);
panel.caseProcessCategoryCodeTextField.text=(in.#fCase is initialized && in.#fCase.getProcessCategoryCode() is initialized? in.fCase.getProcessCategoryCode(): "n/a");
panel.caseProcessCategoryCodeTextField.visible=(in.#fCase.getProcessCategoryCode() is initialized);
panel.caseProcessCategoryLabel.visible=(in.#fCase.getProcessCategoryCode() is initialized);
panel.caseProcessCategoryNameLabel.visible=(in.#fCase.getProcessCategoryName() is initialized);
panel.caseProcessCategoryNameTextField.text=(in.#fCase is initialized && in.#fCase.getProcessCategoryName() is initialized? in.fCase.getProcessCategoryName(): "n/a");
panel.caseProcessCategoryNameTextField.visible=(in.#fCase.getProcessCategoryName() is initialized);
panel.caseProcessCodeLabel.visible=(in.#fCase.getProcessCode() is initialized);
panel.caseProcessCodeTextField.text=(in.#fCase is initialized && in.#fCase.getProcessCode() is initialized? in.fCase.getProcessCode(): "n/a");
panel.caseProcessCodeTextField.visible=(in.#fCase.getProcessCode() is initialized);
panel.caseProcessLabel.visible=(in.#fCase.getProcessCode() is initialized);
panel.caseProcessNameLabel.visible=(in.#fCase.getProcessName() is initialized);
panel.caseProcessNameTextField.text=(in.#fCase is initialized && in.#fCase.getProcessName() is initialized? in.fCase.getProcessName(): "n/a");
panel.caseProcessNameTextField.visible=(in.#fCase.getProcessName() is initialized);
panel.caseStartTextField.text=(in.#fCase.getStartTimestamp() is initialized? new DateTime(in.fCase.getStartTimestamp()).format("medium"): "n/a");
panel.caseStateTextField.text=(in.#fCase.getState() is initialized? in.fCase.getState().toString(): "n/a");
panel.caseSubTypeCodeLabel.visible=(in.#fCase.getSubTypeCode() is initialized);
panel.caseSubTypeCodeTextField.text=(in.#fCase is initialized && in.#fCase.getSubTypeCode() is initialized? in.fCase.getSubTypeCode(): "n/a");
panel.caseSubTypeCodeTextField.visible=(in.#fCase.getSubTypeCode() is initialized);
panel.caseSubTypeLabel.visible=(in.#fCase.getSubTypeCode() is initialized);
panel.caseSubTypeNameLabel.visible=(in.#fCase.getSubTypeName() is initialized);
panel.caseSubTypeNameTextField.text=(in.#fCase is initialized && in.#fCase.getSubTypeName() is initialized? in.fCase.getSubTypeName(): "n/a");
panel.caseSubTypeNameTextField.visible=(in.#fCase.getSubTypeName() is initialized);
panel.caseTypeCodeLabel.visible=(in.#fCase.getTypeCode() is initialized);
panel.caseTypeCodeTextField.text=(in.#fCase is initialized && in.#fCase.getTypeCode() is initialized? in.fCase.getTypeCode(): "n/a");
panel.caseTypeCodeTextField.visible=(in.#fCase.getTypeCode() is initialized);
panel.caseTypeLabel.visible=(in.#fCase.getTypeCode() is initialized);
panel.caseTypeNameLabel.visible=(in.#fCase.getTypeName() is initialized);
panel.caseTypeNameTextField.text=(in.#fCase is initialized && in.#fCase.getTypeName() is initialized? in.fCase.getTypeName(): "n/a");
panel.caseTypeNameTextField.visible=(in.#fCase.getTypeName() is initialized);
' #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f7 mainOut f10 tail #connect
Ts0 f10 head f4 mainIn #connect
Ts0 f0 mainOut f11 tail #connect
Ts0 f11 head f4 mainIn #connect
Ts0 f5 mainOut f6 tail #connect
Ts0 f6 head f2 mainIn #connect
Ts0 f2 mainOut f8 tail #connect
Ts0 f8 head f4 mainIn #connect
Ts0 f9 mainOut f12 tail #connect
Ts0 f12 head f4 mainIn #connect
Ts0 f13 mainOut f15 tail #connect
Ts0 f15 head f14 mainIn #connect
Ts0 f14 mainOut f16 tail #connect
Ts0 f16 head f4 mainIn #connect
Ts0 f1 mainOut f18 tail #connect
Ts0 f18 head f17 mainIn #connect
Ts0 f17 mainOut f3 tail #connect
Ts0 f3 head f4 mainIn #connect
Ts0 f19 mainOut f20 tail #connect
Ts0 f20 head f4 mainIn #connect
Ts0 f21 ao f22 tail #connect
Ts0 f22 head f19 @CG|ai #connect
