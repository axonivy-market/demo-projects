[Ivy]
156DF88423ED9C68 9.4.1 #module
>Proto >Proto Collection #zClass
Cs0 CreateAddressProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .colors .colors #zField
Cs0 @TextInP color color #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @UdProcessEnd f1 '' #zField
Cs0 @UdEvent f3 '' #zField
Cs0 @UdExitEnd f4 '' #zField
Cs0 @UdInit f6 '' #zField
Cs0 @GridStep f0 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @GridStep f8 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @PushWFArc f7 '' #zField
>Proto Cs0 Cs0 CreateAddressProcess #zField
Cs0 f1 339 51 26 26 0 12 #rect
Cs0 f3 guid 156DF8842532A875 #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 83 147 26 26 -14 12 #rect
Cs0 f4 339 147 26 26 0 12 #rect
Cs0 f6 guid 156DF890A0821117 #txt
Cs0 f6 method start() #txt
Cs0 f6 inParameterDecl '<> param;' #txt
Cs0 f6 outParameterDecl '<String id> result;' #txt
Cs0 f6 outParameterMapAction 'result.id=in.id;
' #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f6 83 51 26 26 -17 15 #rect
Cs0 f0 actionTable 'out=in;
' #txt
Cs0 f0 actionCode 'in.id = ivy.repo.save(in.address).getId();' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Save Address
into Repository</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 160 138 128 44 -40 -16 #rect
Cs0 f2 expr out #txt
Cs0 f2 109 160 160 160 #arcP
Cs0 f5 expr out #txt
Cs0 f5 288 160 339 160 #arcP
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 actionCode in.address; #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init Address</name>
    </language>
</elementInfo>
' #txt
Cs0 f8 168 42 112 44 -32 -8 #rect
Cs0 f9 expr out #txt
Cs0 f9 109 64 168 64 #arcP
Cs0 f7 expr out #txt
Cs0 f7 280 64 339 64 #arcP
>Proto Cs0 .type workflow.businessdata.CreateAddress.CreateAddressData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
Cs0 f3 mainOut f2 tail #connect
Cs0 f2 head f0 mainIn #connect
Cs0 f0 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f6 mainOut f9 tail #connect
Cs0 f9 head f8 mainIn #connect
Cs0 f8 mainOut f7 tail #connect
Cs0 f7 head f1 mainIn #connect
