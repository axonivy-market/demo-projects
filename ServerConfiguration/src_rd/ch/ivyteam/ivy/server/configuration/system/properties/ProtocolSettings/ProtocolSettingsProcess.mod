[Ivy]
[>Created: Fri Apr 09 09:06:17 CEST 2010]
118EA50706119614 3.14 #module
>Proto >Proto Collection #zClass
Ps0 ProtocolSettingsProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @MessageFlowInP-0n messageIn messageIn #zField
Ps0 @MessageFlowOutP-0n messageOut messageOut #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogInitStart f1 '' #zField
Ps0 @RichDialogMethodStart f2 '' #zField
Ps0 @RichDialogMethodStart f3 '' #zField
Ps0 @RichDialogMethodStart f4 '' #zField
Ps0 @RichDialogProcessEnd f5 '' #zField
Ps0 @RichDialogProcessEnd f6 '' #zField
Ps0 @RichDialogProcessEnd f7 '' #zField
Ps0 @RichDialogProcessEnd f8 '' #zField
Ps0 @RichDialogProcessEnd f9 '' #zField
Ps0 @PushWFArc f10 '' #zField
Ps0 @PushWFArc f11 '' #zField
Ps0 @PushWFArc f12 '' #zField
Ps0 @PushWFArc f14 '' #zField
Ps0 @RichDialogProcessStep f15 '' #zField
Ps0 @PushWFArc f16 '' #zField
Ps0 @PushWFArc f13 '' #zField
Ps0 @RichDialogMethodStart f17 '' #zField
Ps0 @RichDialogMethodStart f18 '' #zField
Ps0 @RichDialogProcessEnd f19 '' #zField
Ps0 @RichDialogProcessEnd f20 '' #zField
Ps0 @PushWFArc f21 '' #zField
Ps0 @PushWFArc f22 '' #zField
Ps0 @RichDialogProcessStart f23 '' #zField
Ps0 @RichDialogProcessEnd f24 '' #zField
Ps0 @RichDialogProcessStep f26 '' #zField
Ps0 @PushWFArc f27 '' #zField
Ps0 @PushWFArc f25 '' #zField
>Proto Ps0 Ps0 ProtocolSettingsProcess #zField
Ps0 f0 guid 118EA83F83115EC0 #txt
Ps0 f0 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f0 method start() #txt
Ps0 f0 disableUIEvents false #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 30 38 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 guid 118EA83FB011E3CA #txt
Ps0 f1 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f1 method start(String,Boolean,Number) #txt
Ps0 f1 disableUIEvents false #txt
Ps0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String name,java.lang.Boolean enabled,java.lang.Number port> param = methodEvent.getInputArguments();
' #txt
Ps0 f1 inParameterMapAction 'out.protocolEnabled=param.enabled;
out.protocolName=param.name;
out.protocolPort=param.port;
' #txt
Ps0 f1 outParameterDecl '<> result;
' #txt
Ps0 f1 embeddedRdInitializations '* ' #txt
Ps0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String,Boolean,Number)</name>
        <nameStyle>28,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f1 230 38 20 20 13 0 #rect
Ps0 f1 @|RichDialogInitStartIcon #fIcon
Ps0 f2 guid 118EA84182B3BBC5 #txt
Ps0 f2 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f2 method getProtocolName() #txt
Ps0 f2 disableUIEvents false #txt
Ps0 f2 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f2 outParameterDecl '<java.lang.String name> result;
' #txt
Ps0 f2 outParameterMapAction 'result.name=in.getProtocolName();
' #txt
Ps0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getProtocolName()</name>
        <nameStyle>17,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f2 30 302 20 20 13 0 #rect
Ps0 f2 @|RichDialogMethodStartIcon #fIcon
Ps0 f3 guid 118EA8421089ECCE #txt
Ps0 f3 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f3 method getProtocolPort() #txt
Ps0 f3 disableUIEvents false #txt
Ps0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f3 outParameterDecl '<java.lang.Number port> result;
' #txt
Ps0 f3 outParameterMapAction 'result.port=in.protocolPort;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getProtocolPort()</name>
        <nameStyle>17,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 230 302 20 20 13 0 #rect
Ps0 f3 @|RichDialogMethodStartIcon #fIcon
Ps0 f4 guid 118EA8425BD2D2B1 #txt
Ps0 f4 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f4 method isProtocolEnabled() #txt
Ps0 f4 disableUIEvents false #txt
Ps0 f4 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f4 outParameterDecl '<java.lang.Boolean enabled> result;
' #txt
Ps0 f4 outParameterMapAction 'result.enabled=in.protocolEnabled;
' #txt
Ps0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>isProtocolEnabled()</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f4 414 302 20 20 13 0 #rect
Ps0 f4 @|RichDialogMethodStartIcon #fIcon
Ps0 f5 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f5 27 219 26 26 14 0 #rect
Ps0 f5 @|RichDialogProcessEndIcon #fIcon
Ps0 f6 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f6 227 219 26 26 14 0 #rect
Ps0 f6 @|RichDialogProcessEndIcon #fIcon
Ps0 f7 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f7 27 419 26 26 14 0 #rect
Ps0 f7 @|RichDialogProcessEndIcon #fIcon
Ps0 f8 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f8 227 419 26 26 14 0 #rect
Ps0 f8 @|RichDialogProcessEndIcon #fIcon
Ps0 f9 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f9 411 419 26 26 14 0 #rect
Ps0 f9 @|RichDialogProcessEndIcon #fIcon
Ps0 f10 expr out #txt
Ps0 f10 424 322 424 419 #arcP
Ps0 f11 expr out #txt
Ps0 f11 240 322 240 419 #arcP
Ps0 f12 expr out #txt
Ps0 f12 40 322 40 419 #arcP
Ps0 f14 expr out #txt
Ps0 f14 40 58 40 219 #arcP
Ps0 f15 actionDecl 'ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData out;
' #txt
Ps0 f15 actionTable 'out=in;
' #txt
Ps0 f15 actionCode panel.setProtocolName(in.protocolName); #txt
Ps0 f15 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init title on panel</name>
        <nameStyle>19,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f15 222 116 36 24 20 -2 #rect
Ps0 f15 @|RichDialogProcessStepIcon #fIcon
Ps0 f16 expr out #txt
Ps0 f16 240 58 240 116 #arcP
Ps0 f13 expr out #txt
Ps0 f13 240 140 240 219 #arcP
Ps0 f17 guid 118EBCC7859B8EE4 #txt
Ps0 f17 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f17 method setProtocolEnabled(Boolean) #txt
Ps0 f17 disableUIEvents false #txt
Ps0 f17 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Boolean enabled> param = methodEvent.getInputArguments();
' #txt
Ps0 f17 inParameterMapAction 'out.protocolEnabled=param.enabled;
' #txt
Ps0 f17 outParameterDecl '<> result;
' #txt
Ps0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setProtocolEnabled(Boolean)</name>
        <nameStyle>27,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f17 414 502 20 20 13 0 #rect
Ps0 f17 @|RichDialogMethodStartIcon #fIcon
Ps0 f18 guid 118EBCC83656910F #txt
Ps0 f18 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f18 method setProtocolPort(Number) #txt
Ps0 f18 disableUIEvents false #txt
Ps0 f18 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number port> param = methodEvent.getInputArguments();
' #txt
Ps0 f18 inParameterMapAction 'out.protocolPort=param.port;
' #txt
Ps0 f18 outParameterDecl '<> result;
' #txt
Ps0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setProtocolPort(Number)</name>
        <nameStyle>23,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f18 230 502 20 20 13 0 #rect
Ps0 f18 @|RichDialogMethodStartIcon #fIcon
Ps0 f19 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f19 227 603 26 26 14 0 #rect
Ps0 f19 @|RichDialogProcessEndIcon #fIcon
Ps0 f20 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f20 411 603 26 26 14 0 #rect
Ps0 f20 @|RichDialogProcessEndIcon #fIcon
Ps0 f21 expr out #txt
Ps0 f21 424 522 424 603 #arcP
Ps0 f22 expr out #txt
Ps0 f22 240 522 240 603 #arcP
Ps0 f23 guid 127E161A0327AE80 #txt
Ps0 f23 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f23 actionDecl 'ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData out;
' #txt
Ps0 f23 actionTable 'out=in;
' #txt
Ps0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ProtocolEnabledStateChg</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f23 590 494 20 20 13 0 #rect
Ps0 f23 @|RichDialogProcessStartIcon #fIcon
Ps0 f24 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f24 590 598 20 20 13 0 #rect
Ps0 f24 @|RichDialogProcessEndIcon #fIcon
Ps0 f26 actionDecl 'ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData out;
' #txt
Ps0 f26 actionTable 'out=in;
' #txt
Ps0 f26 panelTable 'panel.portTextField.editable=panel.enabledCheckBox.isSelected();
' #txt
Ps0 f26 type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
Ps0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enable/disable Port editing</name>
        <nameStyle>27
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f26 582 540 36 24 20 -2 #rect
Ps0 f26 @|RichDialogProcessStepIcon #fIcon
Ps0 f27 expr out #txt
Ps0 f27 600 514 600 540 #arcP
Ps0 f25 expr out #txt
Ps0 f25 600 564 600 598 #arcP
>Proto Ps0 .type ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 .ui2RdDataAction 'out.protocolEnabled=panel.enabledCheckBox.selected;
out.protocolPort=panel.portTextField.valueAsNumber;
' #txt
>Proto Ps0 .rdData2UIAction 'panel.enabledCheckBox.selected=in.protocolEnabled;
panel.portTextField.valueAsNumber=in.protocolPort;
' #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f4 mainOut f10 tail #connect
Ps0 f10 head f9 mainIn #connect
Ps0 f3 mainOut f11 tail #connect
Ps0 f11 head f8 mainIn #connect
Ps0 f2 mainOut f12 tail #connect
Ps0 f12 head f7 mainIn #connect
Ps0 f0 mainOut f14 tail #connect
Ps0 f14 head f5 mainIn #connect
Ps0 f1 mainOut f16 tail #connect
Ps0 f16 head f15 mainIn #connect
Ps0 f15 mainOut f13 tail #connect
Ps0 f13 head f6 mainIn #connect
Ps0 f17 mainOut f21 tail #connect
Ps0 f21 head f20 mainIn #connect
Ps0 f18 mainOut f22 tail #connect
Ps0 f22 head f19 mainIn #connect
Ps0 f23 mainOut f27 tail #connect
Ps0 f27 head f26 mainIn #connect
Ps0 f26 mainOut f25 tail #connect
Ps0 f25 head f24 mainIn #connect
