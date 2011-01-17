[Ivy]
[>Created: Thu Sep 02 09:51:15 CEST 2010]
118A7E5790811666 3.12 #module
>Proto >Proto Collection #zClass
Cs0 CaseCustomFieldsDisplayProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogInitStart f1 '' #zField
Cs0 @RichDialogProcessEnd f2 '' #zField
Cs0 @RichDialogMethodStart f8 '' #zField
Cs0 @RichDialogMethodStart f9 '' #zField
Cs0 @PushWFArc f3 '' #zField
Cs0 @RichDialogProcessStep f7 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @PushWFArc f6 '' #zField
Cs0 @RichDialogMethodStart f11 '' #zField
Cs0 @PushWFArc f12 '' #zField
Cs0 @RichDialogProcessStep f13 '' #zField
Cs0 @PushWFArc f4 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @PushWFArc f5 '' #zField
>Proto Cs0 Cs0 CaseCustomFieldsDisplayProcess #zField
Cs0 f0 guid 118AD85529ADB7D3 #txt
Cs0 f0 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 62 54 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 guid 118AD855B924A263 #txt
Cs0 f1 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
Cs0 f1 method start(ch.ivyteam.ivy.workflow.ICase) #txt
Cs0 f1 disableUIEvents false #txt
Cs0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase aCase> param = methodEvent.getInputArguments();
' #txt
Cs0 f1 inParameterMapAction 'out.fCase=param.aCase;
' #txt
Cs0 f1 outParameterDecl '<> result;
' #txt
Cs0 f1 embeddedRdInitializations '* ' #txt
Cs0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase)</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f1 142 54 20 20 13 0 #rect
Cs0 f1 @|RichDialogInitStartIcon #fIcon
Cs0 f2 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
Cs0 f2 59 243 26 26 14 0 #rect
Cs0 f2 @|RichDialogProcessEndIcon #fIcon
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Cs0 f8 guid 118AD85C88382405 #txt
Cs0 f8 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
Cs0 f8 method refresh() #txt
Cs0 f8 disableUIEvents false #txt
Cs0 f8 494 54 20 20 13 0 #rect
Cs0 f8 @|RichDialogMethodStartIcon #fIcon
Cs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setCase(ICase)</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f9 guid 118AD85D3405771D #txt
Cs0 f9 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
Cs0 f9 method setCase(ch.ivyteam.ivy.workflow.ICase) #txt
Cs0 f9 disableUIEvents false #txt
Cs0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase aCase> param = methodEvent.getInputArguments();
' #txt
Cs0 f9 inParameterMapAction 'out.fCase=param.aCase;
' #txt
Cs0 f9 outParameterDecl '<> result;
' #txt
Cs0 f9 278 54 20 20 13 0 #rect
Cs0 f9 @|RichDialogMethodStartIcon #fIcon
Cs0 f3 expr out #txt
Cs0 f3 72 74 72 243 #arcP
Cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
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
Cs0 f7 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData out;
' #txt
Cs0 f7 actionTable 'out=in;
' #txt
Cs0 f7 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
Cs0 f7 486 132 36 24 20 -2 #rect
Cs0 f7 @|RichDialogProcessStepIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 504 74 504 132 #arcP
Cs0 f10 0 0.5020070662930676 0 0 #arcLabel
Cs0 f6 expr out #txt
Cs0 f6 504 156 85 256 #arcP
Cs0 f6 1 504 256 #addKink
Cs0 f6 1 0.2611148387214044 0 0 #arcLabel
Cs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>caseIsInitialized()</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f11 guid 11A012A42ABB660A #txt
Cs0 f11 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
Cs0 f11 method caseIsInitialized() #txt
Cs0 f11 disableUIEvents false #txt
Cs0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f11 outParameterDecl '<java.lang.Boolean isInitialized> result;
' #txt
Cs0 f11 outParameterMapAction 'result.isInitialized=(in.#fCase != null);
' #txt
Cs0 f11 382 54 20 20 13 0 #rect
Cs0 f11 @|RichDialogMethodStartIcon #fIcon
Cs0 f12 expr out #txt
Cs0 f12 392 74 85 256 #arcP
Cs0 f12 1 392 256 #addKink
Cs0 f12 0 0.9079330099184836 0 0 #arcLabel
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get case custom fields
cms entries</name>
        <nameStyle>34,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData out;
' #txt
Cs0 f13 actionTable 'out=in;
' #txt
Cs0 f13 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.CustomFieldsHelper;

// get the custom fields labels
out.setCustomFieldsLabels(CustomFieldsHelper.getCaseCustomFieldsLabels(in.fCase, ivy.log));' #txt
Cs0 f13 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
Cs0 f13 134 132 36 24 20 -2 #rect
Cs0 f13 @|RichDialogProcessStepIcon #fIcon
Cs0 f4 expr out #txt
Cs0 f4 152 156 84 253 #arcP
Cs0 f4 1 152 240 #addKink
Cs0 f4 0 0.9330632585482652 0 0 #arcLabel
Cs0 f15 expr out #txt
Cs0 f15 152 74 152 132 #arcP
Cs0 f15 0 0.46181707035063635 0 0 #arcLabel
Cs0 f5 expr out #txt
Cs0 f5 288 74 170 144 #arcP
Cs0 f5 1 288 144 #addKink
Cs0 f5 0 0.7927974688102591 0 0 #arcLabel
>Proto Cs0 .type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 .rdData2UIAction 'panel.customDecimalField1Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomDecimalField1Label() is initialized? 
	in.customFieldsLabels.customDecimalField1Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField") + " 1");
panel.customDecimalField1Label.visible=(in.#fCase.#customDecimalField1 is initialized);
panel.customDecimalField1TextField.text="" + in.#fCase.#customDecimalField1;
panel.customDecimalField1TextField.visible=(in.#fCase.#customDecimalField1 is initialized);
panel.customDecimalField2Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomDecimalField2Label() is initialized? 
	in.customFieldsLabels.customDecimalField2Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField") + " 2");
panel.customDecimalField2Label.visible=(in.#fCase.#customDecimalField2 is initialized);
panel.customDecimalField2TextField.text="" + in.#fCase.#customDecimalField2;
panel.customDecimalField2TextField.visible=(in.#fCase.#customDecimalField2 is initialized);
panel.customDecimalField3Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomDecimalField3Label() is initialized? 
	in.customFieldsLabels.customDecimalField3Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField") + " 3");
panel.customDecimalField3Label.visible=(in.#fCase.#customDecimalField3 is initialized);
panel.customDecimalField3TextField.text="" + in.#fCase.#customDecimalField3;
panel.customDecimalField3TextField.visible=(in.#fCase.#customDecimalField3 is initialized);
panel.customDecimalField4Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomDecimalField4Label() is initialized? 
	in.customFieldsLabels.customDecimalField4Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField") + " 4");
panel.customDecimalField4Label.visible=(in.#fCase.#customDecimalField4 is initialized);
panel.customDecimalField4TextField.text="" + in.#fCase.#customDecimalField4;
panel.customDecimalField4TextField.visible=(in.#fCase.#customDecimalField4 is initialized);
panel.customDecimalField5Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomDecimalField5Label() is initialized? 
	in.customFieldsLabels.customDecimalField5Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalField") + " 5");
panel.customDecimalField5Label.visible=(in.#fCase.#customDecimalField5 is initialized);
panel.customDecimalField5TextField.text="" + in.#fCase.#customDecimalField5;
panel.customDecimalField5TextField.visible=(in.#fCase.#customDecimalField5 is initialized);
panel.customTimestampField1Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomTimestampField1Label() is initialized? 
	in.customFieldsLabels.customTimestampField1Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField") + " 1");
panel.customTimestampField1Label.visible=(in.#fCase.#customTimestampField1 is initialized);
panel.customTimestampField1TextField.text="" + in.#fCase.#customTimestampField1;
panel.customTimestampField1TextField.visible=(in.#fCase.#customTimestampField1 is initialized);
panel.customTimestampField2Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomTimestampField2Label() is initialized? 
	in.customFieldsLabels.customTimestampField2Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField") + " 2");
panel.customTimestampField2Label.visible=(in.#fCase.#customTimestampField2 is initialized);
panel.customTimestampField2TextField.text="" + in.#fCase.#customTimestampField2;
panel.customTimestampField2TextField.visible=(in.#fCase.#customTimestampField2 is initialized);
panel.customTimestampField3Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomTimestampField3Label() is initialized? 
	in.customFieldsLabels.customTimestampField3Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField") + " 3");
panel.customTimestampField3Label.visible=(in.#fCase.#customTimestampField3 is initialized);
panel.customTimestampField3TextField.text="" + in.#fCase.#customTimestampField3;
panel.customTimestampField3TextField.visible=(in.#fCase.#customTimestampField3 is initialized);
panel.customTimestampField4Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomTimestampField4Label() is initialized? 
	in.customFieldsLabels.customTimestampField4Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField") + " 4");
panel.customTimestampField4Label.visible=(in.#fCase.#customTimestampField4 is initialized);
panel.customTimestampField4TextField.text="" + in.#fCase.#customTimestampField4;
panel.customTimestampField4TextField.visible=(in.#fCase.#customTimestampField4 is initialized);
panel.customTimestampField5Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomTimestampField5Label() is initialized? 
	in.customFieldsLabels.customTimestampField5Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampField") + " 5");
panel.customTimestampField5Label.visible=(in.#fCase.#customTimestampField5 is initialized);
panel.customTimestampField5TextField.text="" + in.#fCase.#customTimestampField5;
panel.customTimestampField5TextField.visible=(in.#fCase.#customTimestampField5 is initialized);
panel.customVarcharField1Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomVarcharField1Label() is initialized? 
	in.customFieldsLabels.customVarcharField1Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField") + " 1");
panel.customVarcharField1Label.visible=(in.#fCase.#customVarCharField1 is initialized);
panel.customVarcharField1TextField.text=in.#fCase.#customVarCharField1;
panel.customVarcharField1TextField.visible=(in.#fCase.#customVarCharField1 is initialized);
panel.customVarcharField2Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomVarcharField2Label() is initialized? 
	in.customFieldsLabels.customVarcharField2Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField") + " 2");
panel.customVarcharField2Label.visible=(in.#fCase.#customVarCharField2 is initialized);
panel.customVarcharField2TextField.text=in.#fCase.#customVarCharField2;
panel.customVarcharField2TextField.visible=(in.#fCase.#customVarCharField2 is initialized);
panel.customVarcharField3Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomVarcharField3Label() is initialized? 
	in.customFieldsLabels.customVarcharField3Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField") + " 3");
panel.customVarcharField3Label.visible=(in.#fCase.#customVarCharField3 is initialized);
panel.customVarcharField3TextField.text=in.#fCase.#customVarCharField3;
panel.customVarcharField3TextField.visible=(in.#fCase.#customVarCharField3 is initialized);
panel.customVarcharField4Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomVarcharField4Label() is initialized? 
	in.customFieldsLabels.customVarcharField4Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField") + " 4");
panel.customVarcharField4Label.visible=(in.#fCase.#customVarCharField4 is initialized);
panel.customVarcharField4TextField.text=in.#fCase.#customVarCharField4;
panel.customVarcharField4TextField.visible=(in.#fCase.#customVarCharField4 is initialized);
panel.customVarcharField5Label.text=(in.#customFieldsLabels is initialized && in.#customFieldsLabels.getCustomVarcharField5Label() is initialized? 
	in.customFieldsLabels.customVarcharField5Label:
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharField") + " 5");
panel.customVarcharField5Label.visible=(in.#fCase.#customVarCharField5 is initialized);
panel.customVarcharField5TextField.text=in.#fCase.#customVarCharField5;
panel.customVarcharField5TextField.visible=(in.#fCase.#customVarCharField5 is initialized);
' #txt
>Proto Cs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>246</swimlaneSize>
    <swimlaneSize>503</swimlaneSize>
    <swimlaneColor>-6684673</swimlaneColor>
    <swimlaneColor>-6697729</swimlaneColor>
</elementInfo>
' #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f3 tail #connect
Cs0 f3 head f2 mainIn #connect
Cs0 f8 mainOut f10 tail #connect
Cs0 f10 head f7 mainIn #connect
Cs0 f7 mainOut f6 tail #connect
Cs0 f6 head f2 mainIn #connect
Cs0 f11 mainOut f12 tail #connect
Cs0 f12 head f2 mainIn #connect
Cs0 f13 mainOut f4 tail #connect
Cs0 f4 head f2 mainIn #connect
Cs0 f1 mainOut f15 tail #connect
Cs0 f15 head f13 mainIn #connect
Cs0 f9 mainOut f5 tail #connect
Cs0 f5 head f13 mainIn #connect
