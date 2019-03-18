[Ivy]
144728B11565E706 3.26 #module
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
Ss0 @GridStep f3 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @RichDialogProcessEnd f5 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @PushWFArc f6 '' #zField
>Proto Ss0 Ss0 StatisticAverageProcess #zField
Ss0 f0 guid 144728B116AEAD78 #txt
Ss0 f0 type ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData #txt
Ss0 f0 method start(String) #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData out;
' #txt
Ss0 f0 inParameterMapAction 'out.casesSize=0;
out.category=param.category;
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
        <nameStyle>13,5
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 19 26 26 -44 17 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f0 -1|-1|-9671572 #nodeStyle
Ss0 f1 type ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData #txt
Ss0 f1 659 115 26 26 0 13 #rect
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
caseQuery.where().state().isEqual(CaseState.DONE);
if(in.category.length()>0)
{
		caseQuery.where().category().isEqual(in.category);
}
else
{
		caseQuery.where().category().isEqual(null);
}

caseQuery.aggregate().minBusinessRuntime().avgBusinessRuntime().minWorkingTime().groupBy().caseId().name();

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

if(cases.size() >0)
{
	in.average = avgSum / cases.size();
}
else
{
	in.average=0;
}		
in.casesSize = in.cases.size();' #txt
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
Ss0 f10 168 106 112 44 -27 -8 #rect
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
Ss0 f7 83 115 26 26 -23 13 #rect
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
Ss0 f4 488 106 112 44 -41 -16 #rect
Ss0 f4 @|StepIcon #fIcon
Ss0 f4 -1|-1|-9671572 #nodeStyle
Ss0 f2 expr out #txt
Ss0 f2 600 128 659 128 #arcP
Ss0 f2 0 0.40810175008537836 0 0 #arcLabel
Ss0 f8 expr out #txt
Ss0 f8 109 128 168 128 #arcP
Ss0 f8 0 0.7918110133096279 0 0 #arcLabel
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
Ss0 f3 328 106 112 44 -42 -16 #rect
Ss0 f3 @|StepIcon #fIcon
Ss0 f3 -1|-1|-9671572 #nodeStyle
Ss0 f9 expr out #txt
Ss0 f9 440 128 488 128 #arcP
Ss0 f5 type ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData #txt
Ss0 f5 211 19 26 26 0 12 #rect
Ss0 f5 @|RichDialogProcessEndIcon #fIcon
Ss0 f18 expr out #txt
Ss0 f18 109 32 211 32 #arcP
Ss0 f18 0 0.4222729644939437 0 0 #arcLabel
Ss0 f6 expr out #txt
Ss0 f6 280 128 328 128 #arcP
>Proto Ss0 .type ch.ivyteam.wf.admin.StatisticAverage.StatisticAverageData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f4 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f7 mainOut f8 tail #connect
Ss0 f8 head f10 mainIn #connect
Ss0 f3 mainOut f9 tail #connect
Ss0 f9 head f4 mainIn #connect
Ss0 f0 mainOut f18 tail #connect
Ss0 f18 head f5 mainIn #connect
Ss0 f10 mainOut f6 tail #connect
Ss0 f6 head f3 mainIn #connect
