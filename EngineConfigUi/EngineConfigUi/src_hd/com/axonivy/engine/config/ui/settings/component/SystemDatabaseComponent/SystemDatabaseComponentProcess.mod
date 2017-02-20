[Ivy]
[>Created: Mon Feb 20 15:15:54 CET 2017]
157E7518F66E24A9 3.20 #module
>Proto >Proto Collection #zClass
Ss0 SystemDatabaseComponentProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @GridStep f6 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogProcessStart f8 '' #zField
Ss0 @RichDialogProcessEnd f9 '' #zField
Ss0 @GridStep f11 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @RichDialogProcessStart f13 '' #zField
Ss0 @RichDialogProcessEnd f14 '' #zField
Ss0 @GridStep f16 '' #zField
Ss0 @PushWFArc f17 '' #zField
Ss0 @PushWFArc f15 '' #zField
Ss0 @RichDialogProcessStart f18 '' #zField
Ss0 @RichDialogProcessEnd f19 '' #zField
Ss0 @RichDialogProcessStart f28 '' #zField
Ss0 @RichDialogProcessEnd f29 '' #zField
Ss0 @GridStep f31 '' #zField
Ss0 @PushWFArc f32 '' #zField
Ss0 @PushWFArc f30 '' #zField
Ss0 @RichDialogProcessStart f33 '' #zField
Ss0 @RichDialogProcessEnd f34 '' #zField
Ss0 @GridStep f36 '' #zField
Ss0 @PushWFArc f37 '' #zField
Ss0 @PushWFArc f35 '' #zField
Ss0 @GridStep f40 '' #zField
Ss0 @PushWFArc f41 '' #zField
Ss0 @PushWFArc f42 '' #zField
Ss0 @RichDialogProcessStart f3 '' #zField
Ss0 @RichDialogProcessEnd f4 '' #zField
Ss0 @GridStep f20 '' #zField
Ss0 @PushWFArc f21 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @RichDialogProcessStart f27 '' #zField
Ss0 @RichDialogProcessEnd f38 '' #zField
Ss0 @GridStep f39 '' #zField
Ss0 @PushWFArc f43 '' #zField
Ss0 @PushWFArc f44 '' #zField
>Proto Ss0 Ss0 SystemDatabaseComponentProcess #zField
Ss0 f0 guid 157E7518F76CF891 #txt
Ss0 f0 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 51 26 26 -16 15 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f1 339 51 26 26 0 12 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f6 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f6 actionTable 'out=in;
out.convertionAvailable=false;
' #txt
Ss0 f6 actionCode 'import com.axon.ivy.engine.config.ConnectionInfo;
import com.axon.ivy.engine.config.ConfigHelper;
import ch.ivyteam.ivy.persistence.db.DatabasePersistencyServiceFactory;
import com.axon.ivy.engine.config.SystemDatabaseSettings;

out.databaseProducts = DatabasePersistencyServiceFactory.getSupportedDatabases();
out.configData = SystemDatabaseSettings.loadConfigData();
out.databaseDrivers = ch.ivyteam.db.jdbc.JdbcDriver.getInstalledJdbcDrivers(out.configData.product, ch.ivyteam.ivy.persistence.db.DatabasePersistencyServiceFactory.getSupportedJdbcDrivers());
out.connectionInfo = ConnectionInfo.getConnectionInfo();

if(in.configData.port == ConfigHelper.getDefaultPort(in.configData.driver))
{
	in.defaultPort=true;
}' #txt
Ss0 f6 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f6 168 42 112 44 -8 -8 #rect
Ss0 f6 @|StepIcon #fIcon
Ss0 f7 expr out #txt
Ss0 f7 109 64 168 64 #arcP
Ss0 f2 expr out #txt
Ss0 f2 280 64 339 64 #arcP
Ss0 f8 guid 157E7AAB0D9991DD #txt
Ss0 f8 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f8 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f8 actionTable 'out=in;
' #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 83 147 26 26 -19 15 #rect
Ss0 f8 @|RichDialogProcessStartIcon #fIcon
Ss0 f9 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f9 339 147 26 26 0 12 #rect
Ss0 f9 @|RichDialogProcessEndIcon #fIcon
Ss0 f11 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f11 actionTable 'out=in;
' #txt
Ss0 f11 actionCode 'in.databaseDrivers = ch.ivyteam.db.jdbc.JdbcDriver.getInstalledJdbcDrivers(in.configData.product, ch.ivyteam.ivy.persistence.db.DatabasePersistencyServiceFactory.getSupportedJdbcDrivers());
in.configData.driver = in.databaseDrivers.get(0);
in.configData.port = com.axon.ivy.engine.config.ConfigHelper.getDefaultPort(in.configData.driver);' #txt
Ss0 f11 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f11 168 138 112 44 0 -8 #rect
Ss0 f11 @|StepIcon #fIcon
Ss0 f12 expr out #txt
Ss0 f12 109 160 168 160 #arcP
Ss0 f10 expr out #txt
Ss0 f10 280 160 339 160 #arcP
Ss0 f13 guid 157F5AD035A5DAA8 #txt
Ss0 f13 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f13 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f13 actionTable 'out=in;
' #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>checkConnection</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f13 83 243 26 26 -47 15 #rect
Ss0 f13 @|RichDialogProcessStartIcon #fIcon
Ss0 f14 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f14 339 243 26 26 0 12 #rect
Ss0 f14 @|RichDialogProcessEndIcon #fIcon
Ss0 f16 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f16 actionTable 'out=in;
' #txt
Ss0 f16 actionCode 'import com.axon.ivy.engine.config.UiModder;
import com.axon.ivy.engine.config.SystemDatabaseConnecting;
import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;

ConnectionState state = SystemDatabaseConnecting.testConnection(in.configData);
UiModder.updateUiPopUp(state);
if ((ConnectionState.CONNECTED_WRONG_OLDER_VERSION.toString().equalsIgnoreCase(state.toString())) || 
			(ConnectionState.CONNECTED_WRONG_NEWER_VERSION.toString().equalsIgnoreCase(state.toString())))
{
	out.convertionAvailable = true;
}
else
{
	out.convertionAvailable = false;
}' #txt
Ss0 f16 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f16 168 234 112 44 0 -8 #rect
Ss0 f16 @|StepIcon #fIcon
Ss0 f17 expr out #txt
Ss0 f17 109 256 168 256 #arcP
Ss0 f15 expr out #txt
Ss0 f15 280 256 339 256 #arcP
Ss0 f18 guid 157FB3539FE8E012 #txt
Ss0 f18 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f18 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f18 actionTable 'out=in;
' #txt
Ss0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createDatabase</name>
    </language>
</elementInfo>
' #txt
Ss0 f18 83 339 26 26 -44 12 #rect
Ss0 f18 @|RichDialogProcessStartIcon #fIcon
Ss0 f19 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f19 339 339 26 26 0 12 #rect
Ss0 f19 @|RichDialogProcessEndIcon #fIcon
Ss0 f28 guid 158AF0FCC644022C #txt
Ss0 f28 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f28 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f28 actionTable 'out=in;
' #txt
Ss0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setDefaultPort</name>
    </language>
</elementInfo>
' #txt
Ss0 f28 83 427 26 26 -39 12 #rect
Ss0 f28 @|RichDialogProcessStartIcon #fIcon
Ss0 f29 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f29 339 427 26 26 0 12 #rect
Ss0 f29 @|RichDialogProcessEndIcon #fIcon
Ss0 f31 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f31 actionTable 'out=in;
' #txt
Ss0 f31 actionCode 'in.configData.port = com.axon.ivy.engine.config.ConfigHelper.getDefaultPort(in.configData.driver);' #txt
Ss0 f31 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f31 168 418 112 44 0 -8 #rect
Ss0 f31 @|StepIcon #fIcon
Ss0 f32 expr out #txt
Ss0 f32 109 440 168 440 #arcP
Ss0 f30 expr out #txt
Ss0 f30 280 440 339 440 #arcP
Ss0 f33 guid 15983E673C659B69 #txt
Ss0 f33 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f33 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f33 actionTable 'out=in;
' #txt
Ss0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveConfig</name>
    </language>
</elementInfo>
' #txt
Ss0 f33 83 523 26 26 -31 12 #rect
Ss0 f33 @|RichDialogProcessStartIcon #fIcon
Ss0 f34 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f34 339 523 26 26 0 12 #rect
Ss0 f34 @|RichDialogProcessEndIcon #fIcon
Ss0 f36 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f36 actionTable 'out=in;
' #txt
Ss0 f36 actionCode 'import com.axon.ivy.engine.config.SystemDatabaseSettings;
SystemDatabaseSettings.updateDbConfig(in.configData);
SystemDatabaseSettings.saveSystemDb();' #txt
Ss0 f36 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f36 168 514 112 44 0 -8 #rect
Ss0 f36 @|StepIcon #fIcon
Ss0 f37 expr out #txt
Ss0 f37 109 536 168 536 #arcP
Ss0 f35 expr out #txt
Ss0 f35 280 536 339 536 #arcP
Ss0 f40 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f40 actionTable 'out=in;
' #txt
Ss0 f40 actionCode 'import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import com.axon.ivy.engine.config.SystemDatabaseSettings;
in.progressAction = SystemDatabaseSettings.createDatabase(in.configData);
in.connectionInfo.setConnectionState(ConnectionState.CONNECTED);' #txt
Ss0 f40 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f40 168 330 112 44 0 -8 #rect
Ss0 f40 @|StepIcon #fIcon
Ss0 f41 expr out #txt
Ss0 f41 109 352 168 352 #arcP
Ss0 f42 expr out #txt
Ss0 f42 280 352 339 352 #arcP
Ss0 f3 guid 159A7F2D3C4139E2 #txt
Ss0 f3 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f3 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>convertDb</name>
    </language>
</elementInfo>
' #txt
Ss0 f3 83 627 26 26 -27 12 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f4 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f4 339 627 26 26 0 12 #rect
Ss0 f4 @|RichDialogProcessEndIcon #fIcon
Ss0 f20 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f20 actionTable 'out=in;
out.convertionAvailable=false;
' #txt
Ss0 f20 actionCode 'import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import com.axon.ivy.engine.config.SystemDatabaseSettings;
in.progressAction = SystemDatabaseSettings.convertDatabase(SystemDatabaseSettings.loadConfigData());

if(!in.progressAction.running)
{
	in.connectionInfo.setConnectionState(ConnectionState.CONNECTED);
}' #txt
Ss0 f20 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f20 168 618 112 44 0 -8 #rect
Ss0 f20 @|StepIcon #fIcon
Ss0 f21 expr out #txt
Ss0 f21 109 640 168 640 #arcP
Ss0 f5 expr out #txt
Ss0 f5 280 640 339 640 #arcP
Ss0 f27 guid 15A3800DE41A8545 #txt
Ss0 f27 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f27 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f27 actionTable 'out=in;
' #txt
Ss0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>applyProperties</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f27 83 724 26 26 -43 15 #rect
Ss0 f27 @|RichDialogProcessStartIcon #fIcon
Ss0 f38 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f38 339 724 26 26 0 12 #rect
Ss0 f38 @|RichDialogProcessEndIcon #fIcon
Ss0 f39 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f39 actionTable 'out=in;
' #txt
Ss0 f39 actionCode 'out.configData.creationParameters.remove("databaseName");
out.configData.creationParameters.put("databaseName", in.configData.databaseName);' #txt
Ss0 f39 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f39 168 715 112 44 0 -8 #rect
Ss0 f39 @|StepIcon #fIcon
Ss0 f43 expr out #txt
Ss0 f43 280 737 339 737 #arcP
Ss0 f44 expr out #txt
Ss0 f44 109 737 168 737 #arcP
>Proto Ss0 .type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f0 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f6 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f8 mainOut f12 tail #connect
Ss0 f12 head f11 mainIn #connect
Ss0 f11 mainOut f10 tail #connect
Ss0 f10 head f9 mainIn #connect
Ss0 f13 mainOut f17 tail #connect
Ss0 f17 head f16 mainIn #connect
Ss0 f16 mainOut f15 tail #connect
Ss0 f15 head f14 mainIn #connect
Ss0 f28 mainOut f32 tail #connect
Ss0 f32 head f31 mainIn #connect
Ss0 f31 mainOut f30 tail #connect
Ss0 f30 head f29 mainIn #connect
Ss0 f33 mainOut f37 tail #connect
Ss0 f37 head f36 mainIn #connect
Ss0 f36 mainOut f35 tail #connect
Ss0 f35 head f34 mainIn #connect
Ss0 f41 head f40 mainIn #connect
Ss0 f42 head f19 mainIn #connect
Ss0 f18 mainOut f41 tail #connect
Ss0 f40 mainOut f42 tail #connect
Ss0 f3 mainOut f21 tail #connect
Ss0 f21 head f20 mainIn #connect
Ss0 f20 mainOut f5 tail #connect
Ss0 f5 head f4 mainIn #connect
Ss0 f27 mainOut f44 tail #connect
Ss0 f44 head f39 mainIn #connect
Ss0 f39 mainOut f43 tail #connect
Ss0 f43 head f38 mainIn #connect
