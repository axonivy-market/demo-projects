[Ivy]
[>Created: Mon Feb 20 10:57:58 CET 2017]
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
Ws0 @PushWFArc f2 '' #zField
Ws0 @GridStep f6 '' #zField
Ws0 @RichDialogProcessStart f7 '' #zField
Ws0 @RichDialogProcessEnd f8 '' #zField
Ws0 @PushWFArc f10 '' #zField
Ws0 @PushWFArc f9 '' #zField
Ws0 @GridStep f3 '' #zField
Ws0 @RichDialogMethodStart f4 '' #zField
Ws0 @RichDialogProcessEnd f5 '' #zField
Ws0 @PushWFArc f11 '' #zField
Ws0 @PushWFArc f12 '' #zField
>Proto Ws0 Ws0 WebServerComponentProcess #zField
Ws0 f0 guid 15A4C3313181DD1F #txt
Ws0 f0 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f0 method start() #txt
Ws0 f0 disableUIEvents true #txt
Ws0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ws0 f0 outParameterDecl '<> result;
' #txt
Ws0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ws0 f0 83 51 26 26 -16 15 #rect
Ws0 f0 @|RichDialogInitStartIcon #fIcon
Ws0 f1 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f1 339 51 26 26 0 12 #rect
Ws0 f1 @|RichDialogProcessEndIcon #fIcon
Ws0 f2 expr out #txt
Ws0 f2 109 64 339 64 #arcP
Ws0 f6 actionDecl 'com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData out;
' #txt
Ws0 f6 actionTable 'out=in;
' #txt
Ws0 f6 actionCode com.axon.ivy.engine.config.SystemDatabaseSettings.setWebServerSettings(in.webServerConfig); #txt
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
Ws0 f3 actionDecl 'com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData out;
' #txt
Ws0 f3 actionTable 'out=in;
' #txt
Ws0 f3 actionCode 'import com.axon.ivy.engine.config.ConfigurationBean;
import com.axon.ivy.engine.config.ConfigHelper;
import com.axon.ivy.engine.config.SystemDatabaseSettings;

if(ConfigurationBean.checkConnectionOK())
{
	out.webServerConfig = SystemDatabaseSettings.getWebServerSettings();
}	
' #txt
Ws0 f3 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init </name>
        <nameStyle>5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f3 165 231 112 44 -9 -8 #rect
Ws0 f3 @|StepIcon #fIcon
Ws0 f4 guid 15A5ACD6331DD21A #txt
Ws0 f4 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f4 method update(javax.faces.event.ComponentSystemEvent) #txt
Ws0 f4 disableUIEvents false #txt
Ws0 f4 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<javax.faces.event.ComponentSystemEvent SystemComponentEvent> param = methodEvent.getInputArguments();
' #txt
Ws0 f4 outParameterDecl '<> result;
' #txt
Ws0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update(ComponentSystemEvent)</name>
        <nameStyle>28,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f4 80 240 26 26 -91 15 #rect
Ws0 f4 @|RichDialogMethodStartIcon #fIcon
Ws0 f5 type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
Ws0 f5 336 240 26 26 0 12 #rect
Ws0 f5 @|RichDialogProcessEndIcon #fIcon
Ws0 f11 expr out #txt
Ws0 f11 277 253 336 253 #arcP
Ws0 f12 expr out #txt
Ws0 f12 106 253 165 253 #arcP
>Proto Ws0 .type com.axonivy.engine.config.ui.settings.component.WebServerComponent.WebServerComponentData #txt
>Proto Ws0 .processKind HTML_DIALOG #txt
>Proto Ws0 -8 -8 16 16 16 26 #rect
>Proto Ws0 '' #fIcon
Ws0 f0 mainOut f2 tail #connect
Ws0 f2 head f1 mainIn #connect
Ws0 f7 mainOut f10 tail #connect
Ws0 f10 head f6 mainIn #connect
Ws0 f6 mainOut f9 tail #connect
Ws0 f9 head f8 mainIn #connect
Ws0 f4 mainOut f12 tail #connect
Ws0 f12 head f3 mainIn #connect
Ws0 f3 mainOut f11 tail #connect
Ws0 f11 head f5 mainIn #connect
