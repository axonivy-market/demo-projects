[Ivy]
1675F33D16FB90A4 9.4.6 #module
>Proto >Proto Collection #zClass
cs0 createUsers Big #zClass
cs0 B #cInfo
cs0 #process
cs0 @TextInP .colors .colors #zField
cs0 @TextInP color color #zField
cs0 @TextInP .type .type #zField
cs0 @TextInP .processKind .processKind #zField
cs0 @AnnotationInP-0n ai ai #zField
cs0 @MessageFlowInP-0n messageIn messageIn #zField
cs0 @MessageFlowOutP-0n messageOut messageOut #zField
cs0 @TextInP .xml .xml #zField
cs0 @TextInP .responsibility .responsibility #zField
cs0 @StartRequest f0 '' #zField
cs0 @EndTask f1 '' #zField
cs0 @GridStep f3 '' #zField
cs0 @PushWFArc f4 '' #zField
cs0 @PushWFArc f2 '' #zField
>Proto cs0 cs0 createUsers #zField
cs0 f0 outLink createTestUsers.ivp #txt
cs0 f0 inParamDecl '<String amount,String prefix> param;' #txt
cs0 f0 inParamTable 'out.amount=Integer.valueOf(param.amount);
out.prefix=param.prefix;
' #txt
cs0 f0 requestEnabled true #txt
cs0 f0 triggerEnabled false #txt
cs0 f0 callSignature createTestUsers(String,String) #txt
cs0 f0 persist false #txt
cs0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
cs0 f0 caseData businessCase.attach=true #txt
cs0 f0 showInStartList true #txt
cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createTestUsers.ivp</name>
    </language>
</elementInfo>
' #txt
cs0 f0 @C|.responsibility Everybody #txt
cs0 f0 81 49 30 30 -62 17 #rect
cs0 f1 337 49 30 30 0 15 #rect
cs0 f3 actionTable 'out=in;
' #txt
cs0 f3 actionCode 'import com.axonivy.connectivity.rest.UserCreator;
UserCreator.createUsers(in.prefix, in.amount);' #txt
cs0 f3 security system #txt
cs0 f3 168 42 112 44 0 -7 #rect
cs0 f4 expr out #txt
cs0 f4 111 64 168 64 #arcP
cs0 f2 expr out #txt
cs0 f2 280 64 337 64 #arcP
>Proto cs0 .type com.axonivy.connectivity.test.CreateUsersData #txt
>Proto cs0 .processKind NORMAL #txt
>Proto cs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto cs0 0 0 32 24 18 0 #rect
>Proto cs0 @|BIcon #fIcon
cs0 f0 mainOut f4 tail #connect
cs0 f4 head f3 mainIn #connect
cs0 f3 mainOut f2 tail #connect
cs0 f2 head f1 mainIn #connect
