[Ivy]
[>Created: Tue Apr 26 16:10:38 CEST 2016]
1537FF3C3382D47F 3.18 #module
>Proto >Proto Collection #zClass
LO0 InitializeTestEnvironment Big #zClass
LO0 B #cInfo
LO0 #process
LO0 @TextInP .resExport .resExport #zField
LO0 @TextInP .type .type #zField
LO0 @TextInP .processKind .processKind #zField
LO0 @AnnotationInP-0n ai ai #zField
LO0 @MessageFlowInP-0n messageIn messageIn #zField
LO0 @MessageFlowOutP-0n messageOut messageOut #zField
LO0 @TextInP .xml .xml #zField
LO0 @TextInP .responsibility .responsibility #zField
LO0 @StartRequest f0 '' #zField
LO0 @EndTask f1 '' #zField
LO0 @GridStep f3 '' #zField
LO0 @PushWFArc f2 '' #zField
LO0 @PushWFArc f4 '' #zField
>Proto LO0 LO0 InitializeTestEnvironment #zField
LO0 f0 outLink start.ivp #txt
LO0 f0 type workflow.demos.test.Data #txt
LO0 f0 inParamDecl '<> param;' #txt
LO0 f0 actionDecl 'workflow.demos.test.Data out;
' #txt
LO0 f0 guid 1537FF3C37670645 #txt
LO0 f0 requestEnabled true #txt
LO0 f0 triggerEnabled false #txt
LO0 f0 callSignature start() #txt
LO0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
LO0 f0 @C|.responsibility Everybody #txt
LO0 f0 81 49 30 30 -21 17 #rect
LO0 f0 @|StartRequestIcon #fIcon
LO0 f1 type workflow.demos.test.Data #txt
LO0 f1 433 49 30 30 0 15 #rect
LO0 f1 @|EndIcon #fIcon
LO0 f3 actionDecl 'workflow.demos.test.Data out;
' #txt
LO0 f3 actionCode 'import ch.ivyteam.ivy.security.*;

ivy.session.loginSessionUser("admin","admin");

IRole role = ivy.session.getSecurityContext().findRole("HR Manager");
ivy.session.assignRole(role);' #txt
LO0 f3 security system #txt
LO0 f3 type workflow.demos.test.Data #txt
LO0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Initialize Test Environment</name>
        <nameStyle>27,7
</nameStyle>
    </language>
</elementInfo>
' #txt
LO0 f3 240 42 160 44 -71 -8 #rect
LO0 f3 @|StepIcon #fIcon
LO0 f2 expr out #txt
LO0 f2 400 64 433 64 #arcP
LO0 f4 expr out #txt
LO0 f4 111 64 240 64 #arcP
>Proto LO0 .type workflow.demos.test.Data #txt
>Proto LO0 .processKind NORMAL #txt
>Proto LO0 0 0 32 24 18 0 #rect
>Proto LO0 @|BIcon #fIcon
LO0 f3 mainOut f2 tail #connect
LO0 f2 head f1 mainIn #connect
LO0 f0 mainOut f4 tail #connect
LO0 f4 head f3 mainIn #connect
