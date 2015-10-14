[Ivy]
[>Created: Wed Oct 14 17:02:56 CEST 2015]
15066B87D449F453 3.18 #module
>Proto >Proto Collection #zClass
Fy0 Factory Big #zClass
Fy0 B #cInfo
Fy0 #process
Fy0 @TextInP .resExport .resExport #zField
Fy0 @TextInP .type .type #zField
Fy0 @TextInP .processKind .processKind #zField
Fy0 @AnnotationInP-0n ai ai #zField
Fy0 @MessageFlowInP-0n messageIn messageIn #zField
Fy0 @MessageFlowOutP-0n messageOut messageOut #zField
Fy0 @TextInP .xml .xml #zField
Fy0 @TextInP .responsibility .responsibility #zField
Fy0 @StartRequest f0 '' #zField
Fy0 @EndTask f1 '' #zField
Fy0 @CallSub f3 '' #zField
Fy0 @PushWFArc f4 '' #zField
Fy0 @PushWFArc f2 '' #zField
Fy0 @ErrorBoundaryEvent Et0 ErrorBoundaryEvent #zField
Fy0 @InfoButton f9 '' #zField
Fy0 @EndTask f5 '' #zField
Fy0 @PushWFArc f6 '' #zField
>Proto Fy0 Fy0 Factory #zField
Fy0 f0 outLink start.ivp #txt
Fy0 f0 type error.handling.demo.Data #txt
Fy0 f0 inParamDecl '<> param;' #txt
Fy0 f0 actionDecl 'error.handling.demo.Data out;
' #txt
Fy0 f0 guid 15066B87D4C934D3 #txt
Fy0 f0 requestEnabled true #txt
Fy0 f0 triggerEnabled false #txt
Fy0 f0 callSignature start() #txt
Fy0 f0 persist false #txt
Fy0 f0 startName 'Catch default ivy error locally and propagate as custom error' #txt
Fy0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Fy0 f0 showInStartList 1 #txt
Fy0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Fy0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fy0 f0 @C|.responsibility Everybody #txt
Fy0 f0 65 145 30 30 -21 17 #rect
Fy0 f0 @|StartRequestIcon #fIcon
Fy0 f1 type error.handling.demo.Data #txt
Fy0 f1 321 145 30 30 0 15 #rect
Fy0 f1 @|EndIcon #fIcon
Fy0 f3 type error.handling.demo.Data #txt
Fy0 f3 processCall Factory/Production:produceShoes(String,Number) #txt
Fy0 f3 doCall true #txt
Fy0 f3 requestActionDecl '<java.lang.String model,java.lang.Number amount> param;
' #txt
Fy0 f3 requestMappingAction 'param.model="Super Runner";
param.amount=1000;
' #txt
Fy0 f3 responseActionDecl 'error.handling.demo.Data out;
' #txt
Fy0 f3 responseMappingAction 'out=in;
' #txt
Fy0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Production</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fy0 f3 152 138 112 44 -29 -8 #rect
Fy0 f3 @|CallSubIcon #fIcon
Fy0 f4 expr out #txt
Fy0 f4 95 160 152 160 #arcP
Fy0 f2 expr out #txt
Fy0 f2 264 160 321 160 #arcP
Fy0 Et0 actionDecl 'error.handling.demo.Data out;
' #txt
Fy0 Et0 actionTable 'out=in;
' #txt
Fy0 Et0 type error.handling.demo.Data #txt
Fy0 Et0 errorCode factory:unavailable #txt
Fy0 Et0 attachedToRef 15066B87D449F453-f3 #txt
Fy0 Et0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>factory:unavailable</name>
    </language>
</elementInfo>
' #txt
Fy0 Et0 225 169 30 30 19 6 #rect
Fy0 Et0 @|ErrorBoundaryEventIcon #fIcon
Fy0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Demonstrates how default ivy errors can be catched locally and propagated as custom error
- the callable sub process throws  custom error factory:unavailable </name>
        <nameStyle>89,8
1,7
48,7
19,3,7
1,3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Fy0 f9 40 34 640 44 -315 -19 #rect
Fy0 f9 @|IBIcon #fIcon
Fy0 f9 -1|-1|-65536 #nodeStyle
Fy0 f5 type error.handling.demo.Data #txt
Fy0 f5 321 225 30 30 0 15 #rect
Fy0 f5 @|EndIcon #fIcon
Fy0 f6 expr out #txt
Fy0 f6 240 199 321 240 #arcP
Fy0 f6 1 240 240 #addKink
Fy0 f6 1 0.20984925234769336 0 0 #arcLabel
>Proto Fy0 .type error.handling.demo.Data #txt
>Proto Fy0 .processKind NORMAL #txt
>Proto Fy0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Fy0 0 0 32 24 18 0 #rect
>Proto Fy0 @|BIcon #fIcon
Fy0 f0 mainOut f4 tail #connect
Fy0 f4 head f3 mainIn #connect
Fy0 f3 mainOut f2 tail #connect
Fy0 f2 head f1 mainIn #connect
Fy0 Et0 mainOut f6 tail #connect
Fy0 f6 head f5 mainIn #connect
