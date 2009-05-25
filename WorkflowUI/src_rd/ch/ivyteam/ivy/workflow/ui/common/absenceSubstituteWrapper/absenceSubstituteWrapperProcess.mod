[Ivy]
[>Created: Mon May 05 16:15:17 CEST 2008]
1199F65BC8ABCBA0 3.10 #module
>Proto >Proto Collection #zClass
as0 absenceSubstituteWrapperProcess Big #zClass
as0 RD #cInfo
as0 #process
as0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
as0 @TextInP .rdData2UIAction .rdData2UIAction #zField
as0 @AnnotationInP-0n ai ai #zField
as0 @TextInP .resExport .resExport #zField
as0 @TextInP .type .type #zField
as0 @TextInP .processKind .processKind #zField
as0 @TextInP .xml .xml #zField
as0 @TextInP .responsibility .responsibility #zField
as0 @MessageFlowInP-0n messageIn messageIn #zField
as0 @MessageFlowOutP-0n messageOut messageOut #zField
as0 @RichDialogInitStart f0 '' #zField
as0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
as0 f0 guid 119B96F9AC8AC703 #txt
as0 f0 type ch.ivyteam.ivy.workflow.ui.common.absenceSubstituteWrapper.absenceSubstituteWrapperData #txt
as0 f0 method start() #txt
as0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
as0 f0 outParameterDecl '<> result;
' #txt
as0 f0 86 118 20 20 13 0 #rect
as0 f0 @|RichDialogInitStartIcon #fIcon
as0 @RichDialogProcessEnd f1 '' #zField
as0 f1 type ch.ivyteam.ivy.workflow.ui.common.absenceSubstituteWrapper.absenceSubstituteWrapperData #txt
as0 f1 83 219 26 26 14 0 #rect
as0 f1 @|RichDialogProcessEndIcon #fIcon
as0 @PushWFArc f2 '' #zField
as0 f2 expr out #txt
as0 f2 96 138 96 219 #arcP
as0 f0 mainOut f2 tail #connect
as0 f2 head f1 mainIn #connect
>Proto as0 as0 absenceSubstituteWrapperProcess #zField
>Proto as0 .type ch.ivyteam.ivy.workflow.ui.common.absenceSubstituteWrapper.absenceSubstituteWrapperData #txt
>Proto as0 .processKind RICH_DIALOG #txt
>Proto as0 -8 -8 16 16 16 26 #rect
>Proto as0 '' #fIcon
