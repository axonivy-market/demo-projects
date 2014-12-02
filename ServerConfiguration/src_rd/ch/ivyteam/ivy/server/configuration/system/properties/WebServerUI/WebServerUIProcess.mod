[Ivy]
[>Created: Mon Jul 21 14:18:56 CEST 2008]
118EAA94FAC3CD92 3.10 #module
>Proto >Proto Collection #zClass
Ws0 WebServerUIProcess Big #zClass
Ws0 RD #cInfo
Ws0 #process
Ws0 @TextInP .xml .xml #zField
Ws0 @TextInP .responsibility .responsibility #zField
Ws0 @TextInP .resExport .resExport #zField
Ws0 @TextInP .type .type #zField
Ws0 @TextInP .processKind .processKind #zField
Ws0 @AnnotationInP-0n ai ai #zField
Ws0 @MessageFlowInP-0n messageIn messageIn #zField
Ws0 @MessageFlowOutP-0n messageOut messageOut #zField
Ws0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ws0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ws0 @RichDialogInitStart f0 '' #zField
Ws0 f0 guid 118EABDBEB66569C #txt
Ws0 f0 type ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIData #txt
Ws0 f0 method start(ch.ivyteam.ivy.server.configuration.Configuration) #txt
Ws0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.server.configuration.Configuration config> param = methodEvent.getInputArguments();
' #txt
Ws0 f0 inParameterMapAction 'out.administratorManager=ch.ivyteam.ivy.server.configuration.system.db.SystemDatabase.getSystemDatabase().getAdministratorManager();
out.configuration=param.config;
out.connectionTester=ch.ivyteam.ivy.server.configuration.system.db.SystemDatabase.getSystemDatabase().getConnectionTester();
' #txt
Ws0 f0 outParameterDecl '<> result;
' #txt
Ws0 f0 embeddedRdInitializations '{/httpsSettingsPane {/fieldName "httpsSettingsPane"/startMethod "start(String,Boolean,Number)"/parameterMapping "param.name=\"HTTPS\";\n"/initScript ""}/httpSettingsPane {/fieldName "httpSettingsPane"/startMethod "start(String,Boolean,Number)"/parameterMapping "param.name=\"HTTP\";\n"/initScript ""}/ajpSettingsPane {/fieldName "ajpSettingsPane"/startMethod "start(String,Boolean,Number)"/parameterMapping "param.name=\"AJP\";\n"/initScript ""}}' #txt
Ws0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Configuration)</name>
        <nameStyle>20,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f0 46 46 20 20 13 0 #rect
Ws0 f0 @|RichDialogInitStartIcon #fIcon
Ws0 @RichDialogProcessEnd f1 '' #zField
Ws0 f1 type ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIData #txt
Ws0 f1 43 219 26 26 14 0 #rect
Ws0 f1 @|RichDialogProcessEndIcon #fIcon
Ws0 @RichDialogProcessStep f3 '' #zField
Ws0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get property values</name>
        <nameStyle>19,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f3 actionDecl 'ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIData out;
' #txt
Ws0 f3 actionTable 'out=in;
' #txt
Ws0 f3 actionCode 'import ch.ivyteam.util.Property;

if (in.administratorManager.isConnected())
{
	in.properties = in.administratorManager.getSystemProperties();
	
	panel.httpSettingsPane.setProtocolEnabled(in.administratorManager.getSystemProperty("WebServer.HTTP.Enabled").getValue() == "true");
	panel.httpSettingsPane.setProtocolPort(in.administratorManager.getSystemProperty("WebServer.HTTP.Port").getValue().toNumber());
	
	panel.httpsSettingsPane.setProtocolEnabled(in.administratorManager.getSystemProperty("WebServer.HTTPS.Enabled").getValue() == "true");
	panel.httpsSettingsPane.setProtocolPort(in.administratorManager.getSystemProperty("WebServer.HTTPS.Port").getValue().toNumber());
	
	panel.ajpSettingsPane.setProtocolEnabled(in.administratorManager.getSystemProperty("WebServer.AJP.Enabled").getValue() == "true");
	panel.ajpSettingsPane.setProtocolPort(in.administratorManager.getSystemProperty("WebServer.AJP.Port").getValue().toNumber());
}' #txt
Ws0 f3 type ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIData #txt
Ws0 f3 38 124 36 24 20 -2 #rect
Ws0 f3 @|RichDialogProcessStepIcon #fIcon
Ws0 @PushWFArc f4 '' #zField
Ws0 f4 expr out #txt
Ws0 f4 56 66 56 124 #arcP
Ws0 @PushWFArc f2 '' #zField
Ws0 f2 expr out #txt
Ws0 f2 56 148 56 219 #arcP
Ws0 @RichDialogBroadcastStart f5 '' #zField
Ws0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Accepted broadcast: connectionStateChanged</name>
    </language>
</elementInfo>
' #txt
Ws0 f5 guid 118EF49C77926B6C #txt
Ws0 f5 type ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIData #txt
Ws0 f5 broadcast connectionStateChanged #txt
Ws0 f5 actionDecl 'ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIData out;
' #txt
Ws0 f5 actionTable 'out=in;
' #txt
Ws0 f5 166 46 20 20 13 0 #rect
Ws0 f5 @|RichDialogBroadcastStartIcon #fIcon
Ws0 @RichDialogProcessEnd f6 '' #zField
Ws0 f6 type ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIData #txt
Ws0 f6 435 243 26 26 14 0 #rect
Ws0 f6 @|RichDialogProcessEndIcon #fIcon
Ws0 @PushWFArc f8 '' #zField
Ws0 f8 expr out #txt
Ws0 f8 167 61 74 124 #arcP
Ws0 @RichDialogMethodStart f7 '' #zField
Ws0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save()</name>
    </language>
</elementInfo>
' #txt
Ws0 f7 guid 118EF5C5F9FDCA27 #txt
Ws0 f7 type ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIData #txt
Ws0 f7 method save() #txt
Ws0 f7 438 46 20 20 13 0 #rect
Ws0 f7 @|RichDialogMethodStartIcon #fIcon
Ws0 @RichDialogProcessStep f10 '' #zField
Ws0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save properties</name>
        <nameStyle>15,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f10 actionDecl 'ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIData out;
' #txt
Ws0 f10 actionTable 'out=in;
' #txt
Ws0 f10 actionCode 'import ch.ivyteam.util.Property;

if (in.connectionTester.getConnectionState()==ch.ivyteam.ivy.server.configuration.system.db.ConnectionState.CONNECTED)
{
	java.util.Map properties = new java.util.HashMap();
	properties.put("WebServer.HTTP.Enabled", panel.httpSettingsPane.isProtocolEnabled());
	properties.put("WebServer.HTTP.Port", panel.httpSettingsPane.getProtocolPort());
	properties.put("WebServer.HTTPS.Enabled", panel.httpsSettingsPane.isProtocolEnabled());
	properties.put("WebServer.HTTPS.Port", panel.httpsSettingsPane.getProtocolPort());
	properties.put("WebServer.AJP.Enabled", panel.ajpSettingsPane.isProtocolEnabled());
	properties.put("WebServer.AJP.Port", panel.ajpSettingsPane.getProtocolPort());
	
	for(String key : properties.keySet())
	{
		String value = properties.get(key).toString();
		if (in.administratorManager.getSystemProperty(key) is initialized)
		{
			in.administratorManager.getSystemProperty(key).setValue(value);
		}
		else
		{
			Property property = new Property(key, value);
			in.administratorManager.getSystemProperties().add(property);
		}
	}
	
	in.administratorManager.storeSystemProperties();
}' #txt
Ws0 f10 type ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIData #txt
Ws0 f10 430 124 36 24 20 -2 #rect
Ws0 f10 @|RichDialogProcessStepIcon #fIcon
Ws0 @PushWFArc f11 '' #zField
Ws0 f11 expr out #txt
Ws0 f11 448 66 448 124 #arcP
Ws0 @PushWFArc f9 '' #zField
Ws0 f9 expr out #txt
Ws0 f9 448 148 448 243 #arcP
Ws0 @RichDialogInitStart f12 '' #zField
Ws0 f12 guid 11B458ECEFBE2B21 #txt
Ws0 f12 type ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIData #txt
Ws0 f12 method start() #txt
Ws0 f12 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ws0 f12 outParameterDecl '<> result;
' #txt
Ws0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ws0 f12 46 286 20 20 13 0 #rect
Ws0 f12 @|RichDialogInitStartIcon #fIcon
Ws0 @RichDialogProcessEnd f13 '' #zField
Ws0 f13 type ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIData #txt
Ws0 f13 43 363 26 26 14 0 #rect
Ws0 f13 @|RichDialogProcessEndIcon #fIcon
Ws0 @PushWFArc f14 '' #zField
Ws0 f14 expr out #txt
Ws0 f14 56 306 56 363 #arcP
Ws0 f0 mainOut f4 tail #connect
Ws0 f4 head f3 mainIn #connect
Ws0 f3 mainOut f2 tail #connect
Ws0 f2 head f1 mainIn #connect
Ws0 f5 mainOut f8 tail #connect
Ws0 f8 head f3 mainIn #connect
Ws0 f7 mainOut f11 tail #connect
Ws0 f11 head f10 mainIn #connect
Ws0 f10 mainOut f9 tail #connect
Ws0 f9 head f6 mainIn #connect
Ws0 f12 mainOut f14 tail #connect
Ws0 f14 head f13 mainIn #connect
>Proto Ws0 Ws0 WebServerUIProcess #zField
>Proto Ws0 .type ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI.WebServerUIData #txt
>Proto Ws0 .processKind RICH_DIALOG #txt
>Proto Ws0 .rdData2UIAction 'panel.enabled=in.connectionTester.getConnectionState()==ch.ivyteam.ivy.server.configuration.system.db.ConnectionState.CONNECTED;
' #txt
>Proto Ws0 -8 -8 16 16 16 26 #rect
>Proto Ws0 '' #fIcon
