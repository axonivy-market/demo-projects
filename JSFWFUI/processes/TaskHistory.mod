[Ivy]
[>Created: Mon Jan 21 10:42:23 CET 2013]
12E297F287736665 3.17 #module
>Proto >Proto Collection #zClass
Rt0 TaskHistory Big #zClass
Rt0 B #cInfo
Rt0 #process
Rt0 @TextInP .resExport .resExport #zField
Rt0 @TextInP .type .type #zField
Rt0 @TextInP .processKind .processKind #zField
Rt0 @AnnotationInP-0n ai ai #zField
Rt0 @TextInP .xml .xml #zField
Rt0 @TextInP .responsibility .responsibility #zField
Rt0 @GridStep f20 '' #zField
Rt0 @StartRequest f0 '' #zField
Rt0 @CallSub f30 '' #zField
Rt0 @Alternative f33 '' #zField
Rt0 @GridStep f38 '' #zField
Rt0 @PushWFArc f39 '' #zField
Rt0 @PushWFArc f2 '' #zField
Rt0 @CallSub f4 '' #zField
Rt0 @PushWFArc f12 '' #zField
Rt0 @RichDialog f6 '' #zField
Rt0 @PushWFArc f16 '' #zField
Rt0 @PushWFArc f3 '' #zField
Rt0 @PushWFArc f10 '' #zField
Rt0 @PushWFArc f7 '' #zField
>Proto Rt0 Rt0 TaskHistory #zField
Rt0 f20 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f20 actionTable 'out=in;
' #txt
Rt0 f20 actionCode 'import java.util.EnumSet;
import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.IWorkflowContext;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import javax.servlet.http.HttpServletRequest;

IPropertyFilter cpfilter = ivy.wf.createTaskPropertyFilter(TaskProperty.WORKER_USER_NAME, RelationalOperator.EQUAL, ivy.session.getSessionUserName());
/*
if(in.temp.catFilter!="Alle")
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CATEGORY_CODE,RelationalOperator.EQUAL,in.temp.catFilter);	
}
if(in.temp.procFilter!="Alle")
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CODE,RelationalOperator.EQUAL,in.temp.procFilter);	
*/
if(in.temp.statFilter!="Alle")
{
	if(in.temp.statFilter=="DONE")
	{
		cpfilter = cpfilter.and(TaskProperty.STATE,RelationalOperator.EQUAL,TaskState.DONE.ordinal());
	}			
}

IQueryResult queryResult = ivy.session.findWorkedOnTasks(
	cpfilter,
	PropertyOrder.create(TaskProperty.ID, OrderDirection.DESCENDING),
	0, -1 ,true);

out.tasks = queryResult.getResultList();

out.temp.processes.clear();
out.temp.processes.add(["Alle","Alle","Alle"]);
/*
for(ICase case: queryResult.getResultList())
{
	if(!out.temp.categories.contains(case.getProcessCategoryCode()))
	{
		out.temp.categories.add(case.getProcessCategoryCode());
	}	
	List pCodes=out.temp.processes.getColumn("Code");
	if(!pCodes.contains(case.getProcessCode()))
	{
		out.temp.processes.add([case.getProcessCode(),case.getProcessName(),case.getProcessCategoryCode()]);
	}	
}
*/
out.temp.processesCombo = out.temp.processes.clone();
' #txt
Rt0 f20 type htmlwfui.Data #txt
Rt0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect my worked_on_tasks</name>
        <nameStyle>26,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f20 78 268 36 24 22 -9 #rect
Rt0 f20 @|StepIcon #fIcon
Rt0 f0 outLink start1.ivp #txt
Rt0 f0 type htmlwfui.Data #txt
Rt0 f0 inParamDecl '<> param;' #txt
Rt0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f0 guid 12C97DD6D7C6E230 #txt
Rt0 f0 requestEnabled true #txt
Rt0 f0 triggerEnabled false #txt
Rt0 f0 callSignature start1() #txt
Rt0 f0 persist false #txt
Rt0 f0 taskData '#
#Fri Oct 26 14:24:35 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Rt0 f0 caseData '#
#Fri Oct 26 14:24:35 CEST 2012
businessCalendarName=
businessCreator.user=
businessMilestone.timestamp=
businessObject.code=
businessObject.docDb.code=
businessObject.folder.id=
businessObject.name=
businessPriority=
businessStart.timestamp=
case.description=
case.name=
correspondent.id=
mainContact.docDb.code=
mainContact.folder.id=
mainContact.id=
mainContact.name=
mainContact.type=
process.code=
process.name=
processCategory.code=
processCategory.name=
subType.code=
subType.name=
type.code=
type.name=
' #txt
Rt0 f0 showInStartList 1 #txt
Rt0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Rt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start1.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f0 @C|.responsibility Everybody #txt
Rt0 f0 83 19 26 26 14 0 #rect
Rt0 f0 @|StartRequestIcon #fIcon
Rt0 f30 type htmlwfui.Data #txt
Rt0 f30 processCall 'Functional Processes/TaskDetail:call(htmlwfui.Data)' #txt
Rt0 f30 doCall true #txt
Rt0 f30 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Rt0 f30 requestMappingAction 'param.in=in;
param.in.tmpTask=in.tasks.get(in.temp.n);
' #txt
Rt0 f30 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f30 responseMappingAction 'out=in;
out.tmpTask=null;
' #txt
Rt0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>taskDetail</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f30 78 404 36 24 16 9 #rect
Rt0 f30 @|CallSubIcon #fIcon
Rt0 f33 type htmlwfui.Data #txt
Rt0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>?</name>
        <nameStyle>1
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f33 82 210 28 28 19 -12 #rect
Rt0 f33 @|AlternativeIcon #fIcon
Rt0 f38 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f38 actionTable 'out=in;
out.temp.caption="my_tasks";
' #txt
Rt0 f38 actionCode 'import ch.ivyteam.ivy.workflow.TaskState;

out.temp.statFilter = TaskState.DONE.toString();
out.temp.catFilter = "Alle";
out.temp.procFilter = "Alle";

out.temp.categories = ["Alle"];
out.temp.processes.addColumn("Code",["Alle"]).addColumn("Name",["Alle"]).addColumn("Cat",["Alle"]);;
out.temp.processesCombo.addColumn("Code",["Alle"]).addColumn("Name",["Alle"]).addColumn("Cat",["Alle"]);
out.temp.states = ["Alle", TaskState.DONE.toString()];
' #txt
Rt0 f38 type htmlwfui.Data #txt
Rt0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init my_worked_on_tasks</name>
        <nameStyle>23
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f38 78 68 36 24 22 -11 #rect
Rt0 f38 @|StepIcon #fIcon
Rt0 f39 expr out #txt
Rt0 f39 96 45 96 68 #arcP
Rt0 f39 0 0.6514195840404282 0 0 #arcLabel
Rt0 f2 expr in #txt
Rt0 f2 outCond in.temp.caption=="my_tasks" #txt
Rt0 f2 96 238 96 268 #arcP
Rt0 f4 type htmlwfui.Data #txt
Rt0 f4 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Rt0 f4 doCall true #txt
Rt0 f4 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Rt0 f4 requestMappingAction 'param.in=in;
' #txt
Rt0 f4 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f4 responseMappingAction 'out=result.out;
' #txt
Rt0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f4 78 148 36 24 20 -2 #rect
Rt0 f4 @|CallSubIcon #fIcon
Rt0 f12 expr out #txt
Rt0 f12 96 172 96 210 #arcP
Rt0 f12 0 0.442275988200965 0 0 #arcLabel
Rt0 f6 targetWindow NEW:card: #txt
Rt0 f6 targetDisplay TOP #txt
Rt0 f6 richDialogId htmlwfui.TaskHistory #txt
Rt0 f6 startMethod start(htmlwfui.Data) #txt
Rt0 f6 type htmlwfui.Data #txt
Rt0 f6 requestActionDecl '<htmlwfui.Data data> param;' #txt
Rt0 f6 requestMappingAction 'param.data=in;
' #txt
Rt0 f6 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f6 responseMappingAction 'out=in;
out.option=result.option;
' #txt
Rt0 f6 windowConfiguration '* ' #txt
Rt0 f6 isAsynch false #txt
Rt0 f6 isInnerRd false #txt
Rt0 f6 userContext '* ' #txt
Rt0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TaskHistoryList</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f6 78 332 36 24 20 -2 #rect
Rt0 f6 @|RichDialogIcon #fIcon
Rt0 f16 expr out #txt
Rt0 f16 96 356 96 404 #arcP
Rt0 f3 expr out #txt
Rt0 f3 114 416 114 344 #arcP
Rt0 f3 1 224 416 #addKink
Rt0 f3 2 224 344 #addKink
Rt0 f3 1 0.5 0 0 #arcLabel
Rt0 f10 expr out #txt
Rt0 f10 96 292 96 332 #arcP
Rt0 f7 expr out #txt
Rt0 f7 96 92 96 148 #arcP
Rt0 f7 0 0.4999999999999999 0 0 #arcLabel
>Proto Rt0 .type htmlwfui.Data #txt
>Proto Rt0 .processKind NORMAL #txt
>Proto Rt0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Rt0 0 0 32 24 18 0 #rect
>Proto Rt0 @|BIcon #fIcon
Rt0 f0 mainOut f39 tail #connect
Rt0 f39 head f38 mainIn #connect
Rt0 f33 out f2 tail #connect
Rt0 f2 head f20 mainIn #connect
Rt0 f4 mainOut f12 tail #connect
Rt0 f12 head f33 in #connect
Rt0 f6 mainOut f16 tail #connect
Rt0 f16 head f30 mainIn #connect
Rt0 f30 mainOut f3 tail #connect
Rt0 f3 head f6 mainIn #connect
Rt0 f20 mainOut f10 tail #connect
Rt0 f10 head f6 mainIn #connect
Rt0 f38 mainOut f7 tail #connect
Rt0 f7 head f4 mainIn #connect
