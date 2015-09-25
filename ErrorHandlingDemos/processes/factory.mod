[Ivy]
[>Created: Fri Sep 25 12:48:52 CEST 2015]
1500417E1DADBB7C 3.18 #module
>Proto >Proto Collection #zClass
fy0 factory Big #zClass
fy0 B #cInfo
fy0 #process
fy0 @TextInP .resExport .resExport #zField
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
>Proto fy0 fy0 factory #zField
fy0 f0 inParamDecl '<java.lang.String model,java.lang.Number amount> param;' #txt
fy0 f0 inParamTable 'out.amount=param.amount;
out.model=param.model;
' #txt
fy0 f0 outParamDecl '<> result;
' #txt
fy0 f0 actionDecl 'error.handling.demo.FactoryData out;
' #txt
fy0 f0 callSignature produceShoes(String,Number) #txt
fy0 f0 type error.handling.demo.FactoryData #txt
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
fy0 f0 81 49 30 30 -44 17 #rect
fy0 f0 @|StartSubIcon #fIcon
fy0 f1 type error.handling.demo.FactoryData #txt
fy0 f1 577 49 30 30 0 15 #rect
fy0 f1 @|EndSubIcon #fIcon
fy0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Demonstrates how default ivy errors can be wrapped into a custom error
- the remote factory can throw an ivy:error:webservice:exception   if the host is not available
- the attached Error Boundary Event catches any ivy webservice error
- the Error End Event wraps the webservice error 
   and throws it as factory:nike:unavailable  which has a specific meaning for the business</name>
        <nameStyle>70,8
35,7
30,3,7
171,7
24,3,7
47,7
</nameStyle>
    </language>
</elementInfo>
' #txt
fy0 f9 88 274 544 92 -268 -43 #rect
fy0 f9 @|IBIcon #fIcon
fy0 f9 -985168|-1|-16777216 #nodeStyle
fy0 f7 actionDecl 'error.handling.demo.FactoryData out;
' #txt
fy0 f7 actionTable 'out=in;
' #txt
fy0 f7 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE INSERT SYSTEM  ""sqlStatements.dtd"">
<INSERT><Table name=''STOCK''/><Value column=''PRODUCT''><AnyExpression>in.model</AnyExpression></Value><Value column=''NUMBEROFITEMS''><AnyExpression>in.newShoes.size()</AnyExpression></Value></INSERT>' #txt
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
fy0 f7 376 42 112 44 -31 -8 #rect
fy0 f7 @|DBStepIcon #fIcon
fy0 f3 type error.handling.demo.FactoryData #txt
fy0 f3 actionDecl 'error.handling.demo.FactoryData out;
' #txt
fy0 f3 actionTable 'out=in;
out.newShoes=wsResponse.produceResponse.nikes;
' #txt
fy0 f3 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
fy0 f3 timeout 1 #txt
fy0 f3 beanConfig '"KEY_PASSWORD=
KEY_AXIS_PORTNAME=NikeFactoryPort
KEY_WEBSERVICECONFIG_ID=15003F91E5C96948
KEY_DOMAIN=
KEY_USERNAME=
KEY_OPERATION=produce
KEY_AUTHENTICATION_KIND=0
KEY_HOST=
KEY_USE_AUTHENTICATION=false
KEY_AXIS_CSL_PARAMETER_DATA=""arg0.produce.amount__@@__Integer__@@__200"",""arg0.produce.model__@@__String__@@__""""Super Runners"""""""' #txt
fy0 f3 returningObjectList '[wsResponse]' #txt
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
fy0 f3 176 42 112 44 -30 -16 #rect
fy0 f3 @|WebServiceIcon #fIcon
fy0 f6 expr out #txt
fy0 f6 264 111 337 160 #arcP
fy0 f6 1 264 160 #addKink
fy0 f6 0 0.9928197974768727 0 0 #arcLabel
fy0 f8 expr out #txt
fy0 f8 288 64 376 64 #arcP
fy0 Et0 actionDecl 'error.handling.demo.FactoryData out;
' #txt
fy0 Et0 actionTable 'out=in;
out.wsError=error;
' #txt
fy0 Et0 type error.handling.demo.FactoryData #txt
fy0 Et0 errorCode ivy:error:webservice #txt
fy0 Et0 attachedToRef 1500417E1DADBB7C-f3 #txt
fy0 Et0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>catch</name>
        <nameStyle>5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
fy0 Et0 249 81 30 30 19 -6 #rect
fy0 Et0 @|ErrorBoundaryEventIcon #fIcon
fy0 f5 errorExpr in.wsError #txt
fy0 f5 errorCode factory:nike:unavailable #txt
fy0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>factory:nike:unavailable</name>
        <nameStyle>24,7
</nameStyle>
    </language>
</elementInfo>
' #txt
fy0 f5 337 145 30 30 -63 17 #rect
fy0 f5 @|ErrorEndIcon #fIcon
fy0 f4 expr out #txt
fy0 f4 111 64 176 64 #arcP
fy0 f2 expr out #txt
fy0 f2 488 64 577 64 #arcP
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
