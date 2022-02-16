[Ivy]
13B69F6D60FCC080 9.4.0 #module
>Proto >Proto Collection #zClass
As0 AddressComponentProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @UdInit f0 '' #zField
As0 @UdProcessEnd f1 '' #zField
As0 @PushWFArc f2 '' #zField
>Proto As0 As0 AddressComponentProcess #zField
As0 f0 guid 13B69F6D63DF676C #txt
As0 f0 method start(ch.ivyteam.htmldialog.demo.Address) #txt
As0 f0 inParameterDecl '<ch.ivyteam.htmldialog.demo.Address address> param;' #txt
As0 f0 inParameterMapAction 'out.address=param.address.clone();
' #txt
As0 f0 outParameterDecl '<ch.ivyteam.htmldialog.demo.Address address> result;' #txt
As0 f0 outParameterMapAction 'result.address=in.address;
' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Address)</name>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -39 12 #rect
As0 f0 -1|-1|-9671572 #nodeStyle
As0 f1 211 51 26 26 0 12 #rect
As0 f1 -1|-1|-9671572 #nodeStyle
As0 f2 expr out #txt
As0 f2 109 64 211 64 #arcP
>Proto As0 .type ch.ivyteam.htmldialog.demo.component.AddressComponent.AddressComponentData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
