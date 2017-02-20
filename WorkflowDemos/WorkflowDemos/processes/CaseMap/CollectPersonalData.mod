[Ivy]
[>Created: Mon Feb 20 10:10:48 CET 2017]
15A5AC9A4F755A3B 3.20 #module
>Proto >Proto Collection #zClass
Ca0 CollectPersonalData Big #zClass
Ca0 B #cInfo
Ca0 #process
Ca0 @TextInP .resExport .resExport #zField
Ca0 @TextInP .type .type #zField
Ca0 @TextInP .processKind .processKind #zField
Ca0 @AnnotationInP-0n ai ai #zField
Ca0 @MessageFlowInP-0n messageIn messageIn #zField
Ca0 @MessageFlowOutP-0n messageOut messageOut #zField
Ca0 @TextInP .xml .xml #zField
Ca0 @TextInP .responsibility .responsibility #zField
Ca0 @StartRequest f0 '' #zField
Ca0 @EndTask f1 '' #zField
Ca0 @PushWFArc f2 '' #zField
>Proto Ca0 Ca0 CollectPersonalData #zField
Ca0 f0 outLink start.ivp #txt
Ca0 f0 type workflow.humantask.Data #txt
Ca0 f0 inParamDecl '<> param;' #txt
Ca0 f0 actionDecl 'workflow.humantask.Data out;
' #txt
Ca0 f0 guid 15A5AC9A50D3751B #txt
Ca0 f0 requestEnabled true #txt
Ca0 f0 triggerEnabled false #txt
Ca0 f0 callSignature start() #txt
Ca0 f0 caseData businessCase.attach=true #txt
Ca0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ca0 f0 @C|.responsibility Everybody #txt
Ca0 f0 81 49 30 30 -21 17 #rect
Ca0 f0 @|StartRequestIcon #fIcon
Ca0 f1 type workflow.humantask.Data #txt
Ca0 f1 337 49 30 30 0 15 #rect
Ca0 f1 @|EndIcon #fIcon
Ca0 f2 111 64 337 64 #arcP
>Proto Ca0 .type workflow.humantask.Data #txt
>Proto Ca0 .processKind NORMAL #txt
>Proto Ca0 0 0 32 24 18 0 #rect
>Proto Ca0 @|BIcon #fIcon
Ca0 f0 mainOut f2 tail #connect
Ca0 f2 head f1 mainIn #connect
