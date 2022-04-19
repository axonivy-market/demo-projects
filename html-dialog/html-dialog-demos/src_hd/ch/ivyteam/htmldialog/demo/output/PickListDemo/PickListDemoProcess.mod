[Ivy]
139E3427D3640FBC 9.4.8 #module
>Proto >Proto Collection #zClass
Ps0 PickListDemoProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .colors .colors #zField
Ps0 @TextInP color color #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @UdInit f0 '' #zField
Ps0 @UdProcessEnd f1 '' #zField
Ps0 @CallSub f3 '' #zField
Ps0 @PushWFArc f4 '' #zField
Ps0 @UdEvent f7 '' #zField
Ps0 @UdProcessEnd f8 '' #zField
Ps0 @PushWFArc f10 '' #zField
Ps0 @PushWFArc f2 '' #zField
>Proto Ps0 Ps0 PickListDemoProcess #zField
Ps0 f0 guid 139E3427D4C19817 #txt
Ps0 f0 method start() #txt
Ps0 f0 inParameterDecl '<> param;' #txt
Ps0 f0 outParameterDecl '<> result;' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 83 83 26 26 -16 12 #rect
Ps0 f0 -1|-1|-9671572 #nodeStyle
Ps0 f1 403 83 26 26 0 12 #rect
Ps0 f1 -1|-1|-9671572 #nodeStyle
Ps0 f3 processCall 'Functional Processes/InitPersons:initPerson()' #txt
Ps0 f3 requestActionDecl '<> param;' #txt
Ps0 f3 responseActionDecl 'ch.ivyteam.htmldialog.demo.output.PickListDemo.PickListDemoData out;
' #txt
Ps0 f3 responseMappingAction 'out=in;
out.persons.source=result.persons;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>initPerson()</name>
    </language>
</elementInfo>
' #txt
Ps0 f3 200 74 112 44 -32 -8 #rect
Ps0 f3 -1|-1|-9671572 #nodeStyle
Ps0 f4 expr out #txt
Ps0 f4 109 96 200 96 #arcP
Ps0 f4 0 0.5468358763761675 0 0 #arcLabel
Ps0 f7 guid 139E38F62BA66372 #txt
Ps0 f7 actionTable 'out=in;
' #txt
Ps0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
    </language>
</elementInfo>
' #txt
Ps0 f7 83 275 26 26 -14 12 #rect
Ps0 f7 -1|-1|-9671572 #nodeStyle
Ps0 f8 211 275 26 26 0 12 #rect
Ps0 f8 -1|-1|-9671572 #nodeStyle
Ps0 f10 expr out #txt
Ps0 f10 109 288 211 288 #arcP
Ps0 f2 expr out #txt
Ps0 f2 312 96 403 96 #arcP
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
    <swimlaneSize>191</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
Ps0 f0 mainOut f4 tail #connect
Ps0 f4 head f3 mainIn #connect
Ps0 f7 mainOut f10 tail #connect
Ps0 f10 head f8 mainIn #connect
Ps0 f3 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
