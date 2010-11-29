[Ivy]
[>Created: Sun Sep 19 21:14:54 CEST 2010]
125FDE1E1CFE410A 3.13 #module
>Proto >Proto Collection #zClass
Fs0 FileUploadPreparerProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @MessageFlowInP-0n messageIn messageIn #zField
Fs0 @MessageFlowOutP-0n messageOut messageOut #zField
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 @RichDialogProcessEnd f1 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @RichDialogInitStart f3 '' #zField
Fs0 @PushWFArc f4 '' #zField
Fs0 @RichDialogMethodStart f5 '' #zField
Fs0 @RichDialogMethodStart f6 '' #zField
Fs0 @RichDialogMethodStart f7 '' #zField
Fs0 @RichDialogProcessEnd f8 '' #zField
Fs0 @PushWFArc f9 '' #zField
Fs0 @RichDialogProcessStep f10 '' #zField
Fs0 @PushWFArc f11 '' #zField
Fs0 @RichDialogProcessEnd f12 '' #zField
Fs0 @PushWFArc f13 '' #zField
Fs0 @RichDialogProcessStep f14 '' #zField
Fs0 @PushWFArc f15 '' #zField
Fs0 @RichDialogProcessEnd f16 '' #zField
Fs0 @PushWFArc f17 '' #zField
Fs0 @RichDialogProcessStart f18 '' #zField
Fs0 @RichDialogProcessStep f19 '' #zField
Fs0 @PushWFArc f20 '' #zField
Fs0 @RichDialogProcessEnd f21 '' #zField
Fs0 @RichDialogProcessStart f23 '' #zField
Fs0 @RichDialogProcessStep f24 '' #zField
Fs0 @PushWFArc f25 '' #zField
Fs0 @RichDialogProcessEnd f26 '' #zField
Fs0 @PushWFArc f27 '' #zField
Fs0 @RichDialogProcessStart f28 '' #zField
Fs0 @RichDialogProcessStep f29 '' #zField
Fs0 @PushWFArc f30 '' #zField
Fs0 @RichDialogProcessEnd f31 '' #zField
Fs0 @PushWFArc f32 '' #zField
Fs0 @RichDialogMethodStart f35 '' #zField
Fs0 @RichDialogProcessStep f36 '' #zField
Fs0 @PushWFArc f37 '' #zField
Fs0 @RichDialogProcessEnd f38 '' #zField
Fs0 @PushWFArc f39 '' #zField
Fs0 @PushWFArc f22 '' #zField
Fs0 @RichDialogMethodStart f33 '' #zField
Fs0 @PushWFArc f34 '' #zField
>Proto Fs0 Fs0 FileUploadPreparerProcess #zField
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Fs0 f0 guid 12181518EFF20514 #txt
Fs0 f0 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f0 method start() #txt
Fs0 f0 disableUIEvents false #txt
Fs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f0 outParameterDecl '<> result;
' #txt
Fs0 f0 54 54 20 20 13 0 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 f1 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f1 51 155 26 26 14 0 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 f2 expr out #txt
Fs0 f2 64 74 64 155 #arcP
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f3 guid 1218160837997FAC #txt
Fs0 f3 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f3 method start(String) #txt
Fs0 f3 disableUIEvents false #txt
Fs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String serverPath> param = methodEvent.getInputArguments();
' #txt
Fs0 f3 inParameterMapAction 'out.serverPath=param.serverPath;
' #txt
Fs0 f3 outParameterDecl '<> result;
' #txt
Fs0 f3 embeddedRdInitializations '* ' #txt
Fs0 f3 158 54 20 20 13 0 #rect
Fs0 f3 @|RichDialogInitStartIcon #fIcon
Fs0 f4 expr out #txt
Fs0 f4 160 71 73 158 #arcP
Fs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>clear()</name>
    </language>
</elementInfo>
' #txt
Fs0 f5 guid 1218160C63FF4DC1 #txt
Fs0 f5 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f5 method clear() #txt
Fs0 f5 disableUIEvents false #txt
Fs0 f5 350 70 20 20 13 0 #rect
Fs0 f5 @|RichDialogMethodStartIcon #fIcon
Fs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setServerPath(String)</name>
        <nameStyle>21,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f6 guid 1218160D17A386B0 #txt
Fs0 f6 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f6 method setServerPath(String) #txt
Fs0 f6 disableUIEvents false #txt
Fs0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String serverPath> param = methodEvent.getInputArguments();
' #txt
Fs0 f6 inParameterMapAction 'out.serverPath=param.serverPath;
' #txt
Fs0 f6 outParameterDecl '<> result;
' #txt
Fs0 f6 614 70 20 20 13 0 #rect
Fs0 f6 @|RichDialogMethodStartIcon #fIcon
Fs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>uploadPreparedFiles()</name>
    </language>
</elementInfo>
' #txt
Fs0 f7 guid 1218160DDFDD084B #txt
Fs0 f7 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f7 method uploadPreparedFiles() #txt
Fs0 f7 disableUIEvents false #txt
Fs0 f7 350 318 20 20 13 0 #rect
Fs0 f7 @|RichDialogMethodStartIcon #fIcon
Fs0 f8 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f8 611 123 26 26 14 0 #rect
Fs0 f8 @|RichDialogProcessEndIcon #fIcon
Fs0 f9 expr out #txt
Fs0 f9 624 90 624 123 #arcP
Fs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Clear the uploadFileList</name>
        <nameStyle>24,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f10 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData out;
' #txt
Fs0 f10 actionTable 'out=in;
' #txt
Fs0 f10 actionCode 'out.filesToUpload.clear();
out.selectedFiles.clear();
out.filesChoosed.clear();
out.serverPath="";' #txt
Fs0 f10 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f10 342 124 36 24 23 -10 #rect
Fs0 f10 @|RichDialogProcessStepIcon #fIcon
Fs0 f11 expr out #txt
Fs0 f11 360 90 360 124 #arcP
Fs0 f12 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f12 347 179 26 26 14 0 #rect
Fs0 f12 @|RichDialogProcessEndIcon #fIcon
Fs0 f13 expr out #txt
Fs0 f13 360 148 360 179 #arcP
Fs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loop in the file list
and upload each one to the serverPath</name>
        <nameStyle>59,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f14 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData out;
' #txt
Fs0 f14 actionTable 'out=in;
' #txt
Fs0 f14 actionCode 'import ch.ivyteam.ivy.addons.filemanager.FileHandler;
if(!in.serverPath.trim().equalsIgnoreCase("")){
	for(java.io.File f: in.filesToUpload){
		FileHandler.upload(f,in.serverPath);
	}
}
' #txt
Fs0 f14 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f14 342 372 36 24 20 -11 #rect
Fs0 f14 @|RichDialogProcessStepIcon #fIcon
Fs0 f15 expr out #txt
Fs0 f15 360 338 360 372 #arcP
Fs0 f16 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f16 347 427 26 26 14 0 #rect
Fs0 f16 @|RichDialogProcessEndIcon #fIcon
Fs0 f17 expr out #txt
Fs0 f17 360 396 360 427 #arcP
Fs0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>prepareFilesToUpload</name>
        <nameStyle>20,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f18 guid 1218163E13187083 #txt
Fs0 f18 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f18 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData out;
' #txt
Fs0 f18 actionTable 'out=in;
' #txt
Fs0 f18 862 54 20 20 13 0 #rect
Fs0 f18 @|RichDialogProcessStartIcon #fIcon
Fs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>choose the files to upload</name>
        <nameStyle>26,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f19 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData out;
' #txt
Fs0 f19 actionTable 'out=in;
' #txt
Fs0 f19 actionCode 'import ch.ivyteam.ivy.addons.filemanager.FileUploadHandler;
FileUploadHandler fuh = new FileUploadHandler();

fuh.prepareFilesForUpload(panel,"_getChoosedFiles");' #txt
Fs0 f19 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f19 854 117 36 23 20 -2 #rect
Fs0 f19 @|RichDialogProcessStepIcon #fIcon
Fs0 f20 expr out #txt
Fs0 f20 872 74 872 116 #arcP
Fs0 f20 0 0.5000000000000001 0 0 #arcLabel
Fs0 f21 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f21 859 227 26 26 14 0 #rect
Fs0 f21 @|RichDialogProcessEndIcon #fIcon
Fs0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removesSelectedFile</name>
        <nameStyle>19,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f23 guid 1218168796D76D51 #txt
Fs0 f23 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f23 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData out;
' #txt
Fs0 f23 actionTable 'out=in;
' #txt
Fs0 f23 1118 54 20 20 13 0 #rect
Fs0 f23 @|RichDialogProcessStartIcon #fIcon
Fs0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removes each selected File</name>
        <nameStyle>26,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f24 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData out;
' #txt
Fs0 f24 actionTable 'out=in;
' #txt
Fs0 f24 actionCode 'List<java.io.File> files = new List<java.io.File>();
files.addAll(in.selectedFiles);
out.filesToUpload.removeAll(files);' #txt
Fs0 f24 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f24 1110 108 36 24 20 -2 #rect
Fs0 f24 @|RichDialogProcessStepIcon #fIcon
Fs0 f25 expr out #txt
Fs0 f25 1128 74 1128 108 #arcP
Fs0 f26 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f26 1115 171 26 26 14 0 #rect
Fs0 f26 @|RichDialogProcessEndIcon #fIcon
Fs0 f27 expr out #txt
Fs0 f27 1128 132 1128 171 #arcP
Fs0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fileSelectionChanged</name>
        <nameStyle>20,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f28 guid 1218169FE8D42789 #txt
Fs0 f28 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f28 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData out;
' #txt
Fs0 f28 actionTable 'out=in;
' #txt
Fs0 f28 862 334 20 20 13 0 #rect
Fs0 f28 @|RichDialogProcessStartIcon #fIcon
Fs0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Fs0 f29 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData out;
' #txt
Fs0 f29 actionTable 'out=in;
' #txt
Fs0 f29 actionCode 'in.selectedFiles.clear();
if(panel.#filesTable.getSelectedListEntries() != null && panel.filesTable.getSelectedListEntries() instanceof List<java.io.File>){
	in.selectedFiles.addAll(panel.filesTable.getSelectedListEntries() as List<java.io.File> );
}' #txt
Fs0 f29 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f29 854 380 36 24 20 -2 #rect
Fs0 f29 @|RichDialogProcessStepIcon #fIcon
Fs0 f30 expr out #txt
Fs0 f30 872 354 872 380 #arcP
Fs0 f31 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f31 859 451 26 26 14 0 #rect
Fs0 f31 @|RichDialogProcessEndIcon #fIcon
Fs0 f32 expr out #txt
Fs0 f32 872 404 872 451 #arcP
Fs0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_getChoosedFiles(List&lt;File&gt;)</name>
        <nameStyle>28,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f35 guid 12181FB02314C2AB #txt
Fs0 f35 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f35 method _getChoosedFiles(java.util.ArrayList) #txt
Fs0 f35 disableUIEvents false #txt
Fs0 f35 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.util.ArrayList choosedFiles> param = methodEvent.getInputArguments();
' #txt
Fs0 f35 inActionCode 'out.filesChoosed.clear();
if(param.#choosedFiles != null && param.choosedFiles instanceof java.util.ArrayList){
	for(Object o: param.choosedFiles){
		if(o instanceof java.io.File){
			out.filesChoosed.add(o as java.io.File);
		}
	}
	
}else{
	ivy.log.info(param.choosedFiles.getClass().getName());
}' #txt
Fs0 f35 outParameterDecl '<> result;
' #txt
Fs0 f35 614 310 20 20 13 0 #rect
Fs0 f35 @|RichDialogMethodStartIcon #fIcon
Fs0 f36 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Fs0 f36 actionDecl 'ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData out;
' #txt
Fs0 f36 actionTable 'out=in;
' #txt
Fs0 f36 actionCode 'for(java.io.File file: in.filesChoosed){
	if(!in.filesToUpload.contains(file)){
		in.filesToUpload.add(file);
	}
}' #txt
Fs0 f36 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f36 606 380 36 24 20 -2 #rect
Fs0 f36 @|RichDialogProcessStepIcon #fIcon
Fs0 f37 expr out #txt
Fs0 f37 624 330 624 380 #arcP
Fs0 f38 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f38 611 443 26 26 14 0 #rect
Fs0 f38 @|RichDialogProcessEndIcon #fIcon
Fs0 f39 expr out #txt
Fs0 f39 624 404 624 443 #arcP
Fs0 f22 expr out #txt
Fs0 f22 872 139 872 227 #arcP
Fs0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>uploadPreparedFiles(String)</name>
        <nameStyle>27,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f33 guid 12B2B6B3C348545D #txt
Fs0 f33 type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
Fs0 f33 method uploadPreparedFiles(String) #txt
Fs0 f33 disableUIEvents false #txt
Fs0 f33 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path> param = methodEvent.getInputArguments();
' #txt
Fs0 f33 inParameterMapAction 'out.serverPath=param.path;
' #txt
Fs0 f33 outParameterDecl '<> result;
' #txt
Fs0 f33 294 286 20 20 13 0 #rect
Fs0 f33 @|RichDialogMethodStartIcon #fIcon
Fs0 f34 expr out #txt
Fs0 f34 309 304 352 372 #arcP
>Proto Fs0 .rdData2UIAction 'panel.deleteButton.enabled=IF(in.selectedFiles.isEmpty(), false, true);
panel.filesTable.listData=in.filesToUpload;
' #txt
>Proto Fs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>250</swimlaneSize>
    <swimlaneSize>562</swimlaneSize>
    <swimlaneSize>497</swimlaneSize>
    <swimlaneColor>-6710785</swimlaneColor>
    <swimlaneColor>-26215</swimlaneColor>
    <swimlaneColor>-3342439</swimlaneColor>
</elementInfo>
' #txt
>Proto Fs0 .type ch.ivyteam.ivy.addons.filemanager.FileUploadPreparer.FileUploadPreparerData #txt
>Proto Fs0 .processKind RICH_DIALOG #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f0 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f3 mainOut f4 tail #connect
Fs0 f4 head f1 mainIn #connect
Fs0 f6 mainOut f9 tail #connect
Fs0 f9 head f8 mainIn #connect
Fs0 f5 mainOut f11 tail #connect
Fs0 f11 head f10 mainIn #connect
Fs0 f10 mainOut f13 tail #connect
Fs0 f13 head f12 mainIn #connect
Fs0 f7 mainOut f15 tail #connect
Fs0 f15 head f14 mainIn #connect
Fs0 f14 mainOut f17 tail #connect
Fs0 f17 head f16 mainIn #connect
Fs0 f18 mainOut f20 tail #connect
Fs0 f20 head f19 mainIn #connect
Fs0 f23 mainOut f25 tail #connect
Fs0 f25 head f24 mainIn #connect
Fs0 f24 mainOut f27 tail #connect
Fs0 f27 head f26 mainIn #connect
Fs0 f28 mainOut f30 tail #connect
Fs0 f30 head f29 mainIn #connect
Fs0 f29 mainOut f32 tail #connect
Fs0 f32 head f31 mainIn #connect
Fs0 f35 mainOut f37 tail #connect
Fs0 f37 head f36 mainIn #connect
Fs0 f36 mainOut f39 tail #connect
Fs0 f39 head f38 mainIn #connect
Fs0 f19 mainOut f22 tail #connect
Fs0 f22 head f21 mainIn #connect
Fs0 f33 mainOut f34 tail #connect
Fs0 f34 head f14 mainIn #connect
