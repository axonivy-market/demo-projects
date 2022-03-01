[Ivy]
139D3B8894867715 9.4.1 #module
>Proto >Proto Collection #zClass
Os0 OrderListDemoProcess Big #zClass
Os0 RD #cInfo
Os0 #process
Os0 @TextInP .colors .colors #zField
Os0 @TextInP color color #zField
Os0 @TextInP .type .type #zField
Os0 @TextInP .processKind .processKind #zField
Os0 @AnnotationInP-0n ai ai #zField
Os0 @TextInP .xml .xml #zField
Os0 @TextInP .responsibility .responsibility #zField
Os0 @UdInit f0 '' #zField
Os0 @UdProcessEnd f1 '' #zField
Os0 @UdEvent f5 '' #zField
Os0 @UdProcessEnd f6 '' #zField
Os0 @UdEvent f7 '' #zField
Os0 @UdExitEnd f8 '' #zField
Os0 @PushWFArc f9 '' #zField
Os0 @PushWFArc f10 '' #zField
Os0 @CallSub f2 '' #zField
Os0 @PushWFArc f3 '' #zField
Os0 @PushWFArc f4 '' #zField
>Proto Os0 Os0 OrderListDemoProcess #zField
Os0 f0 guid 139D3B8895B6832C #txt
Os0 f0 method start() #txt
Os0 f0 inParameterDecl '<> param;' #txt
Os0 f0 outParameterDecl '<> result;' #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Os0 f0 83 83 26 26 -16 12 #rect
Os0 f0 -1|-1|-9671572 #nodeStyle
Os0 f1 427 83 26 26 0 12 #rect
Os0 f1 -1|-1|-9671572 #nodeStyle
Os0 f5 guid 139D43609EB4FFE9 #txt
Os0 f5 actionTable 'out=in;
' #txt
Os0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send</name>
    </language>
</elementInfo>
' #txt
Os0 f5 83 243 26 26 -14 12 #rect
Os0 f5 -1|-1|-9671572 #nodeStyle
Os0 f6 211 243 26 26 0 12 #rect
Os0 f6 -1|-1|-9671572 #nodeStyle
Os0 f7 guid 139D4375C5912100 #txt
Os0 f7 actionTable 'out=in;
' #txt
Os0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Os0 f7 83 339 26 26 -15 12 #rect
Os0 f7 -1|-1|-9671572 #nodeStyle
Os0 f8 211 339 26 26 0 12 #rect
Os0 f8 -1|-1|-9671572 #nodeStyle
Os0 f9 expr out #txt
Os0 f9 109 352 211 352 #arcP
Os0 f10 expr out #txt
Os0 f10 109 256 211 256 #arcP
Os0 f2 processCall 'Functional Processes/InitPersons:initPerson()' #txt
Os0 f2 requestActionDecl '<> param;' #txt
Os0 f2 responseActionDecl 'ch.ivyteam.htmldialog.demo.output.OrderListDemo.OrderListDemoData out;
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
Os0 f2 208 74 112 44 -32 -8 #rect
Os0 f2 -1|-1|-9671572 #nodeStyle
Os0 f3 expr out #txt
Os0 f3 109 96 208 96 #arcP
Os0 f4 expr out #txt
Os0 f4 320 96 427 96 #arcP
>Proto Os0 .type ch.ivyteam.htmldialog.demo.output.OrderListDemo.OrderListDemoData #txt
>Proto Os0 .processKind HTML_DIALOG #txt
>Proto Os0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Initialisation</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>224</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
Os0 f7 mainOut f9 tail #connect
Os0 f9 head f8 mainIn #connect
Os0 f5 mainOut f10 tail #connect
Os0 f10 head f6 mainIn #connect
Os0 f0 mainOut f3 tail #connect
Os0 f3 head f2 mainIn #connect
Os0 f2 mainOut f4 tail #connect
Os0 f4 head f1 mainIn #connect
