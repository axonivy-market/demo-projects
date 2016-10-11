[Ivy]
[>Created: Tue Oct 11 12:50:05 CEST 2016]
157B33AB7587F1F1 3.18 #module
>Proto >Proto Collection #zClass
be0 batchService Big #zClass
be0 B #cInfo
be0 #process
be0 @TextInP .resExport .resExport #zField
be0 @TextInP .type .type #zField
be0 @TextInP .processKind .processKind #zField
be0 @AnnotationInP-0n ai ai #zField
be0 @MessageFlowInP-0n messageIn messageIn #zField
be0 @MessageFlowOutP-0n messageOut messageOut #zField
be0 @TextInP .xml .xml #zField
be0 @TextInP .responsibility .responsibility #zField
be0 @StartRequest f0 '' #zField
be0 @EndTask f1 '' #zField
be0 @GridStep f3 '' #zField
be0 @PushWFArc f4 '' #zField
be0 @PushWFArc f2 '' #zField
be0 @InfoButton f5 '' #zField
be0 @AnnotationArc f7 '' #zField
>Proto be0 be0 batchService #zField
be0 f0 outLink callLongRunningBatch.ivp #txt
be0 f0 type com.axonivy.connectivity.Data #txt
be0 f0 inParamDecl '<> param;' #txt
be0 f0 actionDecl 'com.axonivy.connectivity.Data out;
' #txt
be0 f0 guid 157B33AB7A4D35AD #txt
be0 f0 requestEnabled true #txt
be0 f0 triggerEnabled false #txt
be0 f0 callSignature callLongRunningBatch() #txt
be0 f0 persist false #txt
be0 f0 startName '5. Increase timeout properties for long running requests' #txt
be0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
be0 f0 showInStartList 1 #txt
be0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
be0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>callLongRunningBatch.ivp</name>
        <nameStyle>24,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
be0 f0 @C|.responsibility Everybody #txt
be0 f0 113 49 30 30 -71 17 #rect
be0 f0 @|StartRequestIcon #fIcon
be0 f1 type com.axonivy.connectivity.Data #txt
be0 f1 369 49 30 30 0 15 #rect
be0 f1 @|EndIcon #fIcon
be0 f3 actionDecl 'com.axonivy.connectivity.Data out;
' #txt
be0 f3 actionTable 'out=in;
' #txt
be0 f3 actionCode 'String entity = ivy.rest.client("batchService").request().get()
									 .readEntity(String.class) as String;
									
ivy.log.info("batch service returned: "+entity);' #txt
be0 f3 type com.axonivy.connectivity.Data #txt
be0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call batch</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
be0 f3 200 42 112 44 -26 -8 #rect
be0 f3 @|StepIcon #fIcon
be0 f4 expr out #txt
be0 f4 143 64 200 64 #arcP
be0 f2 expr out #txt
be0 f2 312 64 369 64 #arcP
be0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>REST requests are aborted by default 
if the remote service does not answer within 30 seconds!

This batch client overrides the default settings 
and waits 35 seconds for a result 
and 1 seconds for a connection by setting:
jersey.config.client.readTimeout=35''000
jersey.config.client.connectTimeout=1''000
</name>
        <nameStyle>95,7
129,7
81,3,7
1,7
</nameStyle>
    </language>
</elementInfo>
' #txt
be0 f5 200 122 320 156 -155 -73 #rect
be0 f5 @|IBIcon #fIcon
be0 f7 360 122 256 86 #arcP
be0 f7 0 0.4435848068666603 0 0 #arcLabel
>Proto be0 .type com.axonivy.connectivity.Data #txt
>Proto be0 .processKind NORMAL #txt
>Proto be0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Timeout Properties</swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>312</swimlaneSize>
    <swimlaneColor gradient="false">-1</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto be0 0 0 32 24 18 0 #rect
>Proto be0 @|BIcon #fIcon
be0 f0 mainOut f4 tail #connect
be0 f4 head f3 mainIn #connect
be0 f3 mainOut f2 tail #connect
be0 f2 head f1 mainIn #connect
be0 f5 ao f7 tail #connect
be0 f7 head f3 @CG|ai #connect
