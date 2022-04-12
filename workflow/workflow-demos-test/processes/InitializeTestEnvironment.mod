[Ivy]
1537FF3C3382D47F 9.4.7 #module
>Proto >Proto Collection #zClass
LO0 InitializeTestEnvironment Big #zClass
LO0 B #cInfo
LO0 #process
LO0 @TextInP .colors .colors #zField
LO0 @TextInP color color #zField
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
LO0 @StartRequest f5 '' #zField
LO0 @EndTask f6 '' #zField
LO0 @GridStep f8 '' #zField
LO0 @PushWFArc f9 '' #zField
LO0 @PushWFArc f7 '' #zField
>Proto LO0 LO0 InitializeTestEnvironment #zField
LO0 f0 outLink start.ivp #txt
LO0 f0 inParamDecl '<> param;' #txt
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
LO0 f1 433 49 30 30 0 15 #rect
LO0 f3 actionCode 'import ch.ivyteam.ivy.security.*;

ivy.session.loginSessionUser("admin","admin");

IRole role = ivy.security.roles().find("HR Manager");
ivy.session.assignRole(role);' #txt
LO0 f3 security system #txt
LO0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Initialize Test Environment</name>
    </language>
</elementInfo>
' #txt
LO0 f3 240 42 160 44 -71 -8 #rect
LO0 f2 expr out #txt
LO0 f2 400 64 433 64 #arcP
LO0 f4 expr out #txt
LO0 f4 111 64 240 64 #arcP
LO0 f5 outLink clearDemoDossiers.ivp #txt
LO0 f5 inParamDecl '<> param;' #txt
LO0 f5 requestEnabled true #txt
LO0 f5 triggerEnabled false #txt
LO0 f5 callSignature clearDemoDossiers() #txt
LO0 f5 persist false #txt
LO0 f5 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
LO0 f5 caseData businessCase.attach=true #txt
LO0 f5 showInStartList true #txt
LO0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>clearDemoDossiers.ivp</name>
    </language>
</elementInfo>
' #txt
LO0 f5 @C|.responsibility Everybody #txt
LO0 f5 81 145 30 30 -71 17 #rect
LO0 f6 433 145 30 30 0 15 #rect
LO0 f8 actionTable 'out=in;
' #txt
LO0 f8 actionCode 'import ch.ivyteam.ivy.wfdemo.businessdata.DemoDataCreator;
DemoDataCreator.clearDemoData();' #txt
LO0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>clear repo</name>
    </language>
</elementInfo>
' #txt
LO0 f8 200 138 112 44 -32 -7 #rect
LO0 f9 expr out #txt
LO0 f9 111 160 200 160 #arcP
LO0 f7 expr out #txt
LO0 f7 312 160 433 160 #arcP
>Proto LO0 .type workflow.demos.test.Data #txt
>Proto LO0 .processKind NORMAL #txt
>Proto LO0 0 0 32 24 18 0 #rect
>Proto LO0 @|BIcon #fIcon
LO0 f3 mainOut f2 tail #connect
LO0 f2 head f1 mainIn #connect
LO0 f0 mainOut f4 tail #connect
LO0 f4 head f3 mainIn #connect
LO0 f5 mainOut f9 tail #connect
LO0 f9 head f8 mainIn #connect
LO0 f8 mainOut f7 tail #connect
LO0 f7 head f6 mainIn #connect
