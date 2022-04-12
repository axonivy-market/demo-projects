[Ivy]
15DEF1BE5B9E5A42 9.4.3 #module
>Proto >Proto Collection #zClass
oa0 openapi_odata Big #zClass
oa0 B #cInfo
oa0 #process
oa0 @TextInP .colors .colors #zField
oa0 @TextInP color color #zField
oa0 @TextInP .type .type #zField
oa0 @TextInP .processKind .processKind #zField
oa0 @AnnotationInP-0n ai ai #zField
oa0 @MessageFlowInP-0n messageIn messageIn #zField
oa0 @MessageFlowOutP-0n messageOut messageOut #zField
oa0 @TextInP .xml .xml #zField
oa0 @TextInP .responsibility .responsibility #zField
oa0 @StartRequest f0 '' #zField
oa0 @EndTask f1 '' #zField
oa0 @RestClientCall f3 '' #zField
oa0 @PushWFArc f4 '' #zField
oa0 @PushWFArc f2 '' #zField
oa0 @StartRequest f5 '' #zField
oa0 @EndTask f6 '' #zField
oa0 @RestClientCall f8 '' #zField
oa0 @PushWFArc f9 '' #zField
oa0 @PushWFArc f7 '' #zField
oa0 @InfoButton f10 '' #zField
>Proto oa0 oa0 openapi_odata #zField
oa0 f0 outLink readCollection.ivp #txt
oa0 f0 inParamDecl '<> param;' #txt
oa0 f0 requestEnabled true #txt
oa0 f0 triggerEnabled false #txt
oa0 f0 callSignature readCollection() #txt
oa0 f0 persist false #txt
oa0 f0 startName '7.1 OData read collection' #txt
oa0 f0 startCategory rest/openapi/odata #txt
oa0 f0 startCustomFields 'cssIcon=fa fa-list' #txt
oa0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
oa0 f0 caseData businessCase.attach=true #txt
oa0 f0 showInStartList true #txt
oa0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>readCollection.ivp</name>
        <tool>
            <toolName>odata</toolName>
            <url>http://www.odata.org</url>
        </tool>
    </language>
</elementInfo>
' #txt
oa0 f0 @C|.responsibility Everybody #txt
oa0 f0 81 145 30 30 -55 17 #rect
oa0 f1 337 145 30 30 0 15 #rect
oa0 f3 clientId 65f8e5a4-768d-4a68-813a-e6d569cda522 #txt
oa0 f3 path /People #txt
oa0 f3 resultType org.odata.trippin.client.CollectionOfPerson #txt
oa0 f3 responseMapping 'out.users=result.value;
' #txt
oa0 f3 responseCode 'ivy.log.info("got "+result.atOdataCount+" users");' #txt
oa0 f3 clientErrorCode ivy:error:rest:client #txt
oa0 f3 statusErrorCode ivy:error:rest:client #txt
oa0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get persons</name>
    </language>
</elementInfo>
' #txt
oa0 f3 168 138 112 44 -38 -7 #rect
oa0 f4 expr out #txt
oa0 f4 111 160 168 160 #arcP
oa0 f2 280 160 337 160 #arcP
oa0 f5 outLink readById.ivp #txt
oa0 f5 inParamDecl '<> param;' #txt
oa0 f5 requestEnabled true #txt
oa0 f5 triggerEnabled false #txt
oa0 f5 callSignature readById() #txt
oa0 f5 persist false #txt
oa0 f5 startName '7.2 OData read single object' #txt
oa0 f5 startCategory rest/openapi/odata #txt
oa0 f5 startCustomFields 'cssIcon=fa fa-id-badge' #txt
oa0 f5 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
oa0 f5 caseData businessCase.attach=true #txt
oa0 f5 showInStartList true #txt
oa0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>readById.ivp</name>
        <tool>
            <toolName>odata</toolName>
            <url>http://www.odata.org</url>
        </tool>
    </language>
</elementInfo>
' #txt
oa0 f5 @C|.responsibility Everybody #txt
oa0 f5 81 241 30 30 -37 17 #rect
oa0 f6 337 241 30 30 0 15 #rect
oa0 f8 clientId 65f8e5a4-768d-4a68-813a-e6d569cda522 #txt
oa0 f8 path '/People(''{UserName}'')' #txt
oa0 f8 templateParams 'UserName="russellwhyte";
' #txt
oa0 f8 resultType org.odata.trippin.client.MicrosoftODataSampleServiceModelsTripPinPerson #txt
oa0 f8 responseMapping 'out.users=[result];
' #txt
oa0 f8 responseCode 'ivy.log.info("found "+result);' #txt
oa0 f8 clientErrorCode ivy:error:rest:client #txt
oa0 f8 statusErrorCode ivy:error:rest:client #txt
oa0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get russel</name>
    </language>
</elementInfo>
' #txt
oa0 f8 168 234 112 44 -31 -7 #rect
oa0 f9 expr out #txt
oa0 f9 111 256 168 256 #arcP
oa0 f7 280 256 337 256 #arcP
oa0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>**Demonstrates how to interact with OData services:**
- OData is a simple REST protocol that is widely adopted by Microsoft services. http://www.odata.org
- By converting the Odata$metadata service specification to an Open API 3.0 compatible form, these
services can be called and data sent to an fro without the need to consult the technical specialities of ODATA.</name>
    </language>
</elementInfo>
' #txt
oa0 f10 24 34 704 60 -346 -30 #rect
>Proto oa0 .type com.axonivy.connectivity.rest.odata.OData #txt
>Proto oa0 .processKind NORMAL #txt
>Proto oa0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto oa0 0 0 32 24 18 0 #rect
>Proto oa0 @|BIcon #fIcon
oa0 f0 mainOut f4 tail #connect
oa0 f4 head f3 mainIn #connect
oa0 f3 mainOut f2 tail #connect
oa0 f2 head f1 mainIn #connect
oa0 f5 mainOut f9 tail #connect
oa0 f9 head f8 mainIn #connect
oa0 f8 mainOut f7 tail #connect
oa0 f7 head f6 mainIn #connect
