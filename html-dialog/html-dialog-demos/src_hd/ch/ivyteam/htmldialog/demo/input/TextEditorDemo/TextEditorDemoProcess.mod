[Ivy]
17BF3918B962C886 9.4.1 #module
>Proto >Proto Collection #zClass
Ts0 TextEditorDemoProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .colors .colors #zField
Ts0 @TextInP color color #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @UdInit f0 '' #zField
Ts0 @UdProcessEnd f1 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @UdEvent f3 '' #zField
Ts0 @PushWFArc f4 '' #zField
>Proto Ts0 Ts0 TextEditorDemoProcess #zField
Ts0 f0 guid 17BF3918BD1C8189 #txt
Ts0 f0 method start() #txt
Ts0 f0 inParameterDecl '<> param;' #txt
Ts0 f0 outParameterDecl '<> result;' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ts0 f0 83 51 26 26 -20 15 #rect
Ts0 f1 211 51 26 26 0 12 #rect
Ts0 f2 109 64 211 64 #arcP
Ts0 f3 guid 17BF3918C06BF4B6 #txt
Ts0 f3 actionTable 'out=in;
' #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update</name>
    </language>
</elementInfo>
' #txt
Ts0 f3 83 147 26 26 -16 15 #rect
Ts0 f4 106 152 214 72 #arcP
>Proto Ts0 .type ch.ivyteam.htmldialog.demo.input.TextEditorDemo.TextEditorDemoData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
Ts0 f0 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
Ts0 f3 mainOut f4 tail #connect
Ts0 f4 head f1 mainIn #connect
