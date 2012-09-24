[Ivy]
[>Created: Mon Sep 24 17:12:20 CEST 2012]
139D3B8894867715 3.17 #module
>Proto >Proto Collection #zClass
Os0 OrderListDemoProcess Big #zClass
Os0 RD #cInfo
Os0 #process
Os0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Os0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Os0 @TextInP .resExport .resExport #zField
Os0 @TextInP .type .type #zField
Os0 @TextInP .processKind .processKind #zField
Os0 @AnnotationInP-0n ai ai #zField
Os0 @TextInP .xml .xml #zField
Os0 @TextInP .responsibility .responsibility #zField
Os0 @RichDialogInitStart f0 '' #zField
Os0 @RichDialogProcessEnd f1 '' #zField
Os0 @RichDialogProcessStart f5 '' #zField
Os0 @RichDialogProcessEnd f6 '' #zField
Os0 @RichDialogProcessStart f7 '' #zField
Os0 @RichDialogEnd f8 '' #zField
Os0 @PushWFArc f9 '' #zField
Os0 @PushWFArc f10 '' #zField
Os0 @CallSub f2 '' #zField
Os0 @PushWFArc f3 '' #zField
Os0 @PushWFArc f4 '' #zField
>Proto Os0 Os0 OrderListDemoProcess #zField
Os0 f0 guid 139D3B8895B6832C #txt
Os0 f0 type htmlDialogDemos.OrderListDemo.OrderListDemoData #txt
Os0 f0 method start() #txt
Os0 f0 disableUIEvents true #txt
Os0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Os0 f0 outParameterDecl '<> result;
' #txt
Os0 f0 embeddedRdInitializations '* ' #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f0 86 54 20 20 13 0 #rect
Os0 f0 @|RichDialogInitStartIcon #fIcon
Os0 f1 type htmlDialogDemos.OrderListDemo.OrderListDemoData #txt
Os0 f1 86 150 20 20 13 0 #rect
Os0 f1 @|RichDialogProcessEndIcon #fIcon
Os0 f5 guid 139D43609EB4FFE9 #txt
Os0 f5 type htmlDialogDemos.OrderListDemo.OrderListDemoData #txt
Os0 f5 actionDecl 'htmlDialogDemos.OrderListDemo.OrderListDemoData out;
' #txt
Os0 f5 actionTable 'out=in;
' #txt
Os0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f5 86 246 20 20 13 0 #rect
Os0 f5 @|RichDialogProcessStartIcon #fIcon
Os0 f6 type htmlDialogDemos.OrderListDemo.OrderListDemoData #txt
Os0 f6 86 342 20 20 13 0 #rect
Os0 f6 @|RichDialogProcessEndIcon #fIcon
Os0 f7 guid 139D4375C5912100 #txt
Os0 f7 type htmlDialogDemos.OrderListDemo.OrderListDemoData #txt
Os0 f7 actionDecl 'htmlDialogDemos.OrderListDemo.OrderListDemoData out;
' #txt
Os0 f7 actionTable 'out=in;
' #txt
Os0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f7 254 246 20 20 13 0 #rect
Os0 f7 @|RichDialogProcessStartIcon #fIcon
Os0 f8 type htmlDialogDemos.OrderListDemo.OrderListDemoData #txt
Os0 f8 guid 139D43768BEC3366 #txt
Os0 f8 254 342 20 20 13 0 #rect
Os0 f8 @|RichDialogEndIcon #fIcon
Os0 f9 expr out #txt
Os0 f9 264 266 264 342 #arcP
Os0 f10 expr out #txt
Os0 f10 96 266 96 342 #arcP
Os0 f2 type htmlDialogDemos.OrderListDemo.OrderListDemoData #txt
Os0 f2 processCall 'Functional Processes/InitPersons:initPerson()' #txt
Os0 f2 doCall true #txt
Os0 f2 requestActionDecl '<> param;
' #txt
Os0 f2 responseActionDecl 'htmlDialogDemos.OrderListDemo.OrderListDemoData out;
' #txt
Os0 f2 responseMappingAction 'out=in;
out.persons=result.persons;
' #txt
Os0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>initPerson()</name>
    </language>
</elementInfo>
' #txt
Os0 f2 78 100 36 24 20 -2 #rect
Os0 f2 @|CallSubIcon #fIcon
Os0 f3 expr out #txt
Os0 f3 96 74 96 100 #arcP
Os0 f4 expr out #txt
Os0 f4 96 124 96 150 #arcP
>Proto Os0 .type htmlDialogDemos.OrderListDemo.OrderListDemoData #txt
>Proto Os0 .processKind RICH_DIALOG #txt
>Proto Os0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Initialisation</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>216</swimlaneSize>
    <swimlaneSize>176</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
>Proto Os0 '' #fIcon
Os0 f7 mainOut f9 tail #connect
Os0 f9 head f8 mainIn #connect
Os0 f5 mainOut f10 tail #connect
Os0 f10 head f6 mainIn #connect
Os0 f0 mainOut f3 tail #connect
Os0 f3 head f2 mainIn #connect
Os0 f2 mainOut f4 tail #connect
Os0 f4 head f1 mainIn #connect
