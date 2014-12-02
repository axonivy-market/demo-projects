[Ivy]
[>Created: Mon Jul 21 14:17:11 CEST 2008]
1168BD31A2AC762A 3.10 #module
>Proto >Proto Collection #zClass
Ds0 DatabaseCreationProgressUIProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 f0 guid 1168BD596EB7DC0C #txt
Ds0 f0 type ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI.DatabaseCreationProgressUIData #txt
Ds0 f0 method start(ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration,List<String>) #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration databaseConnectionConfiguration,List<java.lang.String> creationParameter> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 inParameterMapAction 'out.creationParameters=param.creationParameter;
out.databaseConnectionConfiguration=param.databaseConnectionConfiguration;
' #txt
Ds0 f0 outParameterDecl '<ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration createdDatabaseConnectionConfiguration> result;
' #txt
Ds0 f0 outParameterMapAction 'result.createdDatabaseConnectionConfiguration=in.databaseConnectionConfiguration;
' #txt
Ds0 f0 embeddedRdInitializations '* ' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(DatabaseConnectionConfiguration,List&lt;String&gt;)</name>
        <nameStyle>51,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 38 30 20 20 13 0 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 @RichDialogProcessStart f1 '' #zField
Ds0 f1 guid 1168BD5A4894E6A2 #txt
Ds0 f1 type ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI.DatabaseCreationProgressUIData #txt
Ds0 f1 actionDecl 'ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI.DatabaseCreationProgressUIData out;
' #txt
Ds0 f1 actionTable 'out=in;
' #txt
Ds0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f1 310 62 20 20 13 0 #rect
Ds0 f1 @|RichDialogProcessStartIcon #fIcon
Ds0 @RichDialogEnd f2 '' #zField
Ds0 f2 type ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI.DatabaseCreationProgressUIData #txt
Ds0 f2 guid 1168BD5B1E9380DB #txt
Ds0 f2 307 179 26 26 14 0 #rect
Ds0 f2 @|RichDialogEndIcon #fIcon
Ds0 @RichDialogProcessStep f4 '' #zField
Ds0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f4 actionDecl 'ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI.DatabaseCreationProgressUIData out;
' #txt
Ds0 f4 actionTable 'out=in;
' #txt
Ds0 f4 actionCode 'panel.startSystemDatabaseCreation(in.databaseConnectionConfiguration, in.creationParameters);' #txt
Ds0 f4 type ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI.DatabaseCreationProgressUIData #txt
Ds0 f4 30 100 36 24 20 -2 #rect
Ds0 f4 @|RichDialogProcessStepIcon #fIcon
Ds0 @RichDialogProcessEnd f5 '' #zField
Ds0 f5 type ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI.DatabaseCreationProgressUIData #txt
Ds0 f5 35 187 26 26 14 0 #rect
Ds0 f5 @|RichDialogProcessEndIcon #fIcon
Ds0 @PushWFArc f6 '' #zField
Ds0 f6 expr out #txt
Ds0 f6 48 50 48 100 #arcP
Ds0 @PushWFArc f7 '' #zField
Ds0 f7 expr out #txt
Ds0 f7 48 124 48 187 #arcP
Ds0 @RichDialogProcessStep f8 '' #zField
Ds0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ds0 f8 actionDecl 'ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI.DatabaseCreationProgressUIData out;
' #txt
Ds0 f8 actionTable 'out=in;
out.databaseConnectionConfiguration=panel.getCreatedDatabaseConnectionConfiguration();
' #txt
Ds0 f8 type ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI.DatabaseCreationProgressUIData #txt
Ds0 f8 302 116 36 24 20 -2 #rect
Ds0 f8 @|RichDialogProcessStepIcon #fIcon
Ds0 @PushWFArc f9 '' #zField
Ds0 f9 expr out #txt
Ds0 f9 320 82 320 116 #arcP
Ds0 @PushWFArc f3 '' #zField
Ds0 f3 expr out #txt
Ds0 f3 320 140 320 179 #arcP
Ds0 @RichDialogInitStart f10 '' #zField
Ds0 f10 guid 11B458D2598537B9 #txt
Ds0 f10 type ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI.DatabaseCreationProgressUIData #txt
Ds0 f10 method start() #txt
Ds0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ds0 f10 outParameterDecl '<> result;
' #txt
Ds0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ds0 f10 46 270 20 20 13 0 #rect
Ds0 f10 @|RichDialogInitStartIcon #fIcon
Ds0 @RichDialogProcessEnd f11 '' #zField
Ds0 f11 type ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI.DatabaseCreationProgressUIData #txt
Ds0 f11 43 323 26 26 14 0 #rect
Ds0 f11 @|RichDialogProcessEndIcon #fIcon
Ds0 @PushWFArc f12 '' #zField
Ds0 f12 expr out #txt
Ds0 f12 56 290 56 323 #arcP
Ds0 f0 mainOut f6 tail #connect
Ds0 f6 head f4 mainIn #connect
Ds0 f4 mainOut f7 tail #connect
Ds0 f7 head f5 mainIn #connect
Ds0 f1 mainOut f9 tail #connect
Ds0 f9 head f8 mainIn #connect
Ds0 f8 mainOut f3 tail #connect
Ds0 f3 head f2 mainIn #connect
Ds0 f10 mainOut f12 tail #connect
Ds0 f12 head f11 mainIn #connect
>Proto Ds0 Ds0 DatabaseCreationProgressUIProcess #zField
>Proto Ds0 .type ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI.DatabaseCreationProgressUIData #txt
>Proto Ds0 .processKind RICH_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
