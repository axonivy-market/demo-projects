[Ivy]
16778F324326C1FA 3.23 #module
>Proto >Proto Collection #zClass
As0 AsyncUiInvokerProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @RichDialogProcessStart f3 '' #zField
As0 @RichDialogEnd f4 '' #zField
As0 @PushWFArc f5 '' #zField
As0 @InfoButton f6 '' #zField
As0 @InfoButton f7 '' #zField
>Proto As0 As0 AsyncUiInvokerProcess #zField
As0 f0 guid 16778F3244E541A7 #txt
As0 f0 type com.axonivy.connectivity.rest.AsyncUiInvoker.AsyncUiInvokerData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents true #txt
As0 f0 inParameterDecl 'com.axonivy.connectivity.Data out;
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -20 15 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type com.axonivy.connectivity.rest.AsyncUiInvoker.AsyncUiInvokerData #txt
As0 f1 211 51 26 26 0 12 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f2 expr out #txt
As0 f2 109 64 211 64 #arcP
As0 f3 guid 16778F3247446E27 #txt
As0 f3 type com.axonivy.connectivity.rest.AsyncUiInvoker.AsyncUiInvokerData #txt
As0 f3 actionDecl 'com.axonivy.connectivity.rest.AsyncUiInvoker.AsyncUiInvokerData out;
' #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
As0 f3 83 147 26 26 -16 12 #rect
As0 f3 @|RichDialogProcessStartIcon #fIcon
As0 f4 type com.axonivy.connectivity.rest.AsyncUiInvoker.AsyncUiInvokerData #txt
As0 f4 guid 16778F32474151CE #txt
As0 f4 211 147 26 26 0 12 #rect
As0 f4 @|RichDialogEndIcon #fIcon
As0 f5 expr out #txt
As0 f5 109 160 211 160 #arcP
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Client Side in JavaScript

Not much is going on in here:
- within this demo no server side processing is done with JSF
- data is requested and shown via JavaScript directly within the client browser
- see AsyncUiInvoker View for details</name>
        <nameStyle>25,0,8
199,7
12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 64 226 432 108 -210 -50 #rect
As0 f6 @|IBIcon #fIcon
As0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Server Side in Java

The REST endpoint called by this demo is implemented in the Java class: 

com.axonivy.connectivity.rest.provider.BatchService</name>
        <nameStyle>19,0,8
75,7
52,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f7 64 354 416 92 -202 -42 #rect
As0 f7 @|IBIcon #fIcon
>Proto As0 .type com.axonivy.connectivity.rest.AsyncUiInvoker.AsyncUiInvokerData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f3 mainOut f5 tail #connect
As0 f5 head f4 mainIn #connect
