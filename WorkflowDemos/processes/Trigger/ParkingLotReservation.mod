[Ivy]
[>Created: Wed Jan 20 11:46:46 CET 2016]
15254CF47A16DEA1 3.18 #module
>Proto >Proto Collection #zClass
Pn0 ParkingLotReservation Big #zClass
Pn0 B #cInfo
Pn0 #process
Pn0 @TextInP .resExport .resExport #zField
Pn0 @TextInP .type .type #zField
Pn0 @TextInP .processKind .processKind #zField
Pn0 @AnnotationInP-0n ai ai #zField
Pn0 @MessageFlowInP-0n messageIn messageIn #zField
Pn0 @MessageFlowOutP-0n messageOut messageOut #zField
Pn0 @TextInP .xml .xml #zField
Pn0 @TextInP .responsibility .responsibility #zField
Pn0 @StartRequest f0 '' #zField
Pn0 @EndTask f1 '' #zField
Pn0 @RichDialog f3 '' #zField
Pn0 @PushWFArc f4 '' #zField
Pn0 @EMail f5 '' #zField
Pn0 @PushWFArc f6 '' #zField
Pn0 @PushWFArc f2 '' #zField
Pn0 @InfoButton f7 '' #zField
Pn0 @AnnotationArc f8 '' #zField
>Proto Pn0 Pn0 ParkingLotReservation #zField
Pn0 f0 outLink start.ivp #txt
Pn0 f0 type workflow.trigger.NewEmployeeData #txt
Pn0 f0 inParamDecl '<workflow.trigger.NewEmployeeData newEmployeeData> param;' #txt
Pn0 f0 inParamTable 'out=param.newEmployeeData;
' #txt
Pn0 f0 actionDecl 'workflow.trigger.NewEmployeeData out;
' #txt
Pn0 f0 guid 150380834F3ACA57 #txt
Pn0 f0 requestEnabled false #txt
Pn0 f0 triggerEnabled true #txt
Pn0 f0 callSignature start(workflow.trigger.NewEmployeeData) #txt
Pn0 f0 persist false #txt
Pn0 f0 taskData 'TaskTriggered.ROL=Facility Manager
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.NAM=<%\=ivy.cms.co("/TaskDescriptions/reserveParkingLotFor")%> <%\=param.newEmployeeData.name%>' #txt
Pn0 f0 showInStartList 1 #txt
Pn0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setName(engine.expandMacros("<%=ivy.cms.co(\"/TaskDescriptions/reserveParkingLotFor\")%> <%=param.newEmployeeData.name%>"));
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Pn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(NewEmployeeData)</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pn0 f0 @C|.responsibility Everybody #txt
Pn0 f0 81 113 30 30 -69 17 #rect
Pn0 f0 @|StartRequestIcon #fIcon
Pn0 f1 type workflow.trigger.NewEmployeeData #txt
Pn0 f1 537 113 30 30 0 15 #rect
Pn0 f1 @|EndIcon #fIcon
Pn0 f3 targetWindow NEW:card: #txt
Pn0 f3 targetDisplay TOP #txt
Pn0 f3 richDialogId workflow.trigger.ParkingLotReservation #txt
Pn0 f3 startMethod start(workflow.trigger.NewEmployeeData) #txt
Pn0 f3 type workflow.trigger.NewEmployeeData #txt
Pn0 f3 requestActionDecl '<workflow.trigger.NewEmployeeData employee> param;' #txt
Pn0 f3 requestMappingAction 'param.employee=in;
' #txt
Pn0 f3 responseActionDecl 'workflow.trigger.NewEmployeeData out;
' #txt
Pn0 f3 responseMappingAction 'out=result.employee;
' #txt
Pn0 f3 windowConfiguration '* ' #txt
Pn0 f3 isAsynch false #txt
Pn0 f3 isInnerRd false #txt
Pn0 f3 userContext '* ' #txt
Pn0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Reserve parking lot</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pn0 f3 168 106 112 44 -53 -8 #rect
Pn0 f3 @|RichDialogIcon #fIcon
Pn0 f4 expr out #txt
Pn0 f4 111 128 168 128 #arcP
Pn0 f5 beanConfig '"{/emailSubject """"/emailFrom """"/emailReplyTo """"/emailTo """"/emailCC """"/emailBCC """"/exceptionMissingEmailAttachments ""false""/emailMessage """"/emailAttachments * }"' #txt
Pn0 f5 type workflow.trigger.NewEmployeeData #txt
Pn0 f5 timeout 0 #txt
Pn0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Inform employee</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pn0 f5 360 106 112 44 -46 -8 #rect
Pn0 f5 @|EMailIcon #fIcon
Pn0 f6 expr out #txt
Pn0 f6 280 128 360 128 #arcP
Pn0 f2 expr out #txt
Pn0 f2 472 128 537 128 #arcP
Pn0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This Request Start is defined to be 
startable by a trigger step.</name>
        <nameStyle>65,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Pn0 f7 56 10 208 44 -96 -16 #rect
Pn0 f7 @|IBIcon #fIcon
Pn0 f8 160 54 90 114 #arcP
Pn0 f8 0 0.48544006142993784 0 0 #arcLabel
>Proto Pn0 .type workflow.trigger.NewEmployeeData #txt
>Proto Pn0 .processKind NORMAL #txt
>Proto Pn0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Pn0 0 0 32 24 18 0 #rect
>Proto Pn0 @|BIcon #fIcon
Pn0 f0 mainOut f4 tail #connect
Pn0 f4 head f3 mainIn #connect
Pn0 f3 mainOut f6 tail #connect
Pn0 f6 head f5 mainIn #connect
Pn0 f5 mainOut f2 tail #connect
Pn0 f2 head f1 mainIn #connect
Pn0 f7 ao f8 tail #connect
Pn0 f8 head f0 @CG|ai #connect
