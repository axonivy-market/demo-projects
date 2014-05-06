[Ivy]
[>Created: Tue May 06 12:21:24 CEST 2014]
13D440F293AA05F8 3.17 #module
>Proto >Proto Collection #zClass
Fs0 FileUploadSimpleModeDemoProcess Big #zClass
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
Fs0 @RichDialogProcessStart f11 '' #zField
Fs0 @RichDialogProcessEnd f12 '' #zField
Fs0 @GridStep f8 '' #zField
Fs0 @PushWFArc f9 '' #zField
Fs0 @PushWFArc f10 '' #zField
>Proto Fs0 Fs0 FileUploadSimpleModeDemoProcess #zField
Fs0 f0 guid 13CF812673B64819 #txt
Fs0 f0 type ch.ivyteam.htmldialog.demo.input.FileUploadSimpleModeDemo.FileUploadSimpleModeDemoData #txt
Fs0 f0 method start() #txt
Fs0 f0 disableUIEvents true #txt
Fs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Fs0 f0 outParameterDecl '<> result;
' #txt
Fs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f0 83 51 26 26 -16 12 #rect
Fs0 f0 @|RichDialogInitStartIcon #fIcon
Fs0 f0 -1|-1|-9671572 #nodeStyle
Fs0 f1 type ch.ivyteam.htmldialog.demo.input.FileUploadSimpleModeDemo.FileUploadSimpleModeDemoData #txt
Fs0 f1 211 51 26 26 0 12 #rect
Fs0 f1 @|RichDialogProcessEndIcon #fIcon
Fs0 f1 -1|-1|-9671572 #nodeStyle
Fs0 f2 expr out #txt
Fs0 f2 109 64 211 64 #arcP
Fs0 f11 guid 13D016515EC7C69A #txt
Fs0 f11 type ch.ivyteam.htmldialog.demo.input.FileUploadSimpleModeDemo.FileUploadSimpleModeDemoData #txt
Fs0 f11 actionDecl 'ch.ivyteam.htmldialog.demo.input.FileUploadSimpleModeDemo.FileUploadSimpleModeDemoData out;
' #txt
Fs0 f11 actionTable 'out=in;
' #txt
Fs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showContent</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f11 83 147 26 26 -36 12 #rect
Fs0 f11 @|RichDialogProcessStartIcon #fIcon
Fs0 f11 -1|-1|-9671572 #nodeStyle
Fs0 f12 type ch.ivyteam.htmldialog.demo.input.FileUploadSimpleModeDemo.FileUploadSimpleModeDemoData #txt
Fs0 f12 403 147 26 26 0 12 #rect
Fs0 f12 @|RichDialogProcessEndIcon #fIcon
Fs0 f12 -1|-1|-9671572 #nodeStyle
Fs0 f8 actionDecl 'ch.ivyteam.htmldialog.demo.input.FileUploadSimpleModeDemo.FileUploadSimpleModeDemoData out;
' #txt
Fs0 f8 actionTable 'out=in;
' #txt
Fs0 f8 actionCode 'in.textContent = in.ivyFile.read();
in.fileName = in.ivyFile.getName();' #txt
Fs0 f8 type ch.ivyteam.htmldialog.demo.input.FileUploadSimpleModeDemo.FileUploadSimpleModeDemoData #txt
Fs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set file content and name</name>
        <nameStyle>25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fs0 f8 184 138 144 44 -69 -8 #rect
Fs0 f8 @|StepIcon #fIcon
Fs0 f8 -1|-1|-9671572 #nodeStyle
Fs0 f9 expr out #txt
Fs0 f9 109 160 184 160 #arcP
Fs0 f10 expr out #txt
Fs0 f10 328 160 403 160 #arcP
>Proto Fs0 .type ch.ivyteam.htmldialog.demo.input.FileUploadSimpleModeDemo.FileUploadSimpleModeDemoData #txt
>Proto Fs0 .processKind HTML_DIALOG #txt
>Proto Fs0 -8 -8 16 16 16 26 #rect
>Proto Fs0 '' #fIcon
Fs0 f0 mainOut f2 tail #connect
Fs0 f2 head f1 mainIn #connect
Fs0 f11 mainOut f9 tail #connect
Fs0 f9 head f8 mainIn #connect
Fs0 f8 mainOut f10 tail #connect
Fs0 f10 head f12 mainIn #connect
