[Ivy]
[>Created: Tue Sep 18 15:37:53 CEST 2012]
139D96A5734DE195 3.17 #module
>Proto >Proto Collection #zClass
Es0 EditableTableDemoProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Es0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Es0 @TextInP .resExport .resExport #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @AnnotationInP-0n ai ai #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @RichDialogInitStart f0 '' #zField
Es0 @RichDialogProcessEnd f1 '' #zField
Es0 @CallSub f2 '' #zField
Es0 @PushWFArc f3 '' #zField
Es0 @RichDialogProcessStart f5 '' #zField
Es0 @RichDialogProcessStart f6 '' #zField
Es0 @RichDialogProcessEnd f7 '' #zField
Es0 @RichDialogEnd f8 '' #zField
Es0 @PushWFArc f9 '' #zField
Es0 @PushWFArc f10 '' #zField
Es0 @RichDialogProcessStep f11 '' #zField
Es0 @PushWFArc f12 '' #zField
Es0 @PushWFArc f4 '' #zField
>Proto Es0 Es0 EditableTableDemoProcess #zField
Es0 f0 guid 139D96A574FD8C6C #txt
Es0 f0 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f0 method start() #txt
Es0 f0 disableUIEvents true #txt
Es0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Es0 f0 outParameterDecl '<> result;
' #txt
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Es0 f0 86 54 20 20 13 0 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f1 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f1 86 214 20 20 13 0 #rect
Es0 f1 @|RichDialogProcessEndIcon #fIcon
Es0 f2 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f2 processCall 'Functional Processes/InitPersons:initPerson()' #txt
Es0 f2 doCall true #txt
Es0 f2 requestActionDecl '<> param;
' #txt
Es0 f2 responseActionDecl 'htmlDialogDemos.EditableTableDemo.EditableTableDemoData out;
' #txt
Es0 f2 responseMappingAction 'out=in;
out.persons=result.persons;
' #txt
Es0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>initPerson()</name>
    </language>
</elementInfo>
' #txt
Es0 f2 78 100 36 24 20 -2 #rect
Es0 f2 @|CallSubIcon #fIcon
Es0 f3 expr out #txt
Es0 f3 96 74 96 100 #arcP
Es0 f5 guid 139D98B6A2951E27 #txt
Es0 f5 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f5 actionDecl 'htmlDialogDemos.EditableTableDemo.EditableTableDemoData out;
' #txt
Es0 f5 actionTable 'out=in;
' #txt
Es0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f5 238 54 20 20 13 0 #rect
Es0 f5 @|RichDialogProcessStartIcon #fIcon
Es0 f6 guid 139D98B7D2CE532C #txt
Es0 f6 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f6 actionDecl 'htmlDialogDemos.EditableTableDemo.EditableTableDemoData out;
' #txt
Es0 f6 actionTable 'out=in;
' #txt
Es0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Close</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f6 382 54 20 20 13 0 #rect
Es0 f6 @|RichDialogProcessStartIcon #fIcon
Es0 f7 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f7 238 150 20 20 13 0 #rect
Es0 f7 @|RichDialogProcessEndIcon #fIcon
Es0 f8 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f8 guid 139D98BBD35CC811 #txt
Es0 f8 382 150 20 20 13 0 #rect
Es0 f8 @|RichDialogEndIcon #fIcon
Es0 f9 expr out #txt
Es0 f9 392 74 392 150 #arcP
Es0 f10 expr out #txt
Es0 f10 248 74 248 150 #arcP
Es0 f11 actionDecl 'htmlDialogDemos.EditableTableDemo.EditableTableDemoData out;
' #txt
Es0 f11 actionTable 'out=in;
' #txt
Es0 f11 actionCode 'import ch.ivyteam.htmldialog.demo.Person;


in.recordset = new Recordset(["Name", "Firstname"]);

for (Person person : in.persons)
{
	in.recordset.add([person.name, person.firstname]);
}' #txt
Es0 f11 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f11 78 156 36 24 20 -2 #rect
Es0 f11 @|RichDialogProcessStepIcon #fIcon
Es0 f12 expr out #txt
Es0 f12 96 124 96 156 #arcP
Es0 f4 expr out #txt
Es0 f4 96 180 96 214 #arcP
>Proto Es0 .type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
>Proto Es0 .processKind RICH_DIALOG #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f0 mainOut f3 tail #connect
Es0 f3 head f2 mainIn #connect
Es0 f6 mainOut f9 tail #connect
Es0 f9 head f8 mainIn #connect
Es0 f5 mainOut f10 tail #connect
Es0 f10 head f7 mainIn #connect
Es0 f2 mainOut f12 tail #connect
Es0 f12 head f11 mainIn #connect
Es0 f11 mainOut f4 tail #connect
Es0 f4 head f1 mainIn #connect
