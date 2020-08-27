[Ivy]
16764B07C0329FC8 9.2.0 #module
>Proto >Proto Collection #zClass
cc0 asyncInvocation Big #zClass
cc0 B #cInfo
cc0 #process
cc0 @TextInP .type .type #zField
cc0 @TextInP .processKind .processKind #zField
cc0 @AnnotationInP-0n ai ai #zField
cc0 @MessageFlowInP-0n messageIn messageIn #zField
cc0 @MessageFlowOutP-0n messageOut messageOut #zField
cc0 @TextInP .xml .xml #zField
cc0 @TextInP .responsibility .responsibility #zField
cc0 @StartRequest f0 '' #zField
cc0 @EndTask f1 '' #zField
cc0 @UserDialog f3 '' #zField
cc0 @PushWFArc f4 '' #zField
cc0 @PushWFArc f2 '' #zField
cc0 @RestClientCall f10 '' #zField
cc0 @SignalStartEvent f12 '' #zField
cc0 @SignalStartEvent f17 '' #zField
cc0 @InfoButton f22 '' #zField
cc0 @InfoButton f18 '' #zField
cc0 @EndTask f13 '' #zField
cc0 @GridStep f14 '' #zField
cc0 @EndTask f8 '' #zField
cc0 @StartRequest f7 '' #zField
cc0 @PushWFArc f16 '' #zField
cc0 @PushWFArc f20 '' #zField
cc0 @PushWFArc f11 '' #zField
cc0 @PushWFArc f9 '' #zField
cc0 @PushWFArc f15 '' #zField
cc0 @ErrorEnd f19 '' #zField
cc0 @StartRequest f5 '' #zField
cc0 @UserDialog f6 '' #zField
cc0 @EndTask f21 '' #zField
cc0 @PushWFArc f23 '' #zField
cc0 @PushWFArc f24 '' #zField
cc0 @AnnotationArc f25 '' #zField
cc0 @AnnotationArc f26 '' #zField
>Proto cc0 cc0 asyncInvocation #zField
cc0 f0 outLink chatAsync.ivp #txt
cc0 f0 inParamDecl '<> param;' #txt
cc0 f0 requestEnabled true #txt
cc0 f0 triggerEnabled false #txt
cc0 f0 callSignature chatAsync() #txt
cc0 f0 persist false #txt
cc0 f0 startName '5.3 chat async with JS client for REST' #txt
cc0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
cc0 f0 caseData businessCase.attach=true #txt
cc0 f0 showInStartList 1 #txt
cc0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>chatAsync.ivp</name>
    </language>
</elementInfo>
' #txt
cc0 f0 @C|.responsibility Everybody #txt
cc0 f0 81 49 30 30 -42 17 #rect
cc0 f0 @|StartRequestIcon #fIcon
cc0 f1 353 49 30 30 0 15 #rect
cc0 f1 @|EndIcon #fIcon
cc0 f3 dialogId com.axonivy.connectivity.rest.ChatClient #txt
cc0 f3 startMethod start() #txt
cc0 f3 requestActionDecl '<> param;' #txt
cc0 f3 responseActionDecl 'com.axonivy.connectivity.rest.AsyncInvocationData out;
' #txt
cc0 f3 responseMappingAction 'out=in;
' #txt
cc0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>JavaScript chat 
with REST backend </name>
    </language>
</elementInfo>
' #txt
cc0 f3 168 42 144 44 -54 -15 #rect
cc0 f3 @|UserDialogIcon #fIcon
cc0 f4 expr out #txt
cc0 f4 111 64 168 64 #arcP
cc0 f2 expr out #txt
cc0 f2 312 64 353 64 #arcP
cc0 f10 clientId b0a5f371-e479-444d-b71c-af1fff4c084d #txt
cc0 f10 path /async #txt
cc0 f10 queryParams 'blockSeconds=3;
' #txt
cc0 f10 method JAX_RS #txt
cc0 f10 clientCode 'import javax.ws.rs.client.InvocationCallback;
import com.axonivy.connectivity.rest.aynch.SignalInvoker;

InvocationCallback callback = new SignalInvoker("rest:batch:result:ok");
client.request().async().get(callback);
// callback is invoked as soon as the result is available.' #txt
cc0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start long batch
operation</name>
    </language>
</elementInfo>
' #txt
cc0 f10 256 346 128 44 -45 -15 #rect
cc0 f10 @|RestClientCallIcon #fIcon
cc0 f12 actionTable 'out.result=signal.getSignalData() as String;
' #txt
cc0 f12 signalCode rest:batch:result:ok #txt
cc0 f12 attachToBusinessCase true #txt
cc0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>rest:batch:result:ok</name>
    </language>
</elementInfo>
' #txt
cc0 f12 145 457 30 30 -62 17 #rect
cc0 f12 @|SignalStartEventIcon #fIcon
cc0 f17 signalCode ivy:error:rest:client #txt
cc0 f17 attachToBusinessCase true #txt
cc0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy:error:rest:client</name>
    </language>
</elementInfo>
' #txt
cc0 f17 289 553 30 30 -17 17 #rect
cc0 f17 @|SignalStartEventIcon #fIcon
cc0 f17 -1|-1|-65536 #nodeStyle
cc0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Async operation ended, 
result is available!</name>
        <nameStyle>44
</nameStyle>
    </language>
</elementInfo>
' #txt
cc0 f22 80 562 160 44 -76 -15 #rect
cc0 f22 @|IBIcon #fIcon
cc0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
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
cc0 f18 296 258 256 60 -121 -22 #rect
cc0 f18 @|IBIcon #fIcon
cc0 f13 465 457 30 30 0 15 #rect
cc0 f13 @|EndIcon #fIcon
cc0 f14 actionTable 'out=in;
' #txt
cc0 f14 actionCode 'ivy.log.info("result availble: "+in.result);' #txt
cc0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>process result</name>
    </language>
</elementInfo>
' #txt
cc0 f14 264 450 112 44 -45 -7 #rect
cc0 f14 @|StepIcon #fIcon
cc0 f8 465 353 30 30 0 15 #rect
cc0 f8 @|EndIcon #fIcon
cc0 f7 outLink callBatchAsync.ivp #txt
cc0 f7 inParamDecl '<> param;' #txt
cc0 f7 requestEnabled true #txt
cc0 f7 triggerEnabled false #txt
cc0 f7 callSignature callBatchAsync() #txt
cc0 f7 persist false #txt
cc0 f7 startName '5.1 call long running operation async' #txt
cc0 f7 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
cc0 f7 caseData businessCase.attach=true #txt
cc0 f7 showInStartList 1 #txt
cc0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>callBatchAsync.ivp</name>
    </language>
</elementInfo>
' #txt
cc0 f7 @C|.responsibility Everybody #txt
cc0 f7 145 353 30 30 -57 17 #rect
cc0 f7 @|StartRequestIcon #fIcon
cc0 f16 expr out #txt
cc0 f16 376 472 465 472 #arcP
cc0 f20 expr out #txt
cc0 f20 319 568 465 568 #arcP
cc0 f20 0 0.5162850334973801 0 0 #arcLabel
cc0 f11 expr out #txt
cc0 f11 175 368 256 368 #arcP
cc0 f9 384 368 465 368 #arcP
cc0 f15 expr out #txt
cc0 f15 175 472 264 472 #arcP
cc0 f19 errorCode ivy:error:rest:client #txt
cc0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy:error:rest:client</name>
    </language>
</elementInfo>
' #txt
cc0 f19 465 553 30 30 -31 17 #rect
cc0 f19 @|ErrorEndIcon #fIcon
cc0 f5 outLink restCallback.ivp #txt
cc0 f5 inParamDecl '<> param;' #txt
cc0 f5 requestEnabled true #txt
cc0 f5 triggerEnabled false #txt
cc0 f5 callSignature restCallback() #txt
cc0 f5 persist false #txt
cc0 f5 startName '5.2 invoke async with JS callback' #txt
cc0 f5 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
cc0 f5 caseData businessCase.attach=true #txt
cc0 f5 showInStartList 1 #txt
cc0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>restCallback.ivp</name>
    </language>
</elementInfo>
' #txt
cc0 f5 @C|.responsibility Everybody #txt
cc0 f5 81 145 30 30 -49 17 #rect
cc0 f5 @|StartRequestIcon #fIcon
cc0 f6 dialogId com.axonivy.connectivity.rest.AsyncUiInvoker #txt
cc0 f6 startMethod start() #txt
cc0 f6 requestActionDecl '<> param;' #txt
cc0 f6 responseActionDecl 'com.axonivy.connectivity.rest.AsyncInvocationData out;
' #txt
cc0 f6 responseMappingAction 'out=in;
' #txt
cc0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>UI with  async
JavaScript callback</name>
    </language>
</elementInfo>
' #txt
cc0 f6 168 138 144 44 -53 -15 #rect
cc0 f6 @|UserDialogIcon #fIcon
cc0 f21 353 145 30 30 0 15 #rect
cc0 f21 @|EndIcon #fIcon
cc0 f23 expr out #txt
cc0 f23 111 160 168 160 #arcP
cc0 f24 expr out #txt
cc0 f24 312 160 353 160 #arcP
cc0 f25 424 318 320 346 #arcP
cc0 f26 80 584 145 472 #arcP
cc0 f26 1 72 584 #addKink
cc0 f26 2 72 472 #addKink
cc0 f26 1 0.7975447465262427 0 0 #arcLabel
>Proto cc0 .type com.axonivy.connectivity.rest.AsyncInvocationData #txt
>Proto cc0 .processKind NORMAL #txt
>Proto cc0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Async UI</swimlaneLabel>
        <swimlaneLabel>Async Process</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>232</swimlaneSize>
    <swimlaneSize>408</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto cc0 0 0 32 24 18 0 #rect
>Proto cc0 @|BIcon #fIcon
cc0 f0 mainOut f4 tail #connect
cc0 f4 head f3 mainIn #connect
cc0 f3 mainOut f2 tail #connect
cc0 f2 head f1 mainIn #connect
cc0 f7 mainOut f11 tail #connect
cc0 f11 head f10 mainIn #connect
cc0 f10 mainOut f9 tail #connect
cc0 f9 head f8 mainIn #connect
cc0 f12 mainOut f15 tail #connect
cc0 f15 head f14 mainIn #connect
cc0 f14 mainOut f16 tail #connect
cc0 f16 head f13 mainIn #connect
cc0 f17 mainOut f20 tail #connect
cc0 f20 head f19 mainIn #connect
cc0 f5 mainOut f23 tail #connect
cc0 f23 head f6 mainIn #connect
cc0 f6 mainOut f24 tail #connect
cc0 f24 head f21 mainIn #connect
cc0 f18 ao f25 tail #connect
cc0 f25 head f10 @CG|ai #connect
cc0 f22 ao f26 tail #connect
cc0 f26 head f12 @CG|ai #connect
