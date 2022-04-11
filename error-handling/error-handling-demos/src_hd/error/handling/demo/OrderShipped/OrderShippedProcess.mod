[Ivy]
14ECFF3E4576898B 9.4.6 #module
>Proto >Proto Collection #zClass
Os0 OrderShippedProcess Big #zClass
Os0 RD #cInfo
Os0 #process
Os0 @TextInP .colors .colors #zField
Os0 @TextInP color color #zField
Os0 @TextInP .type .type #zField
Os0 @TextInP .processKind .processKind #zField
Os0 @AnnotationInP-0n ai ai #zField
Os0 @MessageFlowInP-0n messageIn messageIn #zField
Os0 @MessageFlowOutP-0n messageOut messageOut #zField
Os0 @TextInP .xml .xml #zField
Os0 @TextInP .responsibility .responsibility #zField
Os0 @UdInit f0 '' #zField
Os0 @UdProcessEnd f1 '' #zField
Os0 @PushWFArc f2 '' #zField
Os0 @UdEvent f3 '' #zField
Os0 @UdExitEnd f4 '' #zField
Os0 @PushWFArc f5 '' #zField
>Proto Os0 Os0 OrderShippedProcess #zField
Os0 f0 guid 14ECFF3E46F63B3D #txt
Os0 f0 method start(error.handling.demo.Order) #txt
Os0 f0 inParameterDecl '<error.handling.demo.Order order> param;' #txt
Os0 f0 inParameterMapAction 'out.order=param.order;
' #txt
Os0 f0 outParameterDecl '<> result;' #txt
Os0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Order)</name>
    </language>
</elementInfo>
' #txt
Os0 f0 83 51 26 26 -31 15 #rect
Os0 f1 211 51 26 26 0 12 #rect
Os0 f2 expr out #txt
Os0 f2 109 64 211 64 #arcP
Os0 f3 guid 14ECFF3E48487C2E #txt
Os0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Os0 f3 83 147 26 26 -15 12 #rect
Os0 f4 211 147 26 26 0 12 #rect
Os0 f5 expr out #txt
Os0 f5 109 160 211 160 #arcP
>Proto Os0 .type error.handling.demo.OrderShipped.OrderShippedData #txt
>Proto Os0 .processKind HTML_DIALOG #txt
>Proto Os0 -8 -8 16 16 16 26 #rect
Os0 f0 mainOut f2 tail #connect
Os0 f2 head f1 mainIn #connect
Os0 f3 mainOut f5 tail #connect
Os0 f5 head f4 mainIn #connect
