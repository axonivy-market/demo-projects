[Ivy]
[>Created: Tue Jul 25 09:38:23 CEST 2017]
15D0CE461CDE0345 3.20 #module
>Proto >Proto Collection #zClass
Es0 ExitPageProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Es0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Es0 @TextInP .resExport .resExport #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @AnnotationInP-0n ai ai #zField
Es0 @MessageFlowInP-0n messageIn messageIn #zField
Es0 @MessageFlowOutP-0n messageOut messageOut #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @RichDialogInitStart f0 '' #zField
Es0 @RichDialogProcessEnd f1 '' #zField
Es0 @PushWFArc f2 '' #zField
>Proto Es0 Es0 ExitPageProcess #zField
Es0 f0 guid 15D0CE46202121B1 #txt
Es0 f0 type com.axonivy.engine.config.ui.settings.ExitPage.ExitPageData #txt
Es0 f0 method start() #txt
Es0 f0 disableUIEvents true #txt
Es0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Es0 f0 outParameterDecl '<> result;
' #txt
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f0 80 51 26 26 -16 15 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f1 type com.axonivy.engine.config.ui.settings.ExitPage.ExitPageData #txt
Es0 f1 216 51 26 26 0 12 #rect
Es0 f1 @|RichDialogProcessEndIcon #fIcon
Es0 f2 expr out #txt
Es0 f2 106 64 216 64 #arcP
>Proto Es0 .type com.axonivy.engine.config.ui.settings.ExitPage.ExitPageData #txt
>Proto Es0 .processKind HTML_DIALOG #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f0 mainOut f2 tail #connect
Es0 f2 head f1 mainIn #connect
