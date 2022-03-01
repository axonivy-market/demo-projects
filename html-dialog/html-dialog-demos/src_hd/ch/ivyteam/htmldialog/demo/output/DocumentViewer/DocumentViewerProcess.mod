[Ivy]
17B81E211CF4837E 9.4.1 #module
>Proto >Proto Collection #zClass
Ds0 DocumentViewerProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .colors .colors #zField
Ds0 @TextInP color color #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @UdInit f0 '' #zField
Ds0 @UdProcessEnd f1 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @UdEvent f3 '' #zField
Ds0 @UdExitEnd f4 '' #zField
Ds0 @PushWFArc f5 '' #zField
Ds0 @UdEvent f6 '' #zField
Ds0 @UdProcessEnd f7 '' #zField
Ds0 @PushWFArc f8 '' #zField
>Proto Ds0 Ds0 DocumentViewerProcess #zField
Ds0 f0 guid 17B7D73530822891 #txt
Ds0 f0 method start() #txt
Ds0 f0 inParameterDecl '<> param;' #txt
Ds0 f0 outParameterDecl '<> result;' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -16 15 #rect
Ds0 f1 211 51 26 26 0 12 #rect
Ds0 f2 109 64 211 64 #arcP
Ds0 f3 guid 17B7D73531823438 #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ds0 f3 83 275 26 26 -15 15 #rect
Ds0 f4 211 275 26 26 0 12 #rect
Ds0 f5 109 288 211 288 #arcP
Ds0 f6 guid 17B7D77D30A432FB #txt
Ds0 f6 actionTable 'out=in;
out.filename=in.ivyFile.getName().isEmpty() ? "No document" : in.ivyFile.getName();
out.ivyFile=in.ivyFile.getName().isEmpty() ? null : in.ivyFile;
' #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>upload</name>
    </language>
</elementInfo>
' #txt
Ds0 f6 83 179 26 26 -19 15 #rect
Ds0 f7 211 179 26 26 0 12 #rect
Ds0 f8 109 192 211 192 #arcP
>Proto Ds0 .type ch.ivyteam.htmldialog.demo.output.DocumentViewer.DocumentViewerData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Initialization</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>128</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
Ds0 f0 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f6 mainOut f8 tail #connect
Ds0 f8 head f7 mainIn #connect
