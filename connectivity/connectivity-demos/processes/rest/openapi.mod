[Ivy]
16F375741231763F 7.5.0 #module
>Proto >Proto Collection #zClass
oi0 openapi Big #zClass
oi0 B #cInfo
oi0 #process
oi0 @TextInP .type .type #zField
oi0 @TextInP .processKind .processKind #zField
oi0 @TextInP .xml .xml #zField
oi0 @TextInP .responsibility .responsibility #zField
oi0 @StartRequest f0 '' #zField
oi0 @EndTask f1 '' #zField
oi0 @RestClientCall f3 '' #zField
oi0 @PushWFArc f4 '' #zField
oi0 @PushWFArc f2 '' #zField
oi0 @InfoButton f5 '' #zField
>Proto oi0 oi0 openapi #zField
oi0 f0 outLink listPets.ivp #txt
oi0 f0 inParamDecl '<> param;' #txt
oi0 f0 requestEnabled true #txt
oi0 f0 triggerEnabled false #txt
oi0 f0 callSignature listPets() #txt
oi0 f0 startName '8.1 open api read collection' #txt
oi0 f0 caseData businessCase.attach=true #txt
oi0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>listPets.ivp</name>
    </language>
</elementInfo>
' #txt
oi0 f0 @C|.responsibility Everybody #txt
oi0 f0 49 177 30 30 -25 17 #rect
oi0 f0 @|StartRequestIcon #fIcon
oi0 f1 305 177 30 30 0 15 #rect
oi0 f1 @|EndIcon #fIcon
oi0 f3 clientId ae69ba01-79b7-4dce-9049-900f8f420907 #txt
oi0 f3 path pet/findByStatus #txt
oi0 f3 queryParams 'status="available";
' #txt
oi0 f3 resultType java.util.List<io.swagger.petstore.openapi.Pet> #txt
oi0 f3 responseCode 'out.pets = result;

ivy.log.info("some pets are available: "+out.pets.size());' #txt
oi0 f3 clientErrorCode ivy:error:rest:client #txt
oi0 f3 statusErrorCode ivy:error:rest:client #txt
oi0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>available
PETs</name>
    </language>
</elementInfo>
' #txt
oi0 f3 136 170 112 44 -27 -15 #rect
oi0 f3 @|RestClientCallIcon #fIcon
oi0 f4 79 192 136 192 #arcP
oi0 f2 248 192 305 192 #arcP
oi0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Open API client sample
Rest services written in openapi compatible manor expose their 
resources and datas in a standard schema which allows clients
to generate service data classes automatically. 

See Definitions/Deployment (pom.xml) to explore the generator setup.</name>
        <nameStyle>22,5,0
245,5
</nameStyle>
    </language>
</elementInfo>
' #txt
oi0 f5 40 26 448 92 -220 -45 #rect
oi0 f5 @|IBIcon #fIcon
>Proto oi0 .type com.axonivy.connectivity.rest.OpenApiData #txt
>Proto oi0 .processKind NORMAL #txt
>Proto oi0 0 0 32 24 18 0 #rect
>Proto oi0 @|BIcon #fIcon
oi0 f0 mainOut f4 tail #connect
oi0 f4 head f3 mainIn #connect
oi0 f3 mainOut f2 tail #connect
oi0 f2 head f1 mainIn #connect
