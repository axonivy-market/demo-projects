[Ivy]
15E519280889B152 9.3.0 #module
>Proto >Proto Collection #zClass
Es0 ErrorHandlingProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @AnnotationInP-0n ai ai #zField
Es0 @MessageFlowInP-0n messageIn messageIn #zField
Es0 @MessageFlowOutP-0n messageOut messageOut #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @UdInit f0 '' #zField
Es0 @UdProcessEnd f1 '' #zField
Es0 @PushWFArc f2 '' #zField
Es0 @UdEvent f3 '' #zField
Es0 @UdProcessEnd f4 '' #zField
Es0 @UdEvent f6 '' #zField
Es0 @UdProcessEnd f7 '' #zField
Es0 @GridStep f9 '' #zField
Es0 @PushWFArc f10 '' #zField
Es0 @PushWFArc f5 '' #zField
Es0 @GridStep f13 '' #zField
Es0 @PushWFArc f8 '' #zField
Es0 @PushWFArc f14 '' #zField
Es0 @UdEvent f11 '' #zField
Es0 @UdProcessEnd f12 '' #zField
Es0 @PushWFArc f15 '' #zField
>Proto Es0 Es0 ErrorHandlingProcess #zField
Es0 f0 guid 15E519280A386633 #txt
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
Es0 f0 83 51 26 26 -16 15 #rect
Es0 f1 339 51 26 26 0 12 #rect
Es0 f2 expr out #txt
Es0 f2 109 64 339 64 #arcP
Es0 f3 guid 15E519CF45D71F28 #txt
Es0 f3 actionTable 'out=in;
' #txt
Es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>exception</name>
    </language>
</elementInfo>
' #txt
Es0 f3 83 147 26 26 -26 12 #rect
Es0 f4 339 147 26 26 0 12 #rect
Es0 f6 guid 15E519CFEE8CD2D6 #txt
Es0 f6 actionTable 'out=in;
' #txt
Es0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>expireMySession</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f6 83 243 26 26 -46 15 #rect
Es0 f7 339 243 26 26 0 12 #rect
Es0 f9 actionTable 'out=in;
' #txt
Es0 f9 actionCode 0/0; #txt
Es0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>throw exception</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f9 168 138 112 44 -42 -8 #rect
Es0 f10 expr out #txt
Es0 f10 109 160 168 160 #arcP
Es0 f5 expr out #txt
Es0 f5 280 160 339 160 #arcP
Es0 f13 actionTable 'out=in;
' #txt
Es0 f13 actionCode 'import ch.ivyteam.ivy.request.IHttpRequest;

IHttpRequest request = ivy.request as IHttpRequest;
request.getHttpServletRequest().getSession(false).invalidate();' #txt
Es0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>expire this session</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Es0 f13 168 234 112 44 -52 -8 #rect
Es0 f8 expr out #txt
Es0 f8 109 256 168 256 #arcP
Es0 f8 0 0.5434273351304362 0 0 #arcLabel
Es0 f14 expr out #txt
Es0 f14 280 256 339 256 #arcP
Es0 f14 0 0.40994932821782576 0 0 #arcLabel
Es0 f11 guid 15E52485AC0B977F #txt
Es0 f11 actionTable 'out=in;
' #txt
Es0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>executeSomething</name>
    </language>
</elementInfo>
' #txt
Es0 f11 83 339 26 26 -51 12 #rect
Es0 f12 339 339 26 26 0 12 #rect
Es0 f15 109 352 339 352 #arcP
>Proto Es0 .type ch.ivyteam.htmldialog.demo.other.ErrorHandling.ErrorHandlingData #txt
>Proto Es0 .processKind HTML_DIALOG #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
Es0 f0 mainOut f2 tail #connect
Es0 f2 head f1 mainIn #connect
Es0 f3 mainOut f10 tail #connect
Es0 f10 head f9 mainIn #connect
Es0 f9 mainOut f5 tail #connect
Es0 f5 head f4 mainIn #connect
Es0 f6 mainOut f8 tail #connect
Es0 f8 head f13 mainIn #connect
Es0 f13 mainOut f14 tail #connect
Es0 f14 head f7 mainIn #connect
Es0 f11 mainOut f15 tail #connect
Es0 f15 head f12 mainIn #connect
