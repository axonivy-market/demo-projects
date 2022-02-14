[Ivy]
161AE4E4EC67C8FD 9.4.0 #module
>Proto >Proto Collection #zClass
be0 batchServiceClient Big #zClass
be0 B #cInfo
be0 #process
be0 @TextInP .type .type #zField
be0 @TextInP .processKind .processKind #zField
be0 @AnnotationInP-0n ai ai #zField
be0 @MessageFlowInP-0n messageIn messageIn #zField
be0 @MessageFlowOutP-0n messageOut messageOut #zField
be0 @TextInP .xml .xml #zField
be0 @TextInP .responsibility .responsibility #zField
be0 @StartRequest f0 '' #zField
be0 @EndTask f1 '' #zField
be0 @WSElement f3 '' #zField
be0 @PushWFArc f4 '' #zField
be0 @PushWFArc f2 '' #zField
be0 @InfoButton f5 '' #zField
be0 @AnnotationArc f6 '' #zField
>Proto be0 be0 batchServiceClient #zField
be0 f0 outLink callLongRunningBatchOperation.ivp #txt
be0 f0 inParamDecl '<Integer blockSeconds> param;' #txt
be0 f0 inParamTable 'out.blockSeconds=param.blockSeconds;
' #txt
be0 f0 requestEnabled true #txt
be0 f0 triggerEnabled false #txt
be0 f0 callSignature callLongRunningBatchOperation(Integer) #txt
be0 f0 persist false #txt
be0 f0 startName '9.3 Increase timeout properties for long running requests ' #txt
be0 f0 startCategory soap #txt
be0 f0 startCustomFields 'cssIcon=fa fa-clock-o' #txt
be0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
be0 f0 caseData businessCase.attach=true #txt
be0 f0 showInStartList 1 #txt
be0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>callLongRunning
BatchOperation.ivp</name>
    </language>
</elementInfo>
' #txt
be0 f0 @C|.responsibility Everybody #txt
be0 f0 97 65 30 30 -58 -47 #rect
be0 f1 449 65 30 30 0 15 #rect
be0 f3 actionTable 'out=in;
out.message=wsResponse;
' #txt
be0 f3 actionCode ivy.log.info(wsResponse); #txt
be0 f3 clientId 162B962523BAAB85 #txt
be0 f3 port TechnicalBackendServicePort #txt
be0 f3 operation longRunningBatchOperation #txt
be0 f3 properties 'javax.xml.ws.client.connectionTimeout=1000;
javax.xml.ws.client.receiveTimeout=70000;
' #txt
be0 f3 inputParams 'parameters.blockSeconds=in.blockSeconds;
' #txt
be0 f3 beanConfig "" #txt
be0 f3 timeout 0 #txt
be0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call batch</name>
    </language>
</elementInfo>
' #txt
be0 f3 248 58 112 44 -26 -8 #rect
be0 f4 expr out #txt
be0 f4 127 80 248 80 #arcP
be0 f2 expr out #txt
be0 f2 360 80 449 80 #arcP
be0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SOAP requests are aborted by default 
if the remote service does not answer within `60`` `seconds!

This batch client overrides the default settings with properties:
// waits 70 seconds for a result 
`javax.xml.ws.client.receiveTimeout=70''000
`// wait 1 second for a connection time out`
javax.xml.ws.client.connectionTimeout=1''000`
</name>
    </language>
</elementInfo>
' #txt
be0 f5 104 162 400 140 -197 -67 #rect
be0 f6 304 162 304 102 #arcP
be0 f6 0 0.37994037265054 0 0 #arcLabel
>Proto be0 .type com.axonivy.connectivity.soap.BatchServiceClientData #txt
>Proto be0 .processKind NORMAL #txt
>Proto be0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Timeout Properties</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>344</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto be0 0 0 32 24 18 0 #rect
>Proto be0 @|BIcon #fIcon
be0 f0 mainOut f4 tail #connect
be0 f4 head f3 mainIn #connect
be0 f3 mainOut f2 tail #connect
be0 f2 head f1 mainIn #connect
be0 f5 ao f6 tail #connect
be0 f6 head f3 @CG|ai #connect
