[Ivy]
139E3EF5C6DBC97F 9.4.3 #module
>Proto >Proto Collection #zClass
Ps0 PartialUpdateDemoProcess Big #zClass
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
Ps0 @PushWFArc f2 '' #zField
Ps0 @UdEvent f3 '' #zField
Ps0 @UdProcessEnd f4 '' #zField
Ps0 @GridStep f5 '' #zField
Ps0 @PushWFArc f6 '' #zField
Ps0 @PushWFArc f7 '' #zField
>Proto Ps0 Ps0 PartialUpdateDemoProcess #zField
Ps0 f0 guid 0139E3EF5C8EF75C #txt
Ps0 f0 method start() #txt
Ps0 f0 inParameterDecl '<> param;' #txt
Ps0 f0 inParameterMapAction 'out.counter=0;
' #txt
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
Ps0 f1 211 83 26 26 0 12 #rect
Ps0 f1 -1|-1|-9671572 #nodeStyle
Ps0 f2 expr out #txt
Ps0 f2 109 96 211 96 #arcP
Ps0 f3 guid 139E3F86899BF38A #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>increaseCounter</name>
    </language>
</elementInfo>
' #txt
Ps0 f3 83 307 26 26 -46 12 #rect
Ps0 f3 -1|-1|-9671572 #nodeStyle
Ps0 f4 403 307 26 26 0 12 #rect
Ps0 f4 -1|-1|-9671572 #nodeStyle
Ps0 f5 actionTable 'out=in;
out.counter=in.counter+1;
' #txt
Ps0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Increase Counter</name>
    </language>
</elementInfo>
' #txt
Ps0 f5 200 298 112 44 -47 -8 #rect
Ps0 f5 -1|-1|-9671572 #nodeStyle
Ps0 f6 expr out #txt
Ps0 f6 109 320 200 320 #arcP
Ps0 f7 expr out #txt
Ps0 f7 312 320 403 320 #arcP
>Proto Ps0 .type ch.ivyteam.htmldialog.demo.component.PartialUpdateDemo.PartialUpdateDemoData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Initialisation
</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>272</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f3 mainOut f6 tail #connect
Ps0 f6 head f5 mainIn #connect
Ps0 f5 mainOut f7 tail #connect
Ps0 f7 head f4 mainIn #connect
