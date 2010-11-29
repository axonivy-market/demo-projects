[Ivy]
[>Created: Thu Sep 23 13:41:56 CEST 2010]
12A43AB40C151728 3.12 #module
>Proto >Proto Collection #zClass
Ws0 WorkflowServices Big #zClass
Ws0 B #cInfo
Ws0 #process
Ws0 @TextInP .xml .xml #zField
Ws0 @TextInP .responsibility .responsibility #zField
Ws0 @AnnotationInP-0n ai ai #zField
Ws0 @TextInP .resExport .resExport #zField
Ws0 @TextInP .type .type #zField
Ws0 @TextInP .processKind .processKind #zField
Ws0 @MessageFlowInP-0n messageIn messageIn #zField
Ws0 @MessageFlowOutP-0n messageOut messageOut #zField
Ws0 @EndSub f1 '' #zField
Ws0 @StartSub f5 '' #zField
Ws0 @GridStep f7 '' #zField
Ws0 @PushWFArc f8 '' #zField
Ws0 @PushWFArc f6 '' #zField
>Proto Ws0 Ws0 WorkflowServices #zField
Ws0 f1 type ch.ivyteam.ivy.addons.data.restricted.technical.WorkflowServices #txt
Ws0 f1 99 331 26 26 14 0 #rect
Ws0 f1 @|EndSubIcon #fIcon
Ws0 f5 inParamDecl '<java.lang.String managedTeam> param;' #txt
Ws0 f5 inParamTable 'out.managedTeam=param.managedTeam;
out.wfCase=ivy.case;
' #txt
Ws0 f5 outParamDecl '<ch.ivyteam.ivy.addons.data.technical.IvyResultStatus ivyResultStatus> result;
' #txt
Ws0 f5 outParamTable 'result.ivyResultStatus=in.ivyResultStatus;
' #txt
Ws0 f5 actionDecl 'ch.ivyteam.ivy.addons.data.restricted.technical.WorkflowServices out;
' #txt
Ws0 f5 callSignature createCaseManagedTeam(String) #txt
Ws0 f5 type ch.ivyteam.ivy.addons.data.restricted.technical.WorkflowServices #txt
Ws0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createCaseManagedTeam</name>
        <nameStyle>21,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f5 99 75 26 26 14 0 #rect
Ws0 f5 @|StartSubIcon #fIcon
Ws0 f7 actionDecl 'ch.ivyteam.ivy.addons.data.restricted.technical.WorkflowServices out;
' #txt
Ws0 f7 actionTable 'out=in;
' #txt
Ws0 f7 actionCode 'import ch.ivyteam.ivy.addons.restricted.workflow.CaseManagedTeamHelper;


// define the case managed team
out.ivyResultStatus = CaseManagedTeamHelper.setCaseManagedTeam(in.wfCase, in.managedTeam);' #txt
Ws0 f7 type ch.ivyteam.ivy.addons.data.restricted.technical.WorkflowServices #txt
Ws0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the 
case managed team</name>
        <nameStyle>9,7,9
17,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f7 94 196 36 24 20 -2 #rect
Ws0 f7 @|StepIcon #fIcon
Ws0 f8 expr out #txt
Ws0 f8 112 101 112 196 #arcP
Ws0 f6 expr out #txt
Ws0 f6 112 220 112 344 #arcP
Ws0 f6 0 0.5100541656485776 0 0 #arcLabel
>Proto Ws0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ws0 .type ch.ivyteam.ivy.addons.data.restricted.technical.WorkflowServices #txt
>Proto Ws0 .processKind CALLABLE_SUB #txt
>Proto Ws0 0 0 32 24 18 0 #rect
>Proto Ws0 @|BIcon #fIcon
Ws0 f5 mainOut f8 tail #connect
Ws0 f8 head f7 mainIn #connect
Ws0 f7 mainOut f6 tail #connect
Ws0 f6 head f1 mainIn #connect
