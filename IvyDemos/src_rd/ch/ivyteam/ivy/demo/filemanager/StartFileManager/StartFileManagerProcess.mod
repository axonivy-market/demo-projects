[Ivy]
[>Created: Wed Mar 14 23:37:26 EDT 2012]
12BAAF77763F86CB 3.17 #module
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
Ss0 @RichDialogProcessStep f11 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogProcessEnd f15 '' #zField
Ss0 @PushWFArc f19 '' #zField
Ss0 @RichDialog f18 '' #zField
Ss0 @Alternative f21 '' #zField
Ss0 @RichDialog f23 '' #zField
Ss0 @PushWFArc f24 '' #zField
Ss0 @Alternative f5 '' #zField
Ss0 @PushWFArc f13 '' #zField
Ss0 @PushWFArc f14 '' #zField
Ss0 @RichDialogProcessStep f25 '' #zField
Ss0 @PushWFArc f26 '' #zField
Ss0 @PushWFArc f17 '' #zField
Ss0 @PushWFArc f20 '' #zField
Ss0 @PushWFArc f27 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @PushWFArc f22 '' #zField
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
Ss0 f4 userContext '* ' #txt
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
Ss0 f9 454 180 36 24 -95 18 #rect
Ss0 f9 @|RichDialogProcessStepIcon #fIcon
Ss0 f11 actionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f11 actionTable 'out=in;
out.pathOnTheServer="root/test";
' #txt
Ss0 f11 actionCode 'ivy.session.loginSessionUser("Developer","Developer");
ivy.wf.getApplication().getSecurityDescriptor().grantPermissions(
                ivy.wf.getApplication().getSecurityDescriptor().getSecurityDescriptorType().getRootPermissionGroup(),
                ivy.session.getSecurityContext().findRole("Everybody")
);
ivy.session.logoutSessionUser(ivy.task.getIdentifier());' #txt
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
Ss0 f15 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f15 462 382 20 20 13 0 #rect
Ss0 f15 @|RichDialogProcessEndIcon #fIcon
Ss0 f19 expr out #txt
Ss0 f19 296 66 296 100 #arcP
Ss0 f18 targetWindow NEW:card: #txt
Ss0 f18 targetDisplay TOP #txt
Ss0 f18 richDialogId ch.ivyteam.ivy.demo.filemanager.FileManagerContainer #txt
Ss0 f18 startMethod start(String) #txt
Ss0 f18 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f18 requestActionDecl '<String serverPath> param;' #txt
Ss0 f18 requestMappingAction 'param.serverPath=in.pathOnTheServer;
' #txt
Ss0 f18 responseActionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f18 responseMappingAction 'out=in;
' #txt
Ss0 f18 windowConfiguration '{/title "File Manager"/width 1024 /height 500 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ss0 f18 isAsynch false #txt
Ss0 f18 isInnerRd true #txt
Ss0 f18 userContext '* ' #txt
Ss0 f18 454 292 36 24 20 -2 #rect
Ss0 f18 @|RichDialogIcon #fIcon
Ss0 f21 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>check if the security is activated</name>
        <nameStyle>34
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f21 458 90 28 28 -125 17 #rect
Ss0 f21 @|AlternativeIcon #fIcon
Ss0 f23 targetWindow NEW:card: #txt
Ss0 f23 targetDisplay TOP #txt
Ss0 f23 richDialogId ch.ivyteam.ivy.addons.commondialogs.LoginDialog #txt
Ss0 f23 startMethod login() #txt
Ss0 f23 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f23 requestActionDecl '<> param;' #txt
Ss0 f23 responseActionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f23 responseMappingAction 'out=in;
out.login=result.successful;
' #txt
Ss0 f23 windowConfiguration '{/title "Login (Please use the user adminUser or simpleUser with \''1234\'' as password)"/width 550 /height 200 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ss0 f23 isAsynch false #txt
Ss0 f23 isInnerRd true #txt
Ss0 f23 userContext '* ' #txt
Ss0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>login</name>
        <nameStyle>5
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f23 598 236 36 24 20 -2 #rect
Ss0 f23 @|RichDialogIcon #fIcon
Ss0 f24 expr in #txt
Ss0 f24 outCond 'ivy.var.xivy_addons_fileManager_activateFileContentInDatabase.equals("1") && ivy.var.xivy_addons_fileManager_activateSecurity.equals("1")' #txt
Ss0 f24 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>YES</name>
        <nameStyle>3
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f24 486 104 616 236 #arcP
Ss0 f24 1 616 104 #addKink
Ss0 f24 0 0.9612217227785654 0 0 #arcLabel
Ss0 f5 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Logged
in?</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 602 290 28 28 -21 7 #rect
Ss0 f5 @|AlternativeIcon #fIcon
Ss0 f13 expr out #txt
Ss0 f13 616 260 616 290 #arcP
Ss0 f14 expr in #txt
Ss0 f14 outCond in.login #txt
Ss0 f14 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>YES</name>
        <nameStyle>3
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f14 602 304 490 304 #arcP
Ss0 f25 actionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f25 actionTable 'out=in;
' #txt
Ss0 f25 actionCode ivy.session.logoutSessionUser(ivy.task.getIdentifier()); #txt
Ss0 f25 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logout</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f25 454 340 36 24 20 -2 #rect
Ss0 f25 @|RichDialogProcessStepIcon #fIcon
Ss0 f26 expr out #txt
Ss0 f26 472 316 472 340 #arcP
Ss0 f17 expr out #txt
Ss0 f17 472 364 472 382 #arcP
Ss0 f20 expr in #txt
Ss0 f20 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>NO</name>
        <nameStyle>2
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f20 630 304 490 352 #arcP
Ss0 f20 1 704 304 #addKink
Ss0 f20 2 704 352 #addKink
Ss0 f20 1 0.46875 0 0 #arcLabel
Ss0 f27 expr out #txt
Ss0 f27 472 58 472 90 #arcP
Ss0 f10 expr out #txt
Ss0 f10 472 204 472 292 #arcP
Ss0 f22 expr in #txt
Ss0 f22 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>NO</name>
        <nameStyle>2
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f22 472 118 472 180 #arcP
>Proto Ss0 .ui2RdDataAction 'out.pathOnTheServer=panel.serverpathTextField.valueAsString;
' #txt
>Proto Ss0 .rdData2UIAction 'panel.serverpathTextField.valueAsString=in.pathOnTheServer;
' #txt
>Proto Ss0 .type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f4 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f0 mainOut f12 tail #connect
Ss0 f12 head f11 mainIn #connect
Ss0 f11 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f3 mainOut f19 tail #connect
Ss0 f19 head f4 mainIn #connect
Ss0 f21 out f24 tail #connect
Ss0 f24 head f23 mainIn #connect
Ss0 f23 mainOut f13 tail #connect
Ss0 f13 head f5 in #connect
Ss0 f5 out f14 tail #connect
Ss0 f14 head f18 mainIn #connect
Ss0 f18 mainOut f26 tail #connect
Ss0 f26 head f25 mainIn #connect
Ss0 f25 mainOut f17 tail #connect
Ss0 f17 head f15 mainIn #connect
Ss0 f5 out f20 tail #connect
Ss0 f20 head f25 mainIn #connect
Ss0 f8 mainOut f27 tail #connect
Ss0 f27 head f21 in #connect
Ss0 f9 mainOut f10 tail #connect
Ss0 f10 head f18 mainIn #connect
Ss0 f21 out f22 tail #connect
Ss0 f22 head f9 mainIn #connect
