[Ivy]
[>Created: Thu Jul 31 15:07:44 CEST 2014]
13F1D8A32C686BDF 3.17 #module
>Proto >Proto Collection #zClass
Cs0 CaseListProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @GridStep f23 '' #zField
Cs0 @RichDialogMethodStart f2 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @GridStep f7 '' #zField
Cs0 @RichDialogProcessEnd f11 '' #zField
Cs0 @RichDialogProcessStart f4 '' #zField
Cs0 @GridStep f14 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @PushWFArc f6 '' #zField
Cs0 @GridStep f9 '' #zField
Cs0 @PushWFArc f13 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @PushWFArc f22 '' #zField
Cs0 @PushWFArc f3 '' #zField
>Proto Cs0 Cs0 CaseListProcess #zField
Cs0 f0 guid 13F1D8A32D5EA95D #txt
Cs0 f0 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f0 method start(String) #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String caseListMode> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.caseListMode=param.caseListMode;
' #txt
Cs0 f0 inActionCode out.cases.setCaseMode(param.caseListMode); #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -32 15 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f0 -1|-1|-9671572 #nodeStyle
Cs0 f1 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f1 723 51 26 26 0 12 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f1 -1|-1|-9671572 #nodeStyle
Cs0 f23 actionDecl 'ch.ivyteam.wf.history.CaseList.CaseListData out;
' #txt
Cs0 f23 actionTable 'out=in;
' #txt
Cs0 f23 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;

ch.ivyteam.ivy.request.impl.HttpProcessRequest r = ivy.request as ch.ivyteam.ivy.request.impl.HttpProcessRequest;
r.getHttpServletRequest().getSession().setAttribute("ch.ivy.wfui.returnUrl",ivy.html.startref("13EE5C9EAAA819C8/DefaultTaskListPage.ivp"));

out.statFilter = null;
out.catFilter = "";
out.procFilter = "";

out.states = CaseState.values();

out.header = in.caseListMode == "my_cases" ? ivy.cms.co("/navLabels/caseHistory") : ivy.cms.co("/navLabels/caseAdmin");

out.caseUserMode = "startedCases";' #txt
Cs0 f23 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filter defaults</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f23 168 42 112 44 -35 -8 #rect
Cs0 f23 @|StepIcon #fIcon
Cs0 f23 -1|-1|-9671572 #nodeStyle
Cs0 f2 guid 13F75D933E4D0972 #txt
Cs0 f2 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f2 method update() #txt
Cs0 f2 disableUIEvents false #txt
Cs0 f2 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f2 outParameterDecl '<> result;
' #txt
Cs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Cs0 f2 83 211 26 26 -23 12 #rect
Cs0 f2 @|RichDialogMethodStartIcon #fIcon
Cs0 f2 -1|-1|-9671572 #nodeStyle
Cs0 f5 expr out #txt
Cs0 f5 109 64 168 64 #arcP
Cs0 f7 actionDecl 'ch.ivyteam.wf.history.CaseList.CaseListData out;
' #txt
Cs0 f7 actionTable 'out=in;
' #txt
Cs0 f7 actionCode 'import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IGroup;

Boolean hasReadAllCasesPermission = ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL);
IPropertyFilter cpfilter = ivy.wf.createCasePropertyFilter(CaseProperty.STATE, RelationalOperator.UNEQUAL, CaseState.CREATED.intValue());
List<IGroup> categoriesGroups;
if(in.caseListMode == "my_cases")
{
	if(in.caseUserMode.equals("involvedCases"))
	{
		categoriesGroups = ivy.session.findInvolvedCasesCategories(cpfilter,CaseProperty.PROCESS_CATEGORY_CODE,OrderDirection.ASCENDING);
	}
	else
	{
		categoriesGroups = ivy.session.findStartedCaseCategories(cpfilter,CaseProperty.PROCESS_CATEGORY_CODE,OrderDirection.ASCENDING);
	}
}
else
{
	categoriesGroups = ivy.wf.findCaseCategories(cpfilter,CaseProperty.PROCESS_CATEGORY_CODE, OrderDirection.ASCENDING);
}

out.categories.clear();
out.processesList.clear();
for(IGroup group : categoriesGroups)
{
	ICase case = group.getFirstObjectInGroup() as ICase;
	if(case.getProcessCategoryCode() != "")
	{
		out.categories.add(case.getProcessCategoryCode());
	}
	if(case.getProcessCode() != "")
	{
		out.processesList.add(case.getProcessCode());
	}
}

if(in.catFilter!="")
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CATEGORY_CODE,RelationalOperator.EQUAL,in.catFilter);	
}
if(in.procFilter!="")
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CODE,RelationalOperator.EQUAL,in.procFilter);	
}
if(in.#statFilter != null)
{
	cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,in.statFilter);
}

in.cases.setCaseFilter(cpfilter);' #txt
Cs0 f7 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set filter</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f7 552 42 112 44 -21 -8 #rect
Cs0 f7 @|StepIcon #fIcon
Cs0 f7 -1|-1|-9671572 #nodeStyle
Cs0 f11 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f11 211 211 26 26 0 12 #rect
Cs0 f11 @|RichDialogProcessEndIcon #fIcon
Cs0 f11 -1|-1|-9671572 #nodeStyle
Cs0 f4 guid 14638C705689C0BF #txt
Cs0 f4 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f4 actionDecl 'ch.ivyteam.wf.history.CaseList.CaseListData out;
' #txt
Cs0 f4 actionTable 'out=in;
' #txt
Cs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setFilter</name>
    </language>
</elementInfo>
' #txt
Cs0 f4 83 147 26 26 -22 12 #rect
Cs0 f4 @|RichDialogProcessStartIcon #fIcon
Cs0 f4 -1|-1|-9671572 #nodeStyle
Cs0 f14 actionDecl 'ch.ivyteam.wf.history.CaseList.CaseListData out;
' #txt
Cs0 f14 actionTable 'out=in;
' #txt
Cs0 f14 actionCode in.cases.setHasFilter(true); #txt
Cs0 f14 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is filter set</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f14 168 138 112 44 -28 -8 #rect
Cs0 f14 @|StepIcon #fIcon
Cs0 f14 -1|-1|-9671572 #nodeStyle
Cs0 f15 expr out #txt
Cs0 f15 109 160 168 160 #arcP
Cs0 f6 expr out #txt
Cs0 f6 664 64 723 64 #arcP
Cs0 f9 actionDecl 'ch.ivyteam.wf.history.CaseList.CaseListData out;
' #txt
Cs0 f9 actionTable 'out=in;
' #txt
Cs0 f9 actionCode in.cases.setCaseUserMode(in.caseUserMode); #txt
Cs0 f9 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user mode (started/involved)</name>
        <nameStyle>28,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f9 336 42 160 44 -77 -8 #rect
Cs0 f9 @|StepIcon #fIcon
Cs0 f9 -1|-1|-9671572 #nodeStyle
Cs0 f13 expr out #txt
Cs0 f13 280 160 416 86 #arcP
Cs0 f13 1 416 160 #addKink
Cs0 f13 0 0.6996301112426799 0 0 #arcLabel
Cs0 f8 expr out #txt
Cs0 f8 496 64 552 64 #arcP
Cs0 f22 expr out #txt
Cs0 f22 280 64 336 64 #arcP
Cs0 f3 expr out #txt
Cs0 f3 109 224 211 224 #arcP
>Proto Cs0 .type ch.ivyteam.wf.history.CaseList.CaseListData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f5 tail #connect
Cs0 f5 head f23 mainIn #connect
Cs0 f4 mainOut f15 tail #connect
Cs0 f15 head f14 mainIn #connect
Cs0 f7 mainOut f6 tail #connect
Cs0 f6 head f1 mainIn #connect
Cs0 f14 mainOut f13 tail #connect
Cs0 f13 head f9 mainIn #connect
Cs0 f9 mainOut f8 tail #connect
Cs0 f8 head f7 mainIn #connect
Cs0 f23 mainOut f22 tail #connect
Cs0 f22 head f9 mainIn #connect
Cs0 f2 mainOut f3 tail #connect
Cs0 f3 head f11 mainIn #connect
