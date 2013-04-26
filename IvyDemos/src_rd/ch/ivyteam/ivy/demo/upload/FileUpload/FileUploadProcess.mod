[Ivy]
[>Created: Fri Mar 01 14:15:57 ICT 2013]
13D1A0CFEC0DDE67 3.17 #module
>Proto >Proto Collection #zClass
Fs0 FileUploadProcess Big #zClass
Fs0 RD #cInfo
Fs0 #process
Fs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Fs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Fs0 @TextInP .resExport .resExport #zField
Fs0 @TextInP .type .type #zField
Fs0 @TextInP .processKind .processKind #zField
Fs0 @AnnotationInP-0n ai ai #zField
Fs0 @TextInP .xml .xml #zField
Fs0 @TextInP .responsibility .responsibility #zField
Fs0 @RichDialogInitStart f0 '' #zField
Fs0 @RichDialogProcessEnd f1 '' #zField
Fs0 @PushWFArc f2 '' #zField
Fs0 @RichDialogProcessStart f3 '' #zField
Fs0 @RichDialogProcessEnd f4 '' #zField
Fs0 @RichDialogMethodStart f6 '' #zField
Fs0 @RichDialogProcessEnd f7 '' #zField
Fs0 @PushWFArc f8 '' #zField
Fs0 @PushWFArc f11 '' #zField
Fs0 @RichDialogMethodStart f5 '' #zField
Fs0 @RichDialogProcessEnd f9 '' #zField
Fs0 @RichDialogProcessStep f12 '' #zField
Fs0 @PushWFArc f13 '' #zField
Fs0 @PushWFArc f10 '' #zField
Fs0 @RichDialogMethodStart f14 '' #zField
Fs0 @RichDialogProcessEnd f15 '' #zField
Fs0 @RichDialogProcessStep f17 '' #zField
Fs0 @PushWFArc f18 '' #zField
Fs0 @Alternative f19 '' #zField
Fs0 @PushWFArc f20 '' #zField
Fs0 @RichDialogProcessStep f21 '' #zField
Fs0 @PushWFArc f23 '' #zField
Fs0 @Alternative f24 '' #zField
Fs0 @RichDialogProcessStep f26 '' #zField
Fs0 @PushWFArc f27 '' #zField
Fs0 @PushWFArc f16 '' #zField
Fs0 @RichDialogProcessStep f28 '' #zField
Fs0 @PushWFArc f29 '' #zField
Fs0 @PushWFArc f30 '' #zField
Fs0 @PushWFArc f25 '' #zField
Fs0 @PushWFArc f22 '' #zField
Fs0 @RichDialogProcessStart f31 '' #zField
Fs0 @RichDialogProcessEnd f32 '' #zField
Fs0 @PushWFArc f33 '' #zField
>Proto Fs0 Fs0 FileUploadProcess #zField
Fs0 f0 guid 13D1A0CFEE346EF6 #txt
Fs0 f0 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f0 method start() #txt
Fs0 f0 disableUIEvents true #txt
Fs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f0 outParameterDecl '<> result;
' #txt
Fs0 f0 embeddedRdInitializations '* ' #txt
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f0 38 54 20 20 10 -21 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 f1 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f1 38 150 20 20 13 0 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 f2 expr out #txt
Fs0 f2 48 74 48 150 #arcP
Fs0 f3 guid 13D1AD8942B76F2E #txt
Fs0 f3 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f3 actionDecl 'ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData out;
' #txt
Fs0 f3 actionTable 'out=in;
' #txt
Fs0 f3 actionCode 'panel.chooseClientFile();
' #txt
Fs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>browseToFile</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f3 230 62 20 20 -2 -31 #rect
Fs0 f3 @|RichDialogProcessStartIcon #fIcon
Fs0 f4 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f4 230 142 20 20 13 0 #rect
Fs0 f4 @|RichDialogProcessEndIcon #fIcon
Fs0 f6 guid 13D1EAE6B77A651F #txt
Fs0 f6 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f6 method updateChoosedFilePath(String) #txt
Fs0 f6 disableUIEvents false #txt
Fs0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path> param = methodEvent.getInputArguments();
' #txt
Fs0 f6 inActionCode 'out.folderPath = param.path;
ivy.log.info(param.path);' #txt
Fs0 f6 outParameterDecl '<> result;
' #txt
Fs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateChoosedFilePath()</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f6 470 54 20 20 13 0 #rect
Fs0 f6 @|RichDialogMethodStartIcon #fIcon
Fs0 f7 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f7 470 150 20 20 13 0 #rect
Fs0 f7 @|RichDialogProcessEndIcon #fIcon
Fs0 f8 expr out #txt
Fs0 f8 480 74 480 150 #arcP
Fs0 f11 expr out #txt
Fs0 f11 240 82 240 142 #arcP
Fs0 f5 guid 13D1EC0A21D39A69 #txt
Fs0 f5 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f5 method uploadFile(String) #txt
Fs0 f5 disableUIEvents false #txt
Fs0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String path> param = methodEvent.getInputArguments();
' #txt
Fs0 f5 inActionCode 'out.folderPath = param.path;' #txt
Fs0 f5 outParameterDecl '<> result;
' #txt
Fs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>uploadFile()</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f5 470 222 20 20 13 0 #rect
Fs0 f5 @|RichDialogMethodStartIcon #fIcon
Fs0 f9 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f9 470 334 20 20 13 0 #rect
Fs0 f9 @|RichDialogProcessEndIcon #fIcon
Fs0 f12 actionDecl 'ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData out;
' #txt
Fs0 f12 actionTable 'out=in;
' #txt
Fs0 f12 actionCode 'import ch.ivyteam.ivy.demo.upload.FileUploadManager;

panel.statusTextArea.setText("");
panel.cancelBttn.setEnabled(true);

in.uploadUtil = new FileUploadManager(in.folderPath);
in.uploadUtil.upload();

panel.statusLabel.setText("Uploading...");

panel.startPollingTimer();' #txt
Fs0 f12 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f12 462 276 36 24 20 -2 #rect
Fs0 f12 @|RichDialogProcessStepIcon #fIcon
Fs0 f13 expr out #txt
Fs0 f13 480 242 480 276 #arcP
Fs0 f10 expr out #txt
Fs0 f10 480 300 480 334 #arcP
Fs0 f14 guid 13D1EEFE8AE3902B #txt
Fs0 f14 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f14 method timerForUploading() #txt
Fs0 f14 disableUIEvents false #txt
Fs0 f14 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f14 outParameterDecl '<> result;
' #txt
Fs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>timerForUploading</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f14 750 70 20 20 13 0 #rect
Fs0 f14 @|RichDialogMethodStartIcon #fIcon
Fs0 f15 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f15 750 470 20 20 13 0 #rect
Fs0 f15 @|RichDialogProcessEndIcon #fIcon
Fs0 f17 actionDecl 'ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData out;
' #txt
Fs0 f17 actionTable 'out=in;
' #txt
Fs0 f17 actionCode panel.statusLabel.setText(in.uploadUtil.getStatus()); #txt
Fs0 f17 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Update status</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f17 742 140 36 24 23 -21 #rect
Fs0 f17 @|RichDialogProcessStepIcon #fIcon
Fs0 f18 expr out #txt
Fs0 f18 760 90 760 140 #arcP
Fs0 f19 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is Failed</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f19 746 194 28 28 19 -17 #rect
Fs0 f19 @|AlternativeIcon #fIcon
Fs0 f20 expr out #txt
Fs0 f20 760 164 760 194 #arcP
Fs0 f21 actionDecl 'ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData out;
' #txt
Fs0 f21 actionTable 'out=in;
' #txt
Fs0 f21 actionCode 'panel.stopPollingTimer();
panel.statusLabel.setText("Upload failed");' #txt
Fs0 f21 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Stop timer
Update Status</name>
        <nameStyle>11,7
13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f21 630 196 36 24 -61 -52 #rect
Fs0 f21 @|RichDialogProcessStepIcon #fIcon
Fs0 f23 expr out #txt
Fs0 f23 648 220 750 480 #arcP
Fs0 f23 1 648 480 #addKink
Fs0 f23 0 0.7085421627427049 0 0 #arcLabel
Fs0 f24 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is Uploaded</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f24 746 282 28 28 8 -20 #rect
Fs0 f24 @|AlternativeIcon #fIcon
Fs0 f26 actionDecl 'ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData out;
' #txt
Fs0 f26 actionTable 'out=in;
' #txt
Fs0 f26 actionCode panel.restartPollingTimer(); #txt
Fs0 f26 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>restart timer</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f26 742 372 36 24 15 -30 #rect
Fs0 f26 @|RichDialogProcessStepIcon #fIcon
Fs0 f27 expr in #txt
Fs0 f27 outCond in.uploadUtil.isRunning() #txt
Fs0 f27 760 310 760 372 #arcP
Fs0 f16 expr out #txt
Fs0 f16 760 396 760 470 #arcP
Fs0 f28 actionDecl 'ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData out;
' #txt
Fs0 f28 actionTable 'out=in;
' #txt
Fs0 f28 actionCode 'panel.stopPollingTimer();
//panel.statusLabel.setText(in.uploadUtil.getStatus());
if(in.uploadUtil.isCancel() == false)
{
	panel.statusTextArea.setText("File uploaded to: " + in.uploadUtil.getUploadFolderPathOnServer() + " on server.");
}

panel.cancelBttn.setEnabled(false);
' #txt
Fs0 f28 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Update status</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f28 862 284 36 24 20 -2 #rect
Fs0 f28 @|RichDialogProcessStepIcon #fIcon
Fs0 f29 expr in #txt
Fs0 f29 774 296 862 296 #arcP
Fs0 f30 expr out #txt
Fs0 f30 880 308 770 480 #arcP
Fs0 f30 1 880 480 #addKink
Fs0 f30 0 0.7097071526852877 0 0 #arcLabel
Fs0 f25 expr in #txt
Fs0 f25 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>No</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f25 760 222 760 282 #arcP
Fs0 f25 0 0.4 12 0 #arcLabel
Fs0 f22 expr in #txt
Fs0 f22 outCond in.uploadUtil.isFailed() #txt
Fs0 f22 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f22 746 208 666 208 #arcP
Fs0 f22 0 0.475 0 -13 #arcLabel
Fs0 f31 guid 13D1FA4B3C551483 #txt
Fs0 f31 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f31 actionDecl 'ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData out;
' #txt
Fs0 f31 actionTable 'out=in;
' #txt
Fs0 f31 actionCode 'if(in.uploadUtil != null)
{
	in.uploadUtil.abort();
	panel.statusLabel.setText("Cancelling...");
}' #txt
Fs0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancelClicked</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f31 342 62 20 20 -11 -31 #rect
Fs0 f31 @|RichDialogProcessStartIcon #fIcon
Fs0 f32 type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
Fs0 f32 342 142 20 20 13 0 #rect
Fs0 f32 @|RichDialogProcessEndIcon #fIcon
Fs0 f33 expr out #txt
Fs0 f33 352 82 352 142 #arcP
>Proto Fs0 .type ch.ivyteam.ivy.demo.upload.FileUpload.FileUploadData #txt
>Proto Fs0 .processKind RICH_DIALOG #txt
>Proto Fs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>START</swimlaneLabel>
        <swimlaneLabel>EVENT</swimlaneLabel>
        <swimlaneLabel>METHOD</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>248</swimlaneSize>
    <swimlaneSize>736</swimlaneSize>
    <swimlaneColor>-13369345</swimlaneColor>
    <swimlaneColor>-39271</swimlaneColor>
    <swimlaneColor>-10066330</swimlaneColor>
</elementInfo>
' #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f0 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f6 mainOut f8 tail #connect
Fs0 f8 head f7 mainIn #connect
Fs0 f3 mainOut f11 tail #connect
Fs0 f11 head f4 mainIn #connect
Fs0 f5 mainOut f13 tail #connect
Fs0 f13 head f12 mainIn #connect
Fs0 f12 mainOut f10 tail #connect
Fs0 f10 head f9 mainIn #connect
Fs0 f14 mainOut f18 tail #connect
Fs0 f18 head f17 mainIn #connect
Fs0 f17 mainOut f20 tail #connect
Fs0 f20 head f19 in #connect
Fs0 f21 mainOut f23 tail #connect
Fs0 f23 head f15 mainIn #connect
Fs0 f24 out f27 tail #connect
Fs0 f27 head f26 mainIn #connect
Fs0 f26 mainOut f16 tail #connect
Fs0 f16 head f15 mainIn #connect
Fs0 f24 out f29 tail #connect
Fs0 f29 head f28 mainIn #connect
Fs0 f28 mainOut f30 tail #connect
Fs0 f30 head f15 mainIn #connect
Fs0 f25 head f24 in #connect
Fs0 f19 out f22 tail #connect
Fs0 f22 head f21 mainIn #connect
Fs0 f19 out f25 tail #connect
Fs0 f31 mainOut f33 tail #connect
Fs0 f33 head f32 mainIn #connect
