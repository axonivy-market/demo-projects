[Ivy]
1446978B0F659AB0 3.26 #module
>Proto >Proto Collection #zClass
Ss0 StatisticDetailsProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogMethodStart f6 '' #zField
Ss0 @GridStep f5 '' #zField
Ss0 @GridStep f8 '' #zField
Ss0 @GridStep f7 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogProcessEnd f12 '' #zField
Ss0 @PushWFArc f13 '' #zField
Ss0 @PushWFArc f3 '' #zField
Ss0 @PushWFArc f11 '' #zField
Ss0 @GridStep f4 '' #zField
Ss0 @PushWFArc f10 '' #zField
>Proto Ss0 Ss0 StatisticDetailsProcess #zField
Ss0 f0 guid 1446978B1157DF7E #txt
Ss0 f0 type ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData #txt
Ss0 f0 method start(String,String,Number) #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData out;
' #txt
Ss0 f0 inParameterMapAction 'out.caseId=param.caseId;
out.category=param.category;
out.mode=param.mode;
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String,String,Number)</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 51 26 26 -91 15 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f0 -1|-1|-9671572 #nodeStyle
Ss0 f1 type ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData #txt
Ss0 f1 211 51 26 26 0 13 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f1 -1|-1|-9671572 #nodeStyle
Ss0 f6 guid 1446979D73AAECEC #txt
Ss0 f6 type ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData #txt
Ss0 f6 method update() #txt
Ss0 f6 disableUIEvents false #txt
Ss0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f6 outParameterDecl '<> result;
' #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ss0 f6 83 147 26 26 -23 13 #rect
Ss0 f6 @|RichDialogMethodStartIcon #fIcon
Ss0 f6 -1|-1|-9671572 #nodeStyle
Ss0 f5 actionDecl 'ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData out;
' #txt
Ss0 f5 actionTable 'out=in;
' #txt
Ss0 f5 actionCode 'import ch.ivyteam.wf.admin.ChartBean;

ChartBean chartBean;
chartBean.setChartSeries(in.tasks, "task", in.highestTime, in.average);
chartBean.setDescriptions("task", in.highestTime);
out.chart = chartBean.getBarModel();' #txt
Ss0 f5 type ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create chart for 
tasks</name>
        <nameStyle>23,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 648 138 112 44 -41 -16 #rect
Ss0 f5 @|StepIcon #fIcon
Ss0 f5 -1|-1|-9671572 #nodeStyle
Ss0 f8 actionDecl 'ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData out;
' #txt
Ss0 f8 actionTable 'out=in;
' #txt
Ss0 f8 actionCode 'import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.query.CaseQuery;

IPropertyFilter caseFilter;
CaseQuery caseQuery = CaseQuery.create();
out.wfCase = null;

if(in.mode == "avg")
{
	out.wfCase = ivy.wf.findCase(in.caseId.longValue());
}
else
{
	String column = in.mode == "min" ? "MINBUSINESSRUNTIME" : "MAXBUSINESSRUNTIME";
	caseQuery.where().state().isEqual(CaseState.DONE);
	if(in.category != null)
	{
		caseQuery.where().category().isEqual(in.category);
	}
	else
	{
		caseQuery.where().category().isEqual(null);
	}

	caseQuery.aggregate().countRows().minBusinessRuntime().maxBusinessRuntime().avgBusinessRuntime().groupBy().category();
	
	Recordset cases = ivy.wf.getCaseQueryExecutor().getRecordset(caseQuery);
	if(cases.size() >0)
	{
		caseFilter = ivy.wf.createCasePropertyFilter(CaseProperty.BUSINESS_RUNTIME, RelationalOperator.EQUAL, cases.getAt(0).getField(column));
		caseFilter.and(CaseProperty.CATEGORY, RelationalOperator.EQUAL, cases.getAt(0).getField("CATEGORY"));
		IQueryResult queryResult = ivy.wf.findCases(caseFilter, PropertyOrder.create(CaseProperty.ID, OrderDirection.DESCENDING),
			0, 1 ,true);
		
		if(queryResult.getResultCount() >0)
		{
			out.wfCase = queryResult.get(0) as ICase;
		}	
	}	
}

' #txt
Ss0 f8 type ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get case</name>
        <nameStyle>8,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 168 138 112 44 -23 -8 #rect
Ss0 f8 @|StepIcon #fIcon
Ss0 f8 -1|-1|-9671572 #nodeStyle
Ss0 f7 actionDecl 'ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData out;
' #txt
Ss0 f7 actionTable 'out=in;
' #txt
Ss0 f7 actionCode 'import ch.ivyteam.ivy.workflow.query.TaskQuery;

TaskQuery taskQuery = TaskQuery.create();
if(in.wfCase !=null)
{
taskQuery.where().caseId().isEqual(in.wfCase.getId()).
aggregate().minWorkingTime().minBusinessRuntime().avgBusinessRuntime().maxName().groupBy().taskId();

Recordset tasks = ivy.wf.getTaskQueryExecutor().getRecordset(taskQuery);

if(tasks.size() >= 100)
{
	Recordset firstTasks = null;
	for(int count = 0 ; count < 100 ; count++)
	{
		firstTasks.add(tasks.getAt(count));
	}
	in.tasks = firstTasks;
}
else
{
	in.tasks = tasks;
}

int avgSum = 0;
for(int count = 0 ; count < tasks.size() ; count++)
{
	avgSum = avgSum + tasks.getAt(count).getField("AVGBUSINESSRUNTIME").toNumber();
}
if(tasks.size() >0)
{
	in.average = avgSum / tasks.size();
}
else
{
	in.average =0;	
}	
}' #txt
Ss0 f7 type ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData #txt
Ss0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get tasks</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f7 328 138 112 44 -25 -8 #rect
Ss0 f7 @|StepIcon #fIcon
Ss0 f7 -1|-1|-9671572 #nodeStyle
Ss0 f9 expr out #txt
Ss0 f9 109 160 168 160 #arcP
Ss0 f2 expr out #txt
Ss0 f2 109 64 211 64 #arcP
Ss0 f12 type ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData #txt
Ss0 f12 819 147 26 26 0 12 #rect
Ss0 f12 @|RichDialogProcessEndIcon #fIcon
Ss0 f12 -1|-1|-9671572 #nodeStyle
Ss0 f13 expr out #txt
Ss0 f13 760 160 819 160 #arcP
Ss0 f13 0 0.31739827034856477 0 0 #arcLabel
Ss0 f3 expr out #txt
Ss0 f3 600 160 648 160 #arcP
Ss0 f11 expr out #txt
Ss0 f11 440 160 488 160 #arcP
Ss0 f4 actionDecl 'ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData out;
' #txt
Ss0 f4 actionTable 'out=in;
' #txt
Ss0 f4 actionCode 'in.highestTime = "";
Boolean hour = false;
Boolean minutes = false;
Boolean secondes = false;

for(int count = 0; count < in.tasks.size(); count++)
{
	int runtime = in.tasks.getAt(count).getField("MINBUSINESSRUNTIME").toNumber();
	
	if(runtime > 3600)
	{
		hour = true;
	}
	else if(runtime > 60)
	{
		minutes = true;
	}
}

in.highestTime = hour ? "h" : minutes ? "min" : "s";
' #txt
Ss0 f4 type ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData #txt
Ss0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get highest time
of tasks</name>
        <nameStyle>25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f4 488 138 112 44 -42 -16 #rect
Ss0 f4 @|StepIcon #fIcon
Ss0 f4 -1|-1|-9671572 #nodeStyle
Ss0 f10 expr out #txt
Ss0 f10 280 160 328 160 #arcP
>Proto Ss0 .type ch.ivyteam.wf.admin.StatisticDetails.StatisticDetailsData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f0 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f6 mainOut f9 tail #connect
Ss0 f9 head f8 mainIn #connect
Ss0 f7 mainOut f11 tail #connect
Ss0 f11 head f4 mainIn #connect
Ss0 f4 mainOut f3 tail #connect
Ss0 f3 head f5 mainIn #connect
Ss0 f5 mainOut f13 tail #connect
Ss0 f13 head f12 mainIn #connect
Ss0 f8 mainOut f10 tail #connect
Ss0 f10 head f7 mainIn #connect
