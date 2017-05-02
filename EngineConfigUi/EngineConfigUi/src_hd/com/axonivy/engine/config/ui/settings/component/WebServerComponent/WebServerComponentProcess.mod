[Ivy]
[>Created: Mon May 01 12:09:31 CEST 2017]
15A4C3312F0A8B48 3.20 #module
>Proto >Proto Collection #zClass
Ws0 WebServerComponentProcess Big #zClass
Ws0 RD #cInfo
Ws0 #process
Ws0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ws0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ws0 @TextInP .resExport .resExport #zField
Ws0 @TextInP .type .type #zField
Ws0 @TextInP .processKind .processKind #zField
Ws0 @AnnotationInP-0n ai ai #zField
Ws0 @MessageFlowInP-0n messageIn messageIn #zField
Ws0 @MessageFlowOutP-0n messageOut messageOut #zField
Ws0 @TextInP .xml .xml #zField
Ws0 @TextInP .responsibility .responsibility #zField
Ws0 @RichDialogInitStart f0 '' #zField
Ws0 @RichDialogProcessEnd f1 '' #zField
Ws0 @GridStep f6 '' #zField
Ws0 @RichDialogProcessStart f7 '' #zField
Ws0 @RichDialogProcessEnd f8 '' #zField
Ws0 @PushWFArc f10 '' #zField
Ws0 @PushWFArc f9 '' #zField
Ws0 @PushWFArc f2 '' #zField
>Proto Ws0 Ws0 WebServerComponentProcess #zField
Ws0 f0 guid 15A4C3313181DD1F #txt
Ws0 f0 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f0 method start(com.axon.ivy.engine.config.SystemDatabaseSettings) #txt
Ws0 f0 disableUIEvents true #txt
Ws0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axon.ivy.engine.config.SystemDatabaseSettings settings> param = methodEvent.getInputArguments();
' #txt
Ws0 f0 inParameterMapAction 'out.settings=param.settings;
' #txt
Ws0 f0 outParameterDecl '<> result;
' #txt
Ws0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f0 83 51 26 26 -16 15 #rect
Ws0 f0 @|RichDialogInitStartIcon #fIcon
Ws0 f1 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f1 339 51 26 26 0 12 #rect
Ws0 f1 @|RichDialogProcessEndIcon #fIcon
Ws0 f6 actionDecl 'com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData out;
' #txt
Ws0 f6 actionTable 'out=in;
' #txt
Ws0 f6 actionCode in.settings.saveWebServerConfig(); #txt
Ws0 f6 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f6 168 138 112 44 0 -8 #rect
Ws0 f6 @|StepIcon #fIcon
Ws0 f7 guid 15A4CA708B4F7EAD #txt
Ws0 f7 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f7 actionDecl 'com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData out;
' #txt
Ws0 f7 actionTable 'out=in;
' #txt
Ws0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
    </language>
</elementInfo>
' #txt
Ws0 f7 83 147 26 26 -13 12 #rect
Ws0 f7 @|RichDialogProcessStartIcon #fIcon
Ws0 f8 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f8 339 147 26 26 0 12 #rect
Ws0 f8 @|RichDialogProcessEndIcon #fIcon
Ws0 f10 expr out #txt
Ws0 f10 109 160 168 160 #arcP
Ws0 f9 expr out #txt
Ws0 f9 280 160 339 160 #arcP
Ws0 f2 expr out #txt
Ws0 f2 109 64 339 64 #arcP
>Proto Ws0 .type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
>Proto Ws0 .processKind HTML_DIALOG #txt
>Proto Ws0 -8 -8 16 16 16 26 #rect
>Proto Ws0 '' #fIcon
Ws0 f7 mainOut f10 tail #connect
Ws0 f10 head f6 mainIn #connect
Ws0 f6 mainOut f9 tail #connect
Ws0 f9 head f8 mainIn #connect
Ws0 f0 mainOut f2 tail #connect
Ws0 f2 head f1 mainIn #connect
