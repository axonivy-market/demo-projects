[Ivy]
1605A38503199ADB 3.20 #module
>Proto >Proto Collection #zClass
dg0 dataMapping Big #zClass
dg0 B #cInfo
dg0 #process
dg0 @TextInP .resExport .resExport #zField
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
>Proto dg0 dg0 dataMapping #zField
dg0 f0 outLink resolveToCache.ivp #txt
dg0 f0 type com.axonivy.connectivity.soap.DataMappingData #txt
dg0 f0 inParamDecl '<> param;' #txt
dg0 f0 actionDecl 'com.axonivy.connectivity.soap.DataMappingData out;
' #txt
dg0 f0 guid 1605A38503C283B0 #txt
dg0 f0 requestEnabled true #txt
dg0 f0 triggerEnabled false #txt
dg0 f0 callSignature resolveToCache() #txt
dg0 f0 persist false #txt
dg0 f0 startName '9.1.1 read remote result to cache' #txt
dg0 f0 startDescription 'Caches the result of a WebService invocation as the we do not expect the value to change.' #txt
dg0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
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
dg0 f1 type com.axonivy.connectivity.soap.DataMappingData #txt
dg0 f1 497 49 30 30 0 15 #rect
dg0 f1 @|EndIcon #fIcon
dg0 f3 type com.axonivy.connectivity.soap.DataMappingData #txt
dg0 f3 actionDecl 'com.axonivy.connectivity.soap.DataMappingData out;
' #txt
dg0 f3 actionTable 'out=in;
out.ip=wsResponse;
' #txt
dg0 f3 cache '{/cache true /invalidation false /scope 2 /groupname "\"geoip\""/invalidation_time_group ""/lifetime_group "0"/identifier "\"local\""/invalidation_time_entry ""/lifetime_entry "0"}' #txt
dg0 f3 timeout 0 #txt
dg0 f3 beanConfig 'KEY_REQUEST_PARAMETER_MAPPINGS_OPTIONS_MAP_NULL_VALUES=false
KEY_AXIS_CSL_PARAMETER_DATA=
KEY_WEBSERVICECONFIG_ID=1605A52F0401B7DA
KEY_AXIS_PORTNAME=GeoIPServiceSoap
KEY_OPERATION=GetGeoIPContext
KEY_REQUEST_PARAMETER_MAPPINGS_OPTIONS_AUTO_INITIALIZE_FIRST_LEVEL_FIELDS=true' #txt
dg0 f3 returningObjectList '[]' #txt
dg0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>resolve 
Geo IP</name>
    </language>
</elementInfo>
' #txt
dg0 f3 168 42 112 44 -24 -15 #rect
dg0 f3 @|WebServiceIcon #fIcon
dg0 f4 expr out #txt
dg0 f4 111 64 168 64 #arcP
dg0 f5 actionDecl 'com.axonivy.connectivity.soap.DataMappingData out;
' #txt
dg0 f5 actionTable 'out=in;
' #txt
dg0 f5 actionCode 'ivy.log.info("your IP address "+in.ip.iP+" is in "+in.ip.countryName);
' #txt
dg0 f5 type com.axonivy.connectivity.soap.DataMappingData #txt
dg0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log IP</name>
    </language>
</elementInfo>
' #txt
dg0 f5 328 42 112 44 -17 -7 #rect
dg0 f5 @|StepIcon #fIcon
dg0 f6 expr out #txt
dg0 f6 280 64 328 64 #arcP
dg0 f2 expr out #txt
dg0 f2 440 64 497 64 #arcP
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
