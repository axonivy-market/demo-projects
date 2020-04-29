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
uh0 @StartRequest f0 '' #zField
uh0 @EndTask f1 '' #zField
uh0 @RestClientCall f3 '' #zField
uh0 @PushWFArc f4 '' #zField
uh0 @PushWFArc f2 '' #zField
>Proto uh0 uh0 uiPath #zField
uh0 f0 outLink start.ivp #txt
uh0 f0 inParamDecl '<> param;' #txt
uh0 f0 requestEnabled true #txt
uh0 f0 triggerEnabled false #txt
uh0 f0 callSignature start() #txt
uh0 f0 caseData businessCase.attach=true #txt
uh0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
uh0 f0 @C|.responsibility Everybody #txt
uh0 f0 81 49 30 30 -25 17 #rect
uh0 f0 @|StartRequestIcon #fIcon
uh0 f1 337 49 30 30 0 15 #rect
uh0 f1 @|EndIcon #fIcon
uh0 f3 clientId 699e715f-63b1-4355-a974-ee3cac26985e #txt
uh0 f3 path /odata/QueueItems #txt
uh0 f3 168 42 112 44 0 -7 #rect
uh0 f3 @|RestClientCallIcon #fIcon
uh0 f4 111 64 168 64 #arcP
uh0 f2 280 64 337 64 #arcP
>Proto uh0 .type com.axonivy.connectivity.Data #txt
>Proto uh0 .processKind NORMAL #txt
>Proto uh0 0 0 32 24 18 0 #rect
>Proto uh0 @|BIcon #fIcon
uh0 f0 mainOut f4 tail #connect
uh0 f4 head f3 mainIn #connect
uh0 f3 mainOut f2 tail #connect
uh0 f2 head f1 mainIn #connect
