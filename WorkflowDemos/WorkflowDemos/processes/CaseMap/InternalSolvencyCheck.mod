[Ivy]
[>Created: Wed Mar 01 12:15:43 CET 2017]
15A89953E2D3784F 3.20 #module
>Proto >Proto Collection #zClass
Ik0 InternalSolvencyCheck Big #zClass
Ik0 B #cInfo
Ik0 #process
Ik0 @TextInP .resExport .resExport #zField
Ik0 @TextInP .type .type #zField
Ik0 @TextInP .processKind .processKind #zField
Ik0 @AnnotationInP-0n ai ai #zField
Ik0 @MessageFlowInP-0n messageIn messageIn #zField
Ik0 @MessageFlowOutP-0n messageOut messageOut #zField
Ik0 @TextInP .xml .xml #zField
Ik0 @TextInP .responsibility .responsibility #zField
Ik0 @StartRequest f0 '' #zField
Ik0 @EndTask f1 '' #zField
Ik0 @PushWFArc f2 '' #zField
>Proto Ik0 Ik0 InternalSolvencyCheck #zField
Ik0 f0 outLink start.ivp #txt
Ik0 f0 type workflow.humantask.Data #txt
Ik0 f0 inParamDecl '<> param;' #txt
Ik0 f0 actionDecl 'workflow.humantask.Data out;
' #txt
Ik0 f0 guid 15A89953E42DD914 #txt
Ik0 f0 requestEnabled true #txt
Ik0 f0 triggerEnabled false #txt
Ik0 f0 callSignature start() #txt
Ik0 f0 caseData businessCase.attach=true #txt
Ik0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ik0 f0 @C|.responsibility Everybody #txt
Ik0 f0 81 49 30 30 -21 17 #rect
Ik0 f0 @|StartRequestIcon #fIcon
Ik0 f1 type workflow.humantask.Data #txt
Ik0 f1 337 49 30 30 0 15 #rect
Ik0 f1 @|EndIcon #fIcon
Ik0 f2 111 64 337 64 #arcP
>Proto Ik0 .type workflow.humantask.Data #txt
>Proto Ik0 .processKind NORMAL #txt
>Proto Ik0 0 0 32 24 18 0 #rect
>Proto Ik0 @|BIcon #fIcon
Ik0 f0 mainOut f2 tail #connect
Ik0 f2 head f1 mainIn #connect
