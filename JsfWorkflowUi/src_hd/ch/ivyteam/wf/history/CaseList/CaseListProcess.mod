[Ivy]
[>Created: Tue Jul 23 08:14:26 CEST 2013]
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
Cs0 @RichDialogProcessStart f19 '' #zField
Cs0 @GridStep f11 '' #zField
Cs0 @Alternative f20 '' #zField
Cs0 @GridStep f21 '' #zField
Cs0 @GridStep f23 '' #zField
Cs0 @GridStep f24 '' #zField
Cs0 @PushWFArc f26 '' #zField
Cs0 @PushWFArc f27 '' #zField
Cs0 @PushWFArc f28 '' #zField
Cs0 @PushWFArc f29 '' #zField
Cs0 @GridStep f30 '' #zField
Cs0 @PushWFArc f32 '' #zField
Cs0 @PushWFArc f4 '' #zField
Cs0 @PushWFArc f33 '' #zField
Cs0 @PushWFArc f45 '' #zField
Cs0 @RichDialogMethodStart f2 '' #zField
Cs0 @PushWFArc f5 '' #zField
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
Cs0 f1 118 374 20 20 13 0 #rect
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
Cs0 f16 374 54 20 20 13 0 #rect
Cs0 f16 @|RichDialogProcessStartIcon #fIcon
Cs0 f19 guid 13F1DB6B56A9A226 #txt
Cs0 f19 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f19 actionDecl 'ch.ivyteam.wf.history.CaseList.CaseListData out;
' #txt
Cs0 f19 actionTable 'out=in;
' #txt
Cs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateCombos</name>
    </language>
</elementInfo>
' #txt
Cs0 f19 470 54 20 20 13 0 #rect
Cs0 f19 @|RichDialogProcessStartIcon #fIcon
Cs0 f11 actionDecl 'ch.ivyteam.wf.history.CaseList.CaseListData out;
' #txt
Cs0 f11 actionTable 'out=in;
' #txt
Cs0 f11 actionCode 'import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;

IPropertyFilter cpfilter = ivy.wf.createCasePropertyFilter(CaseProperty.CREATOR_USER_NAME, RelationalOperator.EQUAL, ivy.session.getSessionUserName());
if(in.catFilter != "")
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CATEGORY_CODE,RelationalOperator.EQUAL,in.catFilter);	
}
if(in.procFilter != "")
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CODE,RelationalOperator.EQUAL,in.procFilter);	
}
if(in.statFilter != "")
{
	cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.valueOf(in.statFilter).ordinal());
}

IQueryResult queryResult = ivy.session.findStartedCases(cpfilter,PropertyOrder.create(CaseProperty.ID, OrderDirection.DESCENDING),
	0, -1 ,true);

List<ICase> cases = queryResult.getResultList();
out.cases.clear();
for (ICase case : cases)
{
	out.cases.add(case);
}

out.processes.clear();
out.processesList.clear();
for(ICase case: queryResult.getResultList())
{
	if(!out.categories.contains(case.getProcessCategoryCode()))
	{
		out.categories.add(case.getProcessCategoryCode());
	}	
	List pCodes=out.processes.getColumn("Code");
	if(!pCodes.contains(case.getProcessCode()))
	{
		out.processes.add([case.getProcessCode(),case.getProcessCategoryCode()]);
		out.processesList.add(case.getProcessCode());
	}	
}' #txt
Cs0 f11 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect mycases</name>
        <nameStyle>15
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f11 206 244 36 24 -83 15 #rect
Cs0 f11 @|StepIcon #fIcon
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
Cs0 f20 242 178 28 28 14 0 #rect
Cs0 f20 @|AlternativeIcon #fIcon
Cs0 f21 actionDecl 'ch.ivyteam.wf.history.CaseList.CaseListData out;
' #txt
Cs0 f21 actionTable 'out=in;
' #txt
Cs0 f21 actionCode 'import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;

IPropertyFilter cpfilter = ivy.wf.createCasePropertyFilter(CaseProperty.STATE, RelationalOperator.UNEQUAL, CaseState.CREATED.intValue());

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

out.processes.clear();
out.processesList.clear();

if(ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW)
	&& ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL))
{ // WorkflowAdmin can administrate all cases	

	out.caption = ivy.cms.co("/labels/admin/caseAdmin/permissionWorkflowAdmin");
	
	IQueryResult queryResult = ivy.wf.findCases(
		cpfilter,
		PropertyOrder.create(CaseProperty.ID, OrderDirection.DESCENDING),
		0, -1 ,true);

	List<ICase> cases = queryResult.getResultList();
	out.cases.clear();
	for (ICase case : cases)
	{
		out.cases.add(case);
	}
	
	//init categories and processes filter combos
	for(ICase case: queryResult.getResultList())
	{
		if(!out.categories.contains(case.getProcessCategoryCode()))
		{
			out.categories.add(case.getProcessCategoryCode());
		}	
		List pCodes=out.processes.getColumn("Code");
		if(!pCodes.contains(case.getProcessCode()))
		{
			out.processes.add([case.getProcessCode(),case.getProcessCategoryCode()]);
			out.processesList.add(case.getProcessCode());
		}	
	}
}
else if(ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL))	
{
	out.caption = ivy.cms.co("/labels/admin/caseAdmin/permissionProcessOwner");
	
	// see processowner cases (processowner = role or user name defined in property case>business>user
	IQueryResult queryResult = ivy.wf.findCases(
		cpfilter,
		PropertyOrder.create(CaseProperty.ID, OrderDirection.DESCENDING),
		0, -1 ,true);
		
	// my roles
	List<IRole> roles = ivy.session.getSecurityContext().getRoles();
	List<String> userAndRoles = new List<String>(); 
	for(int r=0; r<roles.size(); r++)
	{
		userAndRoles.add(roles.get(r).getName());	
	}
	userAndRoles.add(ivy.session.getSessionUserName());
	
	List<ICase> cases = new List<ICase>();
	for (int c=0; c<queryResult.getResultCount(); c++)
	{
		ICase case = queryResult.get(c) as ICase;
		// check process ownership
		String processOwner = case.getBusinessCreatorUser();
		for(int u=0; u<userAndRoles.size(); u++)
		{
			if(processOwner.contains(userAndRoles.get(u)))
			{
				cases.add(case);
				break;
			}
		}
		//init categories and processes filter combos
		if(!out.categories.contains(case.getProcessCategoryCode()))
		{
			out.categories.add(case.getProcessCategoryCode());
		}	
		List pCodes=out.processes.getColumn("Code");
		if(!pCodes.contains(case.getProcessCode()))
		{
			out.processes.add([case.getProcessCode(),case.getProcessCategoryCode()]);
			out.processesList.add(case.getProcessCode());
		}			
	}
	out.cases.clear();
	for (ICase case : cases)
	{
		out.cases.add(case);
	}
}
else 
{ 
	out.caption = ivy.cms.co("/labels/admin/caseAdmin/permissionInvolvedCases");
	
	IQueryResult queryResult = ivy.session.findInvolvedCases(
		cpfilter,
		PropertyOrder.create(CaseProperty.ID, OrderDirection.DESCENDING),
		0, -1 ,true);

	List<ICase> cases = queryResult.getResultList();
	out.cases.clear();
	for (ICase case : cases)
	{
		out.cases.add(case);
	}
	
	//init categories and processes filter combos
	for(ICase case: queryResult.getResultList())
	{
		if(!out.categories.contains(case.getProcessCategoryCode()))
		{
			out.categories.add(case.getProcessCategoryCode());
		}	
		List pCodes=out.processes.getColumn("Code");
		if(!pCodes.contains(case.getProcessCode()))
		{
			out.processes.add([case.getProcessCode(),case.getProcessCategoryCode()]);
			out.processesList.add(case.getProcessCode());
		}	
	}
}' #txt
Cs0 f21 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect involved cases
(all with admin permission)</name>
        <nameStyle>50
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f21 270 244 36 24 20 -2 #rect
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

out.processes.addColumn("Code",[""]).addColumn("Cat",[""]);
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
Cs0 f24 actionDecl 'ch.ivyteam.wf.history.CaseList.CaseListData out;
' #txt
Cs0 f24 actionTable 'out=in;
out.categories=in.categories.remove("");
out.paginator=in.cases.size() >= 50;
out.processesList=in.processesList.remove("");
' #txt
Cs0 f24 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f24 238 308 36 24 20 -2 #rect
Cs0 f24 @|StepIcon #fIcon
Cs0 f26 expr in #txt
Cs0 f26 outCond in.caseListMode=="my_cases" #txt
Cs0 f26 251 201 230 244 #arcP
Cs0 f27 expr in #txt
Cs0 f27 261 201 282 244 #arcP
Cs0 f28 expr out #txt
Cs0 f28 282 268 262 308 #arcP
Cs0 f29 expr out #txt
Cs0 f29 230 268 250 308 #arcP
Cs0 f30 actionDecl 'ch.ivyteam.wf.history.CaseList.CaseListData out;
' #txt
Cs0 f30 actionTable 'out=in;
' #txt
Cs0 f30 actionCode 'out.processesList.clear();
if(in.catFilter=="")
{
	for(int i=0; i<in.processes.size(); i++)
	{
		out.processesList.add(in.processes.getField(i,"Code").toString());
	}
}
else
{
	for(int i=0; i<in.processes.size(); i++)
	{
		if(in.processes.getField(i,"Cat")==in.catFilter)
		{
				out.processesList.add(in.processes.getField(i,"Code").toString());
		}	
	}
}
' #txt
Cs0 f30 type ch.ivyteam.wf.history.CaseList.CaseListData #txt
Cs0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update filterCombos</name>
        <nameStyle>19
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f30 462 116 36 24 20 -2 #rect
Cs0 f30 @|StepIcon #fIcon
Cs0 f32 expr out #txt
Cs0 f32 480 74 480 116 #arcP
Cs0 f32 0 0.4147652813405402 0 0 #arcLabel
Cs0 f4 expr out #txt
Cs0 f4 256 332 138 384 #arcP
Cs0 f4 1 256 384 #addKink
Cs0 f4 1 0.18806928460277236 0 0 #arcLabel
Cs0 f33 expr out #txt
Cs0 f33 384 74 270 192 #arcP
Cs0 f33 1 384 192 #addKink
Cs0 f33 1 0.3697662911536614 0 0 #arcLabel
Cs0 f45 expr out #txt
Cs0 f45 480 140 138 384 #arcP
Cs0 f45 1 480 384 #addKink
Cs0 f45 1 0.349565663481856 0 0 #arcLabel
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
Cs0 f2 246 54 20 20 13 0 #rect
Cs0 f2 @|RichDialogMethodStartIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 128 74 128 116 #arcP
Cs0 f3 expr out #txt
Cs0 f3 256 74 256 178 #arcP
Cs0 f6 expr out #txt
Cs0 f6 128 140 128 374 #arcP
>Proto Cs0 .type ch.ivyteam.wf.history.CaseList.CaseListData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f20 out f26 tail #connect
Cs0 f26 head f11 mainIn #connect
Cs0 f20 out f27 tail #connect
Cs0 f27 head f21 mainIn #connect
Cs0 f21 mainOut f28 tail #connect
Cs0 f28 head f24 mainIn #connect
Cs0 f11 mainOut f29 tail #connect
Cs0 f29 head f24 mainIn #connect
Cs0 f19 mainOut f32 tail #connect
Cs0 f32 head f30 mainIn #connect
Cs0 f24 mainOut f4 tail #connect
Cs0 f4 head f1 mainIn #connect
Cs0 f16 mainOut f33 tail #connect
Cs0 f33 head f20 in #connect
Cs0 f30 mainOut f45 tail #connect
Cs0 f45 head f1 mainIn #connect
Cs0 f0 mainOut f5 tail #connect
Cs0 f5 head f23 mainIn #connect
Cs0 f2 mainOut f3 tail #connect
Cs0 f3 head f20 in #connect
Cs0 f23 mainOut f6 tail #connect
Cs0 f6 head f1 mainIn #connect
