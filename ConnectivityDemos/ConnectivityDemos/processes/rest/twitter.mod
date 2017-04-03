[Ivy]
[>Created: Fri Mar 31 14:35:34 CEST 2017]
1547634C396BBB3A 3.20 #module
>Proto >Proto Collection #zClass
ct0 twitter Big #zClass
ct0 B #cInfo
ct0 #process
ct0 @TextInP .resExport .resExport #zField
ct0 @TextInP .type .type #zField
ct0 @TextInP .processKind .processKind #zField
ct0 @AnnotationInP-0n ai ai #zField
ct0 @MessageFlowInP-0n messageIn messageIn #zField
ct0 @MessageFlowOutP-0n messageOut messageOut #zField
ct0 @TextInP .xml .xml #zField
ct0 @TextInP .responsibility .responsibility #zField
ct0 @StartRequest f0 '' #zField
ct0 @EndTask f1 '' #zField
ct0 @RichDialog f4 '' #zField
ct0 @RichDialog f7 '' #zField
ct0 @PushWFArc f2 '' #zField
ct0 @InfoButton f9 '' #zField
ct0 @AnnotationArc f10 '' #zField
ct0 @InfoButton f11 '' #zField
ct0 @RestClientCall f13 '' #zField
ct0 @AnnotationArc f14 '' #zField
ct0 @PushWFArc f12 '' #zField
ct0 @PushWFArc f3 '' #zField
ct0 @PushWFArc f6 '' #zField
ct0 @ErrorBoundaryEvent f8 '' #zField
ct0 @PushWFArc f15 '' #zField
>Proto ct0 ct0 twitter #zField
ct0 f0 outLink userTimeline.ivp #txt
ct0 f0 type com.axonivy.connectivity.rest.TwitterData #txt
ct0 f0 inParamDecl '<> param;' #txt
ct0 f0 actionDecl 'com.axonivy.connectivity.rest.TwitterData out;
' #txt
ct0 f0 guid 1547634C3961853F #txt
ct0 f0 requestEnabled true #txt
ct0 f0 triggerEnabled false #txt
ct0 f0 callSignature userTimeline() #txt
ct0 f0 persist false #txt
ct0 f0 startName '4. Uses twitter REST api to display tweets' #txt
ct0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
ct0 f0 showInStartList 1 #txt
ct0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>userTimeline.ivp</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ct0 f0 @C|.responsibility Everybody #txt
ct0 f0 81 145 30 30 -45 17 #rect
ct0 f0 @|StartRequestIcon #fIcon
ct0 f1 type com.axonivy.connectivity.rest.TwitterData #txt
ct0 f1 593 145 30 30 0 15 #rect
ct0 f1 @|EndIcon #fIcon
ct0 f4 targetWindow NEW:card: #txt
ct0 f4 targetDisplay TOP #txt
ct0 f4 richDialogId com.axonivy.connectivity.rest.TwitterAuthorization #txt
ct0 f4 startMethod start(String) #txt
ct0 f4 type com.axonivy.connectivity.rest.TwitterData #txt
ct0 f4 requestActionDecl '<String authUri> param;' #txt
ct0 f4 requestMappingAction 'param.authUri=in.authorizationFlow.start();
' #txt
ct0 f4 responseActionDecl 'com.axonivy.connectivity.rest.TwitterData out;
' #txt
ct0 f4 responseMappingAction 'out=in;
' #txt
ct0 f4 responseActionCode 'import org.glassfish.jersey.client.oauth1.AccessToken;
import com.axonivy.connectivity.rest.client.filter.TwitterOAuthFilter;

AccessToken token = in.authorizationFlow.finish(result.verification);
TwitterOAuthFilter.storeToken(token);' #txt
ct0 f4 windowConfiguration '* ' #txt
ct0 f4 isAsynch false #txt
ct0 f4 isInnerRd false #txt
ct0 f4 userContext '* ' #txt
ct0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>authenticate</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ct0 f4 224 274 112 44 -33 -8 #rect
ct0 f4 @|RichDialogIcon #fIcon
ct0 f7 targetWindow NEW:card: #txt
ct0 f7 targetDisplay TOP #txt
ct0 f7 richDialogId com.axonivy.connectivity.rest.TwitterUserTimeline #txt
ct0 f7 startMethod start(List<com.twitter.status.gson.UserTimeline>) #txt
ct0 f7 type com.axonivy.connectivity.rest.TwitterData #txt
ct0 f7 requestActionDecl '<List<com.twitter.status.gson.UserTimeline> userTimelines> param;' #txt
ct0 f7 requestMappingAction 'param.userTimelines=in.userTimelines;
' #txt
ct0 f7 responseActionDecl 'com.axonivy.connectivity.rest.TwitterData out;
' #txt
ct0 f7 responseMappingAction 'out=in;
' #txt
ct0 f7 windowConfiguration '* ' #txt
ct0 f7 isAsynch false #txt
ct0 f7 isInnerRd false #txt
ct0 f7 userContext '* ' #txt
ct0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>display
timeline</name>
        <nameStyle>8,7
8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ct0 f7 424 138 112 44 -22 -16 #rect
ct0 f7 @|RichDialogIcon #fIcon
ct0 f2 expr out #txt
ct0 f2 536 160 593 160 #arcP
ct0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Give access to your twitter account 
in order to consume it''s data in the process</name>
        <nameStyle>81,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ct0 f9 392 274 240 44 -117 -16 #rect
ct0 f9 @|IBIcon #fIcon
ct0 f10 392 296 336 296 #arcP
ct0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Call Twitter REST service
which requires OAuth Authentification
and returns a complex result</name>
        <nameStyle>26,7
66,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ct0 f11 312 34 208 60 -101 -24 #rect
ct0 f11 @|IBIcon #fIcon
ct0 f13 clientId 066a1b8c-f787-4540-9496-f1f2ecc9a1b1 #txt
ct0 f13 path statuses/user_timeline.json #txt
ct0 f13 queryParams 'screen_name="AxonIvy";
' #txt
ct0 f13 templateParams 'api.version="1.1";
' #txt
ct0 f13 headers 'Accept=application/json;
' #txt
ct0 f13 method GET #txt
ct0 f13 resultType java.util.List<com.twitter.status.gson.UserTimeline> #txt
ct0 f13 responseCode 'ivy.log.info(response);
out.userTimelines = result;' #txt
ct0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>read axonivy
timeline</name>
        <nameStyle>21,7
</nameStyle>
        <tool>
            <toolName>apiDoc</toolName>
            <url>https://dev.twitter.com/rest/reference/get/statuses/user_timeline</url>
        </tool>
    </language>
</elementInfo>
' #txt
ct0 f13 192 138 112 44 -33 -16 #rect
ct0 f13 @|RestClientCallIcon #fIcon
ct0 f14 312 64 248 138 #arcP
ct0 f14 1 272 64 #addKink
ct0 f14 0 0.8334805700234814 0 0 #arcLabel
ct0 f12 expr out #txt
ct0 f12 111 160 192 160 #arcP
ct0 f3 expr out #txt
ct0 f3 224 296 192 180 #arcP
ct0 f3 1 160 296 #addKink
ct0 f3 2 160 192 #addKink
ct0 f3 0 0.7177292825587079 0 0 #arcLabel
ct0 f6 304 160 424 160 #arcP
ct0 f8 actionDecl 'com.axonivy.connectivity.rest.TwitterData out;
' #txt
ct0 f8 actionTable 'out=in;
' #txt
ct0 f8 actionCode 'import com.axonivy.connectivity.rest.client.filter.TwitterOAuthFilter;
import org.glassfish.jersey.client.oauth1.OAuth1AuthorizationFlow;
out.authorizationFlow = error.getAttribute(TwitterOAuthFilter.AUTHORIZATION_FLOW) as OAuth1AuthorizationFlow;' #txt
ct0 f8 type com.axonivy.connectivity.rest.TwitterData #txt
ct0 f8 errorCode twitter:authorization:required #txt
ct0 f8 attachedToRef 1547634C396BBB3A-f13 #txt
ct0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>twitter:authorization:required</name>
        <nameStyle>30,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ct0 f8 265 177 30 30 -49 17 #rect
ct0 f8 @|ErrorBoundaryEventIcon #fIcon
ct0 f15 280 207 280 274 #arcP
>Proto ct0 .type com.axonivy.connectivity.rest.TwitterData #txt
>Proto ct0 .processKind NORMAL #txt
>Proto ct0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Uses REST client to get a twitter timeline</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>360</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto ct0 0 0 32 24 18 0 #rect
>Proto ct0 @|BIcon #fIcon
ct0 f7 mainOut f2 tail #connect
ct0 f2 head f1 mainIn #connect
ct0 f9 ao f10 tail #connect
ct0 f10 head f4 @CG|ai #connect
ct0 f11 ao f14 tail #connect
ct0 f14 head f13 @CG|ai #connect
ct0 f0 mainOut f12 tail #connect
ct0 f12 head f13 mainIn #connect
ct0 f4 mainOut f3 tail #connect
ct0 f3 head f13 mainIn #connect
ct0 f13 mainOut f6 tail #connect
ct0 f6 head f7 mainIn #connect
ct0 f8 mainOut f15 tail #connect
ct0 f15 head f4 mainIn #connect
