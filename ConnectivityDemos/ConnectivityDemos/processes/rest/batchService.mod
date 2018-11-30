[Ivy]
157B33AB7587F1F1 3.23 #module
>Proto >Proto Collection #zClass
be0 batchService Big #zClass
be0 B #cInfo
be0 #process
be0 @TextInP .resExport .resExport #zField
be0 @TextInP .type .type #zField
be0 @TextInP .processKind .processKind #zField
be0 @AnnotationInP-0n ai ai #zField
be0 @MessageFlowInP-0n messageIn messageIn #zField
be0 @MessageFlowOutP-0n messageOut messageOut #zField
be0 @TextInP .xml .xml #zField
be0 @TextInP .responsibility .responsibility #zField
be0 @StartRequest f0 '' #zField
be0 @EndTask f1 '' #zField
be0 @InfoButton f5 '' #zField
be0 @RestClientCall f6 '' #zField
be0 @PushWFArc f2 '' #zField
be0 @PushWFArc f3 '' #zField
be0 @AnnotationArc f4 '' #zField
be0 @StartRequest f7 '' #zField
be0 @EndTask f8 '' #zField
be0 @RestClientCall f10 '' #zField
be0 @PushWFArc f11 '' #zField
be0 @PushWFArc f9 '' #zField
be0 @SignalStartEvent f12 '' #zField
be0 @EndTask f13 '' #zField
be0 @GridStep f14 '' #zField
be0 @PushWFArc f15 '' #zField
be0 @PushWFArc f16 '' #zField
be0 @SignalStartEvent f17 '' #zField
be0 @ErrorEnd f19 '' #zField
be0 @PushWFArc f20 '' #zField
be0 @InfoButton f18 '' #zField
be0 @AnnotationArc f21 '' #zField
be0 @InfoButton f22 '' #zField
be0 @AnnotationArc f23 '' #zField
>Proto be0 be0 batchService #zField
be0 f0 outLink callLongRunningBatch.ivp #txt
be0 f0 type com.axonivy.connectivity.rest.BatchServiceData #txt
be0 f0 inParamDecl '<> param;' #txt
be0 f0 actionDecl 'com.axonivy.connectivity.rest.BatchServiceData out;
' #txt
be0 f0 guid 157B33AB7A4D35AD #txt
be0 f0 requestEnabled true #txt
be0 f0 triggerEnabled false #txt
be0 f0 callSignature callLongRunningBatch() #txt
be0 f0 persist false #txt
be0 f0 startName '5. Increase timeout properties for long running requests' #txt
be0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
be0 f0 caseData businessCase.attach=true #txt
be0 f0 showInStartList 1 #txt
be0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>callLongRunningBatch.ivp</name>
        <nameStyle>24,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
be0 f0 @C|.responsibility Everybody #txt
be0 f0 113 49 30 30 -71 17 #rect
be0 f0 @|StartRequestIcon #fIcon
be0 f1 type com.axonivy.connectivity.rest.BatchServiceData #txt
be0 f1 369 49 30 30 0 15 #rect
be0 f1 @|EndIcon #fIcon
be0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>REST requests are aborted by default 
if the remote service does not answer within 30 seconds!

This batch client overrides the default settings 
and waits 35 seconds for a result 
and 1 seconds for a connection by setting:
jersey.config.client.readTimeout=35''000
jersey.config.client.connectTimeout=1''000
</name>
        <nameStyle>95,7
129,7
81,3,7
1,7
</nameStyle>
    </language>
</elementInfo>
' #txt
be0 f5 200 122 320 156 -155 -73 #rect
be0 f5 @|IBIcon #fIcon
be0 f6 clientId b0a5f371-e479-444d-b71c-af1fff4c084d #txt
be0 f6 method GET #txt
be0 f6 resultType java.lang.String #txt
be0 f6 responseCode 'ivy.log.info("batch service returned: "+result);' #txt
be0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call batch</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
be0 f6 200 42 112 44 -26 -8 #rect
be0 f6 @|RestClientCallIcon #fIcon
be0 f2 expr out #txt
be0 f2 143 64 200 64 #arcP
be0 f3 312 64 369 64 #arcP
be0 f4 360 122 256 86 #arcP
be0 f7 outLink callBatchAsync.ivp #txt
be0 f7 type com.axonivy.connectivity.rest.BatchServiceData #txt
be0 f7 inParamDecl '<> param;' #txt
be0 f7 actionDecl 'com.axonivy.connectivity.rest.BatchServiceData out;
' #txt
be0 f7 guid 16764011DCDC226D #txt
be0 f7 requestEnabled true #txt
be0 f7 triggerEnabled false #txt
be0 f7 callSignature callBatchAsync() #txt
be0 f7 persist false #txt
be0 f7 startName '5.1 call long running operation async' #txt
be0 f7 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
be0 f7 caseData businessCase.attach=true #txt
be0 f7 showInStartList 1 #txt
be0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>callBatchAsync.ivp</name>
    </language>
</elementInfo>
' #txt
be0 f7 @C|.responsibility Everybody #txt
be0 f7 113 417 30 30 -57 17 #rect
be0 f7 @|StartRequestIcon #fIcon
be0 f8 type com.axonivy.connectivity.rest.BatchServiceData #txt
be0 f8 433 417 30 30 0 15 #rect
be0 f8 @|EndIcon #fIcon
be0 f10 clientId b0a5f371-e479-444d-b71c-af1fff4c084d #txt
be0 f10 path /async #txt
be0 f10 queryParams 'blockSeconds=3;
' #txt
be0 f10 method JAX_RS #txt
be0 f10 clientCode 'import javax.ws.rs.client.InvocationCallback;
import com.axonivy.connectivity.rest.aynch.SignalInvoker;

InvocationCallback callback = new SignalInvoker("rest:batch:result:ok");
client.request().async().get(callback);
// callback is invoked as soon as the result is available.' #txt
be0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start long batch
operation</name>
    </language>
</elementInfo>
' #txt
be0 f10 224 410 128 44 -45 -15 #rect
be0 f10 @|RestClientCallIcon #fIcon
be0 f11 expr out #txt
be0 f11 143 432 224 432 #arcP
be0 f9 352 432 433 432 #arcP
be0 f12 actionDecl 'com.axonivy.connectivity.rest.BatchServiceData out;
' #txt
be0 f12 actionTable 'out.result=signal.getSignalData() as String;
' #txt
be0 f12 type com.axonivy.connectivity.rest.BatchServiceData #txt
be0 f12 signalCode rest:batch:result:ok #txt
be0 f12 attachToBusinessCase true #txt
be0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>rest:batch:result:ok</name>
    </language>
</elementInfo>
' #txt
be0 f12 113 521 30 30 -62 17 #rect
be0 f12 @|SignalStartEventIcon #fIcon
be0 f13 type com.axonivy.connectivity.rest.BatchServiceData #txt
be0 f13 433 521 30 30 0 15 #rect
be0 f13 @|EndIcon #fIcon
be0 f14 actionDecl 'com.axonivy.connectivity.rest.BatchServiceData out;
' #txt
be0 f14 actionTable 'out=in;
' #txt
be0 f14 actionCode 'ivy.log.info("result availble: "+in.result);' #txt
be0 f14 type com.axonivy.connectivity.rest.BatchServiceData #txt
be0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>process result</name>
    </language>
</elementInfo>
' #txt
be0 f14 232 514 112 44 -45 -7 #rect
be0 f14 @|StepIcon #fIcon
be0 f15 expr out #txt
be0 f15 143 536 232 536 #arcP
be0 f16 expr out #txt
be0 f16 344 536 433 536 #arcP
be0 f17 actionDecl 'com.axonivy.connectivity.rest.BatchServiceData out;
' #txt
be0 f17 type com.axonivy.connectivity.rest.BatchServiceData #txt
be0 f17 signalCode ivy:error:rest:client #txt
be0 f17 attachToBusinessCase true #txt
be0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy:error:rest:client</name>
    </language>
</elementInfo>
' #txt
be0 f17 257 617 30 30 -17 17 #rect
be0 f17 @|SignalStartEventIcon #fIcon
be0 f17 -1|-1|-65536 #nodeStyle
be0 f19 errorCode ivy:error:rest:client #txt
be0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy:error:rest:client</name>
    </language>
</elementInfo>
' #txt
be0 f19 433 617 30 30 -31 17 #rect
be0 f19 @|ErrorEndIcon #fIcon
be0 f20 expr out #txt
be0 f20 287 632 433 632 #arcP
be0 f20 0 0.5162850334973801 0 0 #arcLabel
be0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Execution continous immediately, 
even tough the server side processing
takes up to 3 seconds</name>
        <nameStyle>93
</nameStyle>
    </language>
</elementInfo>
' #txt
be0 f18 264 322 256 60 -121 -22 #rect
be0 f18 @|IBIcon #fIcon
be0 f21 392 382 288 410 #arcP
be0 f21 0 0.5328009568614089 0 0 #arcLabel
be0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Async operation ended, 
result is available!</name>
        <nameStyle>44
</nameStyle>
    </language>
</elementInfo>
' #txt
be0 f22 48 626 160 44 -76 -15 #rect
be0 f22 @|IBIcon #fIcon
be0 f23 128 626 113 536 #arcP
be0 f23 1 48 592 #addKink
be0 f23 2 48 536 #addKink
be0 f23 0 0.6058344117784796 0 0 #arcLabel
>Proto be0 .type com.axonivy.connectivity.rest.BatchServiceData #txt
>Proto be0 .processKind NORMAL #txt
>Proto be0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Timeout Properties</swimlaneLabel>
        <swimlaneLabel>Async invocation</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>312</swimlaneSize>
    <swimlaneSize>400</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto be0 0 0 32 24 18 0 #rect
>Proto be0 @|BIcon #fIcon
be0 f0 mainOut f2 tail #connect
be0 f2 head f6 mainIn #connect
be0 f6 mainOut f3 tail #connect
be0 f3 head f1 mainIn #connect
be0 f5 ao f4 tail #connect
be0 f4 head f6 @CG|ai #connect
be0 f7 mainOut f11 tail #connect
be0 f11 head f10 mainIn #connect
be0 f10 mainOut f9 tail #connect
be0 f9 head f8 mainIn #connect
be0 f12 mainOut f15 tail #connect
be0 f15 head f14 mainIn #connect
be0 f14 mainOut f16 tail #connect
be0 f16 head f13 mainIn #connect
be0 f17 mainOut f20 tail #connect
be0 f20 head f19 mainIn #connect
be0 f18 ao f21 tail #connect
be0 f21 head f10 @CG|ai #connect
be0 f22 ao f23 tail #connect
be0 f23 head f12 @CG|ai #connect
