[Ivy]
[>Created: Fri Oct 15 11:12:06 CEST 2010]
12BAAF77763F86CB 3.13.1 #module
>Proto >Proto Collection #zClass
Ss0 StartFileManagerProcess Big #zClass
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
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStart f3 '' #zField
Ss0 @RichDialog f4 '' #zField
Ss0 @RichDialogProcessEnd f6 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @RichDialogProcessStart f8 '' #zField
Ss0 @RichDialogProcessStep f9 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @RichDialogProcessStep f11 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialog f13 '' #zField
Ss0 @PushWFArc f14 '' #zField
Ss0 @RichDialogProcessEnd f15 '' #zField
Ss0 @PushWFArc f16 '' #zField
Ss0 @PushWFArc f19 '' #zField
>Proto Ss0 Ss0 StartFileManagerProcess #zField
Ss0 f0 guid 12BAAF777B32E0E5 #txt
Ss0 f0 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
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
Ss0 f0 110 38 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f1 110 142 20 20 13 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 guid 12BAAFE4ED1B06C7 #txt
Ss0 f3 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f3 actionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startIvySystemDB</name>
        <nameStyle>16,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 286 46 20 20 13 0 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f4 targetWindow NEW:card: #txt
Ss0 f4 targetDisplay TOP #txt
Ss0 f4 richDialogId ch.ivyteam.ivy.addons.filemanager.FileManager #txt
Ss0 f4 startMethod startWithServerPathAndUseIvySystemDB(String) #txt
Ss0 f4 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f4 requestActionDecl '<String serverPath> param;' #txt
Ss0 f4 requestMappingAction 'param.serverPath="TEST_FILEMANAGER";
' #txt
Ss0 f4 responseActionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f4 responseMappingAction 'out=in;
' #txt
Ss0 f4 windowConfiguration '{/title "File Manager"/width 820 /height 300 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ss0 f4 isAsynch true #txt
Ss0 f4 isInnerRd true #txt
Ss0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filemanager</name>
        <nameStyle>11,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f4 278 100 36 24 20 -2 #rect
Ss0 f4 @|RichDialogIcon #fIcon
Ss0 f6 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f6 286 166 20 20 13 0 #rect
Ss0 f6 @|RichDialogProcessEndIcon #fIcon
Ss0 f7 expr out #txt
Ss0 f7 296 124 296 166 #arcP
Ss0 f8 guid 12BAC14555292A90 #txt
Ss0 f8 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f8 actionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f8 actionTable 'out=in;
' #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startWIthDBConfig</name>
        <nameStyle>17,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 462 38 20 20 13 0 #rect
Ss0 f8 @|RichDialogProcessStartIcon #fIcon
Ss0 f9 actionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f9 actionTable 'out=in;
' #txt
Ss0 f9 actionCode ivy.session.loginSessionUser("Developer","Developer"); #txt
Ss0 f9 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Log on as Developer to get the
needed rights</name>
        <nameStyle>31,7,9
13,7,9
</nameStyle>
        <desc>Two rights are necessary:
ExternalDatabaseConfigurationReadMaxConnections
ExternalDatabaseConfigurationReadDatabaseConnectionConfiguration</desc>
    </language>
</elementInfo>
' #txt
Ss0 f9 454 92 36 24 20 -2 #rect
Ss0 f9 @|RichDialogProcessStepIcon #fIcon
Ss0 f10 expr out #txt
Ss0 f10 472 58 472 92 #arcP
Ss0 f11 actionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f11 actionTable 'out=in;
out.databaseConfigName="filemanager";
out.pathOnTheServer="root/test";
out.tableName="UPLOADEDFILES";
' #txt
Ss0 f11 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ss0 f11 102 84 36 24 20 -2 #rect
Ss0 f11 @|RichDialogProcessStepIcon #fIcon
Ss0 f12 expr out #txt
Ss0 f12 120 58 120 84 #arcP
Ss0 f2 expr out #txt
Ss0 f2 120 108 120 142 #arcP
Ss0 f13 targetWindow NEW:card: #txt
Ss0 f13 targetDisplay TOP #txt
Ss0 f13 richDialogId ch.ivyteam.ivy.addons.filemanager.FileManager #txt
Ss0 f13 startMethod startWithServerPathAndIvyDbConnectionNameAndDbTableNameAndDBSchemaName(String,String,String,String) #txt
Ss0 f13 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f13 requestActionDecl '<String serverPath, String IvyDbConnectioName, String tableName, String schemaName> param;' #txt
Ss0 f13 requestMappingAction 'param.serverPath=in.pathOnTheServer.trim();
param.IvyDbConnectioName=in.databaseConfigName.trim();
param.tableName=in.tableName.trim();
param.schemaName=in.SchemaName.trim();
' #txt
Ss0 f13 responseActionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f13 responseMappingAction 'out=in;
' #txt
Ss0 f13 windowConfiguration '{/title "File Manager"/width 820 /height 300 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ss0 f13 isAsynch true #txt
Ss0 f13 isInnerRd true #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filemanager</name>
        <nameStyle>11,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f13 454 164 36 24 20 -2 #rect
Ss0 f13 @|RichDialogIcon #fIcon
Ss0 f14 expr out #txt
Ss0 f14 472 116 472 164 #arcP
Ss0 f15 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f15 462 230 20 20 13 0 #rect
Ss0 f15 @|RichDialogProcessEndIcon #fIcon
Ss0 f16 expr out #txt
Ss0 f16 472 188 472 230 #arcP
Ss0 f19 expr out #txt
Ss0 f19 296 66 296 100 #arcP
>Proto Ss0 .ui2RdDataAction 'out.databaseConfigName=panel.TextField.valueAsString;
out.tableName=panel.TextField1.valueAsString;
out.SchemaName=panel.schemaTextField2.valueAsString;
out.pathOnTheServer=panel.serverpathTextField.valueAsString;
' #txt
>Proto Ss0 .rdData2UIAction 'panel.TextField.valueAsString=in.databaseConfigName;
panel.TextField1.valueAsString=in.tableName;
panel.schemaTextField2.valueAsString=in.SchemaName;
panel.serverpathTextField.valueAsString=in.pathOnTheServer;
' #txt
>Proto Ss0 .type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f4 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f8 mainOut f10 tail #connect
Ss0 f10 head f9 mainIn #connect
Ss0 f0 mainOut f12 tail #connect
Ss0 f12 head f11 mainIn #connect
Ss0 f11 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f9 mainOut f14 tail #connect
Ss0 f14 head f13 mainIn #connect
Ss0 f13 mainOut f16 tail #connect
Ss0 f16 head f15 mainIn #connect
Ss0 f3 mainOut f19 tail #connect
Ss0 f19 head f4 mainIn #connect
