[Ivy]
12E297F287736665 7.5.0 #module
>Proto >Proto Collection #zClass
Rt0 TaskHistory Big #zClass
Rt0 B #cInfo
Rt0 #process
Rt0 @TextInP .type .type #zField
Rt0 @TextInP .processKind .processKind #zField
Rt0 @AnnotationInP-0n ai ai #zField
Rt0 @TextInP .xml .xml #zField
Rt0 @TextInP .responsibility .responsibility #zField
Rt0 @GridStep f20 '' #zField
Rt0 @Page f1 '' #zField
Rt0 @PushWFArc f3 '' #zField
Rt0 @StartRequest f0 '' #zField
Rt0 @CallSub f30 '' #zField
Rt0 @Alternative f33 '' #zField
Rt0 @GridStep f38 '' #zField
Rt0 @PushWFArc f39 '' #zField
Rt0 @PushWFArc f15 '' #zField
Rt0 @PushWFArc f2 '' #zField
Rt0 @GridStep f7 '' #zField
Rt0 @PushWFArc f14 '' #zField
Rt0 @PushWFArc f43 '' #zField
Rt0 @PushWFArc f8 '' #zField
Rt0 @PushWFArc f9 '' #zField
Rt0 @CallSub f4 '' #zField
Rt0 @PushWFArc f5 '' #zField
Rt0 @PushWFArc f12 '' #zField
>Proto Rt0 Rt0 TaskHistory #zField
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
Rt0 f1 outTypes "htmlwfui.Data","htmlwfui.Data","htmlwfui.Data" #txt
Rt0 f1 outLinks "LinkA.ivp","LinkC.ivp","LinkB.ivp" #txt
Rt0 f1 template "/ProcessPages/TaskHistory/taskHistList.ivc" #txt
Rt0 f1 type htmlwfui.Data #txt
Rt0 f1 skipLink skip.ivp #txt
Rt0 f1 sortLink sort.ivp #txt
Rt0 f1 templateWizard '#
#Tue Feb 15 16:20:41 CET 2011
' #txt
Rt0 f1 pageArchivingActivated false #txt
Rt0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TaskHistoryList</name>
        <nameStyle>15
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f1 @C|.responsibility Everybody #txt
Rt0 f1 78 340 36 24 11 12 #rect
Rt0 f1 @|PageIcon #fIcon
Rt0 f3 expr out #txt
Rt0 f3 96 292 96 340 #arcP
Rt0 f0 outLink start1.ivp #txt
Rt0 f0 inParamDecl '<> param;' #txt
Rt0 f0 requestEnabled true #txt
Rt0 f0 triggerEnabled false #txt
Rt0 f0 callSignature start1() #txt
Rt0 f0 persist false #txt
Rt0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Rt0 f0 showInStartList 0 #txt
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
Rt0 f30 processCall 'Functional Processes/TaskDetail:call(htmlwfui.Data)' #txt
Rt0 f30 requestActionDecl '<htmlwfui.Data in> param;' #txt
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
Rt0 f30 78 452 36 24 16 9 #rect
Rt0 f30 @|CallSubIcon #fIcon
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
Rt0 f15 expr data #txt
Rt0 f15 outCond ivp=="LinkA.ivp" #txt
Rt0 f15 78 352 82 224 #arcP
Rt0 f15 1 32 352 #addKink
Rt0 f15 2 32 224 #addKink
Rt0 f15 1 0.18116225130813152 0 0 #arcLabel
Rt0 f2 expr in #txt
Rt0 f2 outCond in.temp.caption=="my_tasks" #txt
Rt0 f2 96 238 96 268 #arcP
Rt0 f7 actionTable 'out=in;
' #txt
Rt0 f7 actionCode 'if(in.temp.catFilter=="Alle")
{
	out.temp.processesCombo=in.temp.processes.clone();
}	
else
{
	out.temp.processesCombo.clear();
	for(int i=0; i<in.temp.processes.size(); i++)
	{
		if(in.temp.processes.getField(i,"Cat")==in.temp.catFilter)
		{
				out.temp.processesCombo.add(in.temp.processes.getAt(i));
		}	
	}
}' #txt
Rt0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update filterCombos</name>
        <nameStyle>19
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f7 166 308 36 24 22 -8 #rect
Rt0 f7 @|StepIcon #fIcon
Rt0 f14 expr data #txt
Rt0 f14 outCond ivp=="LinkC.ivp" #txt
Rt0 f14 114 345 166 327 #arcP
Rt0 f43 expr out #txt
Rt0 f43 166 327 114 345 #arcP
Rt0 f43 0 0.7806989874641023 0 0 #arcLabel
Rt0 f8 expr data #txt
Rt0 f8 outCond ivp=="LinkB.ivp" #txt
Rt0 f8 96 364 96 452 #arcP
Rt0 f9 expr out #txt
Rt0 f9 114 464 114 352 #arcP
Rt0 f9 1 256 464 #addKink
Rt0 f9 2 256 352 #addKink
Rt0 f9 1 0.5 0 0 #arcLabel
Rt0 f4 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Rt0 f4 requestActionDecl '<htmlwfui.Data in> param;' #txt
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
Rt0 f4 78 132 36 24 20 -2 #rect
Rt0 f4 @|CallSubIcon #fIcon
Rt0 f5 expr out #txt
Rt0 f5 96 92 96 132 #arcP
Rt0 f5 0 0.4999999999999999 0 0 #arcLabel
Rt0 f12 expr out #txt
Rt0 f12 96 156 96 210 #arcP
Rt0 f12 0 0.442275988200965 0 0 #arcLabel
>Proto Rt0 .type htmlwfui.Data #txt
>Proto Rt0 .processKind NORMAL #txt
>Proto Rt0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Rt0 0 0 32 24 18 0 #rect
>Proto Rt0 @|BIcon #fIcon
Rt0 f20 mainOut f3 tail #connect
Rt0 f3 head f1 mainIn #connect
Rt0 f0 mainOut f39 tail #connect
Rt0 f39 head f38 mainIn #connect
Rt0 f1 out f15 tail #connect
Rt0 f15 head f33 in #connect
Rt0 f33 out f2 tail #connect
Rt0 f2 head f20 mainIn #connect
Rt0 f1 out f14 tail #connect
Rt0 f14 head f7 mainIn #connect
Rt0 f7 mainOut f43 tail #connect
Rt0 f43 head f1 mainIn #connect
Rt0 f1 out f8 tail #connect
Rt0 f8 head f30 mainIn #connect
Rt0 f30 mainOut f9 tail #connect
Rt0 f9 head f1 mainIn #connect
Rt0 f38 mainOut f5 tail #connect
Rt0 f5 head f4 mainIn #connect
Rt0 f4 mainOut f12 tail #connect
Rt0 f12 head f33 in #connect
