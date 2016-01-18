[Ivy]
[>Created: Mon Jan 18 17:06:32 CET 2016]
151CA1EFC1542D87 3.18 #module
>Proto >Proto Collection #zClass
qr0 QuitUser Big #zClass
qr0 B #cInfo
qr0 #process
Ct0 Component Big #zClass
Ct0 B #cInfo
qr0 @TextInP .resExport .resExport #zField
qr0 @TextInP .type .type #zField
qr0 @TextInP .processKind .processKind #zField
qr0 @AnnotationInP-0n ai ai #zField
qr0 @MessageFlowInP-0n messageIn messageIn #zField
qr0 @MessageFlowOutP-0n messageOut messageOut #zField
qr0 @TextInP .xml .xml #zField
qr0 @TextInP .responsibility .responsibility #zField
qr0 @StartRequest f0 '' #zField
qr0 @EndTask f1 '' #zField
qr0 @GridStep f3 '' #zField
qr0 @PushWFArc f2 '' #zField
qr0 @RichDialog f5 '' #zField
qr0 @PushWFArc f6 '' #zField
qr0 Ct0 S10 'Sub 1' #zField
qr0 @PushWFArc f7 '' #zField
qr0 @PushWFArc f4 '' #zField
qr0 @InfoButton f8 '' #zField
>Proto qr0 qr0 QuitUser #zField
Ct0 @TextInP .resExport .resExport #zField
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @MessageFlowInP-0n messageIn messageIn #zField
Ct0 @MessageFlowOutP-0n messageOut messageOut #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @PushTrueWFInG-01 g0 '' #zField
Ct0 @PushTrueWFOutG-01 g1 '' #zField
Ct0 @PushWFArc f0 '' #zField
>Proto Ct0 Ct0 Component #zField
qr0 f0 outLink start.ivp #txt
qr0 f0 type workflow.signal.QuitUserProcess #txt
qr0 f0 inParamDecl '<> param;' #txt
qr0 f0 actionDecl 'workflow.signal.QuitUserProcess out;
' #txt
qr0 f0 guid 151CA1EFC2ED867C #txt
qr0 f0 requestEnabled true #txt
qr0 f0 triggerEnabled false #txt
qr0 f0 callSignature start() #txt
qr0 f0 persist false #txt
qr0 f0 startName 'Quit User Process (Signal example)' #txt
qr0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
qr0 f0 showInStartList 1 #txt
qr0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
qr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
qr0 f0 @C|.responsibility Everybody #txt
qr0 f0 81 97 30 30 -21 17 #rect
qr0 f0 @|StartRequestIcon #fIcon
qr0 f1 type workflow.signal.QuitUserProcess #txt
qr0 f1 657 97 30 30 0 15 #rect
qr0 f1 @|EndIcon #fIcon
qr0 f3 actionDecl 'workflow.signal.QuitUserProcess out;
' #txt
qr0 f3 actionTable 'out=in;
' #txt
qr0 f3 actionCode 'import ch.ivyteam.ivy.process.model.value.SignalCode;

// create signal code
SignalCode signalCode = new SignalCode("admin:quit:" + in.quitUserEvent.userKey);

// send signal
ivy.wf.signals().sendSignal(signalCode, in.quitUserEvent);' #txt
qr0 f3 type workflow.signal.QuitUserProcess #txt
qr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>send quit signal</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
qr0 f3 488 90 112 44 -44 -8 #rect
qr0 f3 @|StepIcon #fIcon
qr0 f2 expr out #txt
qr0 f2 600 112 657 112 #arcP
qr0 f5 targetWindow NEW:card: #txt
qr0 f5 targetDisplay TOP #txt
qr0 f5 richDialogId workflow.signal.QuitUser #txt
qr0 f5 startMethod start() #txt
qr0 f5 type workflow.signal.QuitUserProcess #txt
qr0 f5 requestActionDecl '<> param;' #txt
qr0 f5 responseActionDecl 'workflow.signal.QuitUserProcess out;
' #txt
qr0 f5 responseMappingAction 'out=in;
out.quitUserEvent=result.quitUserEvent;
' #txt
qr0 f5 windowConfiguration '* ' #txt
qr0 f5 isAsynch false #txt
qr0 f5 isInnerRd false #txt
qr0 f5 userContext '* ' #txt
qr0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>select user</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
qr0 f5 168 90 112 44 -30 -8 #rect
qr0 f5 @|RichDialogIcon #fIcon
qr0 f6 expr out #txt
qr0 f6 111 112 168 112 #arcP
qr0 S10 .resExport export #txt
qr0 S10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language lang="en">
        <name>do other stuff</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
qr0 S10 328 90 112 44 -35 -8 #rect
qr0 S10 @|BIcon #fIcon
qr0 f7 expr out #txt
qr0 f7 280 112 328 112 #arcP
qr0 f4 440 112 488 112 #arcP
qr0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This process is part of the signal demo process. QuitUser will cancel a previously started CreateUser case. </name>
        <nameStyle>108,7
</nameStyle>
    </language>
</elementInfo>
' #txt
qr0 f8 48 25 608 30 -294 -8 #rect
qr0 f8 @|IBIcon #fIcon
>Proto qr0 .type workflow.signal.QuitUserProcess #txt
>Proto qr0 .processKind NORMAL #txt
>Proto qr0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto qr0 0 0 32 24 18 0 #rect
>Proto qr0 @|BIcon #fIcon
Ct0 g0 51 243 26 26 0 5 #rect
Ct0 g0 @|MIGIcon #fIcon
Ct0 g1 563 243 26 26 0 5 #rect
Ct0 g1 @|MOGIcon #fIcon
Ct0 f0 77 256 563 256 #arcP
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
qr0 f3 mainOut f2 tail #connect
qr0 f2 head f1 mainIn #connect
qr0 f0 mainOut f6 tail #connect
qr0 f6 head f5 mainIn #connect
qr0 f5 mainOut f7 tail #connect
qr0 f7 head S10 g0 #connect
qr0 S10 g1 f4 tail #connect
qr0 f4 head f3 mainIn #connect
Ct0 g0 m f0 tail #connect
Ct0 f0 head g1 m #connect
Ct0 0 0 640 512 0 #ivRect
