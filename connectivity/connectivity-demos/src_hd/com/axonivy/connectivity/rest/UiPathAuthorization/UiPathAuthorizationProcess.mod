[Ivy]
171CB5CB2AFB22D8 9.2.0 #module
>Proto >Proto Collection #zClass
Us0 UiPathAuthorizationProcess Big #zClass
Us0 RD #cInfo
Us0 #process
Us0 @TextInP .type .type #zField
Us0 @TextInP .processKind .processKind #zField
Us0 @TextInP .xml .xml #zField
Us0 @TextInP .responsibility .responsibility #zField
Us0 @UdInit f0 '' #zField
Us0 @UdProcessEnd f1 '' #zField
Us0 @PushWFArc f2 '' #zField
Us0 @UdEvent f3 '' #zField
Us0 @UdExitEnd f4 '' #zField
Us0 @RestClientCall f9 '' #zField
Us0 @PushWFArc f5 '' #zField
Us0 @PushWFArc f6 '' #zField
>Proto Us0 Us0 UiPathAuthorizationProcess #zField
Us0 f0 guid 171CB5CB2D45A96B #txt
Us0 f0 method start() #txt
Us0 f0 inParameterDecl '<> param;' #txt
Us0 f0 inParameterMapAction 'out.request.account="AXONPRESALES";
out.request.tenant="AXONPRESALES";
' #txt
Us0 f0 outParameterDecl '<com.axonivy.connectivity.rest.sample.uipath.ApiRequest request> result;' #txt
Us0 f0 outParameterMapAction 'result.request=in.request;
' #txt
Us0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Us0 f0 83 51 26 26 -20 15 #rect
Us0 f0 @|UdInitIcon #fIcon
Us0 f1 211 51 26 26 0 12 #rect
Us0 f1 @|UdProcessEndIcon #fIcon
Us0 f2 109 64 211 64 #arcP
Us0 f3 guid 171CB5CB2EE12123 #txt
Us0 f3 actionTable 'out=in;
' #txt
Us0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Us0 f3 83 147 26 26 -16 15 #rect
Us0 f3 @|UdEventIcon #fIcon
Us0 f4 339 147 26 26 0 12 #rect
Us0 f4 @|UdExitEndIcon #fIcon
Us0 f9 clientId 265b33a0-ac87-411a-b6f6-3b71d4a6e9a9 #txt
Us0 f9 headers 'Accept=application/json;
X-UIPATH-TenantName=in.request.tenant;
' #txt
Us0 f9 method POST #txt
Us0 f9 clientCode 'import javax.ws.rs.client.Entity;

client.request().post(Entity.json(null));' #txt
Us0 f9 bodyInputType RAW #txt
Us0 f9 bodyRaw '{
    "grant_type": "refresh_token",
    "client_id": "<%=in.request.clientId%>",
    "refresh_token": "<%=in.request.userKey%>"
}' #txt
Us0 f9 bodyObjectCode 'param = in.login;' #txt
Us0 f9 resultType com.fasterxml.jackson.databind.JsonNode #txt
Us0 f9 responseCode 'import com.axonivy.connectivity.rest.client.auth.TokenStore;
TokenStore.get("platform.uipath.com").setToken(result);
TokenStore.get("localhost").setToken(result); // for-test (see env axonivy-dev)' #txt
Us0 f9 clientErrorCode ivy:error:rest:client #txt
Us0 f9 statusErrorCode ivy:error:rest:client #txt
Us0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OAUTH2</name>
        <desc>pre-liminary: get a valid token from 
https://platform.uipath.com/AXONPRESALES/portal_/serviceinstances
--&gt; click on service -&gt; API TOKEN

OAUTH2 is the only public auth method for cloud based installations:
https://docs.uipath.com/orchestrator/reference/consuming-cloud-api

On-premise installations could simplify this step:
</desc>
    </language>
</elementInfo>
' #txt
Us0 f9 160 138 112 44 -25 -7 #rect
Us0 f9 @|RestClientCallIcon #fIcon
Us0 f5 109 160 160 160 #arcP
Us0 f6 272 160 339 160 #arcP
>Proto Us0 .type com.axonivy.connectivity.rest.UiPathAuthorization.UiPathAuthorizationData #txt
>Proto Us0 .processKind HTML_DIALOG #txt
>Proto Us0 -8 -8 16 16 16 26 #rect
>Proto Us0 '' #fIcon
Us0 f0 mainOut f2 tail #connect
Us0 f2 head f1 mainIn #connect
Us0 f3 mainOut f5 tail #connect
Us0 f5 head f9 mainIn #connect
Us0 f9 mainOut f6 tail #connect
Us0 f6 head f4 mainIn #connect
