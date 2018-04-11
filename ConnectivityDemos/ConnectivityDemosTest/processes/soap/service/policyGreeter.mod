[Ivy]
162AFFB8ACCCB74C 3.23 #module
>Proto >Proto Collection #zClass
pr0 policyGreeter Big #zClass
pr0 B #cInfo
pr0 #process
pr0 @TextInP .resExport .resExport #zField
pr0 @TextInP .type .type #zField
pr0 @TextInP .processKind .processKind #zField
pr0 @AnnotationInP-0n ai ai #zField
pr0 @MessageFlowInP-0n messageIn messageIn #zField
pr0 @MessageFlowOutP-0n messageOut messageOut #zField
pr0 @TextInP .xml .xml #zField
pr0 @TextInP .responsibility .responsibility #zField
pr0 @StartRequest f0 '' #zField
pr0 @GridStep f18 '' #zField
pr0 @PushWFArc f3 '' #zField
pr0 @WSElement f2 '' #zField
pr0 @PushWFArc f4 '' #zField
pr0 @GridStep f14 '' #zField
pr0 @PushWFArc f6 '' #zField
pr0 @ErrorBoundaryEvent f7 '' #zField
pr0 @PushWFArc f8 '' #zField
pr0 @StartRequest f9 '' #zField
pr0 @PushWFArc f10 '' #zField
pr0 @GridStep f11 '' #zField
pr0 @PushWFArc f1 '' #zField
>Proto pr0 pr0 policyGreeter #zField
pr0 f0 outLink greeterPoliciesDisabled.ivp #txt
pr0 f0 type com.axonivy.connectivity.test.GreeterPolicyData #txt
pr0 f0 inParamDecl '<> param;' #txt
pr0 f0 actionDecl 'com.axonivy.connectivity.test.GreeterPolicyData out;
' #txt
pr0 f0 guid 162AFFB8AEBE5785 #txt
pr0 f0 requestEnabled true #txt
pr0 f0 triggerEnabled false #txt
pr0 f0 callSignature greeterPoliciesDisabled() #txt
pr0 f0 persist false #txt
pr0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
pr0 f0 caseData businessCase.attach=true #txt
pr0 f0 showInStartList 1 #txt
pr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>greeterPoliciesDisabled.ivp</name>
        <nameStyle>27,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
pr0 f0 @C|.responsibility Everybody #txt
pr0 f0 81 49 30 30 -75 17 #rect
pr0 f0 @|StartRequestIcon #fIcon
pr0 f18 actionDecl 'com.axonivy.connectivity.test.GreeterPolicyData out;
' #txt
pr0 f18 actionTable 'out=in;
' #txt
pr0 f18 actionCode ivy.session.setActiveEnvironment("dev-axonivy"); #txt
pr0 f18 type com.axonivy.connectivity.test.GreeterPolicyData #txt
pr0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>switch to ''dev-axonivy'' env.&#xD;
-&gt; with disable policy feature!</name>
    </language>
</elementInfo>
' #txt
pr0 f18 166 42 192 44 -75 -16 #rect
pr0 f18 @|StepIcon #fIcon
pr0 f3 expr out #txt
pr0 f3 111 64 166 64 #arcP
pr0 f2 type com.axonivy.connectivity.test.GreeterPolicyData #txt
pr0 f2 actionDecl 'com.axonivy.connectivity.test.GreeterPolicyData out;
' #txt
pr0 f2 actionTable 'out=in;
out.greetResponse=wsResponse;
' #txt
pr0 f2 timeout 0 #txt
pr0 f2 beanConfig "" #txt
pr0 f2 clientId 162AF1AE2B935160 #txt
pr0 f2 port SecureGreetPolicyServicePort #txt
pr0 f2 operation greet #txt
pr0 f2 inputParams 'parameters.greet="Hello Greeter!";
' #txt
pr0 f2 424 42 112 44 0 -8 #rect
pr0 f2 @|WebServiceIcon #fIcon
pr0 f4 expr out #txt
pr0 f4 358 64 424 64 #arcP
pr0 f14 actionDecl 'com.axonivy.connectivity.test.GreeterPolicyData out;
' #txt
pr0 f14 actionTable 'out=in;
' #txt
pr0 f14 actionCode ivy.session.setActiveEnvironment(null); #txt
pr0 f14 type com.axonivy.connectivity.test.GreeterPolicyData #txt
pr0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reset env!</name>
    </language>
</elementInfo>
' #txt
pr0 f14 584 42 112 44 -32 -7 #rect
pr0 f14 @|StepIcon #fIcon
pr0 f6 expr out #txt
pr0 f6 536 64 584 64 #arcP
pr0 f7 actionDecl 'com.axonivy.connectivity.test.GreeterPolicyData out;
' #txt
pr0 f7 actionTable 'out=in;
out.error=error;
' #txt
pr0 f7 type com.axonivy.connectivity.test.GreeterPolicyData #txt
pr0 f7 attachedToRef 162AFFB8ACCCB74C-f2 #txt
pr0 f7 497 81 30 30 0 15 #rect
pr0 f7 @|ErrorBoundaryEventIcon #fIcon
pr0 f8 526 92 584 64 #arcP
pr0 f9 outLink greeterPoliciesNotDisabled.ivp #txt
pr0 f9 type com.axonivy.connectivity.test.GreeterPolicyData #txt
pr0 f9 inParamDecl '<> param;' #txt
pr0 f9 actionDecl 'com.axonivy.connectivity.test.GreeterPolicyData out;
' #txt
pr0 f9 guid 162B00948CE16DDA #txt
pr0 f9 requestEnabled true #txt
pr0 f9 triggerEnabled false #txt
pr0 f9 callSignature greeterPoliciesNotDisabled() #txt
pr0 f9 persist false #txt
pr0 f9 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
pr0 f9 caseData businessCase.attach=true #txt
pr0 f9 showInStartList 1 #txt
pr0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>greeterPoliciesNotDisabled.ivp</name>
        <nameStyle>30,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
pr0 f9 @C|.responsibility Everybody #txt
pr0 f9 81 145 30 30 -85 17 #rect
pr0 f9 @|StartRequestIcon #fIcon
pr0 f10 expr out #txt
pr0 f10 111 160 480 86 #arcP
pr0 f10 1 440 160 #addKink
pr0 f10 0 0.6278403698772832 0 0 #arcLabel
pr0 f11 actionDecl 'com.axonivy.connectivity.test.GreeterPolicyData out;
' #txt
pr0 f11 actionTable 'out=in;
' #txt
pr0 f11 actionCode 'import ch.ivyteam.ivy.environment.Ivy;
import com.axonivy.connectivity.soap.WSResponseWriter;
Throwable cause = in.error.getCause();
WSResponseWriter.sendAsResponse(cause.getClass().getName() + ": " + cause.getMessage());' #txt
pr0 f11 type com.axonivy.connectivity.test.GreeterPolicyData #txt
pr0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>writer error response</name>
    </language>
</elementInfo>
' #txt
pr0 f11 760 42 128 44 -57 -8 #rect
pr0 f11 @|StepIcon #fIcon
pr0 f1 expr out #txt
pr0 f1 696 64 760 64 #arcP
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
pr0 f3 head f18 mainIn #connect
pr0 f18 mainOut f4 tail #connect
pr0 f4 head f2 mainIn #connect
pr0 f2 mainOut f6 tail #connect
pr0 f6 head f14 mainIn #connect
pr0 f7 mainOut f8 tail #connect
pr0 f8 head f14 mainIn #connect
pr0 f9 mainOut f10 tail #connect
pr0 f10 head f2 mainIn #connect
pr0 f14 mainOut f1 tail #connect
pr0 f1 head f11 mainIn #connect
