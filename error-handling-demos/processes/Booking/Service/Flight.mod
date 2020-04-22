[Ivy]
1500482C30B7492E 7.5.0 #module
>Proto >Proto Collection #zClass
et0 Flight Big #zClass
et0 B #cInfo
et0 #process
et0 @TextInP .type .type #zField
et0 @TextInP .processKind .processKind #zField
et0 @AnnotationInP-0n ai ai #zField
et0 @MessageFlowInP-0n messageIn messageIn #zField
et0 @MessageFlowOutP-0n messageOut messageOut #zField
et0 @TextInP .xml .xml #zField
et0 @TextInP .responsibility .responsibility #zField
et0 @StartSub f0 '' #zField
et0 @EndSub f1 '' #zField
et0 @WSElement f3 '' #zField
et0 @PushWFArc f4 '' #zField
et0 @WSElement f5 '' #zField
et0 @PushWFArc f6 '' #zField
et0 @PushWFArc f2 '' #zField
et0 @ProcessException f7 '' #zField
et0 @ErrorEnd f8 '' #zField
et0 @PushWFArc f9 '' #zField
et0 @StartSub f10 '' #zField
et0 @EndSub f11 '' #zField
et0 @WSElement f13 '' #zField
et0 @PushWFArc f14 '' #zField
et0 @PushWFArc f12 '' #zField
>Proto et0 et0 Flight #zField
et0 f0 inParamDecl '<booking.Flight flight,booking.Customer customer> param;' #txt
et0 f0 outParamDecl '<> result;' #txt
et0 f0 callSignature bookFlight(booking.Flight,booking.Customer) #txt
et0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>bookFlight
(Flight,Customer)</name>
        <nameStyle>28,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
et0 f0 81 49 30 30 -48 17 #rect
et0 f0 @|StartSubIcon #fIcon
et0 f1 497 49 30 30 0 15 #rect
et0 f1 @|EndSubIcon #fIcon
et0 f3 actionTable 'out=in;
' #txt
et0 f3 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
et0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>register customer</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
et0 f3 168 42 112 44 -48 -8 #rect
et0 f3 @|WebServiceIcon #fIcon
et0 f4 expr out #txt
et0 f4 111 64 168 64 #arcP
et0 f5 actionTable 'out=in;
' #txt
et0 f5 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
et0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>book flight</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
et0 f5 328 42 112 44 -28 -8 #rect
et0 f5 @|WebServiceIcon #fIcon
et0 f6 expr out #txt
et0 f6 280 64 328 64 #arcP
et0 f2 expr out #txt
et0 f2 440 64 497 64 #arcP
et0 f7 actionTable 'out=in;
out.wsError=error;
' #txt
et0 f7 errorCode ivy:error:webservice #txt
et0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy:error:webservice</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
et0 f7 209 145 30 30 -53 17 #rect
et0 f7 @|ExceptionIcon #fIcon
et0 f8 errorExpr in.wsError #txt
et0 f8 errorCode booking:flight:failed #txt
et0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>booking:flight:failed</name>
        <nameStyle>21,7
</nameStyle>
    </language>
</elementInfo>
' #txt
et0 f8 369 145 30 30 -57 17 #rect
et0 f8 @|ErrorEndIcon #fIcon
et0 f9 expr out #txt
et0 f9 239 160 369 160 #arcP
et0 f10 inParamDecl '<booking.Flight flight,booking.Customer customer> param;' #txt
et0 f10 outParamDecl '<> result;' #txt
et0 f10 callSignature cancelFlight(booking.Flight,booking.Customer) #txt
et0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancelFlight
(Flight,Customer)</name>
        <nameStyle>30,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
et0 f10 81 273 30 30 -48 17 #rect
et0 f10 @|StartSubIcon #fIcon
et0 f11 497 273 30 30 0 15 #rect
et0 f11 @|EndSubIcon #fIcon
et0 f13 actionTable 'out=in;
' #txt
et0 f13 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
et0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel flight</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
et0 f13 232 266 112 44 -32 -8 #rect
et0 f13 @|WebServiceIcon #fIcon
et0 f14 expr out #txt
et0 f14 111 288 232 288 #arcP
et0 f12 expr out #txt
et0 f12 344 288 497 288 #arcP
>Proto et0 .type booking.EasyjetData #txt
>Proto et0 .processKind CALLABLE_SUB #txt
>Proto et0 0 0 32 24 18 0 #rect
>Proto et0 @|BIcon #fIcon
et0 f0 mainOut f4 tail #connect
et0 f4 head f3 mainIn #connect
et0 f3 mainOut f6 tail #connect
et0 f6 head f5 mainIn #connect
et0 f5 mainOut f2 tail #connect
et0 f2 head f1 mainIn #connect
et0 f7 mainOut f9 tail #connect
et0 f9 head f8 mainIn #connect
et0 f10 mainOut f14 tail #connect
et0 f14 head f13 mainIn #connect
et0 f13 mainOut f12 tail #connect
et0 f12 head f11 mainIn #connect
