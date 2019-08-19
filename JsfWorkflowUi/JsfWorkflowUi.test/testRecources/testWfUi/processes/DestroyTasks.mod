[Ivy]
1466BC6311E70117 3.28 #module
>Proto >Proto Collection #zClass
Ds0 DestroyTasks Big #zClass
Ds0 B #cInfo
Ds0 #process
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @StartRequest f0 '' #zField
Ds0 @EndTask f1 '' #zField
Ds0 @GridStep f3 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @PushWFArc f4 '' #zField
>Proto Ds0 Ds0 DestroyTasks #zField
Ds0 f0 outLink DestroyTasks.ivp #txt
Ds0 f0 inParamDecl '<> param;' #txt
Ds0 f0 requestEnabled true #txt
Ds0 f0 triggerEnabled false #txt
Ds0 f0 callSignature DestroyTasks() #txt
Ds0 f0 persist false #txt
Ds0 f0 startName DestroyTasks #txt
Ds0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ds0 f0 showInStartList 1 #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DestroyTasks.ivp</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 @C|.responsibility Everybody #txt
Ds0 f0 81 49 30 30 -47 17 #rect
Ds0 f0 @|StartRequestIcon #fIcon
Ds0 f0 -1|-1|-9671572 #nodeStyle
Ds0 f1 337 49 30 30 0 15 #rect
Ds0 f1 @|EndIcon #fIcon
Ds0 f1 -1|-1|-9671572 #nodeStyle
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 actionCode 'import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.workflow.TaskState;

IQueryResult<ITask> queryResult;

List<ITask> tasks = ivy.session.findSuspendedWorkTasks(0, -1);


for(ITask task : tasks)
{
	task.destroy();
}' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>destroy tasks</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f3 168 42 112 44 -36 -8 #rect
Ds0 f3 @|StepIcon #fIcon
Ds0 f3 -1|-1|-9671572 #nodeStyle
Ds0 f2 expr out #txt
Ds0 f2 111 64 168 64 #arcP
Ds0 f4 expr out #txt
Ds0 f4 280 64 337 64 #arcP
>Proto Ds0 .type ch.ivyteam.wf.test.Data #txt
>Proto Ds0 .processKind NORMAL #txt
>Proto Ds0 0 0 32 24 18 0 #rect
>Proto Ds0 @|BIcon #fIcon
Ds0 f0 mainOut f2 tail #connect
Ds0 f2 head f3 mainIn #connect
Ds0 f3 mainOut f4 tail #connect
Ds0 f4 head f1 mainIn #connect
