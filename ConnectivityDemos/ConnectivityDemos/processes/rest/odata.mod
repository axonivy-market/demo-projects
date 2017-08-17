[Ivy]
[>Created: Thu Aug 17 11:50:28 CEST 2017]
15DEF1BE5B9E5A42 3.20 #module
>Proto >Proto Collection #zClass
oa0 odata Big #zClass
oa0 B #cInfo
oa0 #process
oa0 @TextInP .resExport .resExport #zField
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
>Proto oa0 oa0 odata #zField
oa0 f0 outLink readCollection.ivp #txt
oa0 f0 type com.axonivy.connectivity.rest.odata.OData #txt
oa0 f0 inParamDecl '<> param;' #txt
oa0 f0 actionDecl 'com.axonivy.connectivity.rest.odata.OData out;
' #txt
oa0 f0 guid 15DEF1BE5CB7D8C3 #txt
oa0 f0 requestEnabled true #txt
oa0 f0 triggerEnabled false #txt
oa0 f0 callSignature readCollection() #txt
oa0 f0 persist false #txt
oa0 f0 startName '7.1 OData read collection' #txt
oa0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
oa0 f0 caseData businessCase.attach=true #txt
oa0 f0 showInStartList 1 #txt
oa0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>readCollection.ivp</name>
        <nameStyle>18,5,7
</nameStyle>
        <tool>
            <toolName>odata</toolName>
            <url>http://www.odata.org</url>
        </tool>
    </language>
</elementInfo>
' #txt
oa0 f0 @C|.responsibility Everybody #txt
oa0 f0 81 177 30 30 -55 17 #rect
oa0 f0 @|StartRequestIcon #fIcon
oa0 f1 type com.axonivy.connectivity.rest.odata.OData #txt
oa0 f1 337 177 30 30 0 15 #rect
oa0 f1 @|EndIcon #fIcon
oa0 f3 clientId 65f8e5a4-768d-4a68-813a-e6d569cda522 #txt
oa0 f3 path People #txt
oa0 f3 resultType java.util.List<com.axonivy.connectivity.rest.odata.User> #txt
oa0 f3 responseCode 'ivy.log.info("got "+result.size()+" users");

out.users = result;' #txt
oa0 f3 clientErrorCode ivy:error:rest:client #txt
oa0 f3 statusErrorCode ivy:error:rest:client #txt
oa0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get persons</name>
    </language>
</elementInfo>
' #txt
oa0 f3 168 170 112 44 -38 -7 #rect
oa0 f3 @|RestClientCallIcon #fIcon
oa0 f4 expr out #txt
oa0 f4 111 192 168 192 #arcP
oa0 f2 280 192 337 192 #arcP
oa0 f5 outLink readById.ivp #txt
oa0 f5 type com.axonivy.connectivity.rest.odata.OData #txt
oa0 f5 inParamDecl '<> param;' #txt
oa0 f5 actionDecl 'com.axonivy.connectivity.rest.odata.OData out;
' #txt
oa0 f5 guid 15DEF21EED8773DC #txt
oa0 f5 requestEnabled true #txt
oa0 f5 triggerEnabled false #txt
oa0 f5 callSignature readById() #txt
oa0 f5 persist false #txt
oa0 f5 startName '7.2 OData read single object' #txt
oa0 f5 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
oa0 f5 caseData businessCase.attach=true #txt
oa0 f5 showInStartList 1 #txt
oa0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>readById.ivp</name>
        <nameStyle>12,5,7
</nameStyle>
        <tool>
            <toolName>odata</toolName>
            <url>http://www.odata.org</url>
        </tool>
    </language>
</elementInfo>
' #txt
oa0 f5 @C|.responsibility Everybody #txt
oa0 f5 81 273 30 30 -37 17 #rect
oa0 f5 @|StartRequestIcon #fIcon
oa0 f6 type com.axonivy.connectivity.rest.odata.OData #txt
oa0 f6 337 273 30 30 0 15 #rect
oa0 f6 @|EndIcon #fIcon
oa0 f8 clientId 65f8e5a4-768d-4a68-813a-e6d569cda522 #txt
oa0 f8 path 'People(''russellwhyte'')' #txt
oa0 f8 resultType com.axonivy.connectivity.rest.odata.User #txt
oa0 f8 responseCode 'ivy.log.info("found "+result);

out.users = [result];' #txt
oa0 f8 clientErrorCode ivy:error:rest:client #txt
oa0 f8 statusErrorCode ivy:error:rest:client #txt
oa0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get russel</name>
    </language>
</elementInfo>
' #txt
oa0 f8 168 266 112 44 -31 -7 #rect
oa0 f8 @|RestClientCallIcon #fIcon
oa0 f9 expr out #txt
oa0 f9 111 288 168 288 #arcP
oa0 f7 280 288 337 288 #arcP
oa0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Demonstrates how to interact with OData services:
- OData is a simple REST protocol that is widely adopted by Microsoft services. 
- The magice widely hapens in a special JSON serializer implementation: 
  see com.axonivy.connectivity.rest.json.OdataJsonFeature
http://www.odata.org</name>
        <nameStyle>49,0,8
161
51,3
21
</nameStyle>
    </language>
</elementInfo>
' #txt
oa0 f10 48 34 496 92 -245 -39 #rect
oa0 f10 @|IBIcon #fIcon
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
