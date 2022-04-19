[Ivy]
154616078A1D629D 9.4.8 #module
>Proto >Proto Collection #zClass
ce0 callOwnPersonRestService Big #zClass
ce0 B #cInfo
ce0 #process
ce0 @TextInP .colors .colors #zField
ce0 @TextInP color color #zField
ce0 @TextInP .type .type #zField
ce0 @TextInP .processKind .processKind #zField
ce0 @AnnotationInP-0n ai ai #zField
ce0 @MessageFlowInP-0n messageIn messageIn #zField
ce0 @MessageFlowOutP-0n messageOut messageOut #zField
ce0 @TextInP .xml .xml #zField
ce0 @TextInP .responsibility .responsibility #zField
ce0 @StartRequest f0 '' #zField
ce0 @EndTask f1 '' #zField
ce0 @StartRequest f5 '' #zField
ce0 @EndTask f6 '' #zField
ce0 @UserDialog f8 '' #zField
ce0 @PushWFArc f9 '' #zField
ce0 @PushWFArc f7 '' #zField
ce0 @InfoButton f10 '' #zField
ce0 @InfoButton f12 '' #zField
ce0 @AnnotationArc f13 '' #zField
ce0 @RestClientCall f14 '' #zField
ce0 @AnnotationArc f15 '' #zField
ce0 @PushWFArc f11 '' #zField
ce0 @PushWFArc f4 '' #zField
ce0 @StartRequest f2 '' #zField
ce0 @EndTask f3 '' #zField
ce0 @RestClientCall f17 '' #zField
ce0 @PushWFArc f18 '' #zField
ce0 @PushWFArc f16 '' #zField
ce0 @InfoButton f19 '' #zField
ce0 @AnnotationArc f20 '' #zField
>Proto ce0 ce0 callOwnPersonRestService #zField
ce0 f0 outLink listPersons.ivp #txt
ce0 f0 inParamDecl '<> param;' #txt
ce0 f0 requestEnabled true #txt
ce0 f0 triggerEnabled false #txt
ce0 f0 callSignature listPersons() #txt
ce0 f0 persist false #txt
ce0 f0 startName '1.1 List REST result in the runtime log' #txt
ce0 f0 startCategory rest/person #txt
ce0 f0 startCustomFields 'cssIcon=fa fa-users' #txt
ce0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
ce0 f0 caseData businessCase.attach=false #txt
ce0 f0 showInStartList true #txt
ce0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>listPersons.ivp</name>
    </language>
</elementInfo>
' #txt
ce0 f0 @C|.responsibility Everybody #txt
ce0 f0 81 113 30 30 -40 17 #rect
ce0 f1 337 113 30 30 0 15 #rect
ce0 f5 outLink personManager.ivp #txt
ce0 f5 inParamDecl '<> param;' #txt
ce0 f5 requestEnabled true #txt
ce0 f5 triggerEnabled false #txt
ce0 f5 callSignature personManager() #txt
ce0 f5 persist false #txt
ce0 f5 startName '1.2 Accesses own REST service' #txt
ce0 f5 startCategory rest/person #txt
ce0 f5 startCustomFields 'cssIcon=fa fa-address-book-o' #txt
ce0 f5 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
ce0 f5 caseData businessCase.attach=false #txt
ce0 f5 showInStartList true #txt
ce0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>personManager.ivp</name>
    </language>
</elementInfo>
' #txt
ce0 f5 @C|.responsibility Everybody #txt
ce0 f5 81 257 30 30 -52 17 #rect
ce0 f6 337 257 30 30 0 15 #rect
ce0 f8 dialogId com.axonivy.connectivity.rest.PersonManager #txt
ce0 f8 startMethod start() #txt
ce0 f8 requestActionDecl '<> param;' #txt
ce0 f8 responseActionDecl 'com.axonivy.connectivity.Data out;
' #txt
ce0 f8 responseMappingAction 'out=in;
' #txt
ce0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Restful
PersonManager</name>
    </language>
</elementInfo>
' #txt
ce0 f8 168 248 112 48 -32 -17 #rect
ce0 f9 expr out #txt
ce0 f9 111 272 168 272 #arcP
ce0 f7 expr out #txt
ce0 f7 280 272 337 272 #arcP
ce0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Invoke our simple REST service
and log it''s response</name>
    </language>
</elementInfo>
' #txt
ce0 f10 344 42 192 44 -87 -16 #rect
ce0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Use all methods of our simple REST service
as backend for a PersonManger dialog</name>
    </language>
</elementInfo>
' #txt
ce0 f12 344 178 256 44 -121 -16 #rect
ce0 f13 344 200 264 248 #arcP
ce0 f14 clientId e00c9735-7733-4da8-85c8-6413c6fb2cd3 #txt
ce0 f14 headers 'Accept=application/json;
' #txt
ce0 f14 method GET #txt
ce0 f14 resultType java.util.List<com.axonivy.connectivity.Person> #txt
ce0 f14 responseMapping 'out.persons=result;
' #txt
ce0 f14 responseCode 'ivy.log.info(result);
' #txt
ce0 f14 clientErrorCode ivy:error:rest:client #txt
ce0 f14 statusErrorCode ivy:error:rest:client #txt
ce0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Call PersonService</name>
    </language>
</elementInfo>
' #txt
ce0 f14 168 106 112 44 -52 -8 #rect
ce0 f15 344 64 265 106 #arcP
ce0 f15 0 0.7097590884517754 0 0 #arcLabel
ce0 f11 expr out #txt
ce0 f11 111 128 168 128 #arcP
ce0 f4 280 128 337 128 #arcP
ce0 f2 outLink listServiceOptions.ivp #txt
ce0 f2 inParamDecl '<> param;' #txt
ce0 f2 requestEnabled true #txt
ce0 f2 triggerEnabled false #txt
ce0 f2 callSignature listServiceOptions() #txt
ce0 f2 persist false #txt
ce0 f2 startName '1.3 Print REST service options' #txt
ce0 f2 startCategory rest/person #txt
ce0 f2 startCustomFields 'cssIcon=fa fa-rss' #txt
ce0 f2 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
ce0 f2 caseData businessCase.attach=true #txt
ce0 f2 showInStartList true #txt
ce0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>listServiceOptions.ivp</name>
    </language>
</elementInfo>
' #txt
ce0 f2 @C|.responsibility Everybody #txt
ce0 f2 81 393 30 30 -66 17 #rect
ce0 f3 337 393 30 30 0 15 #rect
ce0 f17 clientId e00c9735-7733-4da8-85c8-6413c6fb2cd3 #txt
ce0 f17 headers 'Accept=application/vnd.sun.wadl+xml;
' #txt
ce0 f17 method OPTIONS #txt
ce0 f17 resultType java.lang.String #txt
ce0 f17 responseCode 'ivy.log.info(result);

out.result = result;' #txt
ce0 f17 clientErrorCode ivy:error:rest:client #txt
ce0 f17 statusErrorCode ivy:error:rest:client #txt
ce0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Log 
REST resources</name>
        <desc>Shows how to get API documentation for ivy REST services</desc>
    </language>
</elementInfo>
' #txt
ce0 f17 160 386 128 44 -44 -15 #rect
ce0 f18 expr out #txt
ce0 f18 111 408 160 408 #arcP
ce0 f16 288 408 337 408 #arcP
ce0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Exposes the REST API description 
of my own PersonService implementation</name>
    </language>
</elementInfo>
' #txt
ce0 f19 344 330 272 44 -128 -15 #rect
ce0 f20 344 352 271 386 #arcP
>Proto ce0 .type com.axonivy.connectivity.Data #txt
>Proto ce0 .processKind NORMAL #txt
>Proto ce0 0 0 32 24 18 0 #rect
>Proto ce0 @|BIcon #fIcon
ce0 f5 mainOut f9 tail #connect
ce0 f9 head f8 mainIn #connect
ce0 f8 mainOut f7 tail #connect
ce0 f7 head f6 mainIn #connect
ce0 f12 ao f13 tail #connect
ce0 f13 head f8 @CG|ai #connect
ce0 f10 ao f15 tail #connect
ce0 f15 head f14 @CG|ai #connect
ce0 f0 mainOut f11 tail #connect
ce0 f11 head f14 mainIn #connect
ce0 f14 mainOut f4 tail #connect
ce0 f4 head f1 mainIn #connect
ce0 f2 mainOut f18 tail #connect
ce0 f18 head f17 mainIn #connect
ce0 f17 mainOut f16 tail #connect
ce0 f16 head f3 mainIn #connect
ce0 f19 ao f20 tail #connect
ce0 f20 head f17 @CG|ai #connect
