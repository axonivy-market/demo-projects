[Ivy]
156DBAA5DDFCA84E 9.4.6 #module
>Proto >Proto Collection #zClass
Vs0 ViewAddressProcess Big #zClass
Vs0 RD #cInfo
Vs0 #process
Vs0 @TextInP .colors .colors #zField
Vs0 @TextInP color color #zField
Vs0 @TextInP .type .type #zField
Vs0 @TextInP .processKind .processKind #zField
Vs0 @AnnotationInP-0n ai ai #zField
Vs0 @MessageFlowInP-0n messageIn messageIn #zField
Vs0 @MessageFlowOutP-0n messageOut messageOut #zField
Vs0 @TextInP .xml .xml #zField
Vs0 @TextInP .responsibility .responsibility #zField
Vs0 @UdProcessEnd f1 '' #zField
Vs0 @UdEvent f3 '' #zField
Vs0 @UdExitEnd f4 '' #zField
Vs0 @PushWFArc f5 '' #zField
Vs0 @UdInit f6 '' #zField
Vs0 @GridStep f2 '' #zField
Vs0 @PushWFArc f7 '' #zField
Vs0 @PushWFArc f0 '' #zField
>Proto Vs0 Vs0 ViewAddressProcess #zField
Vs0 f1 339 51 26 26 0 12 #rect
Vs0 f3 guid 156DBAA5E03CA2BA #txt
Vs0 f3 actionTable 'out=in;
' #txt
Vs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Vs0 f3 83 147 26 26 -14 12 #rect
Vs0 f4 211 147 26 26 0 12 #rect
Vs0 f5 expr out #txt
Vs0 f5 109 160 211 160 #arcP
Vs0 f6 guid 156DF607CBBFB119 #txt
Vs0 f6 method start(String) #txt
Vs0 f6 inParameterDecl '<String id> param;' #txt
Vs0 f6 inParameterMapAction 'out.addressId=param.id;
' #txt
Vs0 f6 outParameterDecl '<> result;' #txt
Vs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
    </language>
</elementInfo>
' #txt
Vs0 f6 83 51 26 26 -33 15 #rect
Vs0 f2 actionTable 'out=in;
' #txt
Vs0 f2 actionCode 'import workflow.businessdata.Address;

in.address = ivy.repo.find(in.addressId, Address.class) as Address;' #txt
Vs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load Address</name>
    </language>
</elementInfo>
' #txt
Vs0 f2 168 42 112 44 -38 -8 #rect
Vs0 f7 expr out #txt
Vs0 f7 109 64 168 64 #arcP
Vs0 f0 expr out #txt
Vs0 f0 280 64 339 64 #arcP
>Proto Vs0 .type workflow.businessdata.ViewAddress.ViewAddressData #txt
>Proto Vs0 .processKind HTML_DIALOG #txt
>Proto Vs0 -8 -8 16 16 16 26 #rect
Vs0 f3 mainOut f5 tail #connect
Vs0 f5 head f4 mainIn #connect
Vs0 f6 mainOut f7 tail #connect
Vs0 f7 head f2 mainIn #connect
Vs0 f2 mainOut f0 tail #connect
Vs0 f0 head f1 mainIn #connect
