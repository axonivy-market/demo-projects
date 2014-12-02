[Ivy]
[>Created: Wed Mar 09 16:59:09 CET 2011]
1168B282FE45133D 3.16 #module
>Proto >Proto Collection #zClass
Ds0 DatabaseCreationParameterUIProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessStep f1 '' #zField
Ds0 @RichDialogProcessEnd f2 '' #zField
Ds0 @PushWFArc f3 '' #zField
Ds0 @PushWFArc f4 '' #zField
Ds0 @RichDialogProcessStart f5 '' #zField
Ds0 @RichDialogProcessStart f6 '' #zField
Ds0 @RichDialogEnd f9 '' #zField
Ds0 @PushWFArc f8 '' #zField
Ds0 @RichDialogEnd f12 '' #zField
Ds0 @RichDialog f13 '' #zField
Ds0 @PushWFArc f7 '' #zField
Ds0 @RichDialogProcessStep f11 '' #zField
Ds0 @PushWFArc f14 '' #zField
Ds0 @PushWFArc f10 '' #zField
Ds0 @RichDialogInitStart f15 '' #zField
Ds0 @RichDialogProcessEnd f16 '' #zField
Ds0 @PushWFArc f17 '' #zField
>Proto Ds0 Ds0 DatabaseCreationParameterUIProcess #zField
Ds0 f0 guid 1168B2B7AD5AE3D7 #txt
Ds0 f0 type ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData #txt
Ds0 f0 method start(ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration) #txt
Ds0 f0 disableUIEvents false #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration DatabaseConnectionConfiguration> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 inParameterMapAction 'out.databaseConnectionConfiguration=param.DatabaseConnectionConfiguration;
' #txt
Ds0 f0 outParameterDecl '<ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration createdDatabaseConnectionConfiguration> result;
' #txt
Ds0 f0 outParameterMapAction 'result.createdDatabaseConnectionConfiguration=in.databaseConnectionConfiguration;
' #txt
Ds0 f0 embeddedRdInitializations '* ' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(DatabaseConnectionConfiguration)</name>
        <nameStyle>38,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 54 22 20 20 13 0 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f1 actionDecl 'ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData out;
' #txt
Ds0 f1 actionTable 'out=in;
' #txt
Ds0 f1 actionCode 'import ch.ivyteam.ivy.persistence.db.DatabasePersistencyServiceFactory;
import ch.ivyteam.db.jdbc.JdbcDriver;
import ch.ivyteam.db.jdbc.ConnectionUrl;
import java.util.Map;

JdbcDriver jdbcDriver = JdbcDriver.getJdbcDriverForConnectionConfiguration(in.databaseConnectionConfiguration);
Map connectionProperties = jdbcDriver.getConnectionConfigurator().getDatabaseConnectionProperties(in.databaseConnectionConfiguration);
panel.setDatabaseCreationParameters(DatabasePersistencyServiceFactory.createDatabaseCreator(in.databaseConnectionConfiguration).getDatabaseCreationParameters(), connectionProperties);' #txt
Ds0 f1 type ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData #txt
Ds0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f1 46 76 36 24 20 -2 #rect
Ds0 f1 @|RichDialogProcessStepIcon #fIcon
Ds0 f2 type ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData #txt
Ds0 f2 51 139 26 26 14 0 #rect
Ds0 f2 @|RichDialogProcessEndIcon #fIcon
Ds0 f3 expr out #txt
Ds0 f3 64 42 64 76 #arcP
Ds0 f4 expr out #txt
Ds0 f4 64 100 64 139 #arcP
Ds0 f5 guid 1168B313D7EAB063 #txt
Ds0 f5 type ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData #txt
Ds0 f5 actionDecl 'ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData out;
' #txt
Ds0 f5 actionTable 'out=in;
' #txt
Ds0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createDb</name>
        <nameStyle>8,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f5 54 214 20 20 13 0 #rect
Ds0 f5 @|RichDialogProcessStartIcon #fIcon
Ds0 f6 guid 1168B31459B68A21 #txt
Ds0 f6 type ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData #txt
Ds0 f6 actionDecl 'ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData out;
' #txt
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f6 246 238 20 20 13 0 #rect
Ds0 f6 @|RichDialogProcessStartIcon #fIcon
Ds0 f9 type ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData #txt
Ds0 f9 guid 1168B31AE296D1FC #txt
Ds0 f9 243 371 26 26 14 0 #rect
Ds0 f9 @|RichDialogEndIcon #fIcon
Ds0 f8 expr out #txt
Ds0 f8 256 258 256 371 #arcP
Ds0 f12 type ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData #txt
Ds0 f12 guid 1168B31FEED2A323 #txt
Ds0 f12 51 347 26 26 14 0 #rect
Ds0 f12 @|RichDialogEndIcon #fIcon
Ds0 f13 targetWindow NEW #txt
Ds0 f13 targetDisplay TOP #txt
Ds0 f13 richDialogId ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI #txt
Ds0 f13 startMethod start(ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration,List<String>) #txt
Ds0 f13 type ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData #txt
Ds0 f13 requestActionDecl '<ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration databaseConnectionConfiguration, List<String> creationParameter> param;' #txt
Ds0 f13 requestMappingAction 'param.databaseConnectionConfiguration=in.databaseConnectionConfiguration;
param.creationParameter=in.creationParameters;
' #txt
Ds0 f13 responseActionDecl 'ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData out;
' #txt
Ds0 f13 responseMappingAction 'out=in;
out.databaseConnectionConfiguration=result.createdDatabaseConnectionConfiguration;
' #txt
Ds0 f13 windowConfiguration '#Thu Feb 05 15:36:58 CET 2009
height=0
maximized=false
centered=true
close_after_last_rd=true
resizable=true
width=0
title=Creating System Database
' #txt
Ds0 f13 isAsynch false #txt
Ds0 f13 isInnerRd true #txt
Ds0 f13 isDialog true #txt
Ds0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create DB</name>
        <nameStyle>9,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f13 46 300 36 24 20 -2 #rect
Ds0 f13 @|RichDialogIcon #fIcon
Ds0 f7 expr out #txt
Ds0 f7 64 324 64 347 #arcP
Ds0 f11 actionDecl 'ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData out;
' #txt
Ds0 f11 actionTable 'out=in;
out.creationParameters=panel.getDatabaseCreationParameters();
' #txt
Ds0 f11 type ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData #txt
Ds0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get Parameters</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f11 46 252 36 24 20 -2 #rect
Ds0 f11 @|RichDialogProcessStepIcon #fIcon
Ds0 f14 expr out #txt
Ds0 f14 64 234 64 252 #arcP
Ds0 f10 expr out #txt
Ds0 f10 64 276 64 300 #arcP
Ds0 f15 guid 11B458CC0B9522E6 #txt
Ds0 f15 type ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData #txt
Ds0 f15 method start() #txt
Ds0 f15 disableUIEvents false #txt
Ds0 f15 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f15 outParameterDecl '<> result;
' #txt
Ds0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ds0 f15 342 30 20 20 13 0 #rect
Ds0 f15 @|RichDialogInitStartIcon #fIcon
Ds0 f16 type ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData #txt
Ds0 f16 339 83 26 26 14 0 #rect
Ds0 f16 @|RichDialogProcessEndIcon #fIcon
Ds0 f17 expr out #txt
Ds0 f17 352 50 352 83 #arcP
>Proto Ds0 .type ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI.DatabaseCreationParameterUIData #txt
>Proto Ds0 .processKind RICH_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f0 mainOut f3 tail #connect
Ds0 f3 head f1 mainIn #connect
Ds0 f1 mainOut f4 tail #connect
Ds0 f4 head f2 mainIn #connect
Ds0 f6 mainOut f8 tail #connect
Ds0 f8 head f9 mainIn #connect
Ds0 f13 mainOut f7 tail #connect
Ds0 f7 head f12 mainIn #connect
Ds0 f5 mainOut f14 tail #connect
Ds0 f14 head f11 mainIn #connect
Ds0 f11 mainOut f10 tail #connect
Ds0 f10 head f13 mainIn #connect
Ds0 f15 mainOut f17 tail #connect
Ds0 f17 head f16 mainIn #connect
