[Ivy]
[>Created: Tue Jul 04 14:28:53 CEST 2017]
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
Es0 @RichDialogProcessStart f8 '' #zField
Es0 @RichDialogProcessEnd f9 '' #zField
Es0 @PushWFArc f2 '' #zField
Es0 @PushWFArc f3 '' #zField
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
    </language>
</elementInfo>
' #txt
Es0 f0 83 51 26 26 -16 15 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f1 type com.axonivy.engine.config.ui.settings.ExitPage.ExitPageData #txt
Es0 f1 179 51 26 26 0 12 #rect
Es0 f1 @|RichDialogProcessEndIcon #fIcon
Es0 f8 guid 15D0D60A9C1652A3 #txt
Es0 f8 type com.axonivy.engine.config.ui.settings.ExitPage.ExitPageData #txt
Es0 f8 actionDecl 'com.axonivy.engine.config.ui.settings.ExitPage.ExitPageData out;
' #txt
Es0 f8 actionTable 'out=in;
' #txt
Es0 f8 actionCode System.exit(-1); #txt
Es0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>exit</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f8 83 115 26 26 -9 15 #rect
Es0 f8 @|RichDialogProcessStartIcon #fIcon
Es0 f9 type com.axonivy.engine.config.ui.settings.ExitPage.ExitPageData #txt
Es0 f9 179 115 26 26 0 12 #rect
Es0 f9 @|RichDialogProcessEndIcon #fIcon
Es0 f2 expr out #txt
Es0 f2 109 64 179 64 #arcP
Es0 f3 expr out #txt
Es0 f3 109 128 179 128 #arcP
>Proto Es0 .type com.axonivy.engine.config.ui.settings.ExitPage.ExitPageData #txt
>Proto Es0 .processKind HTML_DIALOG #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f0 mainOut f2 tail #connect
Es0 f2 head f1 mainIn #connect
Es0 f8 mainOut f3 tail #connect
Es0 f3 head f9 mainIn #connect
