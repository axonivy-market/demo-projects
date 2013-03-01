[Ivy]
[>Created: Tue Jan 22 18:40:42 CET 2013]
139E3427D3640FBC 3.17 #module
>Proto >Proto Collection #zClass
Ps0 PickListDemoProcess Big #zClass
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
Ps0 @CallSub f3 '' #zField
Ps0 @PushWFArc f4 '' #zField
Ps0 @RichDialogProcessStart f7 '' #zField
Ps0 @RichDialogProcessEnd f8 '' #zField
Ps0 @PushWFArc f10 '' #zField
Ps0 @PushWFArc f2 '' #zField
>Proto Ps0 Ps0 PickListDemoProcess #zField
Ps0 f0 guid 139E3427D4C19817 #txt
Ps0 f0 type ch.ivyteam.htmldialog.demo.output.PickListDemo.PickListDemoData #txt
Ps0 f0 method start() #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 86 22 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ch.ivyteam.htmldialog.demo.output.PickListDemo.PickListDemoData #txt
Ps0 f1 86 150 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f3 type ch.ivyteam.htmldialog.demo.output.PickListDemo.PickListDemoData #txt
Ps0 f3 processCall 'Functional Processes/InitPersons:initPerson()' #txt
Ps0 f3 doCall true #txt
Ps0 f3 requestActionDecl '<> param;
' #txt
Ps0 f3 responseActionDecl 'ch.ivyteam.htmldialog.demo.output.PickListDemo.PickListDemoData out;
' #txt
Ps0 f3 responseMappingAction 'out=in;
out.persons.source=result.persons;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>initPerson()</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 78 84 36 24 20 -2 #rect
Ps0 f3 @|CallSubIcon #fIcon
Ps0 f4 expr out #txt
Ps0 f4 96 42 96 84 #arcP
Ps0 f4 0 0.5468358763761675 0 0 #arcLabel
Ps0 f7 guid 139E38F62BA66372 #txt
Ps0 f7 type ch.ivyteam.htmldialog.demo.output.PickListDemo.PickListDemoData #txt
Ps0 f7 actionDecl 'ch.ivyteam.htmldialog.demo.output.PickListDemo.PickListDemoData out;
' #txt
Ps0 f7 actionTable 'out=in;
' #txt
Ps0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f7 86 214 20 20 13 0 #rect
Ps0 f7 @|RichDialogProcessStartIcon #fIcon
Ps0 f8 type ch.ivyteam.htmldialog.demo.output.PickListDemo.PickListDemoData #txt
Ps0 f8 86 310 20 20 13 0 #rect
Ps0 f8 @|RichDialogProcessEndIcon #fIcon
Ps0 f10 expr out #txt
Ps0 f10 96 234 96 310 #arcP
Ps0 f2 expr out #txt
Ps0 f2 96 108 96 150 #arcP
>Proto Ps0 .type ch.ivyteam.htmldialog.demo.output.PickListDemo.PickListDemoData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Initialisation</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>160</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f4 tail #connect
Ps0 f4 head f3 mainIn #connect
Ps0 f7 mainOut f10 tail #connect
Ps0 f10 head f8 mainIn #connect
Ps0 f3 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
