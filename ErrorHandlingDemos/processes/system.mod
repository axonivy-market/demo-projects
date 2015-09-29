[Ivy]
[>Created: Tue Sep 29 09:03:50 CEST 2015]
150149331438F9EA 3.18 #module
>Proto >Proto Collection #zClass
tl0 system Big #zClass
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
tl0 @AnnotationArc f6 '' #zField
>Proto tl0 tl0 system #zField
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
        <name>Throws a system error</name>
        <nameStyle>21
</nameStyle>
    </language>
</elementInfo>
' #txt
tl0 f3 200 170 144 44 -65 -7 #rect
tl0 f3 @|DBStepIcon #fIcon
tl0 f4 expr out #txt
tl0 f4 111 192 200 192 #arcP
tl0 f2 expr out #txt
tl0 f2 344 192 433 192 #arcP
tl0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Using Global Error Process
This DB Step throws a system error.
All system errors (ivy:error:*) are handled in
the Global Error Process with the name ErrorHandler.</name>
        <nameStyle>26,8
56
13,1
3
1,1
7
1,1
42
13,1
</nameStyle>
    </language>
</elementInfo>
' #txt
tl0 f5 152 26 320 76 -154 -32 #rect
tl0 f5 @|IBIcon #fIcon
tl0 f6 312 102 272 170 #arcP
>Proto tl0 .type error.handling.demo.technicalData #txt
>Proto tl0 .processKind NORMAL #txt
>Proto tl0 0 0 32 24 18 0 #rect
>Proto tl0 @|BIcon #fIcon
tl0 f0 mainOut f4 tail #connect
tl0 f4 head f3 mainIn #connect
tl0 f3 mainOut f2 tail #connect
tl0 f2 head f1 mainIn #connect
tl0 f5 ao f6 tail #connect
tl0 f6 head f3 @CG|ai #connect
