[Ivy]
151CA0D8CBDD2DEC 9.3.1 #module
>Proto >Proto Collection #zClass
cr0 NewEmployee Big #zClass
cr0 B #cInfo
cr0 #process
cr0 @TextInP .type .type #zField
cr0 @TextInP .processKind .processKind #zField
cr0 @AnnotationInP-0n ai ai #zField
cr0 @MessageFlowInP-0n messageIn messageIn #zField
cr0 @MessageFlowOutP-0n messageOut messageOut #zField
cr0 @TextInP .xml .xml #zField
cr0 @TextInP .responsibility .responsibility #zField
cr0 @InfoButton f27 '' #zField
cr0 @UserTask f11 '' #zField
cr0 @EndTask f10 '' #zField
cr0 @GridStep f21 '' #zField
cr0 @SignalStartEvent f32 '' #zField
cr0 @EndTask f25 '' #zField
cr0 @PushWFArc f14 '' #zField
cr0 @PushWFArc f22 '' #zField
cr0 @PushWFArc f26 '' #zField
cr0 @TkArc f33 '' #zField
cr0 @SignalBoundaryEvent St1 SignalBoundaryEvent #zField
cr0 @UserTask f8 '' #zField
cr0 @GridStep f19 '' #zField
cr0 @SignalStartEvent f28 '' #zField
cr0 @EndTask f23 '' #zField
cr0 @EndTask f6 '' #zField
cr0 @PushWFArc f7 '' #zField
cr0 @PushWFArc f20 '' #zField
cr0 @PushWFArc f24 '' #zField
cr0 @TkArc f29 '' #zField
cr0 @SignalBoundaryEvent St0 SignalBoundaryEvent #zField
cr0 @EndTask f34 '' #zField
cr0 @UserDialog f3 '' #zField
cr0 @GridStep f30 '' #zField
cr0 @StartRequest f0 '' #zField
cr0 @PushWFArc f4 '' #zField
cr0 @PushWFArc f31 '' #zField
cr0 @PushWFArc f35 '' #zField
>Proto cr0 cr0 NewEmployee #zField
cr0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This examples illustrates use cases for Signals. 
* Several concurrent process are started by a signal.
* Signal Boundary Events are used to interrupt (destroy) User Tasks.

The example consists of two main processes:
The CreateUser process starts concurrent processes with the signal ''user:created''. 
The user object is added as payload to the signal. 

The QuitUser process sends a signal that cancels User Tasks that have become obsolete. 
The sent signal ''admin:quit:xyz'' includes a user key that is used to find 
involved tasks.


Steps to execute the example:
Start at least one CreateUser process. The new user will have an auto created user key. 
After the completion of the CreateUser main process, you start a QuitUser process.
If you enter a user key of one of the previously started CreateUser business cases, any involved 
and not completed User Task is destroyed. </name>
        <nameStyle>49,0,7
124,7
1,7
43,0,7
301,7
360,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f27 536 66 528 300 -260 -144 #rect
cr0 f11 dialogId workflow.signal.TaskForm #txt
cr0 f11 startMethod start(workflow.signal.User) #txt
cr0 f11 requestActionDecl '<workflow.signal.User user> param;' #txt
cr0 f11 requestMappingAction 'param.user=in.user;
' #txt
cr0 f11 responseActionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f11 responseMappingAction 'out=in;
' #txt
cr0 f11 caseData case.category=Office/Key/Assignment #txt
cr0 f11 taskData 'TaskA.CATEGORY=Assign/OfficeKey
TaskA.DESC=<%\=ivy.cms.co("/TaskDescriptions/prepareOfficeKeyDesc")%> <%\=in.user.name%> [<%\=in.user.userKey%>]
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=<%\=ivy.cms.co("/TaskDescriptions/prepareOfficeKeyFor")%> <%\=in.user.name%> [<%\=in.user.userKey%>]
TaskA.PRI=2
TaskA.ROL=Office Manager
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
cr0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set up office key</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f11 168 458 112 44 -44 -8 #rect
cr0 f10 345 465 30 30 0 15 #rect
cr0 f21 actionTable 'out=in;
' #txt
cr0 f21 actionCode 'ivy.log.debug("setup of office key prepration cancelled for user " + in.user.toString() + ", reason: " + in.quitUserEvent.toString());' #txt
cr0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log event data</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f21 304 554 112 44 -38 -8 #rect
cr0 f32 actionCode 'import workflow.signal.User;
import com.google.gson.Gson;

out.user = new Gson().fromJson(signal.getSignalData() as String, User.class) as User;

ivy.case.customFields().stringField("BusinessObjectCode").set(out.user.userKey);
ivy.case.customFields().stringField("BusinessObjectName").set(out.user.name);' #txt
cr0 f32 signalCode user:created #txt
cr0 f32 attachToBusinessCase true #txt
cr0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user:created</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f32 81 465 30 30 -34 17 #rect
cr0 f25 457 561 30 30 0 15 #rect
cr0 f14 expr data #txt
cr0 f14 outCond ivp=="TaskA.ivp" #txt
cr0 f14 280 480 345 480 #arcP
cr0 f22 expr out #txt
cr0 f22 256 527 304 576 #arcP
cr0 f22 1 256 576 #addKink
cr0 f22 1 0.22727272727272738 0 0 #arcLabel
cr0 f26 expr out #txt
cr0 f26 416 576 457 576 #arcP
cr0 f33 expr out #txt
cr0 f33 type workflow.signal.CreateUserProcess #txt
cr0 f33 var in2 #txt
cr0 f33 111 480 168 480 #arcP
cr0 St1 actionTable 'out=in;
' #txt
cr0 St1 actionCode 'import workflow.signal.QuitUserEvent;
import com.google.gson.Gson;

out.quitUserEvent = new Gson().fromJson(signal.getSignalData() as String, QuitUserEvent.class) as QuitUserEvent;

ivy.task.setName("CANCEL TASK: " + ivy.task.getName());' #txt
cr0 St1 signalCode admin:quit:<%=in.user.userKey%> #txt
cr0 St1 attachedToRef 151CA0D8CBDD2DEC-f11 #txt
cr0 St1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>admin:quit:[userKey]</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 St1 241 497 30 30 11 9 #rect
cr0 f8 dialogId workflow.signal.TaskForm #txt
cr0 f8 startMethod start(workflow.signal.User) #txt
cr0 f8 requestActionDecl '<workflow.signal.User user> param;' #txt
cr0 f8 requestMappingAction 'param.user=in.user;
' #txt
cr0 f8 responseActionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f8 responseMappingAction 'out.user=result.user;
' #txt
cr0 f8 caseData case.category=IT/Workstation/Setup #txt
cr0 f8 taskData 'TaskA.CATEGORY=Setup/Workstation
TaskA.DESC=<%\=ivy.cms.co("/TaskDescriptions/setupWorkstationDesc")%> <%\=in.user.name%> [<%\=in.user.userKey%>]
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=<%\=ivy.cms.co("/TaskDescriptions/setupWorkstation")%> <%\=in.user.name%> [<%\=in.user.userKey%>]
TaskA.PRI=2
TaskA.ROL=IT Manager
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
cr0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set up workstation</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f8 168 266 112 44 -50 -8 #rect
cr0 f19 actionTable 'out=in;
' #txt
cr0 f19 actionCode 'ivy.log.debug("setup of workstation cancelled for user " + in.user.toString() + ", reason: " + in.quitUserEvent.toString());' #txt
cr0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>log event data</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f19 304 362 112 44 -38 -8 #rect
cr0 f28 actionCode 'import workflow.signal.User;
import com.google.gson.Gson;

out.user = new Gson().fromJson(signal.getSignalData() as String, User.class) as User;

ivy.case.customFields().stringField("BusinessObjectCode").set(out.user.userKey);
ivy.case.customFields().stringField("BusinessObjectName").set(out.user.name);' #txt
cr0 f28 signalCode user:created #txt
cr0 f28 attachToBusinessCase true #txt
cr0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user:created</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f28 81 273 30 30 -34 17 #rect
cr0 f23 457 369 30 30 0 15 #rect
cr0 f6 337 273 30 30 0 15 #rect
cr0 f7 expr data #txt
cr0 f7 outCond ivp=="TaskA.ivp" #txt
cr0 f7 280 288 337 288 #arcP
cr0 f20 expr out #txt
cr0 f20 256 335 304 384 #arcP
cr0 f20 1 256 384 #addKink
cr0 f20 1 0.6558600829569573 0 0 #arcLabel
cr0 f24 expr out #txt
cr0 f24 416 384 457 384 #arcP
cr0 f29 expr out #txt
cr0 f29 type workflow.signal.CreateUserProcess #txt
cr0 f29 var in2 #txt
cr0 f29 111 288 168 288 #arcP
cr0 St0 actionTable 'out=in;
' #txt
cr0 St0 actionCode 'import workflow.signal.QuitUserEvent;
import com.google.gson.Gson;

out.quitUserEvent = new Gson().fromJson(signal.getSignalData() as String, QuitUserEvent.class) as QuitUserEvent;

ivy.task.setName("CANCEL TASK: " + ivy.task.getName());' #txt
cr0 St0 signalCode admin:quit:<%=in.user.userKey%> #txt
cr0 St0 attachedToRef 151CA0D8CBDD2DEC-f8 #txt
cr0 St0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>admin:quit:[userKey]</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 St0 241 305 30 30 11 7 #rect
cr0 f34 457 81 30 30 0 15 #rect
cr0 f3 dialogId workflow.signal.CreateUser #txt
cr0 f3 startMethod start(workflow.signal.User) #txt
cr0 f3 requestActionDecl '<workflow.signal.User user> param;' #txt
cr0 f3 requestMappingAction 'param.user=in.user;
' #txt
cr0 f3 responseActionDecl 'workflow.signal.CreateUserProcess out;
' #txt
cr0 f3 responseMappingAction 'out=in;
out.user=result.user;
' #txt
cr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add user data</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f3 168 74 112 44 -38 -8 #rect
cr0 f30 actionTable 'out=in;
' #txt
cr0 f30 actionCode 'import com.google.gson.Gson;
import ch.ivyteam.ivy.process.model.value.SignalCode;

ivy.case.getBusinessCase().setName("3.1: New Employee: " + in.user.name + " [" + in.user.userKey + "]");

// send signal with json payload
String jsonSerializedPayload = new Gson().toJson(in.user);
ivy.wf.signals().send(new SignalCode("user:created"), jsonSerializedPayload);

// send signal with data class payload (only applicable within same project or dependent projects)
ivy.wf.signals().send(new SignalCode("user:createdV2"), in.user);' #txt
cr0 f30 security system #txt
cr0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Send Signal
''user:created''</name>
        <nameStyle>26,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f30 304 74 128 44 -41 -15 #rect
cr0 f0 outLink addUser.ivp #txt
cr0 f0 inParamDecl '<> param;' #txt
cr0 f0 inParamTable 'out.user.userKey=(new DateTime()).getMinutes().toString() + (new DateTime()).getSeconds().toString();
' #txt
cr0 f0 requestEnabled true #txt
cr0 f0 triggerEnabled false #txt
cr0 f0 callSignature addUser() #txt
cr0 f0 persist false #txt
cr0 f0 startName '3.1: <%=ivy.cms.co("/ProcessDescriptions/createUserProcess")%> (<%=ivy.cms.co("/ProcessDescriptions/signalExample")%>)' #txt
cr0 f0 startDescription <%=ivy.cms.co("/ProcessDescriptions/signalCreateUserDescription")%> #txt
cr0 f0 startCategory signal #txt
cr0 f0 startCustomFields 'cssIcon=fa fa-user-plus' #txt
cr0 f0 taskData 'TaskTriggered.CATEGORY=Input/Employee
TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
cr0 f0 caseData case.category=HR/Employee/Entry #txt
cr0 f0 showInStartList 1 #txt
cr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addUser.ivp</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
cr0 f0 @C|.responsibility 'HR Manager' #txt
cr0 f0 81 81 30 30 -33 17 #rect
cr0 f4 expr out #txt
cr0 f4 111 96 168 96 #arcP
cr0 f31 expr out #txt
cr0 f31 280 96 304 96 #arcP
cr0 f35 expr out #txt
cr0 f35 432 96 457 96 #arcP
>Proto cr0 .type workflow.signal.CreateUserProcess #txt
>Proto cr0 .processKind NORMAL #txt
>Proto cr0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Create Employee</swimlaneLabel>
        <swimlaneLabel>HR Manager</swimlaneLabel>
        <swimlaneLabel>IT Manager</swimlaneLabel>
        <swimlaneLabel>Office Manager</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>576</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneColor gradient="false">1694498764</swimlaneColor>
    <swimlaneColor gradient="false">1691143372</swimlaneColor>
    <swimlaneColor gradient="false">1694485708</swimlaneColor>
    <swimlaneType>POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneType>LANE_IN_POOL</swimlaneType>
    <swimlaneSpaceBefore>32</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto cr0 0 0 32 24 18 0 #rect
>Proto cr0 @|BIcon #fIcon
cr0 f11 out f14 tail #connect
cr0 f14 head f10 mainIn #connect
cr0 St1 mainOut f22 tail #connect
cr0 f22 head f21 mainIn #connect
cr0 f21 mainOut f26 tail #connect
cr0 f26 head f25 mainIn #connect
cr0 f32 mainOut f33 tail #connect
cr0 f33 head f11 in #connect
cr0 f8 out f7 tail #connect
cr0 f7 head f6 mainIn #connect
cr0 St0 mainOut f20 tail #connect
cr0 f20 head f19 mainIn #connect
cr0 f19 mainOut f24 tail #connect
cr0 f24 head f23 mainIn #connect
cr0 f28 mainOut f29 tail #connect
cr0 f29 head f8 in #connect
cr0 f0 mainOut f4 tail #connect
cr0 f4 head f3 mainIn #connect
cr0 f3 mainOut f31 tail #connect
cr0 f31 head f30 mainIn #connect
cr0 f30 mainOut f35 tail #connect
cr0 f35 head f34 mainIn #connect
