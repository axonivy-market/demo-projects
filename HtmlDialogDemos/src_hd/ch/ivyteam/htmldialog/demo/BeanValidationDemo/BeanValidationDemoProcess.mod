[Ivy]
[>Created: Tue Jan 15 11:52:30 CET 2013]
13C3DAFB89BB3EB0 3.17 #module
>Proto >Proto Collection #zClass
Bs0 BeanValidationDemoProcess Big #zClass
Bs0 RD #cInfo
Bs0 #process
Bs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Bs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Bs0 @TextInP .resExport .resExport #zField
Bs0 @TextInP .type .type #zField
Bs0 @TextInP .processKind .processKind #zField
Bs0 @AnnotationInP-0n ai ai #zField
Bs0 @TextInP .xml .xml #zField
Bs0 @TextInP .responsibility .responsibility #zField
Bs0 @RichDialogInitStart f0 '' #zField
Bs0 @RichDialogProcessEnd f1 '' #zField
Bs0 @PushWFArc f2 '' #zField
Bs0 @RichDialogProcessStart f3 '' #zField
Bs0 @RichDialogProcessEnd f4 '' #zField
Bs0 @PushWFArc f5 '' #zField
Bs0 @RichDialogProcessStart f6 '' #zField
Bs0 @RichDialogEnd f9 '' #zField
Bs0 @PushWFArc f10 '' #zField
>Proto Bs0 Bs0 BeanValidationDemoProcess #zField
Bs0 f0 guid 13C3DAFB8BAE8F79 #txt
Bs0 f0 type ch.ivyteam.htmldialog.demo.BeanValidationDemo.BeanValidationDemoData #txt
Bs0 f0 method start() #txt
Bs0 f0 disableUIEvents true #txt
Bs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Bs0 f0 inParameterMapAction 'out.person.name="";
' #txt
Bs0 f0 outParameterDecl '<> result;
' #txt
Bs0 f0 embeddedRdInitializations '* ' #txt
Bs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Bs0 f0 86 54 20 20 13 0 #rect
Bs0 f0 @|RichDialogInitStartIcon #fIcon
Bs0 f1 type ch.ivyteam.htmldialog.demo.BeanValidationDemo.BeanValidationDemoData #txt
Bs0 f1 86 150 20 20 13 0 #rect
Bs0 f1 @|RichDialogProcessEndIcon #fIcon
Bs0 f2 expr out #txt
Bs0 f2 96 74 96 150 #arcP
Bs0 f3 guid 13C3DC3DE517B556 #txt
Bs0 f3 type ch.ivyteam.htmldialog.demo.BeanValidationDemo.BeanValidationDemoData #txt
Bs0 f3 actionDecl 'ch.ivyteam.htmldialog.demo.BeanValidationDemo.BeanValidationDemoData out;
' #txt
Bs0 f3 actionTable 'out=in;
' #txt
Bs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send</name>
    </language>
</elementInfo>
' #txt
Bs0 f3 86 222 20 20 13 0 #rect
Bs0 f3 @|RichDialogProcessStartIcon #fIcon
Bs0 f4 type ch.ivyteam.htmldialog.demo.BeanValidationDemo.BeanValidationDemoData #txt
Bs0 f4 86 318 20 20 13 0 #rect
Bs0 f4 @|RichDialogProcessEndIcon #fIcon
Bs0 f5 96 242 96 318 #arcP
Bs0 f6 guid 13C3DD5BB26CE572 #txt
Bs0 f6 type ch.ivyteam.htmldialog.demo.BeanValidationDemo.BeanValidationDemoData #txt
Bs0 f6 actionDecl 'ch.ivyteam.htmldialog.demo.BeanValidationDemo.BeanValidationDemoData out;
' #txt
Bs0 f6 actionTable 'out=in;
' #txt
Bs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Bs0 f6 182 222 20 20 13 0 #rect
Bs0 f6 @|RichDialogProcessStartIcon #fIcon
Bs0 f9 type ch.ivyteam.htmldialog.demo.BeanValidationDemo.BeanValidationDemoData #txt
Bs0 f9 guid 13C3DD6902FF1272 #txt
Bs0 f9 182 318 20 20 13 0 #rect
Bs0 f9 @|RichDialogEndIcon #fIcon
Bs0 f10 expr out #txt
Bs0 f10 192 242 192 318 #arcP
>Proto Bs0 .type ch.ivyteam.htmldialog.demo.BeanValidationDemo.BeanValidationDemoData #txt
>Proto Bs0 .processKind RICH_DIALOG #txt
>Proto Bs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Initialisation
</swimlaneLabel>
        <swimlaneLabel>Events
</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Bs0 -8 -8 16 16 16 26 #rect
>Proto Bs0 '' #fIcon
Bs0 f0 mainOut f2 tail #connect
Bs0 f2 head f1 mainIn #connect
Bs0 f3 mainOut f5 tail #connect
Bs0 f5 head f4 mainIn #connect
Bs0 f6 mainOut f10 tail #connect
Bs0 f10 head f9 mainIn #connect
