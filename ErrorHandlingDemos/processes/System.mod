[Ivy]
[>Created: Wed Oct 14 17:04:10 CEST 2015]
150149331438F9EA 3.18 #module
>Proto >Proto Collection #zClass
tl0 System Big #zClass
tl0 B #cInfo
tl0 #process
tl0 @TextInP .resExport .resExport #zField
tl0 @TextInP .type .type #zField
tl0 @TextInP .processKind .processKind #zField
tl0 @AnnotationInP-0n ai ai #zField
tl0 @MessageFlowInP-0n messageIn messageIn #zField
tl0 @MessageFlowOutP-0n messageOut messageOut #zField
tl0 @TextInP .xml .xml #zField
tl0 @TextInP .responsibility .responsibility #zField
tl0 @StartRequest f0 '' #zField
tl0 @EndTask f1 '' #zField
tl0 @DBStep f3 '' #zField
tl0 @PushWFArc f4 '' #zField
tl0 @PushWFArc f2 '' #zField
tl0 @InfoButton f5 '' #zField
>Proto tl0 tl0 System #zField
tl0 f0 outLink throwSystemError.ivp #txt
tl0 f0 type error.handling.demo.technicalData #txt
tl0 f0 inParamDecl '<> param;' #txt
tl0 f0 actionDecl 'error.handling.demo.technicalData out;
' #txt
tl0 f0 guid 15014933146E9EA7 #txt
tl0 f0 requestEnabled true #txt
tl0 f0 triggerEnabled false #txt
tl0 f0 callSignature throwSystemError() #txt
tl0 f0 persist false #txt
tl0 f0 startName 'Use global Error Process' #txt
tl0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
tl0 f0 showInStartList 1 #txt
tl0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
tl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>throwSystemError.ivp</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
tl0 f0 @C|.responsibility Everybody #txt
tl0 f0 81 177 30 30 -61 17 #rect
tl0 f0 @|StartRequestIcon #fIcon
tl0 f1 type error.handling.demo.technicalData #txt
tl0 f1 433 177 30 30 0 15 #rect
tl0 f1 @|EndIcon #fIcon
tl0 f3 actionDecl 'error.handling.demo.technicalData out;
' #txt
tl0 f3 actionTable 'out=in;
' #txt
tl0 f3 dbSql '<?xml version=""1.0"" standalone=""no""?>
<!DOCTYPE ANY_SQL SYSTEM  ""sqlStatements.dtd"">
<ANY_SQL><Verbatim quote=''true''></Verbatim></ANY_SQL>' #txt
tl0 f3 dbUrl invalidDB #txt
tl0 f3 cache '{/cache false /invalidation false /scope 0 /groupname ""/lifetime_group "0"/invalidation_time_group ""/identifier ""/lifetime_entry "0"/invalidation_time_entry ""}' #txt
tl0 f3 lotSize 2147483647 #txt
tl0 f3 startIdx 0 #txt
tl0 f3 type error.handling.demo.technicalData #txt
tl0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Throws system error</name>
        <nameStyle>19
</nameStyle>
    </language>
</elementInfo>
' #txt
tl0 f3 208 170 128 44 -56 -8 #rect
tl0 f3 @|DBStepIcon #fIcon
tl0 f4 expr out #txt
tl0 f4 111 192 208 192 #arcP
tl0 f2 expr out #txt
tl0 f2 336 192 433 192 #arcP
tl0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Usage of Global Error Process
This DB Step throws ivy:error:database  system error
The system errors ivy:error:* are handled in
a Global Error Process (ErrorHandler)</name>
        <nameStyle>29,8
20
19,3
32
1,3,9
11,3,9
1,1,3,9
3
1,1
7
1,1
26
1,1
12,1
1,1
</nameStyle>
    </language>
</elementInfo>
' #txt
tl0 f5 48 26 336 76 -160 -35 #rect
tl0 f5 @|IBIcon #fIcon
tl0 f5 -1|-1|-65536 #nodeStyle
>Proto tl0 .type error.handling.demo.technicalData #txt
>Proto tl0 .processKind NORMAL #txt
>Proto tl0 0 0 32 24 18 0 #rect
>Proto tl0 @|BIcon #fIcon
tl0 f0 mainOut f4 tail #connect
tl0 f4 head f3 mainIn #connect
tl0 f3 mainOut f2 tail #connect
tl0 f2 head f1 mainIn #connect
