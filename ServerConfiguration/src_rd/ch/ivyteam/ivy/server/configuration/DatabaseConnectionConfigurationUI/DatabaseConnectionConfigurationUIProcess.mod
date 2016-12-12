[Ivy]
[>Created: Wed Dec 07 12:14:00 CET 2016]
1167C2F462F45532 3.19 #module
>Proto >Proto Collection #zClass
Ds0 DatabaseConnectionConfigurationUIProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @RichDialogProcessStep f5 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @PushWFArc f3 '' #zField
Ds0 @RichDialogMethodStart f4 '' #zField
Ds0 @RichDialogProcessEnd f6 '' #zField
Ds0 @RichDialogProcessStep f8 '' #zField
Ds0 @PushWFArc f9 '' #zField
Ds0 @PushWFArc f7 '' #zField
Ds0 @RichDialogMethodStart f10 '' #zField
Ds0 @RichDialogProcessEnd f11 '' #zField
Ds0 @PushWFArc f12 '' #zField
Ds0 @RichDialogMethodStart f14 '' #zField
Ds0 @RichDialogProcessEnd f16 '' #zField
Ds0 @RichDialogProcessStep f21 '' #zField
Ds0 @PushWFArc f22 '' #zField
Ds0 @PushWFArc f17 '' #zField
Ds0 @RichDialogProcessStart f23 '' #zField
Ds0 @RichDialogProcessStep f24 '' #zField
Ds0 @PushWFArc f25 '' #zField
Ds0 @RichDialogProcessEnd f26 '' #zField
Ds0 @RichDialogFireEvent f28 '' #zField
Ds0 @PushWFArc f29 '' #zField
Ds0 @PushWFArc f27 '' #zField
Ds0 @RichDialogMethodStart f13 '' #zField
Ds0 @PushWFArc f15 '' #zField
>Proto Ds0 Ds0 DatabaseConnectionConfigurationUIProcess #zField
Ds0 f0 guid 1167C3611081445E #txt
Ds0 f0 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f0 method start() #txt
Ds0 f0 disableUIEvents false #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 inParameterMapAction 'out.connectionProperties=new java.util.HashMap();
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 embeddedRdInitializations '* ' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 30 46 20 20 13 0 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f1 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f1 27 299 26 26 14 0 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f5 actionDecl 'ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData out;
' #txt
Ds0 f5 actionTable 'out=in;
' #txt
Ds0 f5 actionCode 'import ch.ivyteam.ivy.persistence.db.DatabasePersistencyServiceFactory;
panel.setJdbcDrivers(DatabasePersistencyServiceFactory.getSupportedJdbcDrivers());' #txt
Ds0 f5 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f5 22 172 36 24 20 -2 #rect
Ds0 f5 @|RichDialogProcessStepIcon #fIcon
Ds0 f2 expr out #txt
Ds0 f2 40 66 40 172 #arcP
Ds0 f3 expr out #txt
Ds0 f3 40 196 40 299 #arcP
Ds0 f4 guid 1167C59F88B46628 #txt
Ds0 f4 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f4 method setJdbcDriver(ch.ivyteam.db.jdbc.JdbcDriver) #txt
Ds0 f4 disableUIEvents false #txt
Ds0 f4 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.db.jdbc.JdbcDriver jdbcDriver> param = methodEvent.getInputArguments();
' #txt
Ds0 f4 inParameterMapAction 'out.jdbcDriver=param.jdbcDriver;
' #txt
Ds0 f4 outParameterDecl '<> result;
' #txt
Ds0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setJdbcDriver(JdbcDriver)</name>
        <nameStyle>25,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f4 118 54 20 20 13 0 #rect
Ds0 f4 @|RichDialogMethodStartIcon #fIcon
Ds0 f6 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f6 115 179 26 26 14 0 #rect
Ds0 f6 @|RichDialogProcessEndIcon #fIcon
Ds0 f8 actionDecl 'ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData out;
' #txt
Ds0 f8 actionTable 'out=in;
' #txt
Ds0 f8 actionCode 'import java.util.Map;
import java.util.HashMap;

Map connectionProperties;

panel.updateToConnectionProperties(in.connectionProperties);
if (!panel.getSelectedJdbcDriver().equals(in.jdbcDriver))
{
  panel.setSelectedJdbcDriver(in.jdbcDriver);
  connectionProperties = new HashMap(in.connectionProperties);
  panel.updateFromConnectionProperties(connectionProperties, false);
  panel.updateToConnectionProperties(in.connectionProperties);
  in.serverConfiguration.systemDatabaseConnectionConfiguration =   in.jdbcDriver.getConnectionConfigurator().getDatabaseConnectionConfiguration(in.connectionProperties);

}' #txt
Ds0 f8 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f8 110 108 36 24 20 -2 #rect
Ds0 f8 @|RichDialogProcessStepIcon #fIcon
Ds0 f9 expr out #txt
Ds0 f9 128 74 128 108 #arcP
Ds0 f7 expr out #txt
Ds0 f7 128 132 128 179 #arcP
Ds0 f10 guid 1167C5B04975D271 #txt
Ds0 f10 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f10 method getJdbcDriver() #txt
Ds0 f10 disableUIEvents false #txt
Ds0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f10 outParameterDecl '<ch.ivyteam.db.jdbc.JdbcDriver jdbcDriver> result;
' #txt
Ds0 f10 outParameterMapAction 'result.jdbcDriver=in.jdbcDriver;
' #txt
Ds0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getJdbcDriver(JdbcDriver)</name>
        <nameStyle>25,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f10 262 62 20 20 13 0 #rect
Ds0 f10 @|RichDialogMethodStartIcon #fIcon
Ds0 f11 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f11 259 147 26 26 14 0 #rect
Ds0 f11 @|RichDialogProcessEndIcon #fIcon
Ds0 f12 expr out #txt
Ds0 f12 272 82 272 147 #arcP
Ds0 f14 guid 1167C5B7C22650DE #txt
Ds0 f14 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f14 method setServerConfiguration(ch.ivyteam.ivy.server.configuration.Configuration) #txt
Ds0 f14 disableUIEvents false #txt
Ds0 f14 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.server.configuration.Configuration serverConfiguration> param = methodEvent.getInputArguments();
' #txt
Ds0 f14 inParameterMapAction 'out.serverConfiguration=param.serverConfiguration;
' #txt
Ds0 f14 outParameterDecl '<> result;
' #txt
Ds0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setDatabaseConnectionConfiguration(DatabaseConnectionConfiguration)</name>
        <nameStyle>67,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f14 550 54 20 20 13 0 #rect
Ds0 f14 @|RichDialogMethodStartIcon #fIcon
Ds0 f16 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f16 507 187 26 26 14 0 #rect
Ds0 f16 @|RichDialogProcessEndIcon #fIcon
Ds0 f21 actionDecl 'ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData out;
' #txt
Ds0 f21 actionTable 'out=in;
' #txt
Ds0 f21 actionCode 'import ch.ivyteam.db.jdbc.JdbcDriver;
import ch.ivyteam.ivy.persistence.db.DatabasePersistencyServiceFactory;
import java.util.Map;
import java.util.Map.Entry;
import java.util.HashMap;
import ch.ivyteam.db.jdbc.ConnectionProperty;
import java.util.Properties;

Map newConnectionProperties;
Map connectionProperties;

panel.updateToConnectionProperties(in.connectionProperties);

if (in.serverConfiguration.#systemDatabaseConnectionConfiguration != null)
{
	Object oldProps = in.serverConfiguration.#systemDatabaseConnectionConfiguration.getProperties();

  in.jdbcDriver = JdbcDriver.getJdbcDriverForConnectionConfiguration(DatabasePersistencyServiceFactory.getSupportedJdbcDrivers(), in.serverConfiguration.systemDatabaseConnectionConfiguration);
	if (in.#jdbcDriver != null)
	{
	  panel.setSelectedJdbcDriver(in.jdbcDriver);
	
	  newConnectionProperties = in.jdbcDriver.getConnectionConfigurator().getDatabaseConnectionProperties(in.serverConfiguration.systemDatabaseConnectionConfiguration);
	
	  connectionProperties = new HashMap(in.connectionProperties);
	  for (ConnectionProperty property : newConnectionProperties.keySet())
	  {
	     connectionProperties.put(property, newConnectionProperties.get(property));
	  }
	  panel.updateFromConnectionProperties(connectionProperties, true);
	
	  // this is necessary because some events are fired during update and overwrites the properties with wrong values
	  panel.updateToConnectionProperties(in.connectionProperties);
	  in.serverConfiguration.systemDatabaseConnectionConfiguration = in.jdbcDriver.getConnectionConfigurator().getDatabaseConnectionConfiguration(in.connectionProperties);
	
	  // Restore additional properties
	  if (#oldProps != null)
		{
			ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration config = in.serverConfiguration.getSystemDatabaseConnectionConfiguration();
			Properties props = oldProps as Properties; 
			for (Map.Entry prop : props.entrySet())
			{
				config.setProperty(prop.getKey() as String, prop.getValue() as String);
			}	
			in.serverConfiguration.setSystemDatabaseConnectionConfiguration(config);
		}
	}
}
' #txt
Ds0 f21 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f21 502 108 36 24 20 -2 #rect
Ds0 f21 @|RichDialogProcessStepIcon #fIcon
Ds0 f22 expr out #txt
Ds0 f22 554 72 529 108 #arcP
Ds0 f17 expr out #txt
Ds0 f17 520 132 520 187 #arcP
Ds0 f23 guid 116B4DAD95942FCB #txt
Ds0 f23 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f23 actionDecl 'ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData out;
' #txt
Ds0 f23 actionTable 'out=in;
' #txt
Ds0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>keyPressed</name>
        <nameStyle>10,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f23 342 222 20 20 13 0 #rect
Ds0 f23 @|RichDialogProcessStartIcon #fIcon
Ds0 f24 actionDecl 'ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData out;
' #txt
Ds0 f24 actionTable 'out=in;
' #txt
Ds0 f24 actionCode 'panel.updateToConnectionProperties(in.connectionProperties);
in.serverConfiguration.systemDatabaseConnectionConfiguration = in.jdbcDriver.getConnectionConfigurator().getDatabaseConnectionConfiguration(in.connectionProperties);
' #txt
Ds0 f24 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f24 334 268 36 24 20 -2 #rect
Ds0 f24 @|RichDialogProcessStepIcon #fIcon
Ds0 f25 expr out #txt
Ds0 f25 352 242 352 268 #arcP
Ds0 f26 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f26 339 363 26 26 14 0 #rect
Ds0 f26 @|RichDialogProcessEndIcon #fIcon
Ds0 f28 actionCode panel.fireDatabaseConnectionConfigurationChanged(); #txt
Ds0 f28 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f28 fireEvent databaseConnectionConfigurationChanged() #txt
Ds0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f28 334 316 36 24 20 -2 #rect
Ds0 f28 @|RichDialogFireEventIcon #fIcon
Ds0 f29 expr out #txt
Ds0 f29 352 292 352 316 #arcP
Ds0 f27 expr out #txt
Ds0 f27 352 340 352 363 #arcP
Ds0 f13 guid 116C8B03CCCE9605 #txt
Ds0 f13 type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
Ds0 f13 method configurationChanged() #txt
Ds0 f13 disableUIEvents false #txt
Ds0 f13 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f13 outParameterDecl '<> result;
' #txt
Ds0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>configurationChanged()</name>
    </language>
</elementInfo>
' #txt
Ds0 f13 406 54 20 20 13 0 #rect
Ds0 f13 @|RichDialogMethodStartIcon #fIcon
Ds0 f15 expr out #txt
Ds0 f15 424 68 502 110 #arcP
>Proto Ds0 .type ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI.DatabaseConnectionConfigurationUIData #txt
>Proto Ds0 .processKind RICH_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f0 mainOut f2 tail #connect
Ds0 f2 head f5 mainIn #connect
Ds0 f5 mainOut f3 tail #connect
Ds0 f3 head f1 mainIn #connect
Ds0 f4 mainOut f9 tail #connect
Ds0 f9 head f8 mainIn #connect
Ds0 f8 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
Ds0 f10 mainOut f12 tail #connect
Ds0 f12 head f11 mainIn #connect
Ds0 f14 mainOut f22 tail #connect
Ds0 f22 head f21 mainIn #connect
Ds0 f21 mainOut f17 tail #connect
Ds0 f17 head f16 mainIn #connect
Ds0 f23 mainOut f25 tail #connect
Ds0 f25 head f24 mainIn #connect
Ds0 f24 mainOut f29 tail #connect
Ds0 f29 head f28 mainIn #connect
Ds0 f28 mainOut f27 tail #connect
Ds0 f27 head f26 mainIn #connect
Ds0 f13 mainOut f15 tail #connect
Ds0 f15 head f21 mainIn #connect
