[Ivy]
[>Created: Tue Apr 25 14:44:12 CEST 2017]
15A8996D261A1DFE 3.20 #module
>Proto >Proto Collection #zClass
At0 AbortRequest Big #zClass
At0 B #cInfo
At0 #process
At0 @TextInP .resExport .resExport #zField
At0 @TextInP .type .type #zField
At0 @TextInP .processKind .processKind #zField
At0 @AnnotationInP-0n ai ai #zField
At0 @MessageFlowInP-0n messageIn messageIn #zField
At0 @MessageFlowOutP-0n messageOut messageOut #zField
At0 @TextInP .xml .xml #zField
At0 @TextInP .responsibility .responsibility #zField
At0 @StartRequest f0 '' #zField
At0 @EndTask f1 '' #zField
At0 @PushWFArc f2 '' #zField
>Proto At0 At0 AbortRequest #zField
At0 f0 outLink start.ivp #txt
At0 f0 type workflow.humantask.Data #txt
At0 f0 inParamDecl '<> param;' #txt
At0 f0 actionDecl 'workflow.humantask.Data out;
' #txt
At0 f0 guid 15A8996D2636B8F8 #txt
At0 f0 requestEnabled true #txt
At0 f0 triggerEnabled false #txt
At0 f0 callSignature start() #txt
At0 f0 persist false #txt
At0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.NAM=Abort Request
TaskTriggered.EXROL=Everybody' #txt
At0 f0 caseData businessCase.attach=true #txt
At0 f0 showInStartList 1 #txt
At0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
At0 f0 @C|.responsibility Everybody #txt
At0 f0 81 49 30 30 -21 17 #rect
At0 f0 @|StartRequestIcon #fIcon
At0 f1 type workflow.humantask.Data #txt
At0 f1 337 49 30 30 0 15 #rect
At0 f1 @|EndIcon #fIcon
At0 f2 expr out #txt
At0 f2 111 64 337 64 #arcP
>Proto At0 .type workflow.humantask.Data #txt
>Proto At0 .processKind NORMAL #txt
>Proto At0 0 0 32 24 18 0 #rect
>Proto At0 @|BIcon #fIcon
At0 f0 mainOut f2 tail #connect
At0 f2 head f1 mainIn #connect
