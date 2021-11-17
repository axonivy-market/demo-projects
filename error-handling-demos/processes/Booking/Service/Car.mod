[Ivy]
1500483191BD4791 9.3.1 #module
>Proto >Proto Collection #zClass
hz0 Car Big #zClass
hz0 B #cInfo
hz0 #process
hz0 @TextInP .type .type #zField
hz0 @TextInP .processKind .processKind #zField
hz0 @AnnotationInP-0n ai ai #zField
hz0 @MessageFlowInP-0n messageIn messageIn #zField
hz0 @MessageFlowOutP-0n messageOut messageOut #zField
hz0 @TextInP .xml .xml #zField
hz0 @TextInP .responsibility .responsibility #zField
hz0 @StartSub f0 '' #zField
hz0 @EndSub f1 '' #zField
hz0 @WSElement f3 '' #zField
hz0 @PushWFArc f4 '' #zField
hz0 @PushWFArc f2 '' #zField
>Proto hz0 hz0 Car #zField
hz0 f0 inParamDecl '<String size> param;' #txt
hz0 f0 outParamDecl '<> result;' #txt
hz0 f0 callSignature bookCar(String) #txt
hz0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>bookCar(String)</name>
    </language>
</elementInfo>
' #txt
hz0 f0 81 49 30 30 -43 17 #rect
hz0 f1 337 49 30 30 0 15 #rect
hz0 f3 actionTable 'out=in;
' #txt
hz0 f3 actionCode 'import ch.ivyteam.ivy.bpm.error.BpmError;
BpmError.create("booking:car:failed:unavailable").throwError();' #txt
hz0 f3 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
hz0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>remote booking</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
hz0 f3 168 42 112 44 -43 -8 #rect
hz0 f4 expr out #txt
hz0 f4 111 64 168 64 #arcP
hz0 f2 expr out #txt
hz0 f2 280 64 337 64 #arcP
>Proto hz0 .type booking.HertzData #txt
>Proto hz0 .processKind CALLABLE_SUB #txt
>Proto hz0 0 0 32 24 18 0 #rect
>Proto hz0 @|BIcon #fIcon
hz0 f0 mainOut f4 tail #connect
hz0 f4 head f3 mainIn #connect
hz0 f3 mainOut f2 tail #connect
hz0 f2 head f1 mainIn #connect
