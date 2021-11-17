[Ivy]
16764B1AE13CC212 9.3.1 #module
>Proto >Proto Collection #zClass
Cs0 ChatClientProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @UdInit f0 '' #zField
Cs0 @UdProcessEnd f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @UdEvent f3 '' #zField
Cs0 @UdExitEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @InfoButton f6 '' #zField
Cs0 @InfoButton f7 '' #zField
>Proto Cs0 Cs0 ChatClientProcess #zField
Cs0 f0 guid 16764B1AE2FA7A37 #txt
Cs0 f0 method start() #txt
Cs0 f0 inParameterDecl '<> param;' #txt
Cs0 f0 outParameterDecl '<> result;' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -20 15 #rect
Cs0 f1 211 51 26 26 0 12 #rect
Cs0 f2 expr out #txt
Cs0 f2 109 64 211 64 #arcP
Cs0 f3 guid 16764B1AE4D38241 #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 83 147 26 26 -16 12 #rect
Cs0 f4 211 147 26 26 0 12 #rect
Cs0 f5 expr out #txt
Cs0 f5 109 160 211 160 #arcP
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Client Side in JavaScript

Not much is going on in here:
- within this demo no server side processing is done with JSF
- data is requested and shown via JavaScript directly within the client browser
- see resources/chat.js and the ChatClient View for details</name>
        <nameStyle>25,0,8
180,7
17,1,7
9,7
15,1,7
12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 72 226 432 108 -210 -50 #rect
Cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Server Side in Java

The REST endpoint called by this demo is implemented in the Java class: 

com.axonivy.connectivity.rest.aynch.chat.ChatService

The Java class uses asynchronous request processing so that no 
request thread is blocked while waiting for new chat messages.</name>
        <nameStyle>19,0,8
75,7
181,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f7 72 346 416 140 -202 -66 #rect
>Proto Cs0 .type com.axonivy.connectivity.rest.ChatClient.ChatClientData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
