[Ivy]
[>Created: Fri Apr 09 15:43:01 CEST 2010]
116C87B55C55DB8E 3.14 #module
>Proto >Proto Collection #zClass
Ds0 DeleteSystemDatabaseProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @RichDialogProcessStart f3 '' #zField
Ds0 @RichDialogProcessStart f4 '' #zField
Ds0 @RichDialogProcessStep f5 '' #zField
Ds0 @RichDialogEnd f6 '' #zField
Ds0 @PushWFArc f7 '' #zField
Ds0 @PushWFArc f8 '' #zField
Ds0 @RichDialogEnd f9 '' #zField
Ds0 @PushWFArc f10 '' #zField
Ds0 @RichDialogInitStart f11 '' #zField
Ds0 @RichDialogProcessEnd f12 '' #zField
Ds0 @PushWFArc f13 '' #zField
>Proto Ds0 Ds0 DeleteSystemDatabaseProcess #zField
Ds0 f0 guid 116C88028C3C9599 #txt
Ds0 f0 type ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase.DeleteSystemDatabaseData #txt
Ds0 f0 method start(ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration) #txt
Ds0 f0 disableUIEvents false #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration databaseConnectionConfiguration> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 inParameterMapAction 'out.databaseConnectionConfiguration=param.databaseConnectionConfiguration;
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 embeddedRdInitializations '* ' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(DatabaseConnectionConfiguration)</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 46 38 20 20 13 0 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f1 type ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase.DeleteSystemDatabaseData #txt
Ds0 f1 43 107 26 26 14 0 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f2 expr out #txt
Ds0 f2 56 58 56 107 #arcP
Ds0 f3 guid 116C88118B5F8F6F #txt
Ds0 f3 type ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase.DeleteSystemDatabaseData #txt
Ds0 f3 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase.DeleteSystemDatabaseData out;
' #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Cancel</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f3 310 46 20 20 13 0 #rect
Ds0 f3 @|RichDialogProcessStartIcon #fIcon
Ds0 f4 guid 116C8812B01FD86C #txt
Ds0 f4 type ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase.DeleteSystemDatabaseData #txt
Ds0 f4 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase.DeleteSystemDatabaseData out;
' #txt
Ds0 f4 actionTable 'out=in;
' #txt
Ds0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
        <nameStyle>3,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f4 502 46 20 20 13 0 #rect
Ds0 f4 @|RichDialogProcessStartIcon #fIcon
Ds0 f5 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase.DeleteSystemDatabaseData out;
' #txt
Ds0 f5 actionTable 'out=in;
' #txt
Ds0 f5 actionCode 'import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabase;
import ch.ivyteam.db.jdbc.DatabaseUtil;
import ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration;
import ch.ivyteam.db.jdbc.ConnectionUrl;

DatabaseConnectionConfiguration serverConfig;
ConnectionUrl connectionUrl;
String serverUrl;
String dbName;

serverConfig = in.databaseConnectionConfiguration.clone();
connectionUrl = new ConnectionUrl(serverConfig.getConnectionUrl());
dbName = connectionUrl.getDbName();
serverUrl = connectionUrl.toServerUrl();

if (serverUrl.length() <= 0 && connectionUrl.toString().contains("hsqldb:mem:"))
{
	// only tolerate serverUrl="", if HSQL (host is not defined) -> use toString()
	serverUrl = connectionUrl.toString();
}

if (serverUrl is initialized)
{
	serverConfig.setConnectionUrl(serverUrl);
	try
	{
		DatabaseUtil.dropDatabase(dbName, serverConfig);
	}
	catch(Exception e)
	{
		ivy.log.debug("Can''t delete database/schema ''"+ dbName +"''. Error: " + e.getMessage());
	}
}
' #txt
Ds0 f5 type ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase.DeleteSystemDatabaseData #txt
Ds0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f5 494 108 36 24 20 -2 #rect
Ds0 f5 @|RichDialogProcessStepIcon #fIcon
Ds0 f6 type ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase.DeleteSystemDatabaseData #txt
Ds0 f6 guid 116C8818527E8127 #txt
Ds0 f6 499 187 26 26 14 0 #rect
Ds0 f6 @|RichDialogEndIcon #fIcon
Ds0 f7 expr out #txt
Ds0 f7 512 66 512 108 #arcP
Ds0 f8 expr out #txt
Ds0 f8 512 132 512 187 #arcP
Ds0 f9 type ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase.DeleteSystemDatabaseData #txt
Ds0 f9 guid 116C88199472C43D #txt
Ds0 f9 307 99 26 26 14 0 #rect
Ds0 f9 @|RichDialogEndIcon #fIcon
Ds0 f10 expr out #txt
Ds0 f10 320 66 320 99 #arcP
Ds0 f11 guid 11B458E9EE99C0A4 #txt
Ds0 f11 type ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase.DeleteSystemDatabaseData #txt
Ds0 f11 method start() #txt
Ds0 f11 disableUIEvents false #txt
Ds0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f11 outParameterDecl '<> result;
' #txt
Ds0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ds0 f11 46 206 20 20 13 0 #rect
Ds0 f11 @|RichDialogInitStartIcon #fIcon
Ds0 f12 type ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase.DeleteSystemDatabaseData #txt
Ds0 f12 43 259 26 26 14 0 #rect
Ds0 f12 @|RichDialogProcessEndIcon #fIcon
Ds0 f13 expr out #txt
Ds0 f13 56 226 56 259 #arcP
>Proto Ds0 .type ch.ivyteam.ivy.server.configuration.system.db.DeleteSystemDatabase.DeleteSystemDatabaseData #txt
>Proto Ds0 .processKind RICH_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f0 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f4 mainOut f7 tail #connect
Ds0 f7 head f5 mainIn #connect
Ds0 f5 mainOut f8 tail #connect
Ds0 f8 head f6 mainIn #connect
Ds0 f3 mainOut f10 tail #connect
Ds0 f10 head f9 mainIn #connect
Ds0 f11 mainOut f13 tail #connect
Ds0 f13 head f12 mainIn #connect
