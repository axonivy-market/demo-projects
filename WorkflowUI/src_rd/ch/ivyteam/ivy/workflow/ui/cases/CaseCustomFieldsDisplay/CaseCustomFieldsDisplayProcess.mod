[Ivy]
[>Created: Wed Apr 22 15:32:48 CEST 2009]
118A7E5790811666 3.11 #module
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
Cs0 @PushWFArc f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @RichDialogProcessStep f7 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @PushWFArc f6 '' #zField
Cs0 @RichDialogMethodStart f11 '' #zField
Cs0 @PushWFArc f12 '' #zField
Cs0 @RichDialogProcessStep f13 '' #zField
Cs0 @RichDialogProcessStart f14 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @PushWFArc f16 '' #zField
>Proto Cs0 Cs0 CaseCustomFieldsDisplayProcess #zField
Cs0 f0 guid 118AD85529ADB7D3 #txt
Cs0 f0 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
Cs0 f0 method start() #txt
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
Cs0 f0 150 134 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 guid 118AD855B924A263 #txt
Cs0 f1 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
Cs0 f1 method start(ch.ivyteam.ivy.workflow.ICase) #txt
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
Cs0 f1 230 134 20 20 13 0 #rect
Cs0 f1 @|RichDialogInitStartIcon #fIcon
Cs0 f2 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
Cs0 f2 147 459 26 26 14 0 #rect
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
Cs0 f8 446 134 20 20 13 0 #rect
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
Cs0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase aCase> param = methodEvent.getInputArguments();
' #txt
Cs0 f9 inParameterMapAction 'out.fCase=param.aCase;
' #txt
Cs0 f9 outParameterDecl '<> result;
' #txt
Cs0 f9 334 134 20 20 13 0 #rect
Cs0 f9 @|RichDialogMethodStartIcon #fIcon
Cs0 f3 expr out #txt
Cs0 f3 160 154 160 459 #arcP
Cs0 f4 expr out #txt
Cs0 f4 240 154 173 472 #arcP
Cs0 f4 1 240 472 #addKink
Cs0 f4 0 0.6318266511940024 0 0 #arcLabel
Cs0 f5 expr out #txt
Cs0 f5 344 154 173 472 #arcP
Cs0 f5 1 344 472 #addKink
Cs0 f5 0 0.7927974688102591 0 0 #arcLabel
Cs0 f7 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData out;
' #txt
Cs0 f7 actionTable 'out=in;
' #txt
Cs0 f7 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
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
Cs0 f7 438 316 36 24 20 -2 #rect
Cs0 f7 @|RichDialogProcessStepIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 456 154 456 316 #arcP
Cs0 f10 0 0.5020070662930676 0 0 #arcLabel
Cs0 f6 expr out #txt
Cs0 f6 456 340 173 472 #arcP
Cs0 f6 1 456 472 #addKink
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
Cs0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f11 outParameterDecl '<java.lang.Boolean isInitialized> result;
' #txt
Cs0 f11 outParameterMapAction 'result.isInitialized=(in.#fCase != null);
' #txt
Cs0 f11 374 190 20 20 13 0 #rect
Cs0 f11 @|RichDialogMethodStartIcon #fIcon
Cs0 f12 expr out #txt
Cs0 f12 384 210 173 472 #arcP
Cs0 f12 1 384 472 #addKink
Cs0 f12 0 0.9079330099184836 0 0 #arcLabel
Cs0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData out;
' #txt
Cs0 f13 actionTable 'out=in;
' #txt
Cs0 f13 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;

(panel.customVarcharFieldsGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customVarcharFields"));
	
(panel.customDecimalFieldsGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customDecimalFields"));
	
(panel.customTimestampFieldsGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/customField/plainStrings/customTimestampFields"));' #txt
Cs0 f13 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the border''s titles
with cms entries</name>
        <nameStyle>42,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 190 292 36 24 20 -2 #rect
Cs0 f13 @|RichDialogProcessStepIcon #fIcon
Cs0 f14 guid 11B45B9E1B13F887 #txt
Cs0 f14 type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
Cs0 f14 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData out;
' #txt
Cs0 f14 actionTable 'out=in;
' #txt
Cs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f14 198 230 20 20 13 0 #rect
Cs0 f14 @|RichDialogProcessStartIcon #fIcon
Cs0 f15 expr out #txt
Cs0 f15 208 250 208 292 #arcP
Cs0 f16 expr out #txt
Cs0 f16 208 316 173 472 #arcP
Cs0 f16 1 208 472 #addKink
Cs0 f16 0 0.6501009450163584 0 0 #arcLabel
>Proto Cs0 .type ch.ivyteam.ivy.workflow.ui.cases.CaseCustomFieldsDisplay.CaseCustomFieldsDisplayData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 .rdData2UIAction 'panel.customDecimalField1Label.visible=(in.#fCase.#customDecimalField1 is initialized);
panel.customDecimalField1TextField.text="" + in.#fCase.#customDecimalField1;
panel.customDecimalField1TextField.visible=(in.#fCase.#customDecimalField1 is initialized);
panel.customDecimalField2Label.visible=(in.#fCase.#customDecimalField2 is initialized);
panel.customDecimalField2TextField.text="" + in.#fCase.#customDecimalField2;
panel.customDecimalField2TextField.visible=(in.#fCase.#customDecimalField2 is initialized);
panel.customDecimalField3Label.visible=(in.#fCase.#customDecimalField3 is initialized);
panel.customDecimalField3TextField.text="" + in.#fCase.#customDecimalField3;
panel.customDecimalField3TextField.visible=(in.#fCase.#customDecimalField3 is initialized);
panel.customDecimalField4Label.visible=(in.#fCase.#customDecimalField4 is initialized);
panel.customDecimalField4TextField.text="" + in.#fCase.#customDecimalField4;
panel.customDecimalField4TextField.visible=(in.#fCase.#customDecimalField4 is initialized);
panel.customDecimalField5Label.visible=(in.#fCase.#customDecimalField5 is initialized);
panel.customDecimalField5TextField.text="" + in.#fCase.#customDecimalField5;
panel.customDecimalField5TextField.visible=(in.#fCase.#customDecimalField5 is initialized);
panel.customTimestampField1Label.visible=(in.#fCase.#customTimestampField1 is initialized);
panel.customTimestampField1TextField.text="" + in.#fCase.#customTimestampField1;
panel.customTimestampField1TextField.visible=(in.#fCase.#customTimestampField1 is initialized);
panel.customTimestampField2Label.visible=(in.#fCase.#customTimestampField2 is initialized);
panel.customTimestampField2TextField.text="" + in.#fCase.#customTimestampField2;
panel.customTimestampField2TextField.visible=(in.#fCase.#customTimestampField2 is initialized);
panel.customTimestampField3Label.visible=(in.#fCase.#customTimestampField3 is initialized);
panel.customTimestampField3TextField.text="" + in.#fCase.#customTimestampField3;
panel.customTimestampField3TextField.visible=(in.#fCase.#customTimestampField3 is initialized);
panel.customTimestampField4Label.visible=(in.#fCase.#customTimestampField4 is initialized);
panel.customTimestampField4TextField.text="" + in.#fCase.#customTimestampField4;
panel.customTimestampField4TextField.visible=(in.#fCase.#customTimestampField4 is initialized);
panel.customTimestampField5Label.visible=(in.#fCase.#customTimestampField5 is initialized);
panel.customTimestampField5TextField.text="" + in.#fCase.#customTimestampField5;
panel.customTimestampField5TextField.visible=(in.#fCase.#customTimestampField5 is initialized);
panel.customVarcharField1Label.visible=(in.#fCase.#customVarCharField1 is initialized);
panel.customVarcharField1TextField.text=in.#fCase.#customVarCharField1;
panel.customVarcharField1TextField.visible=(in.#fCase.#customVarCharField1 is initialized);
panel.customVarcharField2Label.visible=(in.#fCase.#customVarCharField2 is initialized);
panel.customVarcharField2TextField.text=in.#fCase.#customVarCharField2;
panel.customVarcharField2TextField.visible=(in.#fCase.#customVarCharField2 is initialized);
panel.customVarcharField3Label.visible=(in.#fCase.#customVarCharField3 is initialized);
panel.customVarcharField3TextField.text=in.#fCase.#customVarCharField3;
panel.customVarcharField3TextField.visible=(in.#fCase.#customVarCharField3 is initialized);
panel.customVarcharField4Label.visible=(in.#fCase.#customVarCharField4 is initialized);
panel.customVarcharField4TextField.text=in.#fCase.#customVarCharField4;
panel.customVarcharField4TextField.visible=(in.#fCase.#customVarCharField4 is initialized);
panel.customVarcharField5Label.visible=(in.#fCase.#customVarCharField5 is initialized);
panel.customVarcharField5TextField.text=in.#fCase.#customVarCharField5;
panel.customVarcharField5TextField.visible=(in.#fCase.#customVarCharField5 is initialized);
' #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f3 tail #connect
Cs0 f3 head f2 mainIn #connect
Cs0 f1 mainOut f4 tail #connect
Cs0 f4 head f2 mainIn #connect
Cs0 f9 mainOut f5 tail #connect
Cs0 f5 head f2 mainIn #connect
Cs0 f8 mainOut f10 tail #connect
Cs0 f10 head f7 mainIn #connect
Cs0 f7 mainOut f6 tail #connect
Cs0 f6 head f2 mainIn #connect
Cs0 f11 mainOut f12 tail #connect
Cs0 f12 head f2 mainIn #connect
Cs0 f14 mainOut f15 tail #connect
Cs0 f15 head f13 mainIn #connect
Cs0 f13 mainOut f16 tail #connect
Cs0 f16 head f2 mainIn #connect
