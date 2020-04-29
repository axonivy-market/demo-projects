[Ivy]
171C62230757992F 7.5.0 #module
>Proto >Proto Collection #zClass
uh0 uiPath Big #zClass
uh0 B #cInfo
uh0 #process
uh0 @TextInP .type .type #zField
uh0 @TextInP .processKind .processKind #zField
uh0 @TextInP .xml .xml #zField
uh0 @TextInP .responsibility .responsibility #zField
uh0 @StartRequest f0 '' #zField
uh0 @EndTask f1 '' #zField
uh0 @RestClientCall f3 '' #zField
uh0 @PushWFArc f2 '' #zField
uh0 @RestClientCall f5 '' #zField
uh0 @PushWFArc f4 '' #zField
uh0 @PushWFArc f6 '' #zField
>Proto uh0 uh0 uiPath #zField
uh0 f0 outLink start.ivp #txt
uh0 f0 inParamDecl '<> param;' #txt
uh0 f0 requestEnabled true #txt
uh0 f0 triggerEnabled false #txt
uh0 f0 callSignature start() #txt
uh0 f0 caseData businessCase.attach=true #txt
uh0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
uh0 f0 @C|.responsibility Everybody #txt
uh0 f0 81 49 30 30 -25 17 #rect
uh0 f0 @|StartRequestIcon #fIcon
uh0 f1 497 49 30 30 0 15 #rect
uh0 f1 @|EndIcon #fIcon
uh0 f3 clientId 699e715f-63b1-4355-a974-ee3cac26985e #txt
uh0 f3 path odata/Settings/UiPath.Server.Configuration.OData.GetLicense #txt
uh0 f3 headers 'Accept=*/*;
X-UIPATH-TenantName="AXONPRESALES";
Authorization="Bearer "+ivy.session.getAttribute("TOKEN");
' #txt
uh0 f3 resultType io.swagger.uipath.openapi.LicenseDto #txt
uh0 f3 responseCode ivy.log.info(result); #txt
uh0 f3 clientErrorCode ivy:error:rest:client #txt
uh0 f3 statusErrorCode ivy:error:rest:client #txt
uh0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>UI Path
Read License</name>
    </language>
</elementInfo>
' #txt
uh0 f3 320 42 128 44 -40 -15 #rect
uh0 f3 @|UserDialogIcon #fIcon
uh0 f2 448 64 497 64 #arcP
uh0 f5 clientId 265b33a0-ac87-411a-b6f6-3b71d4a6e9a9 #txt
uh0 f5 headers 'Accept=application/json;
X-UIPATH-TenantName="AXONPRESALES";
' #txt
uh0 f5 method POST #txt
uh0 f5 bodyInputType RAW #txt
uh0 f5 bodyRaw '{
    "grant_type": "refresh_token",
    "client_id": "8DEv1AMNXczW3y4U15LL3jYf62jK93n5",
    "refresh_token": "gdK5FbOMr26ex2_r3qi7gAHl4SokoYM6SdVB7MdHnezjb"
}' #txt
uh0 f5 bodyEntity in.login #txt
uh0 f5 clientCode 'import javax.ws.rs.client.Entity;

client.request().post(Entity.json(null));' #txt
uh0 f5 resultType com.fasterxml.jackson.databind.JsonNode #txt
uh0 f5 responseCode 'ivy.session.setAttribute("TOKEN", result.get("access_token").asText());' #txt
uh0 f5 clientErrorCode ivy:error:rest:client #txt
uh0 f5 statusErrorCode ivy:error:rest:client #txt
uh0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>auth</name>
        <desc>pre-liminary: get a valid token from 
https://platform.uipath.com/AXONPRESALES/portal_/serviceinstances
--&gt; click on service -&gt; API TOKEN</desc>
    </language>
</elementInfo>
' #txt
uh0 f5 168 42 112 44 -14 -7 #rect
uh0 f5 @|RestClientCallIcon #fIcon
uh0 f4 280 64 320 64 #arcP
uh0 f6 111 64 168 64 #arcP
>Proto uh0 .type com.axonivy.connectivity.Data #txt
>Proto uh0 .processKind NORMAL #txt
>Proto uh0 0 0 32 24 18 0 #rect
>Proto uh0 @|BIcon #fIcon
uh0 f3 mainOut f2 tail #connect
uh0 f2 head f1 mainIn #connect
uh0 f5 mainOut f4 tail #connect
uh0 f4 head f3 mainIn #connect
uh0 f0 mainOut f6 tail #connect
uh0 f6 head f5 mainIn #connect
