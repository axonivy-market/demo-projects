[Ivy]
[>Created: Tue Apr 04 11:59:19 CEST 2017]
15A89966729CE3FC 3.20 #module
>Proto >Proto Collection #zClass
Cn0 ContractCreation Big #zClass
Cn0 B #cInfo
Cn0 #process
Cn0 @TextInP .resExport .resExport #zField
Cn0 @TextInP .type .type #zField
Cn0 @TextInP .processKind .processKind #zField
Cn0 @AnnotationInP-0n ai ai #zField
Cn0 @MessageFlowInP-0n messageIn messageIn #zField
Cn0 @MessageFlowOutP-0n messageOut messageOut #zField
Cn0 @TextInP .xml .xml #zField
Cn0 @TextInP .responsibility .responsibility #zField
Cn0 @StartRequest f0 '' #zField
Cn0 @EndTask f1 '' #zField
Cn0 @PushWFArc f2 '' #zField
>Proto Cn0 Cn0 ContractCreation #zField
Cn0 f0 outLink start.ivp #txt
Cn0 f0 type workflow.humantask.Data #txt
Cn0 f0 inParamDecl '<> param;' #txt
Cn0 f0 actionDecl 'workflow.humantask.Data out;
' #txt
Cn0 f0 guid 15A8996672BEF006 #txt
Cn0 f0 requestEnabled true #txt
Cn0 f0 triggerEnabled false #txt
Cn0 f0 callSignature start() #txt
Cn0 f0 persist false #txt
Cn0 f0 startName 'Create Contract ' #txt
Cn0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Cn0 f0 caseData businessCase.attach=true #txt
Cn0 f0 showInStartList 1 #txt
Cn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f0 @C|.responsibility Everybody #txt
Cn0 f0 81 49 30 30 -21 17 #rect
Cn0 f0 @|StartRequestIcon #fIcon
Cn0 f1 type workflow.humantask.Data #txt
Cn0 f1 337 49 30 30 0 15 #rect
Cn0 f1 @|EndIcon #fIcon
Cn0 f2 expr out #txt
Cn0 f2 111 64 337 64 #arcP
>Proto Cn0 .type workflow.humantask.Data #txt
>Proto Cn0 .processKind NORMAL #txt
>Proto Cn0 0 0 32 24 18 0 #rect
>Proto Cn0 @|BIcon #fIcon
Cn0 f0 mainOut f2 tail #connect
Cn0 f2 head f1 mainIn #connect
