[Ivy]
[>Created: Tue Jan 22 18:40:43 CET 2013]
139E3EF5C6DBC97F 3.17 #module
>Proto >Proto Collection #zClass
Ps0 PartialUpdateDemoProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @RichDialogProcessStart f3 '' #zField
Ps0 @RichDialogProcessEnd f4 '' #zField
Ps0 @RichDialogProcessStep f5 '' #zField
Ps0 @PushWFArc f6 '' #zField
Ps0 @PushWFArc f7 '' #zField
>Proto Ps0 Ps0 PartialUpdateDemoProcess #zField
Ps0 f0 guid 0139E3EF5C8EF75C #txt
Ps0 f0 type ch.ivyteam.htmldialog.demo.PartialUpdateDemo.PartialUpdateDemoData #txt
Ps0 f0 method start() #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 inParameterMapAction 'out.counter=0;
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 embeddedRdInitializations '* ' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f0 86 54 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ch.ivyteam.htmldialog.demo.PartialUpdateDemo.PartialUpdateDemoData #txt
Ps0 f1 86 150 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f2 expr out #txt
Ps0 f2 96 74 96 150 #arcP
Ps0 f3 guid 139E3F86899BF38A #txt
Ps0 f3 type ch.ivyteam.htmldialog.demo.PartialUpdateDemo.PartialUpdateDemoData #txt
Ps0 f3 actionDecl 'ch.ivyteam.htmldialog.demo.PartialUpdateDemo.PartialUpdateDemoData out;
' #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>increaseCounter</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 86 246 20 20 12 -7 #rect
Ps0 f3 @|RichDialogProcessStartIcon #fIcon
Ps0 f4 type ch.ivyteam.htmldialog.demo.PartialUpdateDemo.PartialUpdateDemoData #txt
Ps0 f4 86 374 20 20 13 0 #rect
Ps0 f4 @|RichDialogProcessEndIcon #fIcon
Ps0 f5 actionDecl 'ch.ivyteam.htmldialog.demo.PartialUpdateDemo.PartialUpdateDemoData out;
' #txt
Ps0 f5 actionTable 'out=in;
out.counter=in.counter+1;
' #txt
Ps0 f5 type ch.ivyteam.htmldialog.demo.PartialUpdateDemo.PartialUpdateDemoData #txt
Ps0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Increase Counter</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f5 78 308 36 24 20 -2 #rect
Ps0 f5 @|RichDialogProcessStepIcon #fIcon
Ps0 f6 expr out #txt
Ps0 f6 96 266 96 308 #arcP
Ps0 f7 expr out #txt
Ps0 f7 96 332 96 374 #arcP
>Proto Ps0 .type ch.ivyteam.htmldialog.demo.PartialUpdateDemo.PartialUpdateDemoData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Initialisation
</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>272</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f3 mainOut f6 tail #connect
Ps0 f6 head f5 mainIn #connect
Ps0 f5 mainOut f7 tail #connect
Ps0 f7 head f4 mainIn #connect
