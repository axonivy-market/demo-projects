[Ivy]
171C62230757992F 7.5.0 #module
>Proto >Proto Collection #zClass
uh0 uiPath Big #zClass
uh0 B #cInfo
uh0 #process
uh0 @TextInP .type .type #zField
uh0 @TextInP .processKind .processKind #zField
uh0 @TextInP .xml .xml #zField
uh0 @TextInP .responsibility .responsibility #zField
uh0 @EndTask f1 '' #zField
uh0 @RestClientCall f3 '' #zField
uh0 @StartRequest f9 '' #zField
uh0 @PushWFArc f10 '' #zField
uh0 @ErrorBoundaryEvent f11 '' #zField
uh0 @UserTask f13 '' #zField
uh0 @PushWFArc f12 '' #zField
uh0 @TkArc f18 '' #zField
uh0 @GridStep f0 '' #zField
uh0 @PushWFArc f4 '' #zField
uh0 @PushWFArc f2 '' #zField
>Proto uh0 uh0 uiPath #zField
uh0 f1 561 49 30 30 0 15 #rect
uh0 f1 @|EndIcon #fIcon
uh0 f3 clientId 699e715f-63b1-4355-a974-ee3cac26985e #txt
uh0 f3 path odata/Settings/UiPath.Server.Configuration.OData.GetLicense #txt
uh0 f3 resultType io.swagger.uipath.openapi.LicenseDto #txt
uh0 f3 responseCode 'out.license = result;' #txt
uh0 f3 clientErrorCode ivy:error:rest:client #txt
uh0 f3 statusErrorCode ivy:error:rest:client #txt
uh0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>UI Path
Read License</name>
    </language>
</elementInfo>
' #txt
uh0 f3 248 42 128 44 -40 -15 #rect
uh0 f3 @|UserDialogIcon #fIcon
uh0 f9 outLink startRPA.ivp #txt
uh0 f9 inParamDecl '<> param;' #txt
uh0 f9 requestEnabled true #txt
uh0 f9 triggerEnabled false #txt
uh0 f9 callSignature startRPA() #txt
uh0 f9 caseData businessCase.attach=true #txt
uh0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startRPA.ivp</name>
    </language>
</elementInfo>
' #txt
uh0 f9 @C|.responsibility Everybody #txt
uh0 f9 81 49 30 30 -29 17 #rect
uh0 f9 @|StartRequestIcon #fIcon
uh0 f10 111 64 248 64 #arcP
uh0 f11 actionTable 'out=in;
' #txt
uh0 f11 actionCode 'ivy.log.info("rest error "+error);

com.axonivy.connectivity.rest.client.auth.OAuthErrorHandler.isAuthError(error);' #txt
uh0 f11 attachedToRef 171C62230757992F-f3 #txt
uh0 f11 337 81 30 30 0 15 #rect
uh0 f11 @|ErrorBoundaryEventIcon #fIcon
uh0 f13 dialogId com.axonivy.connectivity.rest.UiPathAuthoirzation #txt
uh0 f13 startMethod start() #txt
uh0 f13 requestActionDecl '<> param;' #txt
uh0 f13 responseMappingAction 'out=in;
' #txt
uh0 f13 taskData 'TaskA.NAM=Authorize UIPath API Call
TaskA.SKIP_TASK_LIST=true' #txt
uh0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>auth</name>
    </language>
</elementInfo>
' #txt
uh0 f13 192 138 112 44 -14 -7 #rect
uh0 f13 @|UserTaskIcon #fIcon
uh0 f12 248 138 312 86 #arcP
uh0 f12 0 0.8219179492067946 0 0 #arcLabel
uh0 f18 352 111 304 160 #arcP
uh0 f18 1 352 160 #addKink
uh0 f18 1 0.11528174423122502 0 0 #arcLabel
uh0 f0 actionTable 'out=in;
' #txt
uh0 f0 actionCode ivy.log.info(in.license); #txt
uh0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log</name>
    </language>
</elementInfo>
' #txt
uh0 f0 416 42 112 44 -9 -7 #rect
uh0 f0 @|StepIcon #fIcon
uh0 f4 376 64 416 64 #arcP
uh0 f2 528 64 561 64 #arcP
>Proto uh0 .type com.axonivy.connectivity.rest.UiPathData #txt
>Proto uh0 .processKind NORMAL #txt
>Proto uh0 0 0 32 24 18 0 #rect
>Proto uh0 @|BIcon #fIcon
uh0 f9 mainOut f10 tail #connect
uh0 f10 head f3 mainIn #connect
uh0 f13 out f12 tail #connect
uh0 f12 head f3 mainIn #connect
uh0 f11 mainOut f18 tail #connect
uh0 f18 head f13 in #connect
uh0 f3 mainOut f4 tail #connect
uh0 f4 head f0 mainIn #connect
uh0 f0 mainOut f2 tail #connect
uh0 f2 head f1 mainIn #connect
