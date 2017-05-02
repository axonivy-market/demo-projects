[Ivy]
[>Created: Mon May 01 12:10:17 CEST 2017]
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
Ss0 @RichDialogProcessStart f22 '' #zField
Ss0 @RichDialogProcessEnd f23 '' #zField
Ss0 @GridStep f25 '' #zField
Ss0 @PushWFArc f26 '' #zField
Ss0 @PushWFArc f24 '' #zField
Ss0 @GridStep f11 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @RichDialogProcessStart f8 '' #zField
Ss0 @RichDialogProcessStart f45 '' #zField
Ss0 @RichDialogProcessEnd f46 '' #zField
Ss0 @GridStep f48 '' #zField
Ss0 @PushWFArc f49 '' #zField
Ss0 @PushWFArc f47 '' #zField
Ss0 @RichDialogProcessStart f50 '' #zField
Ss0 @RichDialogProcessEnd f51 '' #zField
Ss0 @GridStep f53 '' #zField
Ss0 @PushWFArc f54 '' #zField
Ss0 @PushWFArc f52 '' #zField
Ss0 @RichDialogMethodStart f55 '' #zField
Ss0 @RichDialogProcessEnd f56 '' #zField
Ss0 @PushWFArc f57 '' #zField
Ss0 @RichDialogProcessStart f13 '' #zField
Ss0 @PushWFArc f14 '' #zField
Ss0 @PushWFArc f15 '' #zField
>Proto Ss0 Ss0 SystemDatabaseComponentProcess #zField
Ss0 f0 guid 157E7518F76CF891 #txt
Ss0 f0 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f0 method start(com.axon.ivy.engine.config.SystemDatabaseSettings) #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<com.axon.ivy.engine.config.SystemDatabaseSettings settings> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 inParameterMapAction 'out.configData=param.settings.getConfigData();
out.connectionInfo=param.settings.getConnectionInfo();
out.settings=param.settings;
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
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
' #txt
Ss0 f6 actionCode 'import com.axon.ivy.engine.config.ConnectionInfo;
import com.axon.ivy.engine.config.ConfigHelper;
import ch.ivyteam.ivy.persistence.db.DatabasePersistencyServiceFactory;
import com.axon.ivy.engine.config.SystemDatabaseSettings;

out.databaseProducts = DatabasePersistencyServiceFactory.getSupportedDatabases();
out.databaseDrivers = ch.ivyteam.db.jdbc.JdbcDriver.getInstalledJdbcDrivers(out.configData.product, ch.ivyteam.ivy.persistence.db.DatabasePersistencyServiceFactory.getSupportedJdbcDrivers());

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
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f18 83 307 26 26 -44 15 #rect
Ss0 f18 @|RichDialogProcessStartIcon #fIcon
Ss0 f19 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f19 339 307 26 26 0 12 #rect
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
Ss0 f28 83 235 26 26 -39 12 #rect
Ss0 f28 @|RichDialogProcessStartIcon #fIcon
Ss0 f29 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f29 339 235 26 26 0 12 #rect
Ss0 f29 @|RichDialogProcessEndIcon #fIcon
Ss0 f31 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f31 actionTable 'out=in;
' #txt
Ss0 f31 actionCode 'if(in.defaultPort)
{
		in.configData.port = com.axon.ivy.engine.config.ConfigHelper.getDefaultPort(in.configData.driver);
}

in.connectionInfo.setConnectionState(ch.ivyteam.ivy.server.configuration.system.db.ConnectionState.NOT_CONNECTED);' #txt
Ss0 f31 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f31 168 226 112 44 0 -8 #rect
Ss0 f31 @|StepIcon #fIcon
Ss0 f32 expr out #txt
Ss0 f32 109 248 168 248 #arcP
Ss0 f30 expr out #txt
Ss0 f30 280 248 339 248 #arcP
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
Ss0 f33 83 371 26 26 -31 12 #rect
Ss0 f33 @|RichDialogProcessStartIcon #fIcon
Ss0 f34 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f34 339 371 26 26 0 12 #rect
Ss0 f34 @|RichDialogProcessEndIcon #fIcon
Ss0 f36 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f36 actionTable 'out=in;
' #txt
Ss0 f36 actionCode 'import com.axon.ivy.engine.config.SystemDatabaseSettings;

in.settings.updateDbConfig();
in.settings.saveSystemDb();' #txt
Ss0 f36 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f36 168 362 112 44 0 -8 #rect
Ss0 f36 @|StepIcon #fIcon
Ss0 f37 expr out #txt
Ss0 f37 109 384 168 384 #arcP
Ss0 f35 expr out #txt
Ss0 f35 280 384 339 384 #arcP
Ss0 f40 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f40 actionTable 'out=in;
' #txt
Ss0 f40 actionCode 'import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import com.axon.ivy.engine.config.SystemDatabaseSettings;
in.progressAction = in.settings.createDatabase();
in.connectionInfo.setConnectionState(ConnectionState.CONNECTED);' #txt
Ss0 f40 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f40 168 298 112 44 0 -8 #rect
Ss0 f40 @|StepIcon #fIcon
Ss0 f41 expr out #txt
Ss0 f41 109 320 168 320 #arcP
Ss0 f42 expr out #txt
Ss0 f42 280 320 339 320 #arcP
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
Ss0 f3 83 435 26 26 -27 12 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f4 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f4 339 435 26 26 0 12 #rect
Ss0 f4 @|RichDialogProcessEndIcon #fIcon
Ss0 f20 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f20 actionTable 'out=in;
' #txt
Ss0 f20 actionCode 'import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import com.axon.ivy.engine.config.SystemDatabaseSettings;
in.progressAction = in.settings.convertDatabase();

if(!in.progressAction.running)
{
	in.connectionInfo.setConnectionState(ConnectionState.CONNECTED);
}' #txt
Ss0 f20 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f20 168 426 112 44 0 -8 #rect
Ss0 f20 @|StepIcon #fIcon
Ss0 f21 expr out #txt
Ss0 f21 109 448 168 448 #arcP
Ss0 f5 expr out #txt
Ss0 f5 280 448 339 448 #arcP
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
Ss0 f27 83 500 26 26 -43 15 #rect
Ss0 f27 @|RichDialogProcessStartIcon #fIcon
Ss0 f38 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f38 339 500 26 26 0 12 #rect
Ss0 f38 @|RichDialogProcessEndIcon #fIcon
Ss0 f39 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f39 actionTable 'out=in;
' #txt
Ss0 f39 actionCode 'import com.axon.ivy.engine.config.ConfigHelper;
import ch.ivyteam.ivy.persistence.db.DatabaseCreationParameter;

in.requiredParameters = ConfigHelper.getDatabaseCreationParametersNeeded(in.configData);

for(DatabaseCreationParameter param : in.requiredParameters)
{
	if (param.getName() == "databaseName")
	{
		out.configData.creationParameters.put(param.getName(), in.configData.databaseName);
	}
	
	if (param.getValues() != null && param.getValues().size() == 1)
	{
		out.configData.creationParameters.put(param.getName(), param.getValues().get(0));
	}
}' #txt
Ss0 f39 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f39 168 491 112 44 0 -8 #rect
Ss0 f39 @|StepIcon #fIcon
Ss0 f43 expr out #txt
Ss0 f43 280 513 339 513 #arcP
Ss0 f44 expr out #txt
Ss0 f44 109 513 168 513 #arcP
Ss0 f22 guid 15A84E378EAACF83 #txt
Ss0 f22 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f22 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f22 actionTable 'out=in;
' #txt
Ss0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>change</name>
    </language>
</elementInfo>
' #txt
Ss0 f22 83 563 26 26 -20 12 #rect
Ss0 f22 @|RichDialogProcessStartIcon #fIcon
Ss0 f23 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f23 339 563 26 26 0 12 #rect
Ss0 f23 @|RichDialogProcessEndIcon #fIcon
Ss0 f25 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f25 actionTable 'out=in;
' #txt
Ss0 f25 actionCode in.connectionInfo.setConnectionState(ch.ivyteam.ivy.server.configuration.system.db.ConnectionState.NOT_CONNECTED); #txt
Ss0 f25 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f25 168 554 112 44 0 -8 #rect
Ss0 f25 @|StepIcon #fIcon
Ss0 f26 expr out #txt
Ss0 f26 109 576 168 576 #arcP
Ss0 f24 expr out #txt
Ss0 f24 280 576 339 576 #arcP
Ss0 f11 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f11 actionTable 'out=in;
' #txt
Ss0 f11 actionCode 'in.databaseDrivers = ch.ivyteam.db.jdbc.JdbcDriver.getInstalledJdbcDrivers(in.configData.product, ch.ivyteam.ivy.persistence.db.DatabasePersistencyServiceFactory.getSupportedJdbcDrivers());
in.configData.driver = in.databaseDrivers.get(0);

if(in.defaultPort)
{
		in.configData.port = com.axon.ivy.engine.config.ConfigHelper.getDefaultPort(in.configData.driver);
}
' #txt
Ss0 f11 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f11 168 106 112 44 0 -8 #rect
Ss0 f11 @|StepIcon #fIcon
Ss0 f12 expr out #txt
Ss0 f12 109 128 168 128 #arcP
Ss0 f8 guid 157E7AAB0D9991DD #txt
Ss0 f8 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f8 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f8 actionTable 'out=in;
' #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateProduct</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 83 115 26 26 -40 15 #rect
Ss0 f8 @|RichDialogProcessStartIcon #fIcon
Ss0 f45 guid 15AEBE0597FC5FCB #txt
Ss0 f45 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f45 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f45 actionTable 'out=in;
' #txt
Ss0 f45 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateAndCheckConnection</name>
    </language>
</elementInfo>
' #txt
Ss0 f45 83 627 26 26 -78 12 #rect
Ss0 f45 @|RichDialogProcessStartIcon #fIcon
Ss0 f46 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f46 339 627 26 26 0 12 #rect
Ss0 f46 @|RichDialogProcessEndIcon #fIcon
Ss0 f48 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f48 actionTable 'out=in;
' #txt
Ss0 f48 actionCode 'import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseCreator;

in.settings.updateConfig(in.progressAction as SystemDatabaseCreator);
in.settings.saveSystemDb();
in.settings.testConnection();' #txt
Ss0 f48 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f48 168 618 112 44 0 -8 #rect
Ss0 f48 @|StepIcon #fIcon
Ss0 f49 expr out #txt
Ss0 f49 109 640 168 640 #arcP
Ss0 f47 expr out #txt
Ss0 f47 280 640 339 640 #arcP
Ss0 f50 guid 15B57DBD3A356631 #txt
Ss0 f50 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f50 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f50 actionTable 'out=in;
' #txt
Ss0 f50 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addNewProperty</name>
    </language>
</elementInfo>
' #txt
Ss0 f50 83 691 26 26 -45 12 #rect
Ss0 f50 @|RichDialogProcessStartIcon #fIcon
Ss0 f51 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f51 339 691 26 26 0 12 #rect
Ss0 f51 @|RichDialogProcessEndIcon #fIcon
Ss0 f53 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f53 actionTable 'out=in;
' #txt
Ss0 f53 actionCode 'import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
in.configData.additionalProperties.setProperty(in.newPropertyKey, in.newPropertyValue);

out.newPropertyKey = "";
out.newPropertyValue = "";

in.settings.getConnectionInfo().connectionState = ConnectionState.NOT_CONNECTED;' #txt
Ss0 f53 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f53 168 682 112 44 0 -8 #rect
Ss0 f53 @|StepIcon #fIcon
Ss0 f54 expr out #txt
Ss0 f54 109 704 168 704 #arcP
Ss0 f52 expr out #txt
Ss0 f52 280 704 339 704 #arcP
Ss0 f55 guid 15B57EC9C5D8E3B6 #txt
Ss0 f55 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f55 method removeProperty(String) #txt
Ss0 f55 disableUIEvents false #txt
Ss0 f55 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String propertyKey> param = methodEvent.getInputArguments();
' #txt
Ss0 f55 inActionCode 'import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
out.configData.additionalProperties.remove(param.propertyKey);

out.settings.getConnectionInfo().connectionState = ConnectionState.NOT_CONNECTED;' #txt
Ss0 f55 outParameterDecl '<> result;
' #txt
Ss0 f55 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removeProperty(String)</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f55 83 755 26 26 -63 15 #rect
Ss0 f55 @|RichDialogMethodStartIcon #fIcon
Ss0 f56 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f56 339 755 26 26 0 12 #rect
Ss0 f56 @|RichDialogProcessEndIcon #fIcon
Ss0 f57 expr out #txt
Ss0 f57 109 768 339 768 #arcP
Ss0 f13 guid 15B5CFC074D51756 #txt
Ss0 f13 type com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData #txt
Ss0 f13 actionDecl 'com.axonivy.engine.config.ui.settings.component.SystemDatabaseComponent.SystemDatabaseComponentData out;
' #txt
Ss0 f13 actionTable 'out=in;
' #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateDriver</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f13 84 178 26 26 -35 15 #rect
Ss0 f13 @|RichDialogProcessStartIcon #fIcon
Ss0 f14 expr out #txt
Ss0 f14 110 191 224 226 #arcP
Ss0 f14 1 224 191 #addKink
Ss0 f14 0 0.7569188088614638 0 0 #arcLabel
Ss0 f15 expr out #txt
Ss0 f15 224 150 224 226 #arcP
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
Ss0 f22 mainOut f26 tail #connect
Ss0 f26 head f25 mainIn #connect
Ss0 f25 mainOut f24 tail #connect
Ss0 f24 head f23 mainIn #connect
Ss0 f45 mainOut f49 tail #connect
Ss0 f49 head f48 mainIn #connect
Ss0 f48 mainOut f47 tail #connect
Ss0 f47 head f46 mainIn #connect
Ss0 f50 mainOut f54 tail #connect
Ss0 f54 head f53 mainIn #connect
Ss0 f53 mainOut f52 tail #connect
Ss0 f52 head f51 mainIn #connect
Ss0 f55 mainOut f57 tail #connect
Ss0 f57 head f56 mainIn #connect
Ss0 f13 mainOut f14 tail #connect
Ss0 f14 head f31 mainIn #connect
Ss0 f11 mainOut f15 tail #connect
Ss0 f15 head f31 mainIn #connect
