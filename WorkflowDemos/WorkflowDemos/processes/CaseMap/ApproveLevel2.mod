[Ivy]
[>Created: Mon Jun 12 16:52:22 CEST 2017]
15A89963C015F70D 3.20 #module
>Proto >Proto Collection #zClass
A20 ApproveLevel2 Big #zClass
A20 B #cInfo
A20 #process
A20 @TextInP .resExport .resExport #zField
A20 @TextInP .type .type #zField
A20 @TextInP .processKind .processKind #zField
A20 @AnnotationInP-0n ai ai #zField
A20 @MessageFlowInP-0n messageIn messageIn #zField
A20 @MessageFlowOutP-0n messageOut messageOut #zField
A20 @TextInP .xml .xml #zField
A20 @TextInP .responsibility .responsibility #zField
A20 @StartRequest f0 '' #zField
A20 @EndTask f1 '' #zField
A20 @RichDialog f3 '' #zField
A20 @PushWFArc f4 '' #zField
A20 @PushWFArc f2 '' #zField
>Proto A20 A20 ApproveLevel2 #zField
A20 f0 outLink start.ivp #txt
A20 f0 type workflow.humantask.Data #txt
A20 f0 inParamDecl '<> param;' #txt
A20 f0 actionDecl 'workflow.humantask.Data out;
' #txt
A20 f0 guid 15A89963C03E6469 #txt
A20 f0 requestEnabled true #txt
A20 f0 triggerEnabled false #txt
A20 f0 callSignature start() #txt
A20 f0 persist false #txt
A20 f0 startName 'Approve Level 2' #txt
A20 f0 taskData 'TaskTriggered.EXP=new Duration("8h")
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.NAM=Approve Level 2
TaskTriggered.EXROL=Everybody' #txt
A20 f0 caseData businessCase.attach=true #txt
A20 f0 showInStartList 0 #txt
A20 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
A20 f0 @C|.responsibility Everybody #txt
A20 f0 81 49 30 30 -21 17 #rect
A20 f0 @|StartRequestIcon #fIcon
A20 f1 type workflow.humantask.Data #txt
A20 f1 337 49 30 30 0 15 #rect
A20 f1 @|EndIcon #fIcon
A20 f3 targetWindow NEW #txt
A20 f3 targetDisplay TOP #txt
A20 f3 richDialogId workflow.credit.ApproveLevel2 #txt
A20 f3 startMethod start() #txt
A20 f3 type workflow.humantask.Data #txt
A20 f3 requestActionDecl '<> param;' #txt
A20 f3 responseActionDecl 'workflow.humantask.Data out;
' #txt
A20 f3 responseMappingAction 'out=in;
' #txt
A20 f3 isAsynch false #txt
A20 f3 isInnerRd false #txt
A20 f3 userContext '* ' #txt
A20 f3 168 42 112 44 0 -8 #rect
A20 f3 @|RichDialogIcon #fIcon
A20 f4 expr out #txt
A20 f4 111 64 168 64 #arcP
A20 f2 expr out #txt
A20 f2 280 64 337 64 #arcP
>Proto A20 .type workflow.humantask.Data #txt
>Proto A20 .processKind NORMAL #txt
>Proto A20 0 0 32 24 18 0 #rect
>Proto A20 @|BIcon #fIcon
A20 f0 mainOut f4 tail #connect
A20 f4 head f3 mainIn #connect
A20 f3 mainOut f2 tail #connect
A20 f2 head f1 mainIn #connect
