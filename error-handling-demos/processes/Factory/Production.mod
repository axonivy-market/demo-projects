[Ivy]
1500417E1DADBB7C 9.3.0 #module
>Proto >Proto Collection #zClass
fy0 Production Big #zClass
fy0 B #cInfo
fy0 #process
fy0 @TextInP .type .type #zField
fy0 @TextInP .processKind .processKind #zField
fy0 @AnnotationInP-0n ai ai #zField
fy0 @MessageFlowInP-0n messageIn messageIn #zField
fy0 @MessageFlowOutP-0n messageOut messageOut #zField
fy0 @TextInP .xml .xml #zField
fy0 @TextInP .responsibility .responsibility #zField
fy0 @StartSub f0 '' #zField
fy0 @EndSub f1 '' #zField
fy0 @InfoButton f9 '' #zField
fy0 @DBStep f7 '' #zField
fy0 @WSElement f3 '' #zField
fy0 @PushWFArc f6 '' #zField
fy0 @PushWFArc f8 '' #zField
fy0 @ErrorBoundaryEvent Et0 ErrorBoundaryEvent #zField
fy0 @ErrorEnd f5 '' #zField
fy0 @PushWFArc f4 '' #zField
fy0 @PushWFArc f2 '' #zField
>Proto fy0 fy0 Production #zField
fy0 f0 inParamDecl '<String model,Number amount> param;' #txt
fy0 f0 inParamTable 'out.amount=param.amount;
out.model=param.model;
' #txt
fy0 f0 outParamDecl '<> result;' #txt
fy0 f0 callSignature produceShoes(String,Number) #txt
fy0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>produceShoes
(String,Number)</name>
        <nameStyle>28,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
fy0 f0 81 209 30 30 -44 17 #rect
fy0 f1 577 209 30 30 0 15 #rect
fy0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Demonstrates how default ivy errors can be wrapped into a custom error
- the remote factory can throw an ivy:error:webservice:exception   if the host is not available
- the attached Error Boundary Event catches any ivy webservice error
- the Error End Event wraps the webservice error 
   and throws it as factory:unavailable  which has a specific meaning for the business</name>
        <nameStyle>70,8
34,7
1,3,7
30,3,7
2,3,7
168,7
1,3,7
19,3,7
2,3,7
45,7
</nameStyle>
    </language>
</elementInfo>
' #txt
fy0 f9 56 18 560 92 -274 -43 #rect
fy0 f9 -1|-1|-65536 #nodeStyle
fy0 f7 actionDecl 'error.handling.demo.FactoryData out;
' #txt
fy0 f7 actionTable 'out=in;
' #txt
fy0 f7 dbUrl stock #txt
fy0 f7 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
fy0 f7 lotSize 2147483647 #txt
fy0 f7 startIdx 0 #txt
fy0 f7 type error.handling.demo.FactoryData #txt
fy0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>store in erp</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
fy0 f7 376 202 112 44 -31 -8 #rect
fy0 f3 actionTable 'out=in;
out.newShoes=wsResponse.shoes;
' #txt
fy0 f3 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
fy0 f3 clientId 16FEC3EAEC5333CC #txt
fy0 f3 port NikeFactoryPort #txt
fy0 f3 operation produce #txt
fy0 f3 properties 'timeout.timeInSeconds=1;
' #txt
fy0 f3 inputParams 'parameters.amount=200;
parameters.model="Super Runners";
' #txt
fy0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call remote
factory</name>
        <nameStyle>12,7
7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
fy0 f3 176 202 112 44 -30 -16 #rect
fy0 f6 expr out #txt
fy0 f6 256 271 337 320 #arcP
fy0 f6 1 256 320 #addKink
fy0 f6 0 0.8677905155160192 0 0 #arcLabel
fy0 f8 expr out #txt
fy0 f8 288 224 376 224 #arcP
fy0 Et0 actionTable 'out=in;
out.wsError=error;
' #txt
fy0 Et0 errorCode ivy:error #txt
fy0 Et0 attachedToRef 1500417E1DADBB7C-f3 #txt
fy0 Et0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>catch ws error</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
fy0 Et0 241 241 30 30 19 -6 #rect
fy0 f5 errorExpr in.wsError #txt
fy0 f5 errorCode factory:unavailable #txt
fy0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>factory:unavailable</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
fy0 f5 337 305 30 30 -50 17 #rect
fy0 f4 expr out #txt
fy0 f4 111 224 176 224 #arcP
fy0 f2 expr out #txt
fy0 f2 488 224 577 224 #arcP
>Proto fy0 .type error.handling.demo.FactoryData #txt
>Proto fy0 .processKind CALLABLE_SUB #txt
>Proto fy0 0 0 32 24 18 0 #rect
>Proto fy0 @|BIcon #fIcon
fy0 Et0 mainOut f6 tail #connect
fy0 f6 head f5 mainIn #connect
fy0 f3 mainOut f8 tail #connect
fy0 f8 head f7 mainIn #connect
fy0 f0 mainOut f4 tail #connect
fy0 f4 head f3 mainIn #connect
fy0 f7 mainOut f2 tail #connect
fy0 f2 head f1 mainIn #connect
