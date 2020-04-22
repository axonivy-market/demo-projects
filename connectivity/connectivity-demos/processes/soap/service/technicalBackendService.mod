[Ivy]
162B95BB70C3178E 7.5.0 #module
>Proto >Proto Collection #zClass
te0 technicalBackendService Big #zClass
te0 WS #cInfo
te0 #process
te0 @TextInP .webServiceName .webServiceName #zField
te0 @TextInP .implementationClassName .implementationClassName #zField
te0 @TextInP .authenticationType .authenticationType #zField
te0 @TextInP .type .type #zField
te0 @TextInP .processKind .processKind #zField
te0 @AnnotationInP-0n ai ai #zField
te0 @MessageFlowInP-0n messageIn messageIn #zField
te0 @MessageFlowOutP-0n messageOut messageOut #zField
te0 @TextInP .xml .xml #zField
te0 @TextInP .responsibility .responsibility #zField
te0 @GridStep f15 '' #zField
te0 @StartWS f14 '' #zField
te0 @EndWS f17 '' #zField
te0 @PushWFArc f16 '' #zField
te0 @PushWFArc f18 '' #zField
te0 @InfoButton f0 '' #zField
te0 @AnnotationArc f1 '' #zField
>Proto te0 te0 technicalBackendService #zField
te0 f15 actionTable 'out=in;
' #txt
te0 f15 actionCode 'try {
  // simulate hard work!
	Thread.sleep(65000);
} catch (Exception ex) {
	ex.printStackTrace();
}' #txt
te0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>long running batch operation (65 seconds)</name>
    </language>
</elementInfo>
' #txt
te0 f15 227 76 240 44 -116 -8 #rect
te0 f15 @|StepIcon #fIcon
te0 f14 inParamTable 'out.startTimeMillis=System.currentTimeMillis();
' #txt
te0 f14 outParamDecl '<String message> result;' #txt
te0 f14 outParamTable 'result.message="batch processed in "+(System.currentTimeMillis()-in.startTimeMillis)+ " [ms]";
' #txt
te0 f14 actionDecl 'com.axonivy.connectivity.soap.service.TechnicalBackendServiceData out;
' #txt
te0 f14 callSignature longRunningBatchOperation() #txt
te0 f14 useUserDefinedException false #txt
te0 f14 taskData TaskTriggered.PRI=2 #txt
te0 f14 type com.axonivy.connectivity.soap.service.TechnicalBackendServiceData #txt
te0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>longRunningBatchOperation()</name>
        <nameStyle>27,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
te0 f14 @C|.responsibility Everybody #txt
te0 f14 116 83 30 30 -80 -40 #rect
te0 f14 @|StartWSIcon #fIcon
te0 f17 492 83 30 30 0 15 #rect
te0 f17 @|EndWSIcon #fIcon
te0 f16 expr out #txt
te0 f16 146 98 227 98 #arcP
te0 f18 expr out #txt
te0 f18 467 98 492 98 #arcP
te0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>simulates a slow service for the ''batchServiceClient''</name>
        <nameStyle>53
</nameStyle>
    </language>
</elementInfo>
' #txt
te0 f0 176 177 336 30 -161 -7 #rect
te0 f0 @|IBIcon #fIcon
te0 f1 176 192 131 113 #arcP
te0 f1 1 131 192 #addKink
te0 f1 0 0.889103248784782 0 0 #arcLabel
>Proto te0 .webServiceName com.axonivy.connectivity.technicalBackendService #txt
>Proto te0 .authenticationType 'None or Container' #txt
>Proto te0 .type com.axonivy.connectivity.soap.service.TechnicalBackendServiceData #txt
>Proto te0 .processKind WEB_SERVICE #txt
>Proto te0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto te0 -8 -8 16 16 16 26 #rect
>Proto te0 '' #fIcon
te0 f14 mainOut f16 tail #connect
te0 f16 head f15 mainIn #connect
te0 f15 mainOut f18 tail #connect
te0 f18 head f17 mainIn #connect
te0 f0 ao f1 tail #connect
te0 f1 head f14 @CG|ai #connect
