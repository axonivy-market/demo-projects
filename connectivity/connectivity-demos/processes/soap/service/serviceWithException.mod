[Ivy]
16D29AE50A7A6E34 9.2.0 #module
>Proto >Proto Collection #zClass
sn0 serviceWithException Big #zClass
sn0 WS #cInfo
sn0 #process
sn0 @TextInP .webServiceName .webServiceName #zField
sn0 @TextInP .implementationClassName .implementationClassName #zField
sn0 @TextInP .authenticationType .authenticationType #zField
sn0 @TextInP .type .type #zField
sn0 @TextInP .processKind .processKind #zField
sn0 @TextInP .xml .xml #zField
sn0 @TextInP .responsibility .responsibility #zField
sn0 @StartWS f0 '' #zField
sn0 @EndWS f1 '' #zField
sn0 @PushWFArc f2 '' #zField
sn0 @InfoButton f5 '' #zField
>Proto sn0 sn0 serviceWithException #zField
sn0 f0 inParamDecl '<Boolean throwException,String exceptionMessage> param;' #txt
sn0 f0 inParamTable 'out.exceptionMessage=param.exceptionMessage;
out.throwException=param.throwException;
' #txt
sn0 f0 outParamDecl '<String exceptionMessage> result;' #txt
sn0 f0 outParamTable 'result.exceptionMessage=in.exceptionMessage;
' #txt
sn0 f0 callSignature call(Boolean,String) #txt
sn0 f0 useUserDefinedException true #txt
sn0 f0 userDefinedExceptionCondition in.throwException #txt
sn0 f0 userDefinedExceptionMessage in.exceptionMessage #txt
sn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Boolean,String)</name>
    </language>
</elementInfo>
' #txt
sn0 f0 @C|.responsibility Everybody #txt
sn0 f0 81 49 30 30 -15 17 #rect
sn0 f0 @|StartWSIcon #fIcon
sn0 f1 337 49 30 30 0 15 #rect
sn0 f1 @|EndWSIcon #fIcon
sn0 f2 111 64 337 64 #arcP
sn0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>1) Generate the Web Service like normally via Definitions &gt; Web Service Client, see the Designer Guide for more information
2) Move the generated Java class from "src_wsproc" to the "src" folder, keep the package name the same
3) Annotate the generated class with "@org.apache.cxf.interceptor.OutFaultInterceptors(classes= {YourInterceptorClass.class})"
4) Implement "YourInterceptorClass" e.g. ErrorResponseInterceptor</name>
    </language>
</elementInfo>
' #txt
sn0 f5 80 116 832 88 -408 -30 #rect
sn0 f5 @|IBIcon #fIcon
>Proto sn0 .webServiceName com.axonivy.connectivity.soap.interceptor.serviceWithException #txt
>Proto sn0 .authenticationType 'None or Container' #txt
>Proto sn0 .type com.axonivy.connectivity.soap.service.ExceptionData #txt
>Proto sn0 .processKind WEB_SERVICE #txt
>Proto sn0 -8 -8 16 16 16 26 #rect
>Proto sn0 '' #fIcon
sn0 f0 mainOut f2 tail #connect
sn0 f2 head f1 mainIn #connect
