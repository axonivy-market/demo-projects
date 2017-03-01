[Ivy]
[>Created: Wed Mar 01 12:15:02 CET 2017]
15A852737BAA2982 3.20 #module
>Proto >Proto Collection #zClass
A10 ApproveLevel1 Big #zClass
A10 B #cInfo
A10 #process
A10 @TextInP .resExport .resExport #zField
A10 @TextInP .type .type #zField
A10 @TextInP .processKind .processKind #zField
A10 @AnnotationInP-0n ai ai #zField
A10 @MessageFlowInP-0n messageIn messageIn #zField
A10 @MessageFlowOutP-0n messageOut messageOut #zField
A10 @TextInP .xml .xml #zField
A10 @TextInP .responsibility .responsibility #zField
A10 @StartRequest f0 '' #zField
A10 @EndTask f1 '' #zField
A10 @GridStep f3 '' #zField
A10 @PushWFArc f4 '' #zField
A10 @PushWFArc f2 '' #zField
>Proto A10 A10 ApproveLevel1 #zField
A10 f0 outLink start.ivp #txt
A10 f0 type workflow.humantask.Data #txt
A10 f0 inParamDecl '<> param;' #txt
A10 f0 actionDecl 'workflow.humantask.Data out;
' #txt
A10 f0 guid 15A852737C247062 #txt
A10 f0 requestEnabled true #txt
A10 f0 triggerEnabled false #txt
A10 f0 callSignature start() #txt
A10 f0 caseData businessCase.attach=true #txt
A10 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
A10 f0 @C|.responsibility Everybody #txt
A10 f0 81 49 30 30 -21 17 #rect
A10 f0 @|StartRequestIcon #fIcon
A10 f1 type workflow.humantask.Data #txt
A10 f1 337 49 30 30 0 15 #rect
A10 f1 @|EndIcon #fIcon
A10 f3 actionDecl 'workflow.humantask.Data out;
' #txt
A10 f3 actionTable 'out=in;
' #txt
A10 f3 actionCode 'ivy.log.info("Business Process is in Stage " + ivy.case.getBusinessCase().getStage().getName());' #txt
A10 f3 type workflow.humantask.Data #txt
A10 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log stage</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
A10 f3 164 41 112 44 -25 -8 #rect
A10 f3 @|StepIcon #fIcon
A10 f4 expr out #txt
A10 f4 110 63 164 63 #arcP
A10 f4 0 0.7758833401611239 0 0 #arcLabel
A10 f2 expr out #txt
A10 f2 276 63 337 63 #arcP
>Proto A10 .type workflow.humantask.Data #txt
>Proto A10 .processKind NORMAL #txt
>Proto A10 0 0 32 24 18 0 #rect
>Proto A10 @|BIcon #fIcon
A10 f0 mainOut f4 tail #connect
A10 f4 head f3 mainIn #connect
A10 f3 mainOut f2 tail #connect
A10 f2 head f1 mainIn #connect
