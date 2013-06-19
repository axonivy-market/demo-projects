[Ivy]
[>Created: Fri Jun 14 12:08:06 CEST 2013]
13F3C733545FE635 3.17 #module
>Proto >Proto Collection #zClass
Ss0 SelectOneMenuDemoProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @CallSub f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @RichDialogProcessEnd f6 '' #zField
Ss0 @RichDialogProcessStart f7 '' #zField
Ss0 @RichDialogEnd f8 '' #zField
Ss0 @RichDialogProcessStart f5 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @GridStep f11 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @PushWFArc f2 '' #zField
>Proto Ss0 Ss0 SelectOneMenuDemoProcess #zField
Ss0 f0 guid 13F3C7335762710A #txt
Ss0 f0 type ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo.SelectOneMenuDemoData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 86 54 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo.SelectOneMenuDemoData #txt
Ss0 f1 86 246 20 20 13 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 type ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo.SelectOneMenuDemoData #txt
Ss0 f3 processCall 'Functional Processes/InitPersons:initPerson()' #txt
Ss0 f3 doCall true #txt
Ss0 f3 requestActionDecl '<> param;
' #txt
Ss0 f3 responseActionDecl 'ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo.SelectOneMenuDemoData out;
' #txt
Ss0 f3 responseMappingAction 'out=in;
out.persons=result.persons;
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>initPerson()</name>
    </language>
</elementInfo>
' #txt
Ss0 f3 78 116 36 24 20 -2 #rect
Ss0 f3 @|CallSubIcon #fIcon
Ss0 f4 expr out #txt
Ss0 f4 96 74 96 116 #arcP
Ss0 f6 type ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo.SelectOneMenuDemoData #txt
Ss0 f6 86 486 20 20 13 0 #rect
Ss0 f6 @|RichDialogProcessEndIcon #fIcon
Ss0 f7 guid 13F3C7C4AAA7A1A5 #txt
Ss0 f7 type ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo.SelectOneMenuDemoData #txt
Ss0 f7 actionDecl 'ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo.SelectOneMenuDemoData out;
' #txt
Ss0 f7 actionTable 'out=in;
' #txt
Ss0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f7 254 390 20 20 13 0 #rect
Ss0 f7 @|RichDialogProcessStartIcon #fIcon
Ss0 f8 type ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo.SelectOneMenuDemoData #txt
Ss0 f8 guid 139D43768BEC3366 #txt
Ss0 f8 254 486 20 20 13 0 #rect
Ss0 f8 @|RichDialogEndIcon #fIcon
Ss0 f5 guid 13F3C7C4AA97821B #txt
Ss0 f5 type ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo.SelectOneMenuDemoData #txt
Ss0 f5 actionDecl 'ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo.SelectOneMenuDemoData out;
' #txt
Ss0 f5 actionTable 'out=in;
' #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 86 390 20 20 13 0 #rect
Ss0 f5 @|RichDialogProcessStartIcon #fIcon
Ss0 f9 expr out #txt
Ss0 f9 264 410 264 486 #arcP
Ss0 f10 expr out #txt
Ss0 f10 96 410 96 486 #arcP
Ss0 f11 actionDecl 'ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo.SelectOneMenuDemoData out;
' #txt
Ss0 f11 actionTable 'out=in;
' #txt
Ss0 f11 actionCode 'import ch.ivyteam.htmldialog.demo.Person;

Person person = new Person();
person.name = "Wermelinger";
person.firstname = "Reguel";
in.morePersons.add(person);

person = new Person();
person.name = "Strebel";
person.firstname = "Christian";
in.morePersons.add(person);

person = new Person();
person.name = "Sadeghi";
person.firstname = "Flavio";
in.morePersons.add(person);

in.onePerson = new Person();
in.onePerson.name = "Regli";
in.onePerson.firstname = "Dominik";


' #txt
Ss0 f11 type ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo.SelectOneMenuDemoData #txt
Ss0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>initMorePersons</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f11 78 180 36 24 20 -2 #rect
Ss0 f11 @|StepIcon #fIcon
Ss0 f12 expr out #txt
Ss0 f12 96 140 96 180 #arcP
Ss0 f2 expr out #txt
Ss0 f2 96 204 96 246 #arcP
>Proto Ss0 .type ch.ivyteam.htmldialog.demo.output.SelectOneMenuDemo.SelectOneMenuDemoData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Initialisation</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>328</swimlaneSize>
    <swimlaneSize>248</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f0 mainOut f4 tail #connect
Ss0 f4 head f3 mainIn #connect
Ss0 f7 mainOut f9 tail #connect
Ss0 f9 head f8 mainIn #connect
Ss0 f5 mainOut f10 tail #connect
Ss0 f10 head f6 mainIn #connect
Ss0 f3 mainOut f12 tail #connect
Ss0 f12 head f11 mainIn #connect
Ss0 f11 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
