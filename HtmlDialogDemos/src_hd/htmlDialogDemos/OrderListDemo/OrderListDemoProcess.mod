[Ivy]
[>Created: Tue Sep 18 09:47:32 CEST 2012]
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
Os0 @RichDialogProcessStep f3 '' #zField
Os0 @PushWFArc f4 '' #zField
Os0 @PushWFArc f2 '' #zField
Os0 @RichDialogProcessStart f5 '' #zField
Os0 @RichDialogProcessEnd f6 '' #zField
Os0 @RichDialogProcessStart f7 '' #zField
Os0 @RichDialogEnd f8 '' #zField
Os0 @PushWFArc f9 '' #zField
Os0 @PushWFArc f10 '' #zField
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
Os0 f3 actionDecl 'htmlDialogDemos.OrderListDemo.OrderListDemoData out;
' #txt
Os0 f3 actionTable 'out=in;
' #txt
Os0 f3 actionCode 'import ch.ivyteam.htmldialog.demo.Person;

Person person = new Person();
person.name = "Stalder";
person.firstname = "Renato";
out.persons.add(person);

person = new Person();
person.name = "Bütler";
person.firstname = "Bruno";
out.persons.add(person);

person = new Person();
person.name = "Weiss";
person.firstname = "Reto";
out.persons.add(person);

person = new Person();
person.name = "Hürlimann";
person.firstname = "Caty";
out.persons.add(person);

person = new Person();
person.name = "Kis";
person.firstname = "Tamas";
out.persons.add(person);

person = new Person();
person.name = "Dänzer";
person.firstname = "Michael";
out.persons.add(person);' #txt
Os0 f3 type htmlDialogDemos.OrderListDemo.OrderListDemoData #txt
Os0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init persons</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f3 78 100 36 24 20 -7 #rect
Os0 f3 @|RichDialogProcessStepIcon #fIcon
Os0 f4 expr out #txt
Os0 f4 96 74 96 100 #arcP
Os0 f2 expr out #txt
Os0 f2 96 124 96 150 #arcP
Os0 f5 guid 139D43609EB4FFE9 #txt
Os0 f5 type htmlDialogDemos.OrderListDemo.OrderListDemoData #txt
Os0 f5 actionDecl 'htmlDialogDemos.OrderListDemo.OrderListDemoData out;
' #txt
Os0 f5 actionTable 'out=in;
' #txt
Os0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f5 262 46 20 20 13 0 #rect
Os0 f5 @|RichDialogProcessStartIcon #fIcon
Os0 f6 type htmlDialogDemos.OrderListDemo.OrderListDemoData #txt
Os0 f6 262 142 20 20 13 0 #rect
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
        <name>Close</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Os0 f7 430 54 20 20 13 0 #rect
Os0 f7 @|RichDialogProcessStartIcon #fIcon
Os0 f8 type htmlDialogDemos.OrderListDemo.OrderListDemoData #txt
Os0 f8 guid 139D43768BEC3366 #txt
Os0 f8 430 142 20 20 13 0 #rect
Os0 f8 @|RichDialogEndIcon #fIcon
Os0 f9 expr out #txt
Os0 f9 440 74 440 142 #arcP
Os0 f10 expr out #txt
Os0 f10 272 66 272 142 #arcP
>Proto Os0 .type htmlDialogDemos.OrderListDemo.OrderListDemoData #txt
>Proto Os0 .processKind RICH_DIALOG #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
>Proto Os0 '' #fIcon
Os0 f0 mainOut f4 tail #connect
Os0 f4 head f3 mainIn #connect
Os0 f3 mainOut f2 tail #connect
Os0 f2 head f1 mainIn #connect
Os0 f7 mainOut f9 tail #connect
Os0 f9 head f8 mainIn #connect
Os0 f5 mainOut f10 tail #connect
Os0 f10 head f6 mainIn #connect
