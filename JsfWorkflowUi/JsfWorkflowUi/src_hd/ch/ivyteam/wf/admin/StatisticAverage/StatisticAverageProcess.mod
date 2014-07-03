[Ivy]
[>Created: Wed Jun 04 14:55:28 CEST 2014]
144728B11565E706 3.17 #module
>Proto >Proto Collection #zClass
Ss0 StatisticAverageProcess Big #zClass
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
Ss0 @GridStep f10 '' #zField
Ss0 @RichDialogMethodStart f7 '' #zField
Ss0 @GridStep f4 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @PushWFArc f8 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @GridStep f3 '' #zField
Ss0 @PushWFArc f6 '' #zField
Ss0 @PushWFArc f9 '' #zField
>Proto Ss0 Ss0 StatisticAverageProcess #zField
Ss0 f0 guid 144728B116AEAD78 #txt
Ss0 f0 type ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData #txt
Ss0 f0 method start(String,String) #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String processCode,java.lang.String categoryCode> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 inParameterMapAction 'out.categoryCode=param.categoryCode;
out.processCode=param.processCode;
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String,String)</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 51 26 26 -49 15 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f0 -1|-1|-9671572 #nodeStyle
Ss0 f1 type ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData #txt
Ss0 f1 659 51 26 26 0 13 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f1 -1|-1|-9671572 #nodeStyle
Ss0 f10 actionDecl 'ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData out;
' #txt
Ss0 f10 actionTable 'out=in;
' #txt
Ss0 f10 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.query.CaseQuery;

CaseQuery caseQuery = CaseQuery.create();

caseQuery.where().state().isEqual(CaseState.DONE).where().processCode().isEqual(in.processCode).and().processCategoryCode().isEqual(in.categoryCode).
aggregate().minBusinessRuntime().avgBusinessRuntime().minWorkingTime().maxProcessCategoryCode().maxProcessName().maxProcessCode().groupBy().caseId().name();

Recordset cases = ivy.wf.getCaseQueryExecutor().getRecordset(caseQuery);

in.casesSize = cases.size();

if(cases.size() >= 100)
{
	Recordset firstCases = null;
	for(int count = 0 ; count < 100 ; count++)
	{
		firstCases.add(cases.getAt(count));
	}
	in.cases = firstCases;
	in.hasMoreCases = true;
}
else
{
	in.cases = cases;
	in.hasMoreCases = false;
}

int avgSum = 0;
for(int count = 0 ; count < cases.size() ; count++)
{
	avgSum = avgSum + cases.getAt(count).getField("AVGBUSINESSRUNTIME").toNumber();
}

in.average = avgSum / cases.size();' #txt
Ss0 f10 type ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData #txt
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get cases</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f10 168 42 112 44 -27 -8 #rect
Ss0 f10 @|StepIcon #fIcon
Ss0 f10 -1|-1|-9671572 #nodeStyle
Ss0 f7 guid 14472A1125F52CDE #txt
Ss0 f7 type ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData #txt
Ss0 f7 method update() #txt
Ss0 f7 disableUIEvents false #txt
Ss0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f7 outParameterDecl '<> result;
' #txt
Ss0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ss0 f7 83 147 26 26 -23 13 #rect
Ss0 f7 @|RichDialogMethodStartIcon #fIcon
Ss0 f7 -1|-1|-9671572 #nodeStyle
Ss0 f4 actionDecl 'ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData out;
' #txt
Ss0 f4 actionTable 'out=in;
' #txt
Ss0 f4 actionCode 'import ch.ivyteam.wf.admin.ChartBean;

ChartBean chartBean;
chartBean.setChartSeries(in.cases, "case", in.highestTime, in.average);
chartBean.setDescriptions("case", in.highestTime);
out.chart = chartBean.getBarModel();' #txt
Ss0 f4 type ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData #txt
Ss0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create chart for 
cases</name>
        <nameStyle>23,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f4 488 42 112 44 -41 -16 #rect
Ss0 f4 @|StepIcon #fIcon
Ss0 f4 -1|-1|-9671572 #nodeStyle
Ss0 f2 expr out #txt
Ss0 f2 600 64 659 64 #arcP
Ss0 f2 0 0.40810175008537836 0 0 #arcLabel
Ss0 f8 expr out #txt
Ss0 f8 109 160 224 86 #arcP
Ss0 f8 1 224 160 #addKink
Ss0 f8 1 0.31297634392177215 0 0 #arcLabel
Ss0 f5 expr out #txt
Ss0 f5 109 64 168 64 #arcP
Ss0 f3 actionDecl 'ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData out;
' #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 actionCode 'in.highestTime = "";
Boolean hour = false;
Boolean minutes = false;
Boolean secondes = false;

for(int count = 0; count < in.cases.size(); count++)
{
	int runtime = in.cases.getAt(count).getField("MINBUSINESSRUNTIME").toNumber();
	
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
Ss0 f3 type ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get highest time
of cases</name>
        <nameStyle>25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 328 42 112 44 -42 -16 #rect
Ss0 f3 @|StepIcon #fIcon
Ss0 f3 -1|-1|-9671572 #nodeStyle
Ss0 f6 expr out #txt
Ss0 f6 280 64 328 64 #arcP
Ss0 f9 expr out #txt
Ss0 f9 440 64 488 64 #arcP
>Proto Ss0 .type ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f4 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f7 mainOut f8 tail #connect
Ss0 f8 head f10 mainIn #connect
Ss0 f0 mainOut f5 tail #connect
Ss0 f5 head f10 mainIn #connect
Ss0 f10 mainOut f6 tail #connect
Ss0 f6 head f3 mainIn #connect
Ss0 f3 mainOut f9 tail #connect
Ss0 f9 head f4 mainIn #connect
