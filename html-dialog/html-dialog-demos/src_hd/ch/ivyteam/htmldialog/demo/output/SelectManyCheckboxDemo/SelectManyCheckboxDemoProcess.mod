[Ivy]
13F613EA00B31DDD 9.3.0 #module
>Proto >Proto Collection #zClass
Ss0 SelectManyCheckboxDemoProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @UdInit f0 '' #zField
Ss0 @UdProcessEnd f1 '' #zField
Ss0 @CallSub f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @UdProcessEnd f6 '' #zField
Ss0 @UdEvent f7 '' #zField
Ss0 @UdExitEnd f8 '' #zField
Ss0 @UdEvent f5 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @PushWFArc f2 '' #zField
>Proto Ss0 Ss0 SelectManyCheckboxDemoProcess #zField
Ss0 f0 guid 13F3C7335762710A #txt
Ss0 f0 method start() #txt
Ss0 f0 inParameterDecl '<> param;' #txt
Ss0 f0 outParameterDecl '<> result;' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 115 26 26 -16 12 #rect
Ss0 f0 -1|-1|-9671572 #nodeStyle
Ss0 f1 419 115 26 26 0 12 #rect
Ss0 f1 -1|-1|-9671572 #nodeStyle
Ss0 f3 processCall 'Functional Processes/InitPersons:initPerson()' #txt
Ss0 f3 requestActionDecl '<> param;' #txt
Ss0 f3 responseActionDecl 'ch.ivyteam.htmldialog.demo.output.SelectManyCheckboxDemo.SelectManyCheckboxDemoData out;
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
Ss0 f3 200 106 112 44 -32 -8 #rect
Ss0 f3 -1|-1|-9671572 #nodeStyle
Ss0 f4 expr out #txt
Ss0 f4 109 128 200 128 #arcP
Ss0 f6 211 307 26 26 0 12 #rect
Ss0 f6 -1|-1|-9671572 #nodeStyle
Ss0 f7 guid 13F3C7C4AAA7A1A5 #txt
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
Ss0 f7 83 403 26 26 -15 12 #rect
Ss0 f7 -1|-1|-9671572 #nodeStyle
Ss0 f8 211 403 26 26 0 12 #rect
Ss0 f8 -1|-1|-9671572 #nodeStyle
Ss0 f5 guid 13F3C7C4AA97821B #txt
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
Ss0 f5 83 307 26 26 -14 12 #rect
Ss0 f5 -1|-1|-9671572 #nodeStyle
Ss0 f9 expr out #txt
Ss0 f9 109 416 211 416 #arcP
Ss0 f10 expr out #txt
Ss0 f10 109 320 211 320 #arcP
Ss0 f2 expr out #txt
Ss0 f2 312 128 419 128 #arcP
>Proto Ss0 .type ch.ivyteam.htmldialog.demo.output.SelectManyCheckboxDemo.SelectManyCheckboxDemoData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Initialisation</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>257</swimlaneSize>
    <swimlaneSize>222</swimlaneSize>
    <swimlaneColor>-1</swimlaneColor>
    <swimlaneColor>-1</swimlaneColor>
</elementInfo>
' #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
Ss0 f0 mainOut f4 tail #connect
Ss0 f4 head f3 mainIn #connect
Ss0 f7 mainOut f9 tail #connect
Ss0 f9 head f8 mainIn #connect
Ss0 f5 mainOut f10 tail #connect
Ss0 f10 head f6 mainIn #connect
Ss0 f3 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
