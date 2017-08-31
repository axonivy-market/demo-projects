[Ivy]
[>Created: Thu Aug 31 14:36:58 CEST 2017]
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
Ws0 @GridStep f3 '' #zField
Ws0 @PushWFArc f4 '' #zField
Ws0 @PushWFArc f2 '' #zField
Ws0 @RichDialogProcessStart f5 '' #zField
Ws0 @RichDialogProcessEnd f6 '' #zField
Ws0 @GridStep f8 '' #zField
Ws0 @PushWFArc f9 '' #zField
Ws0 @PushWFArc f7 '' #zField
Ws0 @RichDialogProcessStart f10 '' #zField
Ws0 @RichDialogProcessEnd f11 '' #zField
Ws0 @GridStep f13 '' #zField
Ws0 @PushWFArc f14 '' #zField
Ws0 @PushWFArc f12 '' #zField
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
Ws0 f1 371 51 26 26 0 12 #rect
Ws0 f1 @|RichDialogProcessEndIcon #fIcon
Ws0 f3 actionDecl 'com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData out;
' #txt
Ws0 f3 actionTable 'out=in;
' #txt
Ws0 f3 actionCode 'in.properties = in.settings.getWebServerSystemProperties();' #txt
Ws0 f3 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f3 192 42 112 44 0 -8 #rect
Ws0 f3 @|StepIcon #fIcon
Ws0 f4 expr out #txt
Ws0 f4 109 64 192 64 #arcP
Ws0 f2 expr out #txt
Ws0 f2 304 64 371 64 #arcP
Ws0 f2 0 0.6885588894301624 0 0 #arcLabel
Ws0 f5 guid 15E37590A68B6DF7 #txt
Ws0 f5 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f5 actionDecl 'com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData out;
' #txt
Ws0 f5 actionTable 'out=in;
' #txt
Ws0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveEasyProps</name>
    </language>
</elementInfo>
' #txt
Ws0 f5 83 115 26 26 -43 12 #rect
Ws0 f5 @|RichDialogProcessStartIcon #fIcon
Ws0 f6 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f6 371 115 26 26 0 12 #rect
Ws0 f6 @|RichDialogProcessEndIcon #fIcon
Ws0 f8 actionDecl 'com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData out;
' #txt
Ws0 f8 actionTable 'out=in;
' #txt
Ws0 f8 actionCode 'in.settings.saveWebServerConfig();
in.settings.updateSystemPropsFromWebServerConfig();' #txt
Ws0 f8 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f8 168 106 112 44 0 -8 #rect
Ws0 f8 @|StepIcon #fIcon
Ws0 f9 expr out #txt
Ws0 f9 109 128 168 128 #arcP
Ws0 f7 expr out #txt
Ws0 f7 280 128 371 128 #arcP
Ws0 f10 guid 15E38205BD59E2DC #txt
Ws0 f10 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f10 actionDecl 'com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData out;
' #txt
Ws0 f10 actionTable 'out=in;
' #txt
Ws0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveSystemProps</name>
    </language>
</elementInfo>
' #txt
Ws0 f10 83 187 26 26 -50 12 #rect
Ws0 f10 @|RichDialogProcessStartIcon #fIcon
Ws0 f11 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f11 371 187 26 26 0 12 #rect
Ws0 f11 @|RichDialogProcessEndIcon #fIcon
Ws0 f13 actionDecl 'com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData out;
' #txt
Ws0 f13 actionTable 'out=in;
' #txt
Ws0 f13 actionCode 'in.settings.saveWebServerSystemProperties();
in.settings.updateWebServerConfigFromSystemProps();
' #txt
Ws0 f13 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f13 168 178 112 44 0 -8 #rect
Ws0 f13 @|StepIcon #fIcon
Ws0 f14 expr out #txt
Ws0 f14 109 200 168 200 #arcP
Ws0 f12 expr out #txt
Ws0 f12 280 200 371 200 #arcP
>Proto Ws0 .type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
>Proto Ws0 .processKind HTML_DIALOG #txt
>Proto Ws0 -8 -8 16 16 16 26 #rect
>Proto Ws0 '' #fIcon
Ws0 f0 mainOut f4 tail #connect
Ws0 f4 head f3 mainIn #connect
Ws0 f3 mainOut f2 tail #connect
Ws0 f2 head f1 mainIn #connect
Ws0 f5 mainOut f9 tail #connect
Ws0 f9 head f8 mainIn #connect
Ws0 f8 mainOut f7 tail #connect
Ws0 f7 head f6 mainIn #connect
Ws0 f10 mainOut f14 tail #connect
Ws0 f14 head f13 mainIn #connect
Ws0 f13 mainOut f12 tail #connect
Ws0 f12 head f11 mainIn #connect
