[Ivy]
162494137FBEE605 9.4.6 #module
>Proto >Proto Collection #zClass
As0 AcceptOrderProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .colors .colors #zField
As0 @TextInP color color #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @UdInit f0 '' #zField
As0 @UdProcessEnd f1 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @UdEvent f3 '' #zField
As0 @UdExitEnd f4 '' #zField
As0 @PushWFArc f5 '' #zField
As0 @ErrorEnd f6 '' #zField
As0 @UdEvent f7 '' #zField
As0 @PushWFArc f8 '' #zField
>Proto As0 As0 AcceptOrderProcess #zField
As0 f0 guid 16249413814F1B4C #txt
As0 f0 method start(com.axonivy.connectivity.soap.service.Order) #txt
As0 f0 inParameterDecl '<com.axonivy.connectivity.soap.service.Order order> param;' #txt
As0 f0 inParameterMapAction 'out.order=param.order;
' #txt
As0 f0 outParameterDecl '<> result;' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Order)</name>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -31 15 #rect
As0 f1 211 51 26 26 0 12 #rect
As0 f2 expr out #txt
As0 f2 109 64 211 64 #arcP
As0 f3 guid 1624941387BCA73D #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>accept</name>
    </language>
</elementInfo>
' #txt
As0 f3 83 147 26 26 -18 15 #rect
As0 f4 211 147 26 26 0 12 #rect
As0 f5 expr out #txt
As0 f5 109 160 211 160 #arcP
As0 f6 errorCode order:declined #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>order:declined</name>
    </language>
</elementInfo>
' #txt
As0 f6 212 244 24 24 -39 17 #rect
As0 f7 guid 1624D160FEC234EA #txt
As0 f7 actionTable 'out=in;
' #txt
As0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>decline</name>
    </language>
</elementInfo>
' #txt
As0 f7 83 243 26 26 -20 15 #rect
As0 f8 expr out #txt
As0 f8 109 256 212 256 #arcP
>Proto As0 .type com.axonivy.connectivity.soap.AcceptOrder.AcceptOrderData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f3 mainOut f5 tail #connect
As0 f5 head f4 mainIn #connect
As0 f7 mainOut f8 tail #connect
As0 f8 head f6 mainIn #connect
