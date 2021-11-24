[Ivy]
15A60076034F7437 9.3.1 #module
>Proto >Proto Collection #zClass
dg0 dataMapping Big #zClass
dg0 B #cInfo
dg0 #process
dg0 @TextInP .type .type #zField
dg0 @TextInP .processKind .processKind #zField
dg0 @AnnotationInP-0n ai ai #zField
dg0 @MessageFlowInP-0n messageIn messageIn #zField
dg0 @MessageFlowOutP-0n messageOut messageOut #zField
dg0 @TextInP .xml .xml #zField
dg0 @TextInP .responsibility .responsibility #zField
dg0 @StartRequest f0 '' #zField
dg0 @EndTask f1 '' #zField
dg0 @RestClientCall f3 '' #zField
dg0 @PushWFArc f2 '' #zField
dg0 @GridStep f5 '' #zField
dg0 @PushWFArc f6 '' #zField
dg0 @PushWFArc f4 '' #zField
dg0 @GridStep f7 '' #zField
dg0 @StartRequest f8 '' #zField
dg0 @EndTask f9 '' #zField
dg0 @RestClientCall f10 '' #zField
dg0 @PushWFArc f11 '' #zField
dg0 @PushWFArc f12 '' #zField
dg0 @PushWFArc f13 '' #zField
dg0 @RestClientCall f14 '' #zField
dg0 @StartRequest f15 '' #zField
dg0 @EndTask f16 '' #zField
dg0 @PushWFArc f18 '' #zField
dg0 @GridStep f19 '' #zField
dg0 @PushWFArc f20 '' #zField
dg0 @PushWFArc f17 '' #zField
dg0 @RestClientCall f21 '' #zField
dg0 @StartRequest f22 '' #zField
dg0 @EndTask f23 '' #zField
dg0 @PushWFArc f24 '' #zField
dg0 @RestClientCall f25 '' #zField
dg0 @PushWFArc f26 '' #zField
dg0 @StartRequest f28 '' #zField
dg0 @RestClientCall f29 '' #zField
dg0 @GridStep f30 '' #zField
dg0 @EndTask f31 '' #zField
dg0 @PushWFArc f32 '' #zField
dg0 @PushWFArc f33 '' #zField
dg0 @PushWFArc f34 '' #zField
dg0 @InfoButton f35 '' #zField
dg0 @RestClientCall f36 '' #zField
dg0 @StartRequest f38 '' #zField
dg0 @EndTask f41 '' #zField
dg0 @PushWFArc f42 '' #zField
dg0 @PushWFArc f37 '' #zField
dg0 @EndTask f39 '' #zField
dg0 @RestClientCall f43 '' #zField
dg0 @StartRequest f44 '' #zField
dg0 @GridStep f48 '' #zField
dg0 @PushWFArc f40 '' #zField
dg0 @PushWFArc f45 '' #zField
dg0 @PushWFArc f46 '' #zField
dg0 @StartRequest f47 '' #zField
dg0 @EndTask f49 '' #zField
dg0 @RestClientCall f51 '' #zField
dg0 @PushWFArc f52 '' #zField
dg0 @PushWFArc f50 '' #zField
dg0 @RestClientCall f53 '' #zField
dg0 @StartRequest f54 '' #zField
dg0 @PushWFArc f55 '' #zField
dg0 @EndTask f56 '' #zField
dg0 @PushWFArc f57 '' #zField
dg0 @RestClientCall f58 '' #zField
dg0 @PushWFArc f59 '' #zField
dg0 @PushWFArc f27 '' #zField
>Proto dg0 dg0 dataMapping #zField
dg0 f0 outLink rawJSON.ivp #txt
dg0 f0 inParamDecl '<> param;' #txt
dg0 f0 requestEnabled true #txt
dg0 f0 triggerEnabled false #txt
dg0 f0 callSignature rawJSON() #txt
dg0 f0 persist false #txt
dg0 f0 startName '6.1.1 send raw JSON' #txt
dg0 f0 startCategory rest/mapping #txt
dg0 f0 startCustomFields 'cssIcon=fa fa-code' #txt
dg0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
dg0 f0 caseData businessCase.attach=true #txt
dg0 f0 showInStartList 1 #txt
dg0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>rawJSON.ivp</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f0 @C|.responsibility Everybody #txt
dg0 f0 80 137 30 30 -36 17 #rect
dg0 f1 527 137 30 30 0 15 #rect
dg0 f3 clientId 449e7581-aa1e-4e3b-931a-903253491b50 #txt
dg0 f3 path posts #txt
dg0 f3 method POST #txt
dg0 f3 bodyInputType RAW #txt
dg0 f3 bodyRaw '{
  "name": "The sailor",
  "email": "<%= in.myPost.email %>",
  "body": "Freedom of speech"
}' #txt
dg0 f3 resultType com.fasterxml.jackson.databind.JsonNode #txt
dg0 f3 responseCode 'int newId = result.get("id").asInt();

ivy.log.info("new ID = "+newId);

out.myPost.id = newId;
out.myPost.name = result.get("name").asText();
out.myPost.body = result.get("body").asText();' #txt
dg0 f3 clientErrorCode ivy:error:rest:client #txt
dg0 f3 statusErrorCode ivy:error:rest:client #txt
dg0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send and consume
RAW JSON</name>
    </language>
</elementInfo>
' #txt
dg0 f3 332 128 152 48 -54 -15 #rect
dg0 f2 484 152 527 152 #arcP
dg0 f5 actionTable 'out=in;
' #txt
dg0 f5 actionCode 'import org.apache.commons.lang3.RandomUtils;

int no = RandomUtils.nextInt(0,100);
out.myPost.email = "tester_"+no+"@ivy-community.com";' #txt
dg0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Random Data</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f5 168 130 112 44 -42 -7 #rect
dg0 f6 expr out #txt
dg0 f6 110 152 168 152 #arcP
dg0 f4 expr out #txt
dg0 f4 280 152 332 152 #arcP
dg0 f7 actionTable 'out=in;
out.myPost.body="I have something to say";
out.myPost.name="Mr. Smith";
' #txt
dg0 f7 actionCode 'import org.apache.commons.lang3.RandomUtils;

int no = RandomUtils.nextInt(0,100);
out.myPost.email = "tester_"+no+"@ivy-community.com";' #txt
dg0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Random Data</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f7 168 298 112 44 -42 -7 #rect
dg0 f8 outLink complexObject.ivp #txt
dg0 f8 inParamDecl '<> param;' #txt
dg0 f8 requestEnabled true #txt
dg0 f8 triggerEnabled false #txt
dg0 f8 callSignature complexObject() #txt
dg0 f8 persist false #txt
dg0 f8 startName '6.1.3 send complex Object' #txt
dg0 f8 startCategory rest/mapping #txt
dg0 f8 startCustomFields 'cssIcon=fa fa-object-group' #txt
dg0 f8 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
dg0 f8 caseData businessCase.attach=true #txt
dg0 f8 showInStartList 1 #txt
dg0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>complexObject.ivp</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f8 @C|.responsibility Everybody #txt
dg0 f8 80 305 30 30 -56 17 #rect
dg0 f9 527 305 30 30 0 15 #rect
dg0 f10 clientId 449e7581-aa1e-4e3b-931a-903253491b50 #txt
dg0 f10 path posts #txt
dg0 f10 method POST #txt
dg0 f10 bodyInputType ENTITY #txt
dg0 f10 bodyRaw '{
  "name": "hey there",
  "email": "<%= in.myPost.email %>",
  "body": "this is my test comment"
}' #txt
dg0 f10 bodyObjectType com.axonivy.connectivity.rest.Post #txt
dg0 f10 bodyObjectMapping 'param=in.myPost;
' #txt
dg0 f10 resultType com.axonivy.connectivity.rest.Post #txt
dg0 f10 responseMapping 'out.myPost=result;
' #txt
dg0 f10 responseCode 'out.posts.add(result);
ivy.log.info("new ID = "+result.id);' #txt
dg0 f10 clientErrorCode ivy:error:rest:client #txt
dg0 f10 statusErrorCode ivy:error:rest:client #txt
dg0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send and consume
Java Object</name>
    </language>
</elementInfo>
' #txt
dg0 f10 332 296 152 48 -54 -15 #rect
dg0 f11 484 320 527 320 #arcP
dg0 f12 expr out #txt
dg0 f12 110 320 168 320 #arcP
dg0 f13 expr out #txt
dg0 f13 280 320 332 320 #arcP
dg0 f14 clientId 449e7581-aa1e-4e3b-931a-903253491b50 #txt
dg0 f14 path posts #txt
dg0 f14 queryParams 'userId=in.userId;
' #txt
dg0 f14 method GET #txt
dg0 f14 bodyInputType ENTITY #txt
dg0 f14 bodyRaw '{
  "name": "hey there",
  "email": "<%= in.myPost.email %>",
  "body": "this is my test comment"
}' #txt
dg0 f14 bodyObjectCode 'param = in.myPost;' #txt
dg0 f14 resultType java.util.List<com.axonivy.connectivity.rest.Post> #txt
dg0 f14 responseCode 'out.posts = result;

ivy.log.info("resolved "+result.size()+" posts from user with id "+in.userId);' #txt
dg0 f14 clientErrorCode ivy:error:rest:client #txt
dg0 f14 statusErrorCode ivy:error:rest:client #txt
dg0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send userFilter 
as query parameter</name>
    </language>
</elementInfo>
' #txt
dg0 f14 332 704 152 48 -54 -15 #rect
dg0 f15 outLink queryParameters.ivp #txt
dg0 f15 inParamDecl '<> param;' #txt
dg0 f15 requestEnabled true #txt
dg0 f15 triggerEnabled false #txt
dg0 f15 callSignature queryParameters() #txt
dg0 f15 persist false #txt
dg0 f15 startName '6.3.1 query parameters' #txt
dg0 f15 startCategory rest/mapping #txt
dg0 f15 startCustomFields 'cssIcon=fa fa-question' #txt
dg0 f15 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
dg0 f15 caseData businessCase.attach=true #txt
dg0 f15 showInStartList 1 #txt
dg0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>queryParameters.ivp</name>
        <nameStyle>19,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f15 @C|.responsibility Everybody #txt
dg0 f15 80 713 30 30 -64 17 #rect
dg0 f16 527 713 30 30 0 15 #rect
dg0 f18 484 728 527 728 #arcP
dg0 f19 actionTable 'out=in;
out.myPost.body="I have something to say";
out.myPost.name="Mr. Smith";
' #txt
dg0 f19 actionCode 'import org.apache.commons.lang3.RandomUtils;

out.userId = RandomUtils.nextInt(1,10);' #txt
dg0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Random UserId</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f19 168 706 112 44 -47 -7 #rect
dg0 f20 expr out #txt
dg0 f20 110 728 168 728 #arcP
dg0 f17 expr out #txt
dg0 f17 280 728 332 728 #arcP
dg0 f21 clientId e00c9735-7733-4da8-85c8-6413c6fb2cd3 #txt
dg0 f21 path 1 #txt
dg0 f21 headers 'Accept=application/json;
' #txt
dg0 f21 method GET #txt
dg0 f21 bodyInputType ENTITY #txt
dg0 f21 bodyRaw '{
  "name": "hey there",
  "email": "<%= in.myPost.email %>",
  "body": "this is my test comment"
}' #txt
dg0 f21 bodyObjectCode 'param = in.myPost;' #txt
dg0 f21 resultType java.lang.String #txt
dg0 f21 responseCode ivy.log.info("JSON:"+result); #txt
dg0 f21 clientErrorCode ivy:error:rest:client #txt
dg0 f21 statusErrorCode ivy:error:rest:client #txt
dg0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get Person
as JSON</name>
    </language>
</elementInfo>
' #txt
dg0 f21 168 866 112 44 -35 -15 #rect
dg0 f22 outLink acceptType.ivp #txt
dg0 f22 inParamDecl '<> param;' #txt
dg0 f22 inParamTable 'out.userId=1;
' #txt
dg0 f22 requestEnabled true #txt
dg0 f22 triggerEnabled false #txt
dg0 f22 callSignature acceptType() #txt
dg0 f22 persist false #txt
dg0 f22 startName '6.3.3 accept type header' #txt
dg0 f22 startCategory rest/mapping #txt
dg0 f22 startCustomFields 'cssIcon=fa fa-file-code-o' #txt
dg0 f22 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
dg0 f22 caseData businessCase.attach=true #txt
dg0 f22 showInStartList 1 #txt
dg0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>acceptType.ivp</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f22 @C|.responsibility Everybody #txt
dg0 f22 80 873 30 30 -46 17 #rect
dg0 f23 687 873 30 30 0 15 #rect
dg0 f24 expr out #txt
dg0 f24 110 888 168 888 #arcP
dg0 f25 clientId e00c9735-7733-4da8-85c8-6413c6fb2cd3 #txt
dg0 f25 path 1 #txt
dg0 f25 headers 'Accept=application/xml;
' #txt
dg0 f25 method GET #txt
dg0 f25 bodyInputType ENTITY #txt
dg0 f25 bodyRaw '{
  "name": "hey there",
  "email": "<%= in.myPost.email %>",
  "body": "this is my test comment"
}' #txt
dg0 f25 bodyObjectCode 'param = in.myPost;' #txt
dg0 f25 resultType java.lang.String #txt
dg0 f25 responseCode ivy.log.info("XML:"+result); #txt
dg0 f25 clientErrorCode ivy:error:rest:client #txt
dg0 f25 statusErrorCode ivy:error:rest:client #txt
dg0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get Person
as raw XML</name>
    </language>
</elementInfo>
' #txt
dg0 f25 352 866 112 44 -35 -15 #rect
dg0 f26 280 888 352 888 #arcP
dg0 f28 outLink formData.ivp #txt
dg0 f28 inParamDecl '<> param;' #txt
dg0 f28 requestEnabled true #txt
dg0 f28 triggerEnabled false #txt
dg0 f28 callSignature formData() #txt
dg0 f28 persist false #txt
dg0 f28 startName '6.1.2 send form data' #txt
dg0 f28 startCategory rest/mapping #txt
dg0 f28 startCustomFields 'cssIcon=fa fa-id-card-o' #txt
dg0 f28 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
dg0 f28 caseData businessCase.attach=true #txt
dg0 f28 showInStartList 1 #txt
dg0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>formData.ivp</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f28 @C|.responsibility Everybody #txt
dg0 f28 80 225 30 30 -39 17 #rect
dg0 f29 clientId 449e7581-aa1e-4e3b-931a-903253491b50 #txt
dg0 f29 path posts #txt
dg0 f29 method POST #txt
dg0 f29 bodyInputType FORM #txt
dg0 f29 bodyMediaType application/x-www-form-urlencoded #txt
dg0 f29 bodyRaw '{
  "name": "hey there",
  "email": "<%= in.myPost.email %>",
  "body": "this is my test comment"
}' #txt
dg0 f29 bodyForm 'firstname="John";
lastname=in.myPost.name;
' #txt
dg0 f29 bodyObjectCode 'param = in.myPost;' #txt
dg0 f29 resultType com.fasterxml.jackson.databind.JsonNode #txt
dg0 f29 responseCode 'int newId = result.get("id").asInt();

ivy.log.info("new ID = "+newId);

out.myPost.id = newId;' #txt
dg0 f29 clientErrorCode ivy:error:rest:client #txt
dg0 f29 statusErrorCode ivy:error:rest:client #txt
dg0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send 
Form with Strings</name>
    </language>
</elementInfo>
' #txt
dg0 f29 332 216 152 48 -46 -15 #rect
dg0 f30 actionTable 'out=in;
out.myPost.body="I have something to say";
out.myPost.name="Mr. Smith";
' #txt
dg0 f30 actionCode 'import org.apache.commons.lang3.RandomUtils;

int no = RandomUtils.nextInt(0,100);
out.myPost.email = "tester_"+no+"@ivy-community.com";' #txt
dg0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Random Data</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f30 168 218 112 44 -42 -7 #rect
dg0 f31 527 225 30 30 0 15 #rect
dg0 f32 expr out #txt
dg0 f32 110 240 168 240 #arcP
dg0 f33 expr out #txt
dg0 f33 280 240 332 240 #arcP
dg0 f34 484 240 527 240 #arcP
dg0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Demonstrates various ways to send and consume
data with REST services.</name>
        <nameStyle>46,7
24,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f35 128 26 320 44 -156 -15 #rect
dg0 f36 clientId 449e7581-aa1e-4e3b-931a-903253491b50 #txt
dg0 f36 path users/1 #txt
dg0 f36 method GET #txt
dg0 f36 bodyInputType ENTITY #txt
dg0 f36 bodyRaw '{
  "name": "hey there",
  "email": "<%= in.myPost.email %>",
  "body": "this is my test comment"
}' #txt
dg0 f36 bodyObjectCode 'param = in.myPost;' #txt
dg0 f36 resultType com.axonivy.connectivity.rest.User #txt
dg0 f36 responseMapping 'out.user=result;
' #txt
dg0 f36 responseCode 'ivy.log.info("got user = "+out.user);' #txt
dg0 f36 clientErrorCode ivy:error:rest:client #txt
dg0 f36 statusErrorCode ivy:error:rest:client #txt
dg0 f36 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Consume subset
of complex object</name>
        <desc>The called service returns a complex JSON object with many fields. 
Even tough we can read the data back to the simple User Data Class that contains only  subset of the fields.
This is possible by settings the property ''Deserialization.FAIL_ON_UNKNOWN_PROPERTIES'' to false on the Rest Clients configuration.

Sample JSON returned by the service:
{
  "id": 1,
  "name": "Leanne Graham",
  "username": "Bret",
  "email": "Sincere@april.biz",
  "address": {
    "street": "Kulas Light",
    "suite": "Apt. 556",
    "city": "Gwenborough",
    "zipcode": "92998-3874",
    "geo": {
      "lat": "-37.3159",
      "lng": "81.1496"
    }
  },
  "phone": "1-770-736-8031 x56442",
  "website": "hildegard.org",
  "company": {
    "name": "Romaguera-Crona",
    "catchPhrase": "Multi-layered client-server neural-net",
    "bs": "harness real-time e-markets"
  }
}</desc>
    </language>
</elementInfo>
' #txt
dg0 f36 347 412 128 44 -51 -15 #rect
dg0 f38 outLink readPartialObject.ivp #txt
dg0 f38 inParamDecl '<> param;' #txt
dg0 f38 requestEnabled true #txt
dg0 f38 triggerEnabled false #txt
dg0 f38 callSignature readPartialObject() #txt
dg0 f38 persist false #txt
dg0 f38 startName '6.2.1 read complex object partially to DataClass' #txt
dg0 f38 startCategory rest/mapping #txt
dg0 f38 startCustomFields 'cssIcon=fa fa-book' #txt
dg0 f38 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
dg0 f38 caseData businessCase.attach=true #txt
dg0 f38 showInStartList 1 #txt
dg0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>readPartialObject.ivp</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f38 @C|.responsibility Everybody #txt
dg0 f38 80 419 30 30 -65 17 #rect
dg0 f41 527 419 30 30 0 15 #rect
dg0 f42 475 434 527 434 #arcP
dg0 f37 expr out #txt
dg0 f37 110 434 347 434 #arcP
dg0 f39 527 793 30 30 0 15 #rect
dg0 f43 clientId e00c9735-7733-4da8-85c8-6413c6fb2cd3 #txt
dg0 f43 path {in.userId} #txt
dg0 f43 templateParams 'in.userId=in.userId;
' #txt
dg0 f43 method GET #txt
dg0 f43 bodyInputType ENTITY #txt
dg0 f43 bodyRaw '{
  "name": "hey there",
  "email": "<%= in.myPost.email %>",
  "body": "this is my test comment"
}' #txt
dg0 f43 bodyObjectCode 'param = in.myPost;' #txt
dg0 f43 resultType java.lang.String #txt
dg0 f43 responseCode ivy.log.info("JSON:"+result); #txt
dg0 f43 clientErrorCode ivy:error:rest:client #txt
dg0 f43 statusErrorCode ivy:error:rest:client #txt
dg0 f43 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get Persons
as JSON</name>
    </language>
</elementInfo>
' #txt
dg0 f43 352 786 112 44 -38 -15 #rect
dg0 f44 outLink pathParameters.ivp #txt
dg0 f44 inParamDecl '<> param;' #txt
dg0 f44 requestEnabled true #txt
dg0 f44 triggerEnabled false #txt
dg0 f44 callSignature pathParameters() #txt
dg0 f44 persist false #txt
dg0 f44 startName '6.3.2 path parameters' #txt
dg0 f44 startCategory rest/mapping #txt
dg0 f44 startCustomFields 'cssIcon=fa fa-code-fork' #txt
dg0 f44 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
dg0 f44 caseData businessCase.attach=true #txt
dg0 f44 showInStartList 1 #txt
dg0 f44 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>pathParameters.ivp</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f44 @C|.responsibility Everybody #txt
dg0 f44 80 793 30 30 -61 17 #rect
dg0 f48 actionTable 'out=in;
' #txt
dg0 f48 actionCode 'import org.apache.commons.lang3.RandomUtils;

out.userId = RandomUtils.nextInt(1,4);' #txt
dg0 f48 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Random UserId</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f48 168 786 112 44 -47 -7 #rect
dg0 f40 464 808 527 808 #arcP
dg0 f45 expr out #txt
dg0 f45 110 808 168 808 #arcP
dg0 f46 expr out #txt
dg0 f46 280 808 352 808 #arcP
dg0 f47 outLink readGenerated.ivp #txt
dg0 f47 inParamDecl '<> param;' #txt
dg0 f47 requestEnabled true #txt
dg0 f47 triggerEnabled false #txt
dg0 f47 callSignature readGenerated() #txt
dg0 f47 persist false #txt
dg0 f47 startName '6.2.2 read complex object to GeneratedClass' #txt
dg0 f47 startCategory rest/mapping #txt
dg0 f47 startCustomFields 'cssIcon=fa fa-plus-circle' #txt
dg0 f47 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
dg0 f47 caseData businessCase.attach=true #txt
dg0 f47 showInStartList 1 #txt
dg0 f47 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>readGenerated.ivp</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f47 @C|.responsibility Everybody #txt
dg0 f47 80 497 30 30 -58 17 #rect
dg0 f49 527 497 30 30 0 15 #rect
dg0 f51 clientId 449e7581-aa1e-4e3b-931a-903253491b50 #txt
dg0 f51 path users/1 #txt
dg0 f51 method GET #txt
dg0 f51 bodyInputType ENTITY #txt
dg0 f51 bodyRaw '{
  "name": "hey there",
  "email": "<%= in.myPost.email %>",
  "body": "this is my test comment"
}' #txt
dg0 f51 bodyObjectCode 'param = in.myPost;' #txt
dg0 f51 resultType com.typicode.jsonplaceholder.User #txt
dg0 f51 responseMapping 'out.userGenerated=result;
' #txt
dg0 f51 responseCode 'ivy.log.info("got user = "+result);' #txt
dg0 f51 clientErrorCode ivy:error:rest:client #txt
dg0 f51 statusErrorCode ivy:error:rest:client #txt
dg0 f51 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Consume to
generated class</name>
        <desc>The called service returns a complex JSON object with many fields. 
We read it into a perfect matching class that was generated with: http://www.jsonschema2pojo.org/
See com.typicode.jsonplaceholder.User

Sample JSON returned by the service:
{
  "id": 1,
  "name": "Leanne Graham",
  "username": "Bret",
  "email": "Sincere@april.biz",
  "address": {
    "street": "Kulas Light",
    "suite": "Apt. 556",
    "city": "Gwenborough",
    "zipcode": "92998-3874",
    "geo": {
      "lat": "-37.3159",
      "lng": "81.1496"
    }
  },
  "phone": "1-770-736-8031 x56442",
  "website": "hildegard.org",
  "company": {
    "name": "Romaguera-Crona",
    "catchPhrase": "Multi-layered client-server neural-net",
    "bs": "harness real-time e-markets"
  }
}</desc>
    </language>
</elementInfo>
' #txt
dg0 f51 351 490 128 44 -45 -15 #rect
dg0 f52 expr out #txt
dg0 f52 110 512 351 512 #arcP
dg0 f50 479 512 527 512 #arcP
dg0 f53 clientId 449e7581-aa1e-4e3b-931a-903253491b50 #txt
dg0 f53 path users/1 #txt
dg0 f53 method GET #txt
dg0 f53 bodyInputType ENTITY #txt
dg0 f53 bodyRaw '{
  "name": "hey there",
  "email": "<%= in.myPost.email %>",
  "body": "this is my test comment"
}' #txt
dg0 f53 bodyObjectCode 'param = in.myPost;' #txt
dg0 f53 resultType com.fasterxml.jackson.databind.JsonNode #txt
dg0 f53 responseCode 'out.user.name = result.get("name").asText();
out.user.phone = result.get("phone").asText();
out.user.email = result.get("email").asText();

ivy.log.info("got user = "+out.user);' #txt
dg0 f53 clientErrorCode ivy:error:rest:client #txt
dg0 f53 statusErrorCode ivy:error:rest:client #txt
dg0 f53 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Consume nodes
manually</name>
        <desc>The called service returns a complex JSON object with many fields. 

Sample JSON returned by the service:
{
  "id": 1,
  "name": "Leanne Graham",
  "username": "Bret",
  "email": "Sincere@april.biz",
  "address": {
    "street": "Kulas Light",
    "suite": "Apt. 556",
    "city": "Gwenborough",
    "zipcode": "92998-3874",
    "geo": {
      "lat": "-37.3159",
      "lng": "81.1496"
    }
  },
  "phone": "1-770-736-8031 x56442",
  "website": "hildegard.org",
  "company": {
    "name": "Romaguera-Crona",
    "catchPhrase": "Multi-layered client-server neural-net",
    "bs": "harness real-time e-markets"
  }
}</desc>
    </language>
</elementInfo>
' #txt
dg0 f53 349 568 128 44 -45 -15 #rect
dg0 f54 outLink readJsonNode.ivp #txt
dg0 f54 inParamDecl '<> param;' #txt
dg0 f54 requestEnabled true #txt
dg0 f54 triggerEnabled false #txt
dg0 f54 callSignature readJsonNode() #txt
dg0 f54 persist false #txt
dg0 f54 startName '6.2.3 read complex object partially as JsonNode' #txt
dg0 f54 startCategory rest/mapping #txt
dg0 f54 startCustomFields 'cssIcon=fa fa-sitemap' #txt
dg0 f54 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
dg0 f54 caseData businessCase.attach=true #txt
dg0 f54 showInStartList 1 #txt
dg0 f54 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>readJsonNode.ivp</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
dg0 f54 @C|.responsibility Everybody #txt
dg0 f54 80 575 30 30 -54 17 #rect
dg0 f55 expr out #txt
dg0 f55 110 590 349 590 #arcP
dg0 f56 527 575 30 30 0 15 #rect
dg0 f57 477 590 527 590 #arcP
dg0 f58 clientId e00c9735-7733-4da8-85c8-6413c6fb2cd3 #txt
dg0 f58 path 1 #txt
dg0 f58 headers 'Accept=application/xml;
' #txt
dg0 f58 method GET #txt
dg0 f58 bodyInputType RAW #txt
dg0 f58 resultType com.axonivy.connectivity.Person #txt
dg0 f58 responseCode 'ivy.log.info("person from XML:"+result);' #txt
dg0 f58 clientErrorCode ivy:error:rest:client #txt
dg0 f58 statusErrorCode ivy:error:rest:client #txt
dg0 f58 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get Person
from XML</name>
    </language>
</elementInfo>
' #txt
dg0 f58 528 866 112 44 -35 -15 #rect
dg0 f59 464 888 528 888 #arcP
dg0 f27 640 888 687 888 #arcP
>Proto dg0 .type com.axonivy.connectivity.rest.DataMappingData #txt
>Proto dg0 .processKind NORMAL #txt
>Proto dg0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Body payload types</swimlaneLabel>
        <swimlaneLabel>Read JSON response to Java</swimlaneLabel>
        <swimlaneLabel>Parameterize request</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>280</swimlaneSize>
    <swimlaneSize>288</swimlaneSize>
    <swimlaneSize>288</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>96</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto dg0 0 0 32 24 18 0 #rect
>Proto dg0 @|BIcon #fIcon
dg0 f3 mainOut f2 tail #connect
dg0 f2 head f1 mainIn #connect
dg0 f0 mainOut f6 tail #connect
dg0 f6 head f5 mainIn #connect
dg0 f5 mainOut f4 tail #connect
dg0 f4 head f3 mainIn #connect
dg0 f10 mainOut f11 tail #connect
dg0 f11 head f9 mainIn #connect
dg0 f8 mainOut f12 tail #connect
dg0 f12 head f7 mainIn #connect
dg0 f7 mainOut f13 tail #connect
dg0 f13 head f10 mainIn #connect
dg0 f14 mainOut f18 tail #connect
dg0 f18 head f16 mainIn #connect
dg0 f15 mainOut f20 tail #connect
dg0 f20 head f19 mainIn #connect
dg0 f19 mainOut f17 tail #connect
dg0 f17 head f14 mainIn #connect
dg0 f22 mainOut f24 tail #connect
dg0 f24 head f21 mainIn #connect
dg0 f21 mainOut f26 tail #connect
dg0 f26 head f25 mainIn #connect
dg0 f29 mainOut f34 tail #connect
dg0 f34 head f31 mainIn #connect
dg0 f28 mainOut f32 tail #connect
dg0 f32 head f30 mainIn #connect
dg0 f30 mainOut f33 tail #connect
dg0 f33 head f29 mainIn #connect
dg0 f36 mainOut f42 tail #connect
dg0 f42 head f41 mainIn #connect
dg0 f38 mainOut f37 tail #connect
dg0 f37 head f36 mainIn #connect
dg0 f43 mainOut f40 tail #connect
dg0 f40 head f39 mainIn #connect
dg0 f44 mainOut f45 tail #connect
dg0 f45 head f48 mainIn #connect
dg0 f48 mainOut f46 tail #connect
dg0 f46 head f43 mainIn #connect
dg0 f47 mainOut f52 tail #connect
dg0 f52 head f51 mainIn #connect
dg0 f51 mainOut f50 tail #connect
dg0 f50 head f49 mainIn #connect
dg0 f54 mainOut f55 tail #connect
dg0 f55 head f53 mainIn #connect
dg0 f53 mainOut f57 tail #connect
dg0 f57 head f56 mainIn #connect
dg0 f25 mainOut f59 tail #connect
dg0 f59 head f58 mainIn #connect
dg0 f58 mainOut f27 tail #connect
dg0 f27 head f23 mainIn #connect
