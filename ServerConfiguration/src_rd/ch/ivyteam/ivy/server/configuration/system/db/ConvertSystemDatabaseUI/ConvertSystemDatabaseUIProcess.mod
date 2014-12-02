[Ivy]
[>Created: Thu Dec 18 15:26:47 CET 2008]
0116C878FD15F9A5 3.10 #module
>Proto >Proto Collection #zClass
Cs0 ConvertSystemDatabaseUIProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogProcessStart f3 '' #zField
Cs0 @RichDialogEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @RichDialogInitStart f6 '' #zField
Cs0 @RichDialogProcessStep f7 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @RichDialogProcessEnd f9 '' #zField
Cs0 @PushWFArc f10 '' #zField
>Proto Cs0 Cs0 ConvertSystemDatabaseUIProcess #zField
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 guid 116C87AF5753501C #txt
Cs0 f0 type ch.ivyteam.ivy.server.configuration.system.db.ConvertSystemDatabaseUI.ConvertSystemDatabaseUIData #txt
Cs0 f0 method start() #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 38 54 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.ivy.server.configuration.system.db.ConvertSystemDatabaseUI.ConvertSystemDatabaseUIData #txt
Cs0 f1 35 163 26 26 14 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 48 74 48 163 #arcP
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel then ok</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 guid 116C887EBBB7B85C #txt
Cs0 f3 type ch.ivyteam.ivy.server.configuration.system.db.ConvertSystemDatabaseUI.ConvertSystemDatabaseUIData #txt
Cs0 f3 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.ConvertSystemDatabaseUI.ConvertSystemDatabaseUIData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 30 214 20 20 13 0 #rect
Cs0 f3 @|RichDialogProcessStartIcon #fIcon
Cs0 f4 type ch.ivyteam.ivy.server.configuration.system.db.ConvertSystemDatabaseUI.ConvertSystemDatabaseUIData #txt
Cs0 f4 guid 116C887F375A7780 #txt
Cs0 f4 27 267 26 26 14 0 #rect
Cs0 f4 @|RichDialogEndIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 40 234 40 267 #arcP
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(DatabaseConnectionConfiguration)</name>
        <nameStyle>38,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 guid 11E203CA36BD93E0 #txt
Cs0 f6 type ch.ivyteam.ivy.server.configuration.system.db.ConvertSystemDatabaseUI.ConvertSystemDatabaseUIData #txt
Cs0 f6 method start(ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration,Number) #txt
Cs0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration dbConfiguration,java.lang.Number version> param = methodEvent.getInputArguments();
' #txt
Cs0 f6 inParameterMapAction 'out.dbConfiguration=param.dbConfiguration;
out.dbVersion=param.version;
' #txt
Cs0 f6 outParameterDecl '<java.lang.Boolean successful> result;
' #txt
Cs0 f6 outParameterMapAction 'result.successful=panel.okButton.getText().equalsIgnoreCase("ok") ? true : false;
' #txt
Cs0 f6 embeddedRdInitializations '* ' #txt
Cs0 f6 134 54 20 20 13 0 #rect
Cs0 f6 @|RichDialogInitStartIcon #fIcon
Cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>convert</name>
        <nameStyle>7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f7 actionDecl 'ch.ivyteam.ivy.server.configuration.system.db.ConvertSystemDatabaseUI.ConvertSystemDatabaseUIData out;
' #txt
Cs0 f7 actionTable 'out=in;
' #txt
Cs0 f7 actionCode 'panel.startSystemDatabaseConversion(out.dbConfiguration, out.dbVersion);' #txt
Cs0 f7 type ch.ivyteam.ivy.server.configuration.system.db.ConvertSystemDatabaseUI.ConvertSystemDatabaseUIData #txt
Cs0 f7 126 116 36 24 20 -2 #rect
Cs0 f7 @|RichDialogProcessStepIcon #fIcon
Cs0 f8 expr out #txt
Cs0 f8 144 74 144 116 #arcP
Cs0 f8 0 0.5000000000000001 0 0 #arcLabel
Cs0 f9 type ch.ivyteam.ivy.server.configuration.system.db.ConvertSystemDatabaseUI.ConvertSystemDatabaseUIData #txt
Cs0 f9 131 163 26 26 14 0 #rect
Cs0 f9 @|RichDialogProcessEndIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 144 140 144 163 #arcP
>Proto Cs0 .type ch.ivyteam.ivy.server.configuration.system.db.ConvertSystemDatabaseUI.ConvertSystemDatabaseUIData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f6 mainOut f8 tail #connect
Cs0 f8 head f7 mainIn #connect
Cs0 f7 mainOut f10 tail #connect
Cs0 f10 head f9 mainIn #connect
