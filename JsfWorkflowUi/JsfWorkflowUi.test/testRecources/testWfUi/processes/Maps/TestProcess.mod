[Ivy]
15CF34492194250C 3.28 #module
>Proto >Proto Collection #zClass
Ts0 TestProcess Big #zClass
Ts0 B #cInfo
Ts0 #process
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @StartRequest f0 '' #zField
Ts0 @EndTask f1 '' #zField
Ts0 @PushWFArc f2 '' #zField
>Proto Ts0 Ts0 TestProcess #zField
Ts0 f0 outLink start.ivp #txt
Ts0 f0 inParamDecl '<> param;' #txt
Ts0 f0 requestEnabled true #txt
Ts0 f0 triggerEnabled false #txt
Ts0 f0 callSignature start() #txt
Ts0 f0 caseData businessCase.attach=true #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ts0 f0 @C|.responsibility Everybody #txt
Ts0 f0 51 83 26 26 14 0 #rect
Ts0 f0 @|StartRequestIcon #fIcon
Ts0 f1 51 339 26 26 14 0 #rect
Ts0 f1 @|EndIcon #fIcon
Ts0 f2 64 109 64 339 #arcP
>Proto Ts0 .type ch.ivyteam.wf.test.Data #txt
>Proto Ts0 .processKind NORMAL #txt
>Proto Ts0 0 0 32 24 18 0 #rect
>Proto Ts0 @|BIcon #fIcon
Ts0 f0 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
