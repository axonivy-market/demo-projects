[Ivy]
171535C55F24D530 9.4.7 #module
>Proto >Proto Collection #zClass
cl0 testApprovalCreation Big #zClass
cl0 B #cInfo
cl0 #process
cl0 @TextInP .colors .colors #zField
cl0 @TextInP color color #zField
cl0 @TextInP .type .type #zField
cl0 @TextInP .processKind .processKind #zField
cl0 @TextInP .xml .xml #zField
cl0 @TextInP .responsibility .responsibility #zField
cl0 @StartRequest f0 '' #zField
cl0 @EndTask f1 '' #zField
cl0 @CallSub f3 '' #zField
cl0 @PushWFArc f4 '' #zField
cl0 @PushWFArc f2 '' #zField
>Proto cl0 cl0 createApproval #zField
cl0 f0 outLink test.ivp #txt
cl0 f0 inParamDecl '<> param;' #txt
cl0 f0 requestEnabled true #txt
cl0 f0 triggerEnabled false #txt
cl0 f0 callSignature test() #txt
cl0 f0 caseData businessCase.attach=true #txt
cl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>test.ivp</name>
    </language>
</elementInfo>
' #txt
cl0 f0 @C|.responsibility Everybody #txt
cl0 f0 81 49 30 30 -25 17 #rect
cl0 f1 337 49 30 30 0 15 #rect
cl0 f3 processCall rest/createApproval:call(String,String) #txt
cl0 f3 requestActionDecl '<String title,String description> param;' #txt
cl0 f3 requestMappingAction 'param.title=ivy.session.getSessionUserName();
param.description="Tests make the world a better place";
' #txt
cl0 f3 responseMappingAction 'out=in;
out.createdTask=result.approvalTask;
' #txt
cl0 f3 responseActionCode 'ivy.log.info("created task: "+result.approvalTask);' #txt
cl0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>rest/createApproval</name>
    </language>
</elementInfo>
' #txt
cl0 f3 160 42 128 44 -61 -7 #rect
cl0 f4 111 64 160 64 #arcP
cl0 f2 288 64 337 64 #arcP
>Proto cl0 .type com.axonivy.connectivity.test.CreateApprovalData #txt
>Proto cl0 .processKind NORMAL #txt
>Proto cl0 0 0 32 24 18 0 #rect
>Proto cl0 @|BIcon #fIcon
cl0 f0 mainOut f4 tail #connect
cl0 f4 head f3 mainIn #connect
cl0 f3 mainOut f2 tail #connect
cl0 f2 head f1 mainIn #connect
