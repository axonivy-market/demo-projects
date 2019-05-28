[Ivy]
16ADE8E3AB9D5207 3.26 #module
>Proto >Proto Collection #zClass
Es0 ExportExcelDemoProcess Big #zClass
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
Es0 @GridStep f11 '' #zField
Es0 @PushWFArc f12 '' #zField
Es0 @PushWFArc f4 '' #zField
>Proto Es0 Es0 ExportExcelDemoProcess #zField
Es0 f0 guid 139D96A574FD8C6C #txt
Es0 f0 type ch.ivyteam.htmldialog.demo.output.ExportExcelDemo.ExportExcelDemoData #txt
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
Es0 f0 83 115 26 26 -16 12 #rect
Es0 f0 @|RichDialogInitStartIcon #fIcon
Es0 f0 -1|-1|-9671572 #nodeStyle
Es0 f1 type ch.ivyteam.htmldialog.demo.output.ExportExcelDemo.ExportExcelDemoData #txt
Es0 f1 555 115 26 26 0 12 #rect
Es0 f1 @|RichDialogProcessEndIcon #fIcon
Es0 f1 -1|-1|-9671572 #nodeStyle
Es0 f2 type ch.ivyteam.htmldialog.demo.output.ExportExcelDemo.ExportExcelDemoData #txt
Es0 f2 processCall 'Functional Processes/InitPersons:initPerson()' #txt
Es0 f2 doCall true #txt
Es0 f2 requestActionDecl '<> param;
' #txt
Es0 f2 responseActionDecl 'ch.ivyteam.htmldialog.demo.output.ExportExcelDemo.ExportExcelDemoData out;
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
Es0 f2 168 106 112 44 -32 -8 #rect
Es0 f2 @|CallSubIcon #fIcon
Es0 f2 -1|-1|-9671572 #nodeStyle
Es0 f3 expr out #txt
Es0 f3 109 128 168 128 #arcP
Es0 f11 actionDecl 'ch.ivyteam.htmldialog.demo.output.ExportExcelDemo.ExportExcelDemoData out;
' #txt
Es0 f11 actionTable 'out=in;
' #txt
Es0 f11 actionCode 'import ch.ivyteam.htmldialog.demo.Person;


in.recordset = new Recordset(["Name", "Firstname"]);

for (Person person : in.persons)
{
	in.recordset.add([person.name, person.firstname]);
}' #txt
Es0 f11 type ch.ivyteam.htmldialog.demo.output.ExportExcelDemo.ExportExcelDemoData #txt
Es0 f11 360 106 112 44 58 -2 #rect
Es0 f11 @|StepIcon #fIcon
Es0 f11 -1|-1|-9671572 #nodeStyle
Es0 f12 expr out #txt
Es0 f12 280 128 360 128 #arcP
Es0 f4 expr out #txt
Es0 f4 472 128 555 128 #arcP
>Proto Es0 .type ch.ivyteam.htmldialog.demo.output.ExportExcelDemo.ExportExcelDemoData #txt
>Proto Es0 .processKind HTML_DIALOG #txt
>Proto Es0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Initialisation</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>255</swimlaneSize>
    <swimlaneColor gradient="true">-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
>Proto Es0 '' #fIcon
Es0 f0 mainOut f3 tail #connect
Es0 f3 head f2 mainIn #connect
Es0 f2 mainOut f12 tail #connect
Es0 f12 head f11 mainIn #connect
Es0 f11 mainOut f4 tail #connect
Es0 f4 head f1 mainIn #connect
