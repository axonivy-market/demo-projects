[Ivy]
[>Created: Thu Sep 01 14:52:19 CEST 2016]
151CA1EFC1542D87 3.18 #module
>Proto >Proto Collection #zClass
qr0 QuitEmployee Big #zClass
qr0 B #cInfo
qr0 #process
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
qr0 @RichDialog f5 '' #zField
qr0 @PushWFArc f6 '' #zField
qr0 @InfoButton f8 '' #zField
qr0 @PushWFArc f4 '' #zField
qr0 @RichDialog f7 '' #zField
qr0 @PushWFArc f9 '' #zField
qr0 @PushWFArc f2 '' #zField
>Proto qr0 qr0 QuitEmployee #zField
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
qr0 f0 startName '3.2: <%=ivy.cms.co("/ProcessDescriptions/quitUserProcess")%> (<%=ivy.cms.co("/ProcessDescriptions/signalExample")%>)' #txt
qr0 f0 startDescription <%=ivy.cms.co("/ProcessDescriptions/SignalQuitUserDescription")%> #txt
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
qr0 f0 @C|.responsibility 'HR Manager' #txt
qr0 f0 81 209 30 30 -21 17 #rect
qr0 f0 @|StartRequestIcon #fIcon
qr0 f1 type workflow.signal.QuitUserProcess #txt
qr0 f1 657 209 30 30 0 15 #rect
qr0 f1 @|EndIcon #fIcon
qr0 f3 actionDecl 'workflow.signal.QuitUserProcess out;
' #txt
qr0 f3 actionTable 'out=in;
' #txt
qr0 f3 actionCode 'import com.google.gson.Gson;
import ch.ivyteam.ivy.process.model.value.SignalCode;

// create signal code
SignalCode signalCode = new SignalCode("admin:quit:" + in.quitUserEvent.userKey);

// serialize payload
String jsonSerializedPayload = new Gson().toJson(in.quitUserEvent);

// send signal
ivy.wf.signals().send(signalCode, jsonSerializedPayload);

// send signal with data class payload (only applicable within same project or dependent projects)
ivy.wf.signals().send(new SignalCode("admin:quitV2:" + in.quitUserEvent.userKey), in.quitUserEvent);' #txt
qr0 f3 type workflow.signal.QuitUserProcess #txt
qr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send Quit Signal</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
qr0 f3 328 202 112 44 -46 -8 #rect
qr0 f3 @|StepIcon #fIcon
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
        <name>Select User</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
qr0 f5 168 202 112 44 -32 -8 #rect
qr0 f5 @|RichDialogIcon #fIcon
qr0 f6 expr out #txt
qr0 f6 111 224 168 224 #arcP
qr0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This process is part of the signal demo process. 
QuitUser sends a signal that will cancel User Tasks from a previously started CreateUser business case.</name>
        <nameStyle>153,7
</nameStyle>
    </language>
</elementInfo>
' #txt
qr0 f8 64 26 592 44 -288 -16 #rect
qr0 f8 @|IBIcon #fIcon
qr0 f4 expr out #txt
qr0 f4 280 224 328 224 #arcP
qr0 f7 targetWindow NEW:card: #txt
qr0 f7 targetDisplay TOP #txt
qr0 f7 richDialogId workflow.signal.QuitSignalSent #txt
qr0 f7 startMethod start() #txt
qr0 f7 type workflow.signal.QuitUserProcess #txt
qr0 f7 requestActionDecl '<> param;' #txt
qr0 f7 responseActionDecl 'workflow.signal.QuitUserProcess out;
' #txt
qr0 f7 responseMappingAction 'out=in;
' #txt
qr0 f7 windowConfiguration '* ' #txt
qr0 f7 isAsynch false #txt
qr0 f7 isInnerRd false #txt
qr0 f7 userContext '* ' #txt
qr0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Information about
Signal Sent</name>
        <nameStyle>29,7
</nameStyle>
    </language>
</elementInfo>
' #txt
qr0 f7 480 202 128 44 -44 -16 #rect
qr0 f7 @|RichDialogIcon #fIcon
qr0 f9 expr out #txt
qr0 f9 440 224 480 224 #arcP
qr0 f2 expr out #txt
qr0 f2 608 224 657 224 #arcP
>Proto qr0 .type workflow.signal.QuitUserProcess #txt
>Proto qr0 .processKind NORMAL #txt
>Proto qr0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Quit Employee</swimlaneLabel>
        <swimlaneLabel>HR Manager</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneColor gradient="false">1694498764</swimlaneColor>
    <swimlaneColor gradient="false">1694498764</swimlaneColor>
    <swimlaneType>POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneSpaceBefore>96</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto qr0 0 0 32 24 18 0 #rect
>Proto qr0 @|BIcon #fIcon
qr0 f0 mainOut f6 tail #connect
qr0 f6 head f5 mainIn #connect
qr0 f5 mainOut f4 tail #connect
qr0 f4 head f3 mainIn #connect
qr0 f3 mainOut f9 tail #connect
qr0 f9 head f7 mainIn #connect
qr0 f7 mainOut f2 tail #connect
qr0 f2 head f1 mainIn #connect
