[Ivy]
13C3DAFB89BB3EB0 9.4.0 #module
>Proto >Proto Collection #zClass
Bs0 BeanValidationDemoProcess Big #zClass
Bs0 RD #cInfo
Bs0 #process
Bs0 @TextInP .type .type #zField
Bs0 @TextInP .processKind .processKind #zField
Bs0 @AnnotationInP-0n ai ai #zField
Bs0 @TextInP .xml .xml #zField
Bs0 @TextInP .responsibility .responsibility #zField
Bs0 @UdInit f0 '' #zField
Bs0 @UdProcessEnd f1 '' #zField
Bs0 @PushWFArc f2 '' #zField
Bs0 @UdEvent f3 '' #zField
Bs0 @UdProcessEnd f4 '' #zField
Bs0 @PushWFArc f5 '' #zField
Bs0 @UdEvent f6 '' #zField
Bs0 @UdExitEnd f9 '' #zField
Bs0 @PushWFArc f10 '' #zField
>Proto Bs0 Bs0 BeanValidationDemoProcess #zField
Bs0 f0 guid 13C3DAFB8BAE8F79 #txt
Bs0 f0 method start() #txt
Bs0 f0 inParameterDecl '<> param;' #txt
Bs0 f0 inParameterMapAction 'out.person.name="";
' #txt
Bs0 f0 outParameterDecl '<> result;' #txt
Bs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Bs0 f0 83 83 26 26 -16 12 #rect
Bs0 f0 -1|-1|-9671572 #nodeStyle
Bs0 f1 211 83 26 26 0 12 #rect
Bs0 f1 -1|-1|-9671572 #nodeStyle
Bs0 f2 expr out #txt
Bs0 f2 109 96 211 96 #arcP
Bs0 f3 guid 13C3DC3DE517B556 #txt
Bs0 f3 actionTable 'out=in;
' #txt
Bs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send</name>
    </language>
</elementInfo>
' #txt
Bs0 f3 83 243 26 26 -14 12 #rect
Bs0 f3 -1|-1|-9671572 #nodeStyle
Bs0 f4 211 243 26 26 0 12 #rect
Bs0 f4 -1|-1|-9671572 #nodeStyle
Bs0 f5 109 256 211 256 #arcP
Bs0 f6 guid 13C3DD5BB26CE572 #txt
Bs0 f6 actionTable 'out=in;
' #txt
Bs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Bs0 f6 83 339 26 26 -15 12 #rect
Bs0 f6 -1|-1|-9671572 #nodeStyle
Bs0 f9 211 339 26 26 0 12 #rect
Bs0 f9 -1|-1|-9671572 #nodeStyle
Bs0 f10 expr out #txt
Bs0 f10 109 352 211 352 #arcP
>Proto Bs0 .type ch.ivyteam.htmldialog.demo.input.BeanValidationDemo.BeanValidationDemoData #txt
>Proto Bs0 .processKind HTML_DIALOG #txt
>Proto Bs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Initialisation
</swimlaneLabel>
        <swimlaneLabel>Events
</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>224</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Bs0 -8 -8 16 16 16 26 #rect
Bs0 f0 mainOut f2 tail #connect
Bs0 f2 head f1 mainIn #connect
Bs0 f3 mainOut f5 tail #connect
Bs0 f5 head f4 mainIn #connect
Bs0 f6 mainOut f10 tail #connect
Bs0 f10 head f9 mainIn #connect
