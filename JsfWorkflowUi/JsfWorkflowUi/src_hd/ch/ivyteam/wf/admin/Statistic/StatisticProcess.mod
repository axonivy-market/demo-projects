[Ivy]
144631CE64C7434D 7.5.0 #module
>Proto >Proto Collection #zClass
Ss0 StatisticProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @UdInit f0 '' #zField
Ss0 @UdProcessEnd f1 '' #zField
Ss0 @UdMethod f6 '' #zField
Ss0 @UdEvent f3 '' #zField
Ss0 @UdProcessEnd f4 '' #zField
Ss0 @GridStep f8 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @GridStep f10 '' #zField
Ss0 @PushWFArc f11 '' #zField
Ss0 @GridStep f12 '' #zField
Ss0 @PushWFArc f16 '' #zField
Ss0 @GridStep f5 '' #zField
Ss0 @PushWFArc f14 '' #zField
Ss0 @GridStep f15 '' #zField
Ss0 @PushWFArc f17 '' #zField
Ss0 @PushWFArc f13 '' #zField
Ss0 @UdProcessEnd f18 '' #zField
Ss0 @PushWFArc f19 '' #zField
>Proto Ss0 Ss0 StatisticProcess #zField
Ss0 f0 guid 144631CE6605F2F4 #txt
Ss0 f0 method start() #txt
Ss0 f0 inParameterDecl '<> param;' #txt
Ss0 f0 outParameterDecl '<> result;' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 51 26 26 -16 13 #rect
Ss0 f0 @|UdInitIcon #fIcon
Ss0 f0 -1|-1|-9671572 #nodeStyle
Ss0 f1 339 51 26 26 0 13 #rect
Ss0 f1 @|UdProcessEndIcon #fIcon
Ss0 f1 -1|-1|-9671572 #nodeStyle
Ss0 f6 guid 14463265CF5F1424 #txt
Ss0 f6 method update() #txt
Ss0 f6 inParameterDecl '<> param;' #txt
Ss0 f6 outParameterDecl '<> result;' #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ss0 f6 83 147 26 26 -23 13 #rect
Ss0 f6 @|UdMethodIcon #fIcon
Ss0 f6 -1|-1|-9671572 #nodeStyle
Ss0 f3 guid 1446330963F48459 #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setFilter</name>
    </language>
</elementInfo>
' #txt
Ss0 f3 83 211 26 26 -22 13 #rect
Ss0 f3 @|UdEventIcon #fIcon
Ss0 f3 -1|-1|-9671572 #nodeStyle
Ss0 f4 211 211 26 26 0 13 #rect
Ss0 f4 @|UdProcessEndIcon #fIcon
Ss0 f4 -1|-1|-9671572 #nodeStyle
Ss0 f8 actionTable 'out=in;
' #txt
Ss0 f8 actionCode 'Date currentDate = new Date() as Date;
Duration lastMonth = new Duration(60 * 60 * 24 * 30);

in.catFilter = "all";
in.dateToFilter = currentDate;
in.dateFromFilter = currentDate.minus(lastMonth);
in.dateNow = currentDate;' #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set filter defaults</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 168 42 112 44 -45 -8 #rect
Ss0 f8 @|StepIcon #fIcon
Ss0 f8 -1|-1|-9671572 #nodeStyle
Ss0 f9 expr out #txt
Ss0 f9 109 64 168 64 #arcP
Ss0 f2 expr out #txt
Ss0 f2 280 64 339 64 #arcP
Ss0 f10 actionTable 'out=in;
' #txt
Ss0 f10 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.query.CaseQuery;

CaseQuery caseQuery = CaseQuery.create();
Duration endOfDay = new Duration(60 * 60 * 24);

caseQuery.where().state().isEqual(CaseState.DONE);
if(in.catFilter != "all")
{
	caseQuery.where().category().isEqual(in.catFilter);
}
caseQuery.where().endTimestamp().isGreaterOrEqualThan(in.dateFromFilter).where().endTimestamp().isLowerOrEqualThan(in.dateToFilter + endOfDay).
aggregate().countRows().minBusinessRuntime().maxBusinessRuntime().avgBusinessRuntime().groupBy().category();

in.cases = ivy.wf.getCaseQueryExecutor().getRecordset(caseQuery);' #txt
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get cases</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f10 168 138 112 44 -27 -8 #rect
Ss0 f10 @|StepIcon #fIcon
Ss0 f10 -1|-1|-9671572 #nodeStyle
Ss0 f11 expr out #txt
Ss0 f11 109 160 168 160 #arcP
Ss0 f11 0 0.5122111850472089 0 0 #arcLabel
Ss0 f12 actionTable 'out=in;
' #txt
Ss0 f12 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.query.CaseQuery;

if(in.catFilter == "all")
{
	in.categories.clear();
	in.categories.addColumn("categoryCode",[]).addColumn("displayName",[]);
	
	for(int count = 0 ; in.cases.size() > count ; count++)
	{
		Boolean existsCategory = false;
		for(String category : in.categories.getColumn("categoryCode"))
		{
			if(category == in.cases.getAt(count).getField("CATEGORY").toString())
			{
				existsCategory = true;
			}
		}
		if(!existsCategory)
		{
			in.categories.add([in.cases.getAt(count).getField("CATEGORY").toString(), in.cases.getAt(count).getField("CATEGORY").toString()]);
		}
	}
}' #txt
Ss0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cat filter</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f12 648 138 112 44 -21 -8 #rect
Ss0 f12 @|StepIcon #fIcon
Ss0 f12 -1|-1|-9671572 #nodeStyle
Ss0 f16 expr out #txt
Ss0 f16 109 224 211 224 #arcP
Ss0 f5 actionTable 'out=in;
' #txt
Ss0 f5 actionCode 'List<String> forColumn = ["MINBUSINESSRUNTIME", "MAXBUSINESSRUNTIME", "AVGBUSINESSRUNTIME"];
List<String> newColumn = ["FormatedMin", "FormatedMax", "FormatedAvg"];


for(int forCount = 0; forCount < forColumn.size(); forCount++)
{
	List<Duration> formated = null;
	
	for(int count = 0; count < in.cases.size(); count++)
	{
		formated.add(in.cases.getColumn(forColumn.get(forCount)).get(count).toDuration());
	}
	in.cases.addColumn(newColumn.get(forCount),formated);
}' #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>format seconds</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 328 138 112 44 -43 -8 #rect
Ss0 f5 @|StepIcon #fIcon
Ss0 f5 -1|-1|-9671572 #nodeStyle
Ss0 f14 expr out #txt
Ss0 f14 280 160 328 160 #arcP
Ss0 f14 0 0.5897946004898639 0 0 #arcLabel
Ss0 f15 actionTable 'out=in;
' #txt
Ss0 f15 actionCode 'List<String> forColumn = ["FormatedMin", "FormatedMax", "FormatedAvg"];
List<String> newColumn = ["FormatedOutputMin", "FormatedOutputMax", "FormatedOutputAvg"];

for(int forCount = 0; forCount < forColumn.size(); forCount++)
{
	List<String> outputTime = null;
	for(int count = 0; count < in.cases.size(); count++)
	{
		String time = "";
		String days = in.cases.getColumn(forColumn.get(forCount)).get(count).toDuration().getDays().toString() + "d";
		String hours = in.cases.getColumn(forColumn.get(forCount)).get(count).toDuration().getHours().toString() + "h";
		String minutes = in.cases.getColumn(forColumn.get(forCount)).get(count).toDuration().getMinutes().toString() + "min";
		String seconds = in.cases.getColumn(forColumn.get(forCount)).get(count).toDuration().getSeconds().toString() + "s";
		
		if(days != "0d")
		{
			time = days + " " + hours + " " + minutes + " " + seconds;
		}
		else if(hours != "0h")
		{
			time = hours + " " + minutes + " " + seconds;
		}
		else if(minutes != "0min")
		{
			time = minutes + " " + seconds;
		}
		else
		{
			time = seconds;
		}
		outputTime.add(time);
	}
	in.cases.addColumn(newColumn.get(forCount), outputTime);
}' #txt
Ss0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>output time</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f15 488 138 112 44 -30 -8 #rect
Ss0 f15 @|StepIcon #fIcon
Ss0 f15 -1|-1|-9671572 #nodeStyle
Ss0 f17 expr out #txt
Ss0 f17 440 160 488 160 #arcP
Ss0 f13 expr out #txt
Ss0 f13 600 160 648 160 #arcP
Ss0 f18 819 147 26 26 0 12 #rect
Ss0 f18 @|UdProcessEndIcon #fIcon
Ss0 f18 -1|-1|-9671572 #nodeStyle
Ss0 f19 expr out #txt
Ss0 f19 760 160 819 160 #arcP
Ss0 f19 0 0.3308403178186537 0 0 #arcLabel
>Proto Ss0 .type ch.ivyteam.wf.admin.Statistic.StatisticData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f0 mainOut f9 tail #connect
Ss0 f9 head f8 mainIn #connect
Ss0 f8 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f6 mainOut f11 tail #connect
Ss0 f11 head f10 mainIn #connect
Ss0 f3 mainOut f16 tail #connect
Ss0 f16 head f4 mainIn #connect
Ss0 f10 mainOut f14 tail #connect
Ss0 f14 head f5 mainIn #connect
Ss0 f5 mainOut f17 tail #connect
Ss0 f17 head f15 mainIn #connect
Ss0 f15 mainOut f13 tail #connect
Ss0 f13 head f12 mainIn #connect
Ss0 f12 mainOut f19 tail #connect
Ss0 f19 head f18 mainIn #connect
