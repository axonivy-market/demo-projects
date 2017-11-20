[Ivy]
15FB50542D237D38 3.20 #module
>Proto >Proto Collection #zClass
Ls0 LazyLoadedModalDialogProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ls0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ls0 @TextInP .resExport .resExport #zField
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @RichDialogInitStart f0 '' #zField
Ls0 @RichDialogProcessEnd f1 '' #zField
Ls0 @PushWFArc f2 '' #zField
Ls0 @RichDialogProcessStart f3 '' #zField
Ls0 @RichDialogEnd f4 '' #zField
Ls0 @PushWFArc f5 '' #zField
Ls0 @RichDialogMethodStart f6 '' #zField
Ls0 @PushWFArc f8 '' #zField
Ls0 @RichDialogProcessEnd f7 '' #zField
>Proto Ls0 Ls0 LazyLoadedModalDialogProcess #zField
Ls0 f0 guid 15FB50542FA41B51 #txt
Ls0 f0 type ch.ivyteam.htmldialog.demo.component.LazyLoadedModalDialog.LazyLoadedModalDialogData #txt
Ls0 f0 method start() #txt
Ls0 f0 disableUIEvents true #txt
Ls0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f0 outParameterDecl '<> result;
' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ls0 f0 83 51 26 26 -20 15 #rect
Ls0 f0 @|RichDialogInitStartIcon #fIcon
Ls0 f1 type ch.ivyteam.htmldialog.demo.component.LazyLoadedModalDialog.LazyLoadedModalDialogData #txt
Ls0 f1 211 51 26 26 0 12 #rect
Ls0 f1 @|RichDialogProcessEndIcon #fIcon
Ls0 f2 expr out #txt
Ls0 f2 109 64 211 64 #arcP
Ls0 f3 guid 15FB505430A95F65 #txt
Ls0 f3 type ch.ivyteam.htmldialog.demo.component.LazyLoadedModalDialog.LazyLoadedModalDialogData #txt
Ls0 f3 actionDecl 'ch.ivyteam.htmldialog.demo.component.LazyLoadedModalDialog.LazyLoadedModalDialogData out;
' #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ls0 f3 83 147 26 26 -16 12 #rect
Ls0 f3 @|RichDialogProcessStartIcon #fIcon
Ls0 f4 type ch.ivyteam.htmldialog.demo.component.LazyLoadedModalDialog.LazyLoadedModalDialogData #txt
Ls0 f4 guid 15FB505430A60E45 #txt
Ls0 f4 211 147 26 26 0 12 #rect
Ls0 f4 @|RichDialogEndIcon #fIcon
Ls0 f5 expr out #txt
Ls0 f5 109 160 211 160 #arcP
Ls0 f6 guid 15FB5D7D51549A5F #txt
Ls0 f6 type ch.ivyteam.htmldialog.demo.component.LazyLoadedModalDialog.LazyLoadedModalDialogData #txt
Ls0 f6 method showAddress(Boolean) #txt
Ls0 f6 disableUIEvents false #txt
Ls0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Boolean show> param = methodEvent.getInputArguments();
' #txt
Ls0 f6 inParameterMapAction 'out.showAddress=param.show;
' #txt
Ls0 f6 outParameterDecl '<> result;
' #txt
Ls0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showAddress</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f6 83 243 26 26 -41 15 #rect
Ls0 f6 @|RichDialogMethodStartIcon #fIcon
Ls0 f8 expr out #txt
Ls0 f8 109 256 211 256 #arcP
Ls0 f7 type ch.ivyteam.htmldialog.demo.component.LazyLoadedModalDialog.LazyLoadedModalDialogData #txt
Ls0 f7 211 243 26 26 0 12 #rect
Ls0 f7 @|RichDialogProcessEndIcon #fIcon
>Proto Ls0 .type ch.ivyteam.htmldialog.demo.component.LazyLoadedModalDialog.LazyLoadedModalDialogData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f0 mainOut f2 tail #connect
Ls0 f2 head f1 mainIn #connect
Ls0 f3 mainOut f5 tail #connect
Ls0 f5 head f4 mainIn #connect
Ls0 f6 mainOut f8 tail #connect
Ls0 f8 head f7 mainIn #connect
