[Ivy]
[>Created: Wed Aug 08 19:12:42 EDT 2012]
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
Ss0 @RichDialogProcessStart f8 '' #zField
Ss0 @RichDialogProcessStep f9 '' #zField
Ss0 @RichDialogProcessStep f11 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogProcessEnd f15 '' #zField
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
Ss0 @PushWFArc f10 '' #zField
Ss0 @PushWFArc f22 '' #zField
Ss0 @RichDialogProcessStart f3 '' #zField
Ss0 @RichDialogProcessEnd f7 '' #zField
Ss0 @RichDialogProcessStep f19 '' #zField
Ss0 @PushWFArc f28 '' #zField
Ss0 @PushWFArc f27 '' #zField
Ss0 @InfoButton f29 '' #zField
Ss0 @AnnotationArc f30 '' #zField
Ss0 @PushWFArc f4 '' #zField
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
Ss0 f0 embeddedRdInitializations '* ' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 110 38 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f1 110 142 20 20 13 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f8 guid 12BAC14555292A90 #txt
Ss0 f8 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f8 actionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f8 actionTable 'out=in;
' #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startFileManager</name>
        <nameStyle>16,5,7,9
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
Ss0 f9 454 244 36 24 -95 18 #rect
Ss0 f9 @|RichDialogProcessStepIcon #fIcon
Ss0 f11 actionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f11 actionTable 'out=in;
out.configurationController.rootPath="root/storeOnServer";
' #txt
Ss0 f11 actionCode 'ivy.session.loginSessionUser("Developer","Developer");
ivy.wf.getApplication().getSecurityDescriptor().grantPermissions(
                ivy.wf.getApplication().getSecurityDescriptor().getSecurityDescriptorType().getRootPermissionGroup(),
                ivy.session.getSecurityContext().findRole("Everybody")
);
ivy.session.logoutSessionUser(ivy.task.getIdentifier());

panel.activateFileVersioningCheckBox.enabled=false;
		panel.activateSecurityCheckBox.enabled=false;
		panel.activateTypeCheckBox.enabled=false;
		panel.activateTagsCheckBox.enabled=false;
		panel.activateHistoryCheckBox.enabled=false;' #txt
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
Ss0 f15 462 446 20 20 13 0 #rect
Ss0 f15 @|RichDialogProcessEndIcon #fIcon
Ss0 f18 targetWindow NEW:card: #txt
Ss0 f18 targetDisplay TOP #txt
Ss0 f18 richDialogId ch.ivyteam.ivy.demo.filemanager.FileManagerContainer #txt
Ss0 f18 startMethod start(ch.ivyteam.ivy.addons.filemanager.configuration.FileManagerConfigurationController) #txt
Ss0 f18 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f18 requestActionDecl '<ch.ivyteam.ivy.addons.filemanager.configuration.FileManagerConfigurationController configurationController> param;' #txt
Ss0 f18 requestMappingAction 'param.configurationController=in.configurationController;
' #txt
Ss0 f18 responseActionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f18 responseMappingAction 'out=in;
' #txt
Ss0 f18 windowConfiguration '{/title "File Manager"/width 1024 /height 500 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ss0 f18 isAsynch false #txt
Ss0 f18 isInnerRd true #txt
Ss0 f18 userContext '* ' #txt
Ss0 f18 454 356 36 24 20 -2 #rect
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
Ss0 f21 458 154 28 28 -125 17 #rect
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
Ss0 f24 outCond in.configurationController.activateSecurity #txt
Ss0 f24 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>YES</name>
        <nameStyle>3
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f24 486 168 616 236 #arcP
Ss0 f24 1 616 168 #addKink
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
Ss0 f5 602 290 28 28 -16 18 #rect
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
Ss0 f14 602 304 489 356 #arcP
Ss0 f14 1 560 304 #addKink
Ss0 f14 1 0.24246062318114353 0 0 #arcLabel
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
Ss0 f25 454 404 36 24 20 -2 #rect
Ss0 f25 @|RichDialogProcessStepIcon #fIcon
Ss0 f26 expr out #txt
Ss0 f26 472 380 472 404 #arcP
Ss0 f17 expr out #txt
Ss0 f17 472 428 472 446 #arcP
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
Ss0 f20 630 304 490 416 #arcP
Ss0 f20 1 704 304 #addKink
Ss0 f20 2 704 416 #addKink
Ss0 f20 1 0.46875 0 0 #arcLabel
Ss0 f10 expr out #txt
Ss0 f10 472 268 472 356 #arcP
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
Ss0 f22 472 182 472 244 #arcP
Ss0 f3 guid 137DE5A742AA039E #txt
Ss0 f3 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f3 actionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 actionCode 'import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import com.ulcjava.base.application.event.ActionEvent;
try{
	ActionEvent ev = event as ActionEvent;
	panel.startButton1.enabled=true;
	
	RCheckBox rc = ev.getSource() as RCheckBox;
	
	if(rc.getName().equalsIgnoreCase(panel.activateFilesAsBlobCheckBox.getName()))
	{
		if(panel.activateFilesAsBlobCheckBox.selected)
		{//files are stored as BLOB in an external database, this is not compatible with the files storage on the file set
			panel.activateIvySystemDBCheckBox.selected=false;
			panel.filesInFileSetCheckBox.selected=false;
			panel.activateFileVersioningCheckBox.enabled=true;
			panel.activateSecurityCheckBox.enabled=true;
			panel.activateTypeCheckBox.enabled=true;
			panel.activateTagsCheckBox.enabled=true;
			panel.activateHistoryCheckBox.enabled=true;
			out.configurationController.rootPath="root/storeInDb";
		}else{//this two features need files stored as blob
			panel.activateFileVersioningCheckBox.enabled=false;
			panel.activateSecurityCheckBox.enabled=false;
			panel.activateTypeCheckBox.enabled=false;
			panel.activateTagsCheckBox.enabled=false;
			panel.activateHistoryCheckBox.enabled=false;
		}
	}
	else if(rc.getName().equalsIgnoreCase(panel.activateIvySystemDBCheckBox.getName()) && panel.activateIvySystemDBCheckBox.selected)
	{//files are stored on the file set and the files informations are stored in the Ivy system DB, all other options cannot be activated
		panel.activateFilesAsBlobCheckBox.selected=false;
		panel.activateFileVersioningCheckBox.enabled=false;
		panel.activateSecurityCheckBox.enabled=false;
		panel.activateTypeCheckBox.enabled=false;
		panel.activateTagsCheckBox.enabled=false;
		panel.activateHistoryCheckBox.enabled=false;
		panel.filesInFileSetCheckBox.selected=false;
		out.configurationController.rootPath="root/storeOnServerAndIvyDb";
	}
	else if(rc.getName().equalsIgnoreCase(panel.filesInFileSetCheckBox.getName()) && panel.filesInFileSetCheckBox.selected)
	{//files are stored on the file set and the files informations are stored in an external database, all other options cannot be activated
		panel.activateFilesAsBlobCheckBox.selected=false;
		panel.activateFileVersioningCheckBox.enabled=false;
		panel.activateSecurityCheckBox.enabled=false;
		panel.activateTypeCheckBox.enabled=false;
		panel.activateTagsCheckBox.enabled=false;
		panel.activateHistoryCheckBox.enabled=false;
		panel.activateIvySystemDBCheckBox.selected=false;
		out.configurationController.rootPath="root/storeOnServer";
	}
	
	if(!panel.filesInFileSetCheckBox.selected && !panel.activateIvySystemDBCheckBox.selected && !panel.activateFilesAsBlobCheckBox.selected)
	{
		panel.startButton1.enabled=false;
	}
}catch(Throwable t){
	ivy.log.error(t.getMessage(),t);
}' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>settingsChanged</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 118 246 20 20 13 0 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f7 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f7 118 342 20 20 13 0 #rect
Ss0 f7 @|RichDialogProcessEndIcon #fIcon
Ss0 f19 actionDecl 'ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData out;
' #txt
Ss0 f19 actionTable 'out=in;
out.configurationController.activateFileTags=panel.activateTagsCheckBox.selected;
out.configurationController.activateFileType=panel.activateTypeCheckBox.selected;
out.configurationController.activateFileVersioning=panel.activateFileVersioningCheckBox.selected;
out.configurationController.activateSecurity=panel.activateSecurityCheckBox.selected;
out.configurationController.allowUserToSetDocumentFileTypes=true /*we set this to true to allow the user to choose the fileTypes on the documents */;
out.configurationController.allowUserToSetDocumentTags=true /*we set this to true to allow the user to set the fileTags on the documents*/;
out.configurationController.fileActionHistoryConfiguration.activateFileActionHistory=panel.activateHistoryCheckBox.selected;
out.configurationController.ivyDBConnectionName="filemanager";
out.configurationController.showFileTypeInTable=true /*we set this to true to see the fileTypes in the table if the option is selected*/;
out.configurationController.showFileTypeManagement=true /*we set this to true to allow to manage the fileTypes if the option is selected*/;
out.configurationController.storeFilesInDB=panel.activateFilesAsBlobCheckBox.selected;
out.configurationController.useIvySystemDB=panel.activateIvySystemDBCheckBox.selected;
' #txt
Ss0 f19 actionCode 'int n = 0;
try{
	n = panel.maxFileSizeTextField.valueAsNumber;
}catch(Throwable t){
		//ignoring the NumberFormatException
}

out.configurationController.maxFileUploadSize = n;' #txt
Ss0 f19 type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
Ss0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>map the settings in the configuration controller</name>
        <nameStyle>48
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f19 454 92 36 24 20 -2 #rect
Ss0 f19 @|RichDialogProcessStepIcon #fIcon
Ss0 f28 expr out #txt
Ss0 f28 472 58 472 92 #arcP
Ss0 f27 expr out #txt
Ss0 f27 472 116 472 154 #arcP
Ss0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>We start the FileManager RDC embedded within a Container.
If we do not do so, no keyboard shortcut will be active.</name>
        <nameStyle>114
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f29 52 403 344 42 -167 -16 #rect
Ss0 f29 @|IBIcon #fIcon
Ss0 f29 -1|-1|-16777216 #nodeStyle
Ss0 f30 224 403 454 370 #arcP
Ss0 f4 expr out #txt
Ss0 f4 128 266 128 342 #arcP
>Proto Ss0 .ui2RdDataAction 'out.configurationController.rootPath=panel.serverpathTextField.valueAsString;
' #txt
>Proto Ss0 .rdData2UIAction 'panel.serverpathTextField.valueAsString=in.configurationController.rootPath;
' #txt
>Proto Ss0 .type ch.ivyteam.ivy.demo.filemanager.StartFileManager.StartFileManagerData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f0 mainOut f12 tail #connect
Ss0 f12 head f11 mainIn #connect
Ss0 f11 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
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
Ss0 f9 mainOut f10 tail #connect
Ss0 f10 head f18 mainIn #connect
Ss0 f21 out f22 tail #connect
Ss0 f22 head f9 mainIn #connect
Ss0 f8 mainOut f28 tail #connect
Ss0 f28 head f19 mainIn #connect
Ss0 f19 mainOut f27 tail #connect
Ss0 f27 head f21 in #connect
Ss0 f29 ao f30 tail #connect
Ss0 f30 head f18 @CG|ai #connect
Ss0 f3 mainOut f4 tail #connect
Ss0 f4 head f7 mainIn #connect
