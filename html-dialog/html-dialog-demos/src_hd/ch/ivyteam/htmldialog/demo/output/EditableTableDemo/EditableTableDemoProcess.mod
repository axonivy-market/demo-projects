[Ivy]
139D96A5734DE195 9.4.8 #module
>Proto >Proto Collection #zClass
Es0 EditableTableDemoProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @TextInP .colors .colors #zField
Es0 @TextInP color color #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @AnnotationInP-0n ai ai #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @UdInit f0 '' #zField
Es0 @UdProcessEnd f1 '' #zField
Es0 @CallSub f2 '' #zField
Es0 @PushWFArc f3 '' #zField
Es0 @UdEvent f5 '' #zField
Es0 @UdEvent f6 '' #zField
Es0 @UdProcessEnd f7 '' #zField
Es0 @UdExitEnd f8 '' #zField
Es0 @PushWFArc f9 '' #zField
Es0 @PushWFArc f10 '' #zField
Es0 @GridStep f11 '' #zField
Es0 @PushWFArc f12 '' #zField
Es0 @PushWFArc f4 '' #zField
Es0 @UdMethod f13 '' #zField
Es0 @GridStep f14 '' #zField
Es0 @PushWFArc f15 '' #zField
Es0 @UdProcessEnd f16 '' #zField
Es0 @PushWFArc f17 '' #zField
Es0 @UdEvent f18 '' #zField
Es0 @UdProcessEnd f19 '' #zField
Es0 @GridStep f21 '' #zField
Es0 @PushWFArc f22 '' #zField
Es0 @PushWFArc f20 '' #zField
>Proto Es0 Es0 EditableTableDemoProcess #zField
Es0 f0 guid 139D96A574FD8C6C #txt
Es0 f0 method start() #txt
Es0 f0 inParameterDecl '<> param;' #txt
Es0 f0 outParameterDecl '<> result;' #txt
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Es0 f0 83 115 26 26 -16 12 #rect
Es0 f0 -1|-1|-9671572 #nodeStyle
Es0 f1 555 115 26 26 0 12 #rect
Es0 f1 -1|-1|-9671572 #nodeStyle
Es0 f2 processCall 'Functional Processes/InitPersons:initPerson()' #txt
Es0 f2 requestActionDecl '<> param;' #txt
Es0 f2 responseActionDecl 'ch.ivyteam.htmldialog.demo.output.EditableTableDemo.EditableTableDemoData out;
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
Es0 f2 -1|-1|-9671572 #nodeStyle
Es0 f3 expr out #txt
Es0 f3 109 128 168 128 #arcP
Es0 f5 guid 139D98B6A2951E27 #txt
Es0 f5 actionTable 'out=in;
' #txt
Es0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
    </language>
</elementInfo>
' #txt
Es0 f5 83 307 26 26 -14 12 #rect
Es0 f5 -1|-1|-9671572 #nodeStyle
Es0 f6 guid 139D98B7D2CE532C #txt
Es0 f6 actionTable 'out=in;
' #txt
Es0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Es0 f6 83 403 26 26 -15 12 #rect
Es0 f6 -1|-1|-9671572 #nodeStyle
Es0 f7 211 307 26 26 0 12 #rect
Es0 f7 -1|-1|-9671572 #nodeStyle
Es0 f8 211 403 26 26 0 12 #rect
Es0 f8 -1|-1|-9671572 #nodeStyle
Es0 f9 expr out #txt
Es0 f9 109 416 211 416 #arcP
Es0 f10 expr out #txt
Es0 f10 109 320 211 320 #arcP
Es0 f11 actionTable 'out=in;
' #txt
Es0 f11 actionCode 'import ch.ivyteam.htmldialog.demo.Person;


in.recordset = new Recordset(["Name", "Firstname"]);

for (Person person : in.persons)
{
	in.recordset.add([person.name, person.firstname]);
}' #txt
Es0 f11 360 106 112 44 58 -2 #rect
Es0 f11 -1|-1|-9671572 #nodeStyle
Es0 f12 expr out #txt
Es0 f12 280 128 360 128 #arcP
Es0 f4 expr out #txt
Es0 f4 472 128 555 128 #arcP
Es0 f13 guid 139DEBA1CB42E47D #txt
Es0 f13 method delete(Record) #txt
Es0 f13 inParameterDecl '<Record deletedRow> param;' #txt
Es0 f13 inParameterMapAction 'out.selectedPerson=param.deletedRow;
' #txt
Es0 f13 outParameterDecl '<> result;' #txt
Es0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete(Record)</name>
    </language>
</elementInfo>
' #txt
Es0 f13 83 659 26 26 -41 12 #rect
Es0 f13 -1|-1|-9671572 #nodeStyle
Es0 f14 actionTable 'out=in;
' #txt
Es0 f14 actionCode in.recordset.remove(in.selectedPerson); #txt
Es0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Delete record from recordset</name>
    </language>
</elementInfo>
' #txt
Es0 f14 152 650 176 44 -78 -8 #rect
Es0 f14 -1|-1|-9671572 #nodeStyle
Es0 f15 expr out #txt
Es0 f15 109 672 152 672 #arcP
Es0 f16 403 659 26 26 0 12 #rect
Es0 f16 -1|-1|-9671572 #nodeStyle
Es0 f17 expr out #txt
Es0 f17 328 672 403 672 #arcP
Es0 f18 guid 139E297CD5890C15 #txt
Es0 f18 actionTable 'out=in;
' #txt
Es0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add</name>
    </language>
</elementInfo>
' #txt
Es0 f18 83 499 26 26 -10 12 #rect
Es0 f18 -1|-1|-9671572 #nodeStyle
Es0 f19 403 499 26 26 0 12 #rect
Es0 f19 -1|-1|-9671572 #nodeStyle
Es0 f21 actionTable 'out=in;
' #txt
Es0 f21 actionCode 'in.recordset.add(new Record(in.recordset.getKeys(), ["", ""]));' #txt
Es0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add new record to recordset</name>
    </language>
</elementInfo>
' #txt
Es0 f21 176 490 160 44 -76 -8 #rect
Es0 f21 -1|-1|-9671572 #nodeStyle
Es0 f22 expr out #txt
Es0 f22 109 512 176 512 #arcP
Es0 f20 expr out #txt
Es0 f20 336 512 403 512 #arcP
>Proto Es0 .type ch.ivyteam.htmldialog.demo.output.EditableTableDemo.EditableTableDemoData #txt
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
    <swimlaneSize>255</swimlaneSize>
    <swimlaneSize>321</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
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
