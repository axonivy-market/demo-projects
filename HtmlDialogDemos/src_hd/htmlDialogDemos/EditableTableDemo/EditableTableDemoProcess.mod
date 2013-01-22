[Ivy]
[>Created: Tue Jan 22 18:40:42 CET 2013]
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
Es0 @RichDialogMethodStart f13 '' #zField
Es0 @RichDialogProcessStep f14 '' #zField
Es0 @PushWFArc f15 '' #zField
Es0 @RichDialogProcessEnd f16 '' #zField
Es0 @PushWFArc f17 '' #zField
Es0 @RichDialogProcessStart f18 '' #zField
Es0 @RichDialogProcessEnd f19 '' #zField
Es0 @RichDialogProcessStep f21 '' #zField
Es0 @PushWFArc f22 '' #zField
Es0 @PushWFArc f20 '' #zField
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
Es0 f0 70 54 20 20 13 0 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f1 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f1 70 214 20 20 13 0 #rect
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
Es0 f2 62 100 36 24 20 -2 #rect
Es0 f2 @|CallSubIcon #fIcon
Es0 f3 expr out #txt
Es0 f3 80 74 80 100 #arcP
Es0 f5 guid 139D98B6A2951E27 #txt
Es0 f5 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f5 actionDecl 'htmlDialogDemos.EditableTableDemo.EditableTableDemoData out;
' #txt
Es0 f5 actionTable 'out=in;
' #txt
Es0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f5 70 270 20 20 13 0 #rect
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
        <name>close</name>
        <nameStyle>5,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f6 214 270 20 20 13 0 #rect
Es0 f6 @|RichDialogProcessStartIcon #fIcon
Es0 f7 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f7 70 366 20 20 13 0 #rect
Es0 f7 @|RichDialogProcessEndIcon #fIcon
Es0 f8 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f8 guid 139D98BBD35CC811 #txt
Es0 f8 214 366 20 20 13 0 #rect
Es0 f8 @|RichDialogEndIcon #fIcon
Es0 f9 expr out #txt
Es0 f9 224 290 224 366 #arcP
Es0 f10 expr out #txt
Es0 f10 80 290 80 366 #arcP
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
Es0 f11 62 156 36 24 20 -2 #rect
Es0 f11 @|RichDialogProcessStepIcon #fIcon
Es0 f12 expr out #txt
Es0 f12 80 124 80 156 #arcP
Es0 f4 expr out #txt
Es0 f4 80 180 80 214 #arcP
Es0 f13 guid 139DEBA1CB42E47D #txt
Es0 f13 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f13 method delete(Record) #txt
Es0 f13 disableUIEvents false #txt
Es0 f13 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.scripting.objects.Record deletedRow> param = methodEvent.getInputArguments();
' #txt
Es0 f13 inParameterMapAction 'out.selectedPerson=param.deletedRow;
' #txt
Es0 f13 outParameterDecl '<> result;
' #txt
Es0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete(Record)</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f13 70 430 20 20 13 0 #rect
Es0 f13 @|RichDialogMethodStartIcon #fIcon
Es0 f14 actionDecl 'htmlDialogDemos.EditableTableDemo.EditableTableDemoData out;
' #txt
Es0 f14 actionTable 'out=in;
' #txt
Es0 f14 actionCode in.recordset.remove(in.selectedPerson); #txt
Es0 f14 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Delete record from recordset
</name>
        <nameStyle>29,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f14 62 484 36 24 25 -13 #rect
Es0 f14 @|RichDialogProcessStepIcon #fIcon
Es0 f15 expr out #txt
Es0 f15 80 450 80 484 #arcP
Es0 f16 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f16 70 550 20 20 13 0 #rect
Es0 f16 @|RichDialogProcessEndIcon #fIcon
Es0 f17 expr out #txt
Es0 f17 80 508 80 550 #arcP
Es0 f18 guid 139E297CD5890C15 #txt
Es0 f18 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f18 actionDecl 'htmlDialogDemos.EditableTableDemo.EditableTableDemoData out;
' #txt
Es0 f18 actionTable 'out=in;
' #txt
Es0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add</name>
        <nameStyle>3,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f18 342 270 20 20 13 0 #rect
Es0 f18 @|RichDialogProcessStartIcon #fIcon
Es0 f19 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f19 342 366 20 20 13 0 #rect
Es0 f19 @|RichDialogProcessEndIcon #fIcon
Es0 f21 actionDecl 'htmlDialogDemos.EditableTableDemo.EditableTableDemoData out;
' #txt
Es0 f21 actionTable 'out=in;
' #txt
Es0 f21 actionCode 'in.recordset.add(new Record(in.recordset.getKeys(), ["", ""]));' #txt
Es0 f21 type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
Es0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add new record to recordset</name>
        <nameStyle>27,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f21 334 316 36 24 27 -7 #rect
Es0 f21 @|RichDialogProcessStepIcon #fIcon
Es0 f22 expr out #txt
Es0 f22 352 290 352 316 #arcP
Es0 f20 expr out #txt
Es0 f20 352 340 352 366 #arcP
>Proto Es0 .type htmlDialogDemos.EditableTableDemo.EditableTableDemoData #txt
>Proto Es0 .processKind HTML_DIALOG #txt
>Proto Es0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Initialisation</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>248</swimlaneSize>
    <swimlaneSize>160</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
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
Es0 f13 mainOut f15 tail #connect
Es0 f15 head f14 mainIn #connect
Es0 f14 mainOut f17 tail #connect
Es0 f17 head f16 mainIn #connect
Es0 f18 mainOut f22 tail #connect
Es0 f22 head f21 mainIn #connect
Es0 f21 mainOut f20 tail #connect
Es0 f20 head f19 mainIn #connect
