[Ivy]
[>Created: Mon Feb 20 14:43:10 CET 2017]
1549FE9E911A1812 3.20 #module
>Proto >Proto Collection #zClass
al0 approval Big #zClass
al0 B #cInfo
al0 #process
al0 @TextInP .resExport .resExport #zField
al0 @TextInP .type .type #zField
al0 @TextInP .processKind .processKind #zField
al0 @AnnotationInP-0n ai ai #zField
al0 @MessageFlowInP-0n messageIn messageIn #zField
al0 @MessageFlowOutP-0n messageOut messageOut #zField
al0 @TextInP .xml .xml #zField
al0 @TextInP .responsibility .responsibility #zField
al0 @StartRequest f0 '' #zField
al0 @EndTask f1 '' #zField
al0 @InfoButton f3 '' #zField
al0 @AnnotationArc f4 '' #zField
al0 @StartRequest f5 '' #zField
al0 @EndTask f6 '' #zField
al0 @RichDialog f10 '' #zField
al0 @PushWFArc f11 '' #zField
al0 @PushWFArc f2 '' #zField
al0 @InfoButton f12 '' #zField
al0 @AnnotationArc f13 '' #zField
al0 @RestClientCall f14 '' #zField
al0 @PushWFArc f7 '' #zField
al0 @PushWFArc f8 '' #zField
>Proto al0 al0 approval #zField
al0 f0 outLink approve.ivp #txt
al0 f0 type com.axonivy.connectivity.rest.Approval #txt
al0 f0 inParamDecl '<com.axonivy.connectivity.rest.Approval approval> param;' #txt
al0 f0 inParamTable 'out=param.approval;
' #txt
al0 f0 actionDecl 'com.axonivy.connectivity.rest.Approval out;
' #txt
al0 f0 guid 1549FE9E921E2BD8 #txt
al0 f0 requestEnabled false #txt
al0 f0 triggerEnabled true #txt
al0 f0 callSignature approve(com.axonivy.connectivity.rest.Approval) #txt
al0 f0 persist false #txt
al0 f0 taskData 'TaskTriggered.ROL=Manager
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.DESC=<%\=param.approval.title%>
TaskTriggered.EXROL=Everybody
TaskTriggered.NAM=Approve request from <%\=param.approval.requestedBy%>' #txt
al0 f0 showInStartList 1 #txt
al0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>approve(Approval)</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
al0 f0 @C|.responsibility Everybody #txt
al0 f0 113 209 30 30 -49 17 #rect
al0 f0 @|StartRequestIcon #fIcon
al0 f0 -993312|-1|-16777216 #nodeStyle
al0 f1 type com.axonivy.connectivity.rest.Approval #txt
al0 f1 369 209 30 30 0 15 #rect
al0 f1 @|EndIcon #fIcon
al0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>private start: only triggerable!</name>
        <nameStyle>32,7
</nameStyle>
    </language>
</elementInfo>
' #txt
al0 f3 168 265 160 30 -77 -8 #rect
al0 f3 @|IBIcon #fIcon
al0 f4 168 280 128 239 #arcP
al0 f4 1 128 264 #addKink
al0 f4 0 0.8379706169640114 0 0 #arcLabel
al0 f5 outLink createApprovalViaREST.ivp #txt
al0 f5 type com.axonivy.connectivity.rest.Approval #txt
al0 f5 inParamDecl '<> param;' #txt
al0 f5 actionDecl 'com.axonivy.connectivity.rest.Approval out;
' #txt
al0 f5 guid 1549FF63BAC8DC1C #txt
al0 f5 requestEnabled true #txt
al0 f5 triggerEnabled false #txt
al0 f5 callSignature createApprovalViaREST() #txt
al0 f5 persist false #txt
al0 f5 startName '3. Calls a BPM process from REST service' #txt
al0 f5 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
al0 f5 showInStartList 1 #txt
al0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createApproval
viaREST.ivp</name>
        <nameStyle>26,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
al0 f5 @C|.responsibility Everybody #txt
al0 f5 113 113 30 30 -40 17 #rect
al0 f5 @|StartRequestIcon #fIcon
al0 f6 type com.axonivy.connectivity.rest.Approval #txt
al0 f6 369 113 30 30 0 15 #rect
al0 f6 @|EndIcon #fIcon
al0 f10 targetWindow NEW:card: #txt
al0 f10 targetDisplay TOP #txt
al0 f10 richDialogId com.axonivy.connectivity.rest.ApprovalDialog #txt
al0 f10 startMethod start(com.axonivy.connectivity.rest.Approval) #txt
al0 f10 type com.axonivy.connectivity.rest.Approval #txt
al0 f10 requestActionDecl '<com.axonivy.connectivity.rest.Approval approval> param;' #txt
al0 f10 requestMappingAction 'param.approval=in;
' #txt
al0 f10 responseActionDecl 'com.axonivy.connectivity.rest.Approval out;
' #txt
al0 f10 responseMappingAction 'out=in;
' #txt
al0 f10 windowConfiguration '* ' #txt
al0 f10 isAsynch false #txt
al0 f10 isInnerRd false #txt
al0 f10 userContext '* ' #txt
al0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>approval dialog</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
al0 f10 200 202 112 44 -42 -8 #rect
al0 f10 @|RichDialogIcon #fIcon
al0 f11 expr out #txt
al0 f11 143 224 200 224 #arcP
al0 f2 expr out #txt
al0 f2 312 224 369 224 #arcP
al0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Start me to see how a REST client can 
run a functional SubProcess.</name>
        <nameStyle>39,7
28,7
</nameStyle>
    </language>
</elementInfo>
' #txt
al0 f12 112 18 224 44 -106 -16 #rect
al0 f12 @|IBIcon #fIcon
al0 f13 224 62 128 113 #arcP
al0 f13 1 128 88 #addKink
al0 f13 0 0.6265821825077568 0 0 #arcLabel
al0 f14 clientId e61c6d1f-106e-46ea-8327-fe18e4c1d912 #txt
al0 f14 accept application/json #txt
al0 f14 method PUT #txt
al0 f14 bodyInputType FORM #txt
al0 f14 bodyForm 'title="I need a new car";
description="really, I''m sick of my old Fiat Punto";
' #txt
al0 f14 resultType com.fasterxml.jackson.databind.JsonNode #txt
al0 f14 responseCode ivy.log.info(result); #txt
al0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>REST client:
create approval</name>
        <nameStyle>28,7
</nameStyle>
    </language>
</elementInfo>
' #txt
al0 f14 192 106 128 44 -41 -16 #rect
al0 f14 @|RestClientCallIcon #fIcon
al0 f7 expr out #txt
al0 f7 143 128 192 128 #arcP
al0 f8 320 128 369 128 #arcP
>Proto al0 .type com.axonivy.connectivity.rest.Approval #txt
>Proto al0 .processKind NORMAL #txt
>Proto al0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>REST bean interaction with IVY</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>320</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto al0 0 0 32 24 18 0 #rect
>Proto al0 @|BIcon #fIcon
al0 f3 ao f4 tail #connect
al0 f4 head f0 @CG|ai #connect
al0 f0 mainOut f11 tail #connect
al0 f11 head f10 mainIn #connect
al0 f10 mainOut f2 tail #connect
al0 f2 head f1 mainIn #connect
al0 f12 ao f13 tail #connect
al0 f13 head f5 @CG|ai #connect
al0 f5 mainOut f7 tail #connect
al0 f7 head f14 mainIn #connect
al0 f14 mainOut f8 tail #connect
al0 f8 head f6 mainIn #connect
