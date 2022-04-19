[Ivy]
14377E60D299F34F 9.4.8 #module
>Proto >Proto Collection #zClass
Es0 JsfCompositeComponentDemoProcess Big #zClass
Es0 RD #cInfo
Es0 #process
Es0 @TextInP .colors .colors #zField
Es0 @TextInP color color #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @AnnotationInP-0n ai ai #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @UdInit f0 '' #zField
Es0 @UdProcessEnd f1 '' #zField
Es0 @PushWFArc f2 '' #zField
>Proto Es0 Es0 JsfCompositeComponentDemoProcess #zField
Es0 f0 guid 139D96A574FD8C6C #txt
Es0 f0 method start() #txt
Es0 f0 inParameterDecl '<> param;' #txt
Es0 f0 inParameterMapAction 'out.person.billingAddress.country="Switzerland";
out.person.billingAddress.street="Bahnhofstrasse";
out.person.deliveryAddress.country="Germany";
out.person.deliveryAddress.street="Landstrasse";
out.person.firstname="Hans";
out.person.name="Muster";
' #txt
Es0 f0 outParameterDecl '<> result;' #txt
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Es0 f0 83 51 26 26 -16 12 #rect
Es0 f0 -1|-1|-9671572 #nodeStyle
Es0 f1 211 51 26 26 0 12 #rect
Es0 f1 -1|-1|-9671572 #nodeStyle
Es0 f2 expr out #txt
Es0 f2 109 64 211 64 #arcP
>Proto Es0 .type ch.ivyteam.htmldialog.demo.component.JsfCompositeComponentDemo.JsfCompositeComponentDemoData #txt
>Proto Es0 .processKind HTML_DIALOG #txt
>Proto Es0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
</elementInfo>
' #txt
>Proto Es0 -8 -8 16 16 16 26 #rect
Es0 f0 mainOut f2 tail #connect
Es0 f2 head f1 mainIn #connect
