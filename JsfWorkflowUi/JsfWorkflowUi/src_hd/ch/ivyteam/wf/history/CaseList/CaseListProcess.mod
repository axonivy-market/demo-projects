[Ivy]
[>Created: Thu Jul 25 11:22:33 CEST 2013]
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
Cs0 @RichDialogProcessStart f16 '' #zField
Cs0 @Alternative f20 '' #zField
Cs0 @GridStep f21 '' #zField
Cs0 @GridStep f23 '' #zField
Cs0 @PushWFArc f27 '' #zField
Cs0 @RichDialogMethodStart f2 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @PushWFArc f6 '' #zField
Cs0 @GridStep f7 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @PushWFArc f3 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @PushWFArc f13 '' #zField
Cs0 @PushWFArc f4 '' #zField
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
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 118 54 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f1 118 246 20 20 13 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f16 guid 13F1DB65D2D3293B #txt
Cs0 f16 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f16 actionDecl 'ch.ivyteam.wf.history.CaseList.CaseListData out;
' #txt
Cs0 f16 actionTable 'out=in;
' #txt
Cs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setFilter</name>
    </language>
</elementInfo>
' #txt
Cs0 f16 406 54 20 20 13 0 #rect
Cs0 f16 @|RichDialogProcessStartIcon #fIcon
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
Cs0 f20 274 178 28 28 14 0 #rect
Cs0 f20 @|AlternativeIcon #fIcon
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
        <name>caption admin permission</name>
        <nameStyle>24
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f21 302 244 36 24 20 -2 #rect
Cs0 f21 @|StepIcon #fIcon
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

out.states = [CaseState.RUNNING.toString(),CaseState.DONE.toString(), CaseState.DESTROYED.toString(), CaseState.ZOMBIE.toString()];' #txt
Cs0 f23 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filter defaults</name>
        <nameStyle>15
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f23 110 116 36 24 20 -2 #rect
Cs0 f23 @|StepIcon #fIcon
Cs0 f27 expr in #txt
Cs0 f27 296 198 320 244 #arcP
Cs0 f27 1 320 216 #addKink
Cs0 f27 0 0.9635565726173791 0 0 #arcLabel
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
Cs0 f2 278 54 20 20 13 0 #rect
Cs0 f2 @|RichDialogMethodStartIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 128 74 128 116 #arcP
Cs0 f6 expr out #txt
Cs0 f6 128 140 128 246 #arcP
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
Cs0 f7 270 116 36 24 20 -2 #rect
Cs0 f7 @|StepIcon #fIcon
Cs0 f8 expr out #txt
Cs0 f8 288 74 288 116 #arcP
Cs0 f3 expr out #txt
Cs0 f3 288 140 288 178 #arcP
Cs0 f9 expr out #txt
Cs0 f9 416 74 306 128 #arcP
Cs0 f9 1 416 128 #addKink
Cs0 f9 1 0.3697662911536614 0 0 #arcLabel
Cs0 f13 expr out #txt
Cs0 f13 302 256 138 256 #arcP
Cs0 f13 0 0.46142549601003485 0 0 #arcLabel
Cs0 f4 expr in #txt
Cs0 f4 outCond in.caseListMode=="my_cases" #txt
Cs0 f4 288 206 138 256 #arcP
Cs0 f4 1 288 256 #addKink
Cs0 f4 0 0.8973108067258799 0 0 #arcLabel
>Proto Cs0 .type ch.ivyteam.wf.history.CaseList.CaseListData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f27 head f21 mainIn #connect
Cs0 f0 mainOut f5 tail #connect
Cs0 f5 head f23 mainIn #connect
Cs0 f23 mainOut f6 tail #connect
Cs0 f6 head f1 mainIn #connect
Cs0 f2 mainOut f8 tail #connect
Cs0 f8 head f7 mainIn #connect
Cs0 f7 mainOut f3 tail #connect
Cs0 f3 head f20 in #connect
Cs0 f16 mainOut f9 tail #connect
Cs0 f9 head f7 mainIn #connect
Cs0 f21 mainOut f13 tail #connect
Cs0 f13 head f1 mainIn #connect
Cs0 f20 out f4 tail #connect
Cs0 f4 head f1 mainIn #connect
Cs0 f20 out f27 tail #connect
