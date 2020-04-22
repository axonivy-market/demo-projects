[Ivy]
1549FEEB682EF158 7.5.0 #module
>Proto >Proto Collection #zClass
cl0 createApproval Big #zClass
cl0 B #cInfo
cl0 #process
cl0 @TextInP .type .type #zField
cl0 @TextInP .processKind .processKind #zField
cl0 @AnnotationInP-0n ai ai #zField
cl0 @MessageFlowInP-0n messageIn messageIn #zField
cl0 @MessageFlowOutP-0n messageOut messageOut #zField
cl0 @TextInP .xml .xml #zField
cl0 @TextInP .responsibility .responsibility #zField
cl0 @StartSub f0 '' #zField
cl0 @EndSub f1 '' #zField
cl0 @Trigger f3 '' #zField
cl0 @PushWFArc f4 '' #zField
cl0 @PushWFArc f2 '' #zField
cl0 @InfoButton f5 '' #zField
cl0 @AnnotationArc f6 '' #zField
>Proto cl0 cl0 createApproval #zField
cl0 f0 inParamDecl '<String title,String description> param;' #txt
cl0 f0 inParamTable 'out.approval.description=param.description;
out.approval.requestedBy=ivy.session.getSessionUserName();
out.approval.title=param.title;
' #txt
cl0 f0 outParamDecl '<ch.ivyteam.ivy.workflow.ITask approvalTask> result;' #txt
cl0 f0 outParamTable 'result.approvalTask=in.approvalTask;
' #txt
cl0 f0 callSignature call(String,String) #txt
cl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(String,String)</name>
        <nameStyle>19,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cl0 f0 113 81 30 30 -47 17 #rect
cl0 f0 @|StartSubIcon #fIcon
cl0 f1 369 81 30 30 0 15 #rect
cl0 f1 @|EndSubIcon #fIcon
cl0 f3 processCall rest/approval:approve(com.axonivy.connectivity.rest.Approval) #txt
cl0 f3 requestActionDecl '<com.axonivy.connectivity.rest.Approval approval> param;' #txt
cl0 f3 requestMappingAction 'param.approval=in.approval;
' #txt
cl0 f3 responseActionDecl 'com.axonivy.connectivity.rest.CreateApprovalData out;
' #txt
cl0 f3 responseMappingAction 'out=in;
out.approvalTask=triggeredTask;
' #txt
cl0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>approve by
boss</name>
        <nameStyle>15,5
</nameStyle>
    </language>
</elementInfo>
' #txt
cl0 f3 200 74 112 44 -34 -15 #rect
cl0 f3 @|TriggerIcon #fIcon
cl0 f4 expr out #txt
cl0 f4 143 96 200 96 #arcP
cl0 f2 expr out #txt
cl0 f2 312 96 369 96 #arcP
cl0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>creates a new task asynchronously.
so we can finish the running REST request.</name>
        <nameStyle>19,7
58,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cl0 f5 360 146 256 44 -118 -16 #rect
cl0 f5 @|IBIcon #fIcon
cl0 f6 360 168 256 118 #arcP
cl0 f6 1 272 168 #addKink
cl0 f6 0 0.7543172312258071 0 0 #arcLabel
>Proto cl0 .type com.axonivy.connectivity.rest.CreateApprovalData #txt
>Proto cl0 .processKind CALLABLE_SUB #txt
>Proto cl0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Called by REST 
service provider class</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>224</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto cl0 0 0 32 24 18 0 #rect
>Proto cl0 @|BIcon #fIcon
cl0 f0 mainOut f4 tail #connect
cl0 f4 head f3 mainIn #connect
cl0 f3 mainOut f2 tail #connect
cl0 f2 head f1 mainIn #connect
cl0 f5 ao f6 tail #connect
cl0 f6 head f3 @CG|ai #connect
