[Ivy]
[>Created: Fri Apr 09 15:46:02 CEST 2010]
116B473132D525A4 3.14 #module
>Proto >Proto Collection #zClass
Ss0 SystemDatabaseConnectionTesterUIProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogProcessStep f1 '' #zField
Ss0 @RichDialogProcessEnd f2 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @RichDialogMethodStart f0 '' #zField
Ss0 @PushWFArc f3 '' #zField
Ss0 @RichDialogMethodStart f5 '' #zField
Ss0 @RichDialogProcessEnd f8 '' #zField
Ss0 @RichDialogProcessStep f6 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @RichDialogMethodStart f10 '' #zField
Ss0 @RichDialogMethodStart f11 '' #zField
Ss0 @RichDialogProcessEnd f12 '' #zField
Ss0 @RichDialogProcessEnd f13 '' #zField
Ss0 @RichDialogInitStart f20 '' #zField
Ss0 @RichDialogProcessEnd f21 '' #zField
Ss0 @PushWFArc f22 '' #zField
Ss0 @RichDialogProcessStart f23 '' #zField
Ss0 @RichDialogFireEvent f24 '' #zField
Ss0 @RichDialogProcessEnd f25 '' #zField
Ss0 @PushWFArc f26 '' #zField
Ss0 @PushWFArc f27 '' #zField
Ss0 @RichDialogProcessStart f28 '' #zField
Ss0 @RichDialogProcessStep f29 '' #zField
Ss0 @RichDialogProcessEnd f30 '' #zField
Ss0 @PushWFArc f31 '' #zField
Ss0 @PushWFArc f32 '' #zField
Ss0 @RichDialogMethodStart f34 '' #zField
Ss0 @RichDialogProcessEnd f37 '' #zField
Ss0 @PushWFArc f38 '' #zField
Ss0 @RichDialogMethodStart f33 '' #zField
Ss0 @RichDialogProcessEnd f35 '' #zField
Ss0 @PushWFArc f36 '' #zField
Ss0 @RichDialogProcessStart f39 '' #zField
Ss0 @PushWFArc f40 '' #zField
Ss0 @PushWFArc f14 '' #zField
Ss0 @PushWFArc f15 '' #zField
>Proto Ss0 Ss0 SystemDatabaseConnectionTesterUIProcess #zField
Ss0 f1 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData out;
' #txt
Ss0 f1 actionTable 'out=in;
' #txt
Ss0 f1 actionCode panel.setServerConfigurationInternal(in.serverConfiguration); #txt
Ss0 f1 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the config</name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f1 46 108 36 24 20 -2 #rect
Ss0 f1 @|RichDialogProcessStepIcon #fIcon
Ss0 f2 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f2 51 179 26 26 14 0 #rect
Ss0 f2 @|RichDialogProcessEndIcon #fIcon
Ss0 f4 expr out #txt
Ss0 f4 64 132 64 179 #arcP
Ss0 f0 guid 116B4C349866F84D #txt
Ss0 f0 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f0 method setServerConfiguration(ch.ivyteam.ivy.server.configuration.Configuration) #txt
Ss0 f0 disableUIEvents false #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.server.configuration.Configuration serverConfiguration> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 inParameterMapAction 'out.serverConfiguration=param.serverConfiguration;
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setServerConfiguration(Configuration)</name>
        <nameStyle>37,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 54 46 20 20 13 0 #rect
Ss0 f0 @|RichDialogMethodStartIcon #fIcon
Ss0 f3 expr out #txt
Ss0 f3 64 66 64 108 #arcP
Ss0 f5 guid 116B4C3F1A5BA84F #txt
Ss0 f5 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f5 method configurationChanged() #txt
Ss0 f5 disableUIEvents false #txt
Ss0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f5 outParameterDecl '<> result;
' #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>configurationChanged()</name>
    </language>
</elementInfo>
' #txt
Ss0 f5 278 46 20 20 13 0 #rect
Ss0 f5 @|RichDialogMethodStartIcon #fIcon
Ss0 f8 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f8 275 179 26 26 14 0 #rect
Ss0 f8 @|RichDialogProcessEndIcon #fIcon
Ss0 f6 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData out;
' #txt
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 actionCode panel.reset(); #txt
Ss0 f6 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reset panel</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f6 270 108 36 24 20 -2 #rect
Ss0 f6 @|RichDialogProcessStepIcon #fIcon
Ss0 f7 expr out #txt
Ss0 f7 288 66 288 108 #arcP
Ss0 f9 expr out #txt
Ss0 f9 288 132 288 179 #arcP
Ss0 f10 guid 116C86B33B3CC595 #txt
Ss0 f10 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f10 method addButtonToEnableIfConnectionEstablished(ch.ivyteam.ivy.richdialog.widgets.components.RButton) #txt
Ss0 f10 disableUIEvents false #txt
Ss0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.richdialog.widgets.components.RButton button> param = methodEvent.getInputArguments();
' #txt
Ss0 f10 inParameterMapAction 'out.button=param.button;
' #txt
Ss0 f10 outParameterDecl '<> result;
' #txt
Ss0 f10 outActionCode panel.addButtonToEnableIfConnectionEstablishedInternal(in.button); #txt
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addButtonToEnableIfConnectionEstablished(RButton)</name>
        <nameStyle>49,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f10 62 286 20 20 13 0 #rect
Ss0 f10 @|RichDialogMethodStartIcon #fIcon
Ss0 f11 guid 116C86B3A58D7E31 #txt
Ss0 f11 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f11 method addButtonToEnableIfWrongDbVersion(ch.ivyteam.ivy.richdialog.widgets.components.RButton) #txt
Ss0 f11 disableUIEvents false #txt
Ss0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.richdialog.widgets.components.RButton button> param = methodEvent.getInputArguments();
' #txt
Ss0 f11 inParameterMapAction 'out.button=param.button;
' #txt
Ss0 f11 outParameterDecl '<> result;
' #txt
Ss0 f11 outActionCode panel.addButtonToEnableIfWrongDbVersionInternal(in.button); #txt
Ss0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addButtonToEnableIfWrongDbVersion(RButton)</name>
        <nameStyle>42,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f11 158 326 20 20 13 0 #rect
Ss0 f11 @|RichDialogMethodStartIcon #fIcon
Ss0 f12 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f12 155 395 26 26 14 0 #rect
Ss0 f12 @|RichDialogProcessEndIcon #fIcon
Ss0 f13 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f13 59 331 26 26 14 0 #rect
Ss0 f13 @|RichDialogProcessEndIcon #fIcon
Ss0 f20 guid 116F82877B63C35E #txt
Ss0 f20 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f20 method start() #txt
Ss0 f20 disableUIEvents false #txt
Ss0 f20 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f20 outParameterDecl '<> result;
' #txt
Ss0 f20 embeddedRdInitializations '* ' #txt
Ss0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f20 510 46 20 20 13 0 #rect
Ss0 f20 @|RichDialogInitStartIcon #fIcon
Ss0 f21 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f21 507 147 26 26 14 0 #rect
Ss0 f21 @|RichDialogProcessEndIcon #fIcon
Ss0 f22 expr out #txt
Ss0 f22 520 66 520 147 #arcP
Ss0 f23 guid 117BF97B58F69F70 #txt
Ss0 f23 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f23 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData out;
' #txt
Ss0 f23 actionTable 'out=in;
' #txt
Ss0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>connectionStateChanged</name>
        <nameStyle>22,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f23 62 526 20 20 13 0 #rect
Ss0 f23 @|RichDialogProcessStartIcon #fIcon
Ss0 f24 actionCode panel.fireConnectionStateChanged(); #txt
Ss0 f24 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f24 fireEvent connectionStateChanged() #txt
Ss0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fire changed event</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f24 54 572 36 24 20 -2 #rect
Ss0 f24 @|RichDialogFireEventIcon #fIcon
Ss0 f25 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f25 59 627 26 26 14 0 #rect
Ss0 f25 @|RichDialogProcessEndIcon #fIcon
Ss0 f26 expr out #txt
Ss0 f26 72 546 72 572 #arcP
Ss0 f27 expr out #txt
Ss0 f27 72 596 72 627 #arcP
Ss0 f28 guid 11D63002364E344C #txt
Ss0 f28 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f28 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData out;
' #txt
Ss0 f28 actionTable 'out=in;
' #txt
Ss0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f28 470 302 20 20 13 0 #rect
Ss0 f28 @|RichDialogProcessStartIcon #fIcon
Ss0 f29 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData out;
' #txt
Ss0 f29 actionTable 'out=in;
' #txt
Ss0 f29 actionCode panel.configurationChangedInternal(); #txt
Ss0 f29 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ss0 f29 463 364 35 24 20 -2 #rect
Ss0 f29 @|RichDialogProcessStepIcon #fIcon
Ss0 f30 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f30 467 427 26 26 14 0 #rect
Ss0 f30 @|RichDialogProcessEndIcon #fIcon
Ss0 f31 expr out #txt
Ss0 f31 479 321 479 364 #arcP
Ss0 f32 expr out #txt
Ss0 f32 479 388 479 427 #arcP
Ss0 f34 guid 11E269459EAD182C #txt
Ss0 f34 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f34 method setSystemDatabaseVersion(Number) #txt
Ss0 f34 disableUIEvents false #txt
Ss0 f34 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number version> param = methodEvent.getInputArguments();
' #txt
Ss0 f34 inParameterMapAction 'out.dbVersion=param.version;
' #txt
Ss0 f34 outParameterDecl '<> result;
' #txt
Ss0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setSystemDatabaseVersion(Number)</name>
        <nameStyle>32,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f34 214 518 20 20 13 0 #rect
Ss0 f34 @|RichDialogMethodStartIcon #fIcon
Ss0 f37 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f37 211 635 26 26 14 0 #rect
Ss0 f37 @|RichDialogProcessEndIcon #fIcon
Ss0 f38 expr out #txt
Ss0 f38 224 538 224 635 #arcP
Ss0 f33 guid 11E26A6B4FC1221D #txt
Ss0 f33 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f33 method getSystemDatabaseVersion() #txt
Ss0 f33 disableUIEvents false #txt
Ss0 f33 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f33 outParameterDecl '<java.lang.Number version> result;
' #txt
Ss0 f33 outParameterMapAction 'result.version=in.dbVersion;
' #txt
Ss0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getSystemDatabaseVersion()</name>
        <nameStyle>26,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f33 462 510 20 20 13 0 #rect
Ss0 f33 @|RichDialogMethodStartIcon #fIcon
Ss0 f35 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f35 459 635 26 26 14 0 #rect
Ss0 f35 @|RichDialogProcessEndIcon #fIcon
Ss0 f36 expr out #txt
Ss0 f36 472 530 472 635 #arcP
Ss0 f39 guid 11E4944C920F9683 #txt
Ss0 f39 type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
Ss0 f39 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData out;
' #txt
Ss0 f39 actionTable 'out=in;
' #txt
Ss0 f39 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>on load</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f39 398 262 20 20 13 0 #rect
Ss0 f39 @|RichDialogProcessStartIcon #fIcon
Ss0 f40 expr out #txt
Ss0 f40 413 280 471 364 #arcP
Ss0 f14 expr out #txt
Ss0 f14 72 306 72 331 #arcP
Ss0 f15 expr out #txt
Ss0 f15 168 346 168 395 #arcP
>Proto Ss0 .rdData2UIAction 'panel.connectionStateLabel.visible=ch.ivyteam.ivy.server.configuration.util.ConfigurationUtil.isDevelopmentMode();
' #txt
>Proto Ss0 .type ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI.SystemDatabaseConnectionTesterUIData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f1 mainOut f4 tail #connect
Ss0 f4 head f2 mainIn #connect
Ss0 f0 mainOut f3 tail #connect
Ss0 f3 head f1 mainIn #connect
Ss0 f5 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f6 mainOut f9 tail #connect
Ss0 f9 head f8 mainIn #connect
Ss0 f20 mainOut f22 tail #connect
Ss0 f22 head f21 mainIn #connect
Ss0 f23 mainOut f26 tail #connect
Ss0 f26 head f24 mainIn #connect
Ss0 f24 mainOut f27 tail #connect
Ss0 f27 head f25 mainIn #connect
Ss0 f28 mainOut f31 tail #connect
Ss0 f31 head f29 mainIn #connect
Ss0 f29 mainOut f32 tail #connect
Ss0 f32 head f30 mainIn #connect
Ss0 f34 mainOut f38 tail #connect
Ss0 f38 head f37 mainIn #connect
Ss0 f33 mainOut f36 tail #connect
Ss0 f36 head f35 mainIn #connect
Ss0 f39 mainOut f40 tail #connect
Ss0 f40 head f29 mainIn #connect
Ss0 f10 mainOut f14 tail #connect
Ss0 f14 head f13 mainIn #connect
Ss0 f11 mainOut f15 tail #connect
Ss0 f15 head f12 mainIn #connect
