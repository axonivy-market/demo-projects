[Ivy]
[>Created: Fri Sep 26 16:20:37 CEST 2008]
11BBB6B788730578 3.10 #module
>Proto >Proto Collection #zClass
Us0 UploadProcess Big #zClass
Us0 RD #cInfo
Us0 #process
Us0 @TextInP .xml .xml #zField
Us0 @TextInP .responsibility .responsibility #zField
Us0 @MessageFlowInP-0n messageIn messageIn #zField
Us0 @MessageFlowOutP-0n messageOut messageOut #zField
Us0 @TextInP .resExport .resExport #zField
Us0 @TextInP .type .type #zField
Us0 @TextInP .processKind .processKind #zField
Us0 @AnnotationInP-0n ai ai #zField
Us0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Us0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Us0 @RichDialogInitStart f0 '' #zField
Us0 f0 guid 11BBB264FF9749BA #txt
Us0 f0 type ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData #txt
Us0 f0 method start() #txt
Us0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Us0 f0 inParameterMapAction 'out.message="Nothing uploaded yet.";
out.statusIconUri="/ch/ivyteam/ivy/demo/icons/normal/unknown";
' #txt
Us0 f0 outParameterDecl '<> result;
' #txt
Us0 f0 embeddedRdInitializations '* ' #txt
Us0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f0 30 102 20 20 13 0 #rect
Us0 f0 @|RichDialogInitStartIcon #fIcon
Us0 @RichDialogProcessEnd f1 '' #zField
Us0 f1 type ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData #txt
Us0 f1 27 195 26 26 14 0 #rect
Us0 f1 @|RichDialogProcessEndIcon #fIcon
Us0 @PushWFArc f2 '' #zField
Us0 f2 expr out #txt
Us0 f2 40 122 40 195 #arcP
Us0 @RichDialogProcessStart f3 '' #zField
Us0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>upload</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f3 guid 11BBB265038EBA26 #txt
Us0 f3 type ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData #txt
Us0 f3 actionDecl 'ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData out;
' #txt
Us0 f3 actionTable 'out=in;
' #txt
Us0 f3 actionCode 'panel.readImageFromClient(
panel.storeFileCheckBox.selected,
panel.useFilterCheckBox.selected);' #txt
Us0 f3 126 102 20 20 13 0 #rect
Us0 f3 @|RichDialogProcessStartIcon #fIcon
Us0 @RichDialogProcessEnd f4 '' #zField
Us0 f4 type ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData #txt
Us0 f4 123 195 26 26 14 0 #rect
Us0 f4 @|RichDialogProcessEndIcon #fIcon
Us0 @RichDialogMethodStart f8 '' #zField
Us0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fileUploaded(File,String,Boolean)</name>
        <nameStyle>33,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f8 guid 11BBB26503848BC1 #txt
Us0 f8 type ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData #txt
Us0 f8 method fileUploaded(Boolean,File,String) #txt
Us0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Boolean success,ch.ivyteam.ivy.scripting.objects.File file,java.lang.String msg> param = methodEvent.getInputArguments();
' #txt
Us0 f8 inParameterMapAction 'out.message=param.msg;
out.uploadResult=param.success;
out.uploadedTempFile=param.file;
' #txt
Us0 f8 inActionCode 'out.statusIconUri = param.success ? "/ch/ivyteam/ivy/demo/icons/normal/ok" : "/ch/ivyteam/ivy/demo/icons/normal/not_ok";' #txt
Us0 f8 outParameterDecl '<> result;
' #txt
Us0 f8 214 102 20 20 17 -7 #rect
Us0 f8 @|RichDialogMethodStartIcon #fIcon
Us0 @RichDialogProcessEnd f9 '' #zField
Us0 f9 type ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData #txt
Us0 f9 211 195 26 26 14 0 #rect
Us0 f9 @|RichDialogProcessEndIcon #fIcon
Us0 @PushWFArc f5 '' #zField
Us0 f5 expr out #txt
Us0 f5 136 122 136 195 #arcP
Us0 @RichDialogProcessStep f6 '' #zField
Us0 f6 actionDecl 'ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData out;
' #txt
Us0 f6 actionTable 'out=in;
' #txt
Us0 f6 actionCode 'import com.ulcjava.base.application.util.ULCIcon;
if (in.uploadResult)
{
	// upload was successful
	ULCIcon icon = new ULCIcon(in.uploadedTempFile.readBinary());
	panel.showLabel.text = null;
	panel.showLabel.setIcon(icon);
}
else
{
	panel.showLabel.setIcon(null);
}' #txt
Us0 f6 type ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData #txt
Us0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show file on label</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f6 206 148 36 24 20 -2 #rect
Us0 f6 @|RichDialogProcessStepIcon #fIcon
Us0 @PushWFArc f7 '' #zField
Us0 f7 expr out #txt
Us0 f7 224 122 224 148 #arcP
Us0 @PushWFArc f10 '' #zField
Us0 f10 expr out #txt
Us0 f10 224 172 224 195 #arcP
Us0 @InfoButton f11 '' #zField
Us0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Callback with File</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f11 179 43 106 26 -48 -8 #rect
Us0 f11 @|IBIcon #fIcon
Us0 f11 -657956|-1|-16777216 #nodeStyle
Us0 @AnnotationArc f12 '' #zField
Us0 f12 232 69 217 104 #arcP
Us0 @RichDialogMethodStart f13 '' #zField
Us0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>iconCreated(Boolean,ULCIcon,String)</name>
        <nameStyle>35,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f13 guid 11BBB26508623D99 #txt
Us0 f13 type ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData #txt
Us0 f13 method iconCreated(Boolean,com.ulcjava.base.application.util.ULCIcon,String) #txt
Us0 f13 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Boolean success,com.ulcjava.base.application.util.ULCIcon icon,java.lang.String msg> param = methodEvent.getInputArguments();
' #txt
Us0 f13 inParameterMapAction 'out.createdIcon=param.icon;
out.message=param.msg;
out.uploadResult=param.success;
' #txt
Us0 f13 inActionCode 'out.statusIconUri = param.success ? "/ch/ivyteam/ivy/demo/icons/normal/ok" : "/ch/ivyteam/ivy/demo/icons/normal/not_ok";' #txt
Us0 f13 outParameterDecl '<> result;
' #txt
Us0 f13 214 294 20 20 19 -4 #rect
Us0 f13 @|RichDialogMethodStartIcon #fIcon
Us0 @RichDialogProcessEnd f14 '' #zField
Us0 f14 type ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData #txt
Us0 f14 211 387 26 26 14 0 #rect
Us0 f14 @|RichDialogProcessEndIcon #fIcon
Us0 @RichDialogProcessStep f15 '' #zField
Us0 f15 actionDecl 'ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData out;
' #txt
Us0 f15 actionTable 'out=in;
' #txt
Us0 f15 actionCode 'import com.ulcjava.base.application.util.ULCIcon;
panel.showLabel.text = null;
panel.showLabel.setIcon(in.uploadResult ? in.createdIcon : null);
' #txt
Us0 f15 type ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData #txt
Us0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set icon on label</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f15 206 340 36 24 20 -2 #rect
Us0 f15 @|RichDialogProcessStepIcon #fIcon
Us0 @InfoButton f16 '' #zField
Us0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Callback with Icon</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f16 178 235 109 26 -49 -8 #rect
Us0 f16 @|IBIcon #fIcon
Us0 f16 -657956|-1|-16777216 #nodeStyle
Us0 @PushWFArc f17 '' #zField
Us0 f17 expr out #txt
Us0 f17 224 314 224 340 #arcP
Us0 @PushWFArc f18 '' #zField
Us0 f18 expr out #txt
Us0 f18 224 364 224 387 #arcP
Us0 @AnnotationArc f19 '' #zField
Us0 f19 231 261 217 296 #arcP
Us0 f0 mainOut f2 tail #connect
Us0 f2 head f1 mainIn #connect
Us0 f3 mainOut f5 tail #connect
Us0 f5 head f4 mainIn #connect
Us0 f8 mainOut f7 tail #connect
Us0 f7 head f6 mainIn #connect
Us0 f6 mainOut f10 tail #connect
Us0 f10 head f9 mainIn #connect
Us0 f11 ao f12 tail #connect
Us0 f12 head f8 @CG|ai #connect
Us0 f13 mainOut f17 tail #connect
Us0 f17 head f15 mainIn #connect
Us0 f15 mainOut f18 tail #connect
Us0 f18 head f14 mainIn #connect
Us0 f16 ao f19 tail #connect
Us0 f19 head f13 @CG|ai #connect
>Proto Us0 Us0 UploadProcess #zField
>Proto Us0 .type ch.ivyteam.ivy.demo.upload.ImageUpload.ImageUploadData #txt
>Proto Us0 .processKind RICH_DIALOG #txt
>Proto Us0 .rdData2UIAction 'panel.statusLabel.iconUri=in.statusIconUri;
panel.statusLabel.text=in.message;
' #txt
>Proto Us0 -8 -8 16 16 16 26 #rect
>Proto Us0 '' #fIcon
