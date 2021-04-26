[Ivy]
156DB995D6C6D132 9.3.0 #module
>Proto >Proto Collection #zClass
Ms0 ModifyCountryProcess Big #zClass
Ms0 RD #cInfo
Ms0 #process
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @MessageFlowInP-0n messageIn messageIn #zField
Ms0 @MessageFlowOutP-0n messageOut messageOut #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @UdProcessEnd f1 '' #zField
Ms0 @UdEvent f3 '' #zField
Ms0 @UdExitEnd f4 '' #zField
Ms0 @UdInit f6 '' #zField
Ms0 @GridStep f2 '' #zField
Ms0 @PushWFArc f7 '' #zField
Ms0 @PushWFArc f0 '' #zField
Ms0 @GridStep f8 '' #zField
Ms0 @PushWFArc f9 '' #zField
Ms0 @PushWFArc f5 '' #zField
>Proto Ms0 Ms0 ModifyCountryProcess #zField
Ms0 f1 339 51 26 26 0 12 #rect
Ms0 f3 guid 156DB995D7DE260B #txt
Ms0 f3 actionTable 'out=in;
' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ms0 f3 83 147 26 26 -14 12 #rect
Ms0 f4 339 147 26 26 0 12 #rect
Ms0 f6 guid 156DBA4F86F4C0B3 #txt
Ms0 f6 method start(String) #txt
Ms0 f6 inParameterDecl '<String id> param;' #txt
Ms0 f6 inParameterMapAction 'out.addressId=param.id;
' #txt
Ms0 f6 outParameterDecl '<> result;' #txt
Ms0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f6 83 51 26 26 -33 15 #rect
Ms0 f2 actionTable 'out=in;
' #txt
Ms0 f2 actionCode 'import workflow.businessdata.Address;

in.address = ivy.repo.find(in.addressId, Address.class) as Address;' #txt
Ms0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load Address</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f2 168 42 112 44 -38 -8 #rect
Ms0 f7 expr out #txt
Ms0 f7 109 64 168 64 #arcP
Ms0 f0 expr out #txt
Ms0 f0 280 64 339 64 #arcP
Ms0 f8 actionTable 'out=in;
' #txt
Ms0 f8 actionCode 'ivy.repo.overwrite(in.address, "country");' #txt
Ms0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Overwrite "Country"
in the Repository</name>
        <nameStyle>37
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f8 160 138 128 44 -46 -16 #rect
Ms0 f9 expr out #txt
Ms0 f9 109 160 160 160 #arcP
Ms0 f5 expr out #txt
Ms0 f5 288 160 339 160 #arcP
>Proto Ms0 .type workflow.businessdata.ModifyCountry.ModifyCountryData #txt
>Proto Ms0 .processKind HTML_DIALOG #txt
>Proto Ms0 -8 -8 16 16 16 26 #rect
Ms0 f6 mainOut f7 tail #connect
Ms0 f7 head f2 mainIn #connect
Ms0 f2 mainOut f0 tail #connect
Ms0 f0 head f1 mainIn #connect
Ms0 f3 mainOut f9 tail #connect
Ms0 f9 head f8 mainIn #connect
Ms0 f8 mainOut f5 tail #connect
Ms0 f5 head f4 mainIn #connect
