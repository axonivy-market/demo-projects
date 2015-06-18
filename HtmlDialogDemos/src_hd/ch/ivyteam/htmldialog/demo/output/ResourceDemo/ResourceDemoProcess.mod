[Ivy]
[>Created: Thu Jun 18 11:54:32 CEST 2015]
13A0168D09848672 3.17 #module
>Proto >Proto Collection #zClass
Rs0 ResourceDemoProcess Big #zClass
Rs0 RD #cInfo
Rs0 #process
Rs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Rs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Rs0 @TextInP .resExport .resExport #zField
Rs0 @TextInP .type .type #zField
Rs0 @TextInP .processKind .processKind #zField
Rs0 @AnnotationInP-0n ai ai #zField
Rs0 @TextInP .xml .xml #zField
Rs0 @TextInP .responsibility .responsibility #zField
Rs0 @RichDialogInitStart f0 '' #zField
Rs0 @RichDialogProcessEnd f1 '' #zField
Rs0 @PushWFArc f2 '' #zField
Rs0 @RichDialogMethodStart f3 '' #zField
Rs0 @RichDialogProcessEnd f4 '' #zField
Rs0 @PushWFArc f5 '' #zField
>Proto Rs0 Rs0 ResourceDemoProcess #zField
Rs0 f0 guid 13A0168D0B4F1482 #txt
Rs0 f0 type ch.ivyteam.htmldialog.demo.output.ResourceDemo.ResourceDemoData #txt
Rs0 f0 method start() #txt
Rs0 f0 disableUIEvents true #txt
Rs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f0 outParameterDecl '<> result;
' #txt
Rs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Rs0 f0 83 51 26 26 -16 12 #rect
Rs0 f0 @|RichDialogInitStartIcon #fIcon
Rs0 f0 -1|-1|-9671572 #nodeStyle
Rs0 f1 type ch.ivyteam.htmldialog.demo.output.ResourceDemo.ResourceDemoData #txt
Rs0 f1 211 51 26 26 0 12 #rect
Rs0 f1 @|RichDialogProcessEndIcon #fIcon
Rs0 f1 -1|-1|-9671572 #nodeStyle
Rs0 f2 expr out #txt
Rs0 f2 109 64 211 64 #arcP
Rs0 f3 guid 14DFBDBFE176800C #txt
Rs0 f3 type ch.ivyteam.htmldialog.demo.output.ResourceDemo.ResourceDemoData #txt
Rs0 f3 method getStreamedImage() #txt
Rs0 f3 disableUIEvents false #txt
Rs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Rs0 f3 outParameterDecl '<org.primefaces.model.StreamedContent image> result;
' #txt
Rs0 f3 outParameterMapAction 'result.image=ch.ivyteam.htmldialog.demo.output.ImageGenerator.generateImage("Streamed");
' #txt
Rs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getStreamedImage()</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rs0 f3 83 147 26 26 -65 15 #rect
Rs0 f3 @|RichDialogMethodStartIcon #fIcon
Rs0 f4 type ch.ivyteam.htmldialog.demo.output.ResourceDemo.ResourceDemoData #txt
Rs0 f4 211 147 26 26 0 12 #rect
Rs0 f4 @|RichDialogProcessEndIcon #fIcon
Rs0 f5 expr out #txt
Rs0 f5 109 160 211 160 #arcP
>Proto Rs0 .type ch.ivyteam.htmldialog.demo.output.ResourceDemo.ResourceDemoData #txt
>Proto Rs0 .processKind HTML_DIALOG #txt
>Proto Rs0 -8 -8 16 16 16 26 #rect
>Proto Rs0 '' #fIcon
Rs0 f0 mainOut f2 tail #connect
Rs0 f2 head f1 mainIn #connect
Rs0 f3 mainOut f5 tail #connect
Rs0 f5 head f4 mainIn #connect
