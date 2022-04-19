[Ivy]
162AFFB8ACCCB74C 9.4.8 #module
>Proto >Proto Collection #zClass
pr0 policyGreeter Big #zClass
pr0 B #cInfo
pr0 #process
pr0 @TextInP .colors .colors #zField
pr0 @TextInP color color #zField
pr0 @TextInP .type .type #zField
pr0 @TextInP .processKind .processKind #zField
pr0 @AnnotationInP-0n ai ai #zField
pr0 @MessageFlowInP-0n messageIn messageIn #zField
pr0 @MessageFlowOutP-0n messageOut messageOut #zField
pr0 @TextInP .xml .xml #zField
pr0 @TextInP .responsibility .responsibility #zField
pr0 @StartRequest f0 '' #zField
pr0 @WSElement f2 '' #zField
pr0 @ErrorBoundaryEvent f7 '' #zField
pr0 @GridStep f11 '' #zField
pr0 @PushWFArc f3 '' #zField
pr0 @PushWFArc f1 '' #zField
pr0 @PushWFArc f4 '' #zField
>Proto pr0 pr0 policyGreeter #zField
pr0 f0 outLink greeterPoliciesDisabled.ivp #txt
pr0 f0 inParamDecl '<> param;' #txt
pr0 f0 requestEnabled true #txt
pr0 f0 triggerEnabled false #txt
pr0 f0 callSignature greeterPoliciesDisabled() #txt
pr0 f0 persist false #txt
pr0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
pr0 f0 caseData businessCase.attach=true #txt
pr0 f0 showInStartList true #txt
pr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>greeterPoliciesDisabled.ivp</name>
    </language>
</elementInfo>
' #txt
pr0 f0 @C|.responsibility Everybody #txt
pr0 f0 81 49 30 30 -75 17 #rect
pr0 f2 actionTable 'out=in;
out.greetResponse=wsResponse;
' #txt
pr0 f2 clientId 162AF1AE2B935160 #txt
pr0 f2 port SecureGreetPolicyServicePort #txt
pr0 f2 operation greet #txt
pr0 f2 inputParams 'parameters.greet="Hello Greeter!";
' #txt
pr0 f2 beanConfig "" #txt
pr0 f2 timeout 0 #txt
pr0 f2 224 42 112 44 0 -8 #rect
pr0 f7 actionTable 'out=in;
out.error=error;
' #txt
pr0 f7 attachedToRef 162AFFB8ACCCB74C-f2 #txt
pr0 f7 297 81 30 30 0 15 #rect
pr0 f11 actionTable 'out=in;
' #txt
pr0 f11 actionCode 'import ch.ivyteam.ivy.environment.Ivy;
import com.axonivy.connectivity.soap.WSResponseWriter;
Throwable cause = in.error.getCause();
WSResponseWriter.sendAsResponse(cause.getClass().getName() + ": " + cause.getMessage());' #txt
pr0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writer error response</name>
    </language>
</elementInfo>
' #txt
pr0 f11 392 42 128 44 -57 -8 #rect
pr0 f3 111 64 224 64 #arcP
pr0 f1 336 64 392 64 #arcP
pr0 f4 327 96 392 64 #arcP
>Proto pr0 .type com.axonivy.connectivity.test.GreeterPolicyData #txt
>Proto pr0 .processKind NORMAL #txt
>Proto pr0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto pr0 0 0 32 24 18 0 #rect
>Proto pr0 @|BIcon #fIcon
pr0 f0 mainOut f3 tail #connect
pr0 f3 head f2 mainIn #connect
pr0 f2 mainOut f1 tail #connect
pr0 f1 head f11 mainIn #connect
pr0 f7 mainOut f4 tail #connect
pr0 f4 head f11 mainIn #connect
