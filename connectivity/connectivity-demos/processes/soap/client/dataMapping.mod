[Ivy]
1605A38503199ADB 9.2.0 #module
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
dg0 @WSElement f3 '' #zField
dg0 @PushWFArc f4 '' #zField
dg0 @GridStep f5 '' #zField
dg0 @PushWFArc f6 '' #zField
dg0 @PushWFArc f2 '' #zField
dg0 @StartRequest f7 '' #zField
dg0 @WSElement f8 '' #zField
dg0 @PushWFArc f9 '' #zField
dg0 @EndTask f10 '' #zField
dg0 @GridStep f12 '' #zField
dg0 @PushWFArc f13 '' #zField
dg0 @PushWFArc f11 '' #zField
>Proto dg0 dg0 dataMapping #zField
dg0 f0 outLink resolveToCache.ivp #txt
dg0 f0 inParamDecl '<> param;' #txt
dg0 f0 requestEnabled true #txt
dg0 f0 triggerEnabled false #txt
dg0 f0 callSignature resolveToCache() #txt
dg0 f0 persist false #txt
dg0 f0 startName '9.1.1 read remote result to cache' #txt
dg0 f0 startDescription 'Caches the result of a WebService invocation as the we do not expect the value to change.' #txt
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
        <name>resolveToCache.ivp</name>
        <nameStyle>18,5,7
</nameStyle>
        <desc>Caches the result of a remote WebService invocation.
Only the first execution will fire an HTTP request over the network. 
Follow up executions will simply consume the first result from the cache.</desc>
    </language>
</elementInfo>
' #txt
dg0 f0 @C|.responsibility Everybody #txt
dg0 f0 81 49 30 30 -60 17 #rect
dg0 f0 @|StartRequestIcon #fIcon
dg0 f1 497 49 30 30 0 15 #rect
dg0 f1 @|EndIcon #fIcon
dg0 f3 actionTable 'out=in;
out.time=wsResponse;
' #txt
dg0 f3 cache '{/cache true /invalidation false /scope 2 /groupname "\"remoteTime\""/invalidation_time_group ""/lifetime_group "0"/identifier "\"local\""/invalidation_time_entry ""/lifetime_entry "0"}' #txt
dg0 f3 clientId 162B97C859B22CA3 #txt
dg0 f3 port SampleWebServiceSoap12 #txt
dg0 f3 operation GetCurrentTime #txt
dg0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>resolve 
remote time</name>
    </language>
</elementInfo>
' #txt
dg0 f3 168 42 112 44 -38 -15 #rect
dg0 f3 @|WebServiceIcon #fIcon
dg0 f4 expr out #txt
dg0 f4 111 64 168 64 #arcP
dg0 f5 actionTable 'out=in;
' #txt
dg0 f5 actionCode 'ivy.log.info("the time on the remote system is "+in.time);
' #txt
dg0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log time</name>
    </language>
</elementInfo>
' #txt
dg0 f5 328 42 112 44 -25 -7 #rect
dg0 f5 @|StepIcon #fIcon
dg0 f6 expr out #txt
dg0 f6 280 64 328 64 #arcP
dg0 f2 expr out #txt
dg0 f2 440 64 497 64 #arcP
dg0 f7 outLink mapComplexData.ivp #txt
dg0 f7 inParamDecl '<> param;' #txt
dg0 f7 requestEnabled true #txt
dg0 f7 triggerEnabled false #txt
dg0 f7 callSignature mapComplexData() #txt
dg0 f7 persist false #txt
dg0 f7 startName '9.1.2 map complex data' #txt
dg0 f7 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
dg0 f7 caseData businessCase.attach=true #txt
dg0 f7 showInStartList 1 #txt
dg0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>mapComplexData.ivp</name>
        <nameStyle>18,5,7
</nameStyle>
        <desc>sends and consumes complex objects:
- for demo reasons, the remote service is also provided with axon.ivy tooling.</desc>
    </language>
</elementInfo>
' #txt
dg0 f7 @C|.responsibility Everybody #txt
dg0 f7 81 137 30 30 -59 17 #rect
dg0 f7 @|StartRequestIcon #fIcon
dg0 f8 actionTable 'out=in;
out.person=wsResponse;
' #txt
dg0 f8 actionCode '// mapping is done in the attribute table: where ''wsReponse'' is assigned to out.person!' #txt
dg0 f8 clientId 16150E44A158D09C #txt
dg0 f8 port PersonServicePort #txt
dg0 f8 operation addPerson #txt
dg0 f8 inputParams 'parameters.person.firstname="Diana";
parameters.person.lastname="Larsen";
' #txt
dg0 f8 beanConfig "" #txt
dg0 f8 timeout 0 #txt
dg0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addPerson
to own service</name>
    </language>
</elementInfo>
' #txt
dg0 f8 160 130 128 44 -42 -15 #rect
dg0 f8 @|WebServiceIcon #fIcon
dg0 f9 expr out #txt
dg0 f9 111 152 160 152 #arcP
dg0 f10 497 137 30 30 0 15 #rect
dg0 f10 @|EndIcon #fIcon
dg0 f12 actionTable 'out=in;
' #txt
dg0 f12 actionCode 'ivy.log.info("created person with id "+in.person.id);' #txt
dg0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log uuid</name>
    </language>
</elementInfo>
' #txt
dg0 f12 328 130 112 44 -25 -7 #rect
dg0 f12 @|StepIcon #fIcon
dg0 f13 expr out #txt
dg0 f13 288 152 328 152 #arcP
dg0 f11 expr out #txt
dg0 f11 440 152 497 152 #arcP
>Proto dg0 .type com.axonivy.connectivity.soap.DataMappingData #txt
>Proto dg0 .processKind NORMAL #txt
>Proto dg0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto dg0 0 0 32 24 18 0 #rect
>Proto dg0 @|BIcon #fIcon
dg0 f0 mainOut f4 tail #connect
dg0 f4 head f3 mainIn #connect
dg0 f3 mainOut f6 tail #connect
dg0 f6 head f5 mainIn #connect
dg0 f5 mainOut f2 tail #connect
dg0 f2 head f1 mainIn #connect
dg0 f7 mainOut f9 tail #connect
dg0 f9 head f8 mainIn #connect
dg0 f8 mainOut f13 tail #connect
dg0 f13 head f12 mainIn #connect
dg0 f12 mainOut f11 tail #connect
dg0 f11 head f10 mainIn #connect
