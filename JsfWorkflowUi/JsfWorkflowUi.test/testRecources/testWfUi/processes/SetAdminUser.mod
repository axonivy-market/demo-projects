[Ivy]
143F856F4E029A48 3.28 #module
>Proto >Proto Collection #zClass
Sr0 SetAdminUser Big #zClass
Sr0 B #cInfo
Sr0 #process
Sr0 @TextInP .type .type #zField
Sr0 @TextInP .processKind .processKind #zField
Sr0 @AnnotationInP-0n ai ai #zField
Sr0 @MessageFlowInP-0n messageIn messageIn #zField
Sr0 @MessageFlowOutP-0n messageOut messageOut #zField
Sr0 @TextInP .xml .xml #zField
Sr0 @TextInP .responsibility .responsibility #zField
Sr0 @StartRequest f0 '' #zField
Sr0 @GridStep f1 '' #zField
Sr0 @PushWFArc f3 '' #zField
Sr0 @EndTask f2 '' #zField
Sr0 @PushWFArc f4 '' #zField
>Proto Sr0 Sr0 SetAdminUser #zField
Sr0 f0 outLink SetAdminUser.ivp #txt
Sr0 f0 inParamDecl '<> param;' #txt
Sr0 f0 requestEnabled true #txt
Sr0 f0 triggerEnabled false #txt
Sr0 f0 callSignature SetAdminUser() #txt
Sr0 f0 persist false #txt
Sr0 f0 startName SetAdminUser #txt
Sr0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Sr0 f0 showInStartList 1 #txt
Sr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SetAdminUser.ivp</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Sr0 f0 @C|.responsibility Everybody #txt
Sr0 f0 81 49 30 30 -49 15 #rect
Sr0 f0 @|StartRequestIcon #fIcon
Sr0 f0 -1|-1|-9671572 #nodeStyle
Sr0 f1 actionTable 'out=in;
' #txt
Sr0 f1 actionCode 'import ch.ivyteam.ivy.admin.SystemAdminMaker;
import ch.ivyteam.ivy.security.IUser;

IUser admin = ivy.session.getSecurityContext().findUser("Administrator");
ch.ivyteam.ivy.admin.SystemAdminMaker.grantSystemAdminRightsTo(admin);' #txt
Sr0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set admin user</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Sr0 f1 168 42 112 44 -41 -8 #rect
Sr0 f1 @|StepIcon #fIcon
Sr0 f1 -1|-1|-9671572 #nodeStyle
Sr0 f3 expr out #txt
Sr0 f3 111 64 168 64 #arcP
Sr0 f2 337 49 30 30 0 15 #rect
Sr0 f2 @|EndIcon #fIcon
Sr0 f2 -1|-1|-9671572 #nodeStyle
Sr0 f4 expr out #txt
Sr0 f4 280 64 337 64 #arcP
>Proto Sr0 .type ch.ivyteam.wf.test.Data #txt
>Proto Sr0 .processKind NORMAL #txt
>Proto Sr0 0 0 32 24 18 0 #rect
>Proto Sr0 @|BIcon #fIcon
Sr0 f0 mainOut f3 tail #connect
Sr0 f3 head f1 mainIn #connect
Sr0 f1 mainOut f4 tail #connect
Sr0 f4 head f2 mainIn #connect
