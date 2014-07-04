[Ivy]
[>Created: Fri Jul 04 10:50:21 CEST 2014]
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
Cs0 @Alternative f20 '' #zField
Cs0 @GridStep f21 '' #zField
Cs0 @GridStep f23 '' #zField
Cs0 @PushWFArc f27 '' #zField
Cs0 @RichDialogMethodStart f2 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @GridStep f7 '' #zField
Cs0 @RichDialogProcessEnd f11 '' #zField
Cs0 @PushWFArc f12 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @RichDialogProcessStart f4 '' #zField
Cs0 @GridStep f14 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @PushWFArc f16 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @PushWFArc f3 '' #zField
Cs0 @PushWFArc f6 '' #zField
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
Cs0 f1 499 51 26 26 0 12 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f1 -1|-1|-9671572 #nodeStyle
Cs0 f20 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>only my cases?</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f20 144 208 32 32 -41 -32 #rect
Cs0 f20 @|AlternativeIcon #fIcon
Cs0 f20 -1|-1|-9671572 #nodeStyle
Cs0 f21 actionDecl 'ch.ivyteam.wf.history.CaseList.CaseListData out;
' #txt
Cs0 f21 actionTable 'out=in;
' #txt
Cs0 f21 actionCode 'if(ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW)
	&& ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL))
{
	out.caption = ivy.cms.co("/labels/admin/caseAdmin/permissionWorkflowAdmin");
	in.cases.setCaseAdminMode("permissionWorkflowAdmin");
}
else if(ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL))	
{
	out.caption = ivy.cms.co("/labels/admin/caseAdmin/permissionProcessOwner");
	in.cases.setCaseAdminMode("permissionProcessOwner");
}
else 
{ 
	out.caption = ivy.cms.co("/labels/admin/caseAdmin/permissionInvolvedCases");
	in.cases.setCaseAdminMode("permissionInvolvedCases");
}
' #txt
Cs0 f21 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>caption admin 
permission</name>
        <nameStyle>25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f21 232 202 112 44 -40 -16 #rect
Cs0 f21 @|StepIcon #fIcon
Cs0 f21 -1|-1|-9671572 #nodeStyle
Cs0 f23 actionDecl 'ch.ivyteam.wf.history.CaseList.CaseListData out;
' #txt
Cs0 f23 actionTable 'out=in;
' #txt
Cs0 f23 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;

ch.ivyteam.ivy.request.impl.HttpProcessRequest r = ivy.request as ch.ivyteam.ivy.request.impl.HttpProcessRequest;
r.getHttpServletRequest().getSession().setAttribute("ch.ivy.wfui.returnUrl",ivy.html.startref("13EE5C9EAAA819C8/DefaultTaskListPage.ivp"));

out.statFilter = "";
out.catFilter = "";
out.procFilter = "";

out.states = [CaseState.RUNNING.toString(),CaseState.DONE.toString(), CaseState.DESTROYED.toString(), CaseState.ZOMBIE.toString()];

out.header = in.caseListMode == "my_cases" ? ivy.cms.co("/navLabels/caseHistory") : ivy.cms.co("/navLabels/caseAdmin");' #txt
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
Cs0 f27 expr in #txt
Cs0 f27 176 224 232 224 #arcP
Cs0 f27 0 0.22440092079002907 0 0 #arcLabel
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
	categoriesGroups = ivy.session.findStartedCaseCategories(cpfilter,CaseProperty.PROCESS_CATEGORY_CODE,OrderDirection.ASCENDING);
}
else if(hasReadAllCasesPermission)
{
	categoriesGroups = ivy.wf.findCaseCategories(cpfilter,CaseProperty.PROCESS_CATEGORY_CODE, OrderDirection.ASCENDING);
}
else
{
	categoriesGroups = ivy.session.findInvolvedCasesCategories(cpfilter,CaseProperty.PROCESS_CATEGORY_CODE,OrderDirection.ASCENDING);
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
if(in.statFilter!="")
{
	cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.valueOf(in.statFilter).ordinal());
}

in.cases.setCaseFilter(cpfilter);' #txt
Cs0 f7 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set filter</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f7 328 42 112 44 -21 -8 #rect
Cs0 f7 @|StepIcon #fIcon
Cs0 f7 -1|-1|-9671572 #nodeStyle
Cs0 f11 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f11 403 211 26 26 0 12 #rect
Cs0 f11 @|RichDialogProcessEndIcon #fIcon
Cs0 f11 -1|-1|-9671572 #nodeStyle
Cs0 f12 expr in #txt
Cs0 f12 outCond in.caseListMode=="my_cases" #txt
Cs0 f12 160 240 416 237 #arcP
Cs0 f12 1 160 288 #addKink
Cs0 f12 2 416 288 #addKink
Cs0 f12 2 0.8368950099673428 0 0 #arcLabel
Cs0 f10 expr out #txt
Cs0 f10 344 224 403 224 #arcP
Cs0 f10 0 0.6385795599612007 0 0 #arcLabel
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
Cs0 f16 expr out #txt
Cs0 f16 109 224 144 224 #arcP
Cs0 f8 expr out #txt
Cs0 f8 280 160 384 86 #arcP
Cs0 f8 1 384 160 #addKink
Cs0 f8 0 0.7961137295123933 0 0 #arcLabel
Cs0 f3 expr out #txt
Cs0 f3 280 64 328 64 #arcP
Cs0 f6 expr out #txt
Cs0 f6 440 64 499 64 #arcP
>Proto Cs0 .type ch.ivyteam.wf.history.CaseList.CaseListData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f27 head f21 mainIn #connect
Cs0 f0 mainOut f5 tail #connect
Cs0 f5 head f23 mainIn #connect
Cs0 f20 out f12 tail #connect
Cs0 f12 head f11 mainIn #connect
Cs0 f20 out f27 tail #connect
Cs0 f21 mainOut f10 tail #connect
Cs0 f10 head f11 mainIn #connect
Cs0 f4 mainOut f15 tail #connect
Cs0 f15 head f14 mainIn #connect
Cs0 f2 mainOut f16 tail #connect
Cs0 f16 head f20 in #connect
Cs0 f14 mainOut f8 tail #connect
Cs0 f8 head f7 mainIn #connect
Cs0 f23 mainOut f3 tail #connect
Cs0 f3 head f7 mainIn #connect
Cs0 f7 mainOut f6 tail #connect
Cs0 f6 head f1 mainIn #connect
