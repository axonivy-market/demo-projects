[Ivy]
16D29C451A0AF7D5 9.4.7 #module
>Proto >Proto Collection #zClass
ie0 interceptedService Big #zClass
ie0 B #cInfo
ie0 #process
ie0 @TextInP .colors .colors #zField
ie0 @TextInP color color #zField
ie0 @TextInP .type .type #zField
ie0 @TextInP .processKind .processKind #zField
ie0 @TextInP .xml .xml #zField
ie0 @TextInP .responsibility .responsibility #zField
ie0 @StartRequest f0 '' #zField
ie0 @EndTask f1 '' #zField
ie0 @WSElement f2 '' #zField
ie0 @PushWFArc f3 '' #zField
ie0 @PushWFArc f4 '' #zField
ie0 @InfoButton f5 '' #zField
ie0 @AnnotationArc f6 '' #zField
>Proto ie0 ie0 interceptedService #zField
ie0 f0 outLink interceptException.ivp #txt
ie0 f0 inParamDecl '<> param;' #txt
ie0 f0 requestEnabled true #txt
ie0 f0 triggerEnabled false #txt
ie0 f0 callSignature interceptException() #txt
ie0 f0 startName '9.4 Intercept webservice response' #txt
ie0 f0 startCategory soap #txt
ie0 f0 startCustomFields 'cssIcon=fa fa-exclamation-triangle' #txt
ie0 f0 caseData businessCase.attach=true #txt
ie0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>interceptException.ivp</name>
    </language>
</elementInfo>
' #txt
ie0 f0 @C|.responsibility Everybody #txt
ie0 f0 81 49 30 30 -57 19 #rect
ie0 f1 337 49 30 30 0 15 #rect
ie0 f2 actionTable 'out=in;
' #txt
ie0 f2 clientId 16D2A643A3A25C52 #txt
ie0 f2 port ServiceWithExceptionPort #txt
ie0 f2 operation call #txt
ie0 f2 properties 'AXIS.mapNullValues=true;
AXIS2.autoInitFirstLevelFields=true;
org.apache.cxf.transport.process_fault_on_http_400=true;
' #txt
ie0 f2 inputParams 'parameters.exceptionMessage="This exception has been intercepted";
parameters.throwException=true;
' #txt
ie0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name></name>
    </language>
</elementInfo>
' #txt
ie0 f2 168 42 112 44 0 -7 #rect
ie0 f3 111 64 168 64 #arcP
ie0 f4 280 64 337 64 #arcP
ie0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This Web Service Call Activity is being intercepted by an OutFaultInterceptor
have a look at the service: Processes &gt; soap &gt; service &gt; serviceWithException</name>
    </language>
</elementInfo>
' #txt
ie0 f5 80 122 512 44 -248 -15 #rect
ie0 f6 336 122 184 86 #arcP
>Proto ie0 .type com.axonivy.connectivity.soap.service.ExceptionData #txt
>Proto ie0 .processKind NORMAL #txt
>Proto ie0 0 0 32 24 18 0 #rect
>Proto ie0 @|BIcon #fIcon
ie0 f0 mainOut f3 tail #connect
ie0 f3 head f2 mainIn #connect
ie0 f2 mainOut f4 tail #connect
ie0 f4 head f1 mainIn #connect
ie0 f5 ao f6 tail #connect
ie0 f6 head f2 @CG|ai #connect
