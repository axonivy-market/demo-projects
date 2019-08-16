[Ivy]
167C5ADE7248B984 3.28 #module
>Proto >Proto Collection #zClass
Is0 IFrameProcess Big #zClass
Is0 RD #cInfo
Is0 #process
Is0 @TextInP .type .type #zField
Is0 @TextInP .processKind .processKind #zField
Is0 @AnnotationInP-0n ai ai #zField
Is0 @MessageFlowInP-0n messageIn messageIn #zField
Is0 @MessageFlowOutP-0n messageOut messageOut #zField
Is0 @TextInP .xml .xml #zField
Is0 @TextInP .responsibility .responsibility #zField
Is0 @UdInit f0 '' #zField
Is0 @UdProcessEnd f1 '' #zField
Is0 @PushWFArc f2 '' #zField
Is0 @UdEvent f3 '' #zField
Is0 @UdExitEnd f4 '' #zField
Is0 @PushWFArc f5 '' #zField
>Proto Is0 Is0 IFrameProcess #zField
Is0 f0 guid 167C5ADE72C8683F #txt
Is0 f0 method start(String) #txt
Is0 f0 inParameterDecl '<java.lang.String url> param;' #txt
Is0 f0 inParameterMapAction 'out.url=param.url;
' #txt
Is0 f0 outParameterDecl '<> result;' #txt
Is0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(url)</name>
    </language>
</elementInfo>
' #txt
Is0 f0 83 51 26 26 -20 15 #rect
Is0 f0 @|UdInitIcon #fIcon
Is0 f1 211 51 26 26 0 12 #rect
Is0 f1 @|UdProcessEndIcon #fIcon
Is0 f2 expr out #txt
Is0 f2 109 64 211 64 #arcP
Is0 f3 guid 167C5ADE72FFC63C #txt
Is0 f3 actionTable 'out=in;
' #txt
Is0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Is0 f3 83 147 26 26 -16 12 #rect
Is0 f3 @|UdEventIcon #fIcon
Is0 f4 211 147 26 26 0 12 #rect
Is0 f4 @|UdExitEndIcon #fIcon
Is0 f5 expr out #txt
Is0 f5 109 160 211 160 #arcP
>Proto Is0 .type ch.ivyteam.wf.workflow.IFrame.IFrameData #txt
>Proto Is0 .processKind HTML_DIALOG #txt
>Proto Is0 -8 -8 16 16 16 26 #rect
>Proto Is0 '' #fIcon
Is0 f0 mainOut f2 tail #connect
Is0 f2 head f1 mainIn #connect
Is0 f3 mainOut f5 tail #connect
Is0 f5 head f4 mainIn #connect
