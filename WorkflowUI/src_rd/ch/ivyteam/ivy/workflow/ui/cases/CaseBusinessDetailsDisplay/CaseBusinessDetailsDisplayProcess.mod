[Ivy]
[>Created: Tue Jun 29 11:55:25 CEST 2010]
118A7E4692FBC41C 3.12 #module
>Proto >Proto Collection #zClass
Cs0 CaseBusinessDetailsDisplayProcess Big #zClass
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
Cs0 @RichDialogMethodStart f6 '' #zField
Cs0 @RichDialogProcessEnd f9 '' #zField
Cs0 @RichDialogMethodStart f19 '' #zField
Cs0 @PushWFArc f17 '' #zField
Cs0 @RichDialogProcessStep f2 '' #zField
Cs0 @PushWFArc f3 '' #zField
Cs0 @PushWFArc f4 '' #zField
Cs0 @RichDialogMethodStart f5 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @RichDialogProcessStep f8 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @PushWFArc f12 '' #zField
>Proto Cs0 Cs0 CaseBusinessDetailsDisplayProcess #zField
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 guid 118A8CF9702F1A25 #txt
Cs0 f0 type ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.fCase=null;
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '* ' #txt
Cs0 f0 78 126 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase)</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f1 guid 118A8CFB58C1A08B #txt
Cs0 f1 type ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayData #txt
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
Cs0 f1 278 134 20 20 13 0 #rect
Cs0 f1 @|RichDialogInitStartIcon #fIcon
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 guid 118A8D025E94076A #txt
Cs0 f6 type ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayData #txt
Cs0 f6 method refresh() #txt
Cs0 f6 disableUIEvents false #txt
Cs0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f6 outParameterDecl '<> result;
' #txt
Cs0 f6 510 134 20 20 13 0 #rect
Cs0 f6 @|RichDialogMethodStartIcon #fIcon
Cs0 f9 type ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayData #txt
Cs0 f9 75 419 26 26 14 0 #rect
Cs0 f9 @|RichDialogProcessEndIcon #fIcon
Cs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setCase(Number)</name>
        <nameStyle>15,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f19 guid 118A9066389E2501 #txt
Cs0 f19 type ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayData #txt
Cs0 f19 method setCase(ch.ivyteam.ivy.workflow.ICase) #txt
Cs0 f19 disableUIEvents false #txt
Cs0 f19 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase aCase> param = methodEvent.getInputArguments();
' #txt
Cs0 f19 inParameterMapAction 'out.fCase=param.aCase;
' #txt
Cs0 f19 outParameterDecl '<> result;
' #txt
Cs0 f19 366 134 20 20 13 0 #rect
Cs0 f19 @|RichDialogMethodStartIcon #fIcon
Cs0 f17 expr out #txt
Cs0 f17 376 154 101 432 #arcP
Cs0 f17 1 376 432 #addKink
Cs0 f17 0 0.9195892509952022 0 0 #arcLabel
Cs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
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
Cs0 f2 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayData out;
' #txt
Cs0 f2 actionTable 'out=in;
' #txt
Cs0 f2 type ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayData #txt
Cs0 f2 502 276 36 24 20 -2 #rect
Cs0 f2 @|RichDialogProcessStepIcon #fIcon
Cs0 f3 expr out #txt
Cs0 f3 520 154 520 276 #arcP
Cs0 f3 0 0.6469280085873973 0 0 #arcLabel
Cs0 f4 expr out #txt
Cs0 f4 520 300 101 432 #arcP
Cs0 f4 1 520 432 #addKink
Cs0 f4 1 0.2594474247955099 0 0 #arcLabel
Cs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>caseIsInitialized()</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f5 guid 11A0127459F620D4 #txt
Cs0 f5 type ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayData #txt
Cs0 f5 method caseIsInitialized() #txt
Cs0 f5 disableUIEvents false #txt
Cs0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f5 outParameterDecl '<java.lang.Boolean isInitilialized> result;
' #txt
Cs0 f5 outParameterMapAction 'result.isInitilialized=(in.#fCase != null);
' #txt
Cs0 f5 398 174 20 20 13 0 #rect
Cs0 f5 @|RichDialogMethodStartIcon #fIcon
Cs0 f7 expr out #txt
Cs0 f7 408 194 101 432 #arcP
Cs0 f7 1 408 432 #addKink
Cs0 f7 0 0.9801498893018883 0 0 #arcLabel
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayData out;
' #txt
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 actionCode 'import ch.ivyteam.ivy.security.IPermission;

out.hasWfAdministratorPermissions = 
	ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), IPermission.ADMINISTRATE_WORKFLOW);' #txt
Cs0 f8 type ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayData #txt
Cs0 f8 70 284 36 24 20 -2 #rect
Cs0 f8 @|RichDialogProcessStepIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 288 154 106 296 #arcP
Cs0 f10 1 288 296 #addKink
Cs0 f10 0 0.9139749171667256 0 0 #arcLabel
Cs0 f11 expr out #txt
Cs0 f11 88 308 88 419 #arcP
Cs0 f12 expr out #txt
Cs0 f12 88 146 88 284 #arcP
>Proto Cs0 .type ch.ivyteam.ivy.workflow.ui.cases.CaseBusinessDetailsDisplay.CaseBusinessDetailsDisplayData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 .rdData2UIAction 'panel.businessMainContactDocumentDbCodeLabel.visible=(in.#fCase.#businessMainContactDocumentDatabaseCode is initialized && in.hasWfAdministratorPermissions);
panel.businessMainContactDocumentDbCodeTextField.text=in.#fCase.#businessMainContactDocumentDatabaseCode;
panel.businessMainContactDocumentDbCodeTextField.visible=(in.#fCase.#businessMainContactDocumentDatabaseCode is initialized && in.hasWfAdministratorPermissions);
panel.businessMainContactFolderIdLabel.visible=(in.#fCase.#businessMainContactFolderId is initialized);
panel.businessMainContactFolderIdTextField.text=in.#fCase.#businessMainContactFolderId;
panel.businessMainContactFolderIdTextField.visible=(in.#fCase.#businessMainContactFolderId is initialized && in.hasWfAdministratorPermissions);
panel.businessMainContactIdTextField.text="" + in.#fCase.#businessMainContactId;
panel.businessMainContactIdTextField.visible=(in.#fCase.#businessMainContactId is initialized);
panel.businessMainContactLabel.text=in.fCase.getBusinessMainContactType() is initialized? in.fCase.getBusinessMainContactType(): ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/businessMainContact/plainStrings/businessMainContact");
panel.businessMainContactLabel.visible=(in.#fCase.#businessMainContactId is initialized || in.#fCase.#businessMainContactName is initialized);
panel.businessMainContactNameTextField.text=in.#fCase.#businessMainContactName;
panel.businessMainContactNameTextField.visible=(in.#fCase.#businessMainContactName is initialized);
panel.businessObjectCodeTextField.text=in.#fCase.#businessObjectCode;
panel.businessObjectCodeTextField.visible=(in.#fCase.#businessObjectCode is initialized);
panel.businessObjectDocumentDbCodeLabel.visible=(in.#fCase.#businessObjectDocumentDatabaseCode is initialized && in.hasWfAdministratorPermissions);
panel.businessObjectDocumentDbCodeTextField.text=in.#fCase.#businessObjectDocumentDatabaseCode;
panel.businessObjectDocumentDbCodeTextField.visible=(in.#fCase.#businessObjectDocumentDatabaseCode is initialized && in.hasWfAdministratorPermissions);
panel.businessObjectFolderIdLabel.visible=(in.#fCase.#businessObjectFolderId is initialized && in.hasWfAdministratorPermissions);
panel.businessObjectFolderIdTextField.text=in.#fCase.#businessObjectFolderId;
panel.businessObjectFolderIdTextField.visible=(in.#fCase.#businessObjectFolderId is initialized && in.hasWfAdministratorPermissions);
panel.businessObjectLabel.visible=(in.#fCase.#businessObjectCode is initialized || in.#fCase.#businessObjectName is initialized);
panel.businessObjectNameTextField.text=in.#fCase.#businessObjectName;
panel.businessObjectNameTextField.visible=(in.#fCase.#businessObjectName is initialized);
panel.correspondentContactIdLabel.visible=(in.#fCase.#businessCorrespondentId is initialized);
panel.correspondentContactIdTextField.text="" + in.#fCase.#businessCorrespondentId;
panel.correspondentContactIdTextField.visible=(in.#fCase.#businessCorrespondentId is initialized);
' #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f19 mainOut f17 tail #connect
Cs0 f17 head f9 mainIn #connect
Cs0 f6 mainOut f3 tail #connect
Cs0 f3 head f2 mainIn #connect
Cs0 f2 mainOut f4 tail #connect
Cs0 f4 head f9 mainIn #connect
Cs0 f5 mainOut f7 tail #connect
Cs0 f7 head f9 mainIn #connect
Cs0 f1 mainOut f10 tail #connect
Cs0 f10 head f8 mainIn #connect
Cs0 f8 mainOut f11 tail #connect
Cs0 f11 head f9 mainIn #connect
Cs0 f0 mainOut f12 tail #connect
Cs0 f12 head f8 mainIn #connect
