[Ivy]
[>Created: Fri Feb 15 10:10:35 CET 2013]
13CB4AE3268EF817 3.17 #module
>Proto >Proto Collection #zClass
Cs0 CasesListProcess Big #zClass
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
Cs0 @GridStep f3 '' #zField
Cs0 @GridStep f20 '' #zField
Cs0 @Alternative f5 '' #zField
Cs0 @RichDialogEnd f14 '' #zField
Cs0 @GridStep f4 '' #zField
Cs0 @GridStep f6 '' #zField
Cs0 @RichDialogProcessEnd f7 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @PushWFArc f22 '' #zField
Cs0 @PushWFArc f19 '' #zField
Cs0 @RichDialogMethodStart f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogProcessStart f15 '' #zField
Cs0 @PushWFArc f24 '' #zField
Cs0 @RichDialogProcessStart f13 '' #zField
Cs0 @PushWFArc f23 '' #zField
Cs0 @GridStep f12 '' #zField
Cs0 @PushWFArc f16 '' #zField
Cs0 @PushWFArc f17 '' #zField
>Proto Cs0 Cs0 CasesListProcess #zField
Cs0 f0 guid 13CB4AE327752965 #txt
Cs0 f0 type htmlwfui.CasesList.CasesListData #txt
Cs0 f0 method start(htmlwfui.Data) #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Data data> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init_Start1</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 150 54 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f3 actionDecl 'htmlwfui.CasesList.CasesListData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 actionCode 'import java.util.EnumSet;
import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.IWorkflowContext;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import javax.servlet.http.HttpServletRequest;

IPropertyFilter cpfilter = ivy.wf.createCasePropertyFilter(CaseProperty.CREATOR_USER_NAME, RelationalOperator.EQUAL, ivy.session.getSessionUserName());
if(in.data.temp.catFilter!=ivy.cms.co("/labels/all"))
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CATEGORY_CODE,RelationalOperator.EQUAL,in.data.temp.catFilter);	
}
if(in.data.temp.procFilter!=ivy.cms.co("/labels/all"))
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CODE,RelationalOperator.EQUAL,in.data.temp.procFilter);	
}
if(in.data.temp.statFilter!=ivy.cms.co("/labels/all"))
{
	if(in.data.temp.statFilter=="RUNNING")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.RUNNING.ordinal());
	}
	else if(in.data.temp.statFilter=="DONE")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.DONE.ordinal());
	}
		else if(in.data.temp.statFilter=="DESTROYED")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.DESTROYED.ordinal());
	}
		else if(in.data.temp.statFilter=="ZOMBIE")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.ZOMBIE.ordinal());
	}				
}

IQueryResult queryResult = ivy.session.findStartedCases(
	cpfilter,
	PropertyOrder.create(CaseProperty.ID, OrderDirection.DESCENDING),
	0, -1 ,true);

out.data.cases = queryResult.getResultList();

out.data.temp.processes.clear();
out.data.temp.processes.add([ivy.cms.co("/labels/all"),ivy.cms.co("/labels/all"),ivy.cms.co("/labels/all")]);

for(ICase case: queryResult.getResultList())
{
	if(!out.data.temp.categories.contains(case.getProcessCategoryCode()))
	{
		out.data.temp.categories.add(case.getProcessCategoryCode());
	}	
	List pCodes=out.data.temp.processes.getColumn("Code");
	if(!pCodes.contains(case.getProcessCode()))
	{
		out.data.temp.processes.add([case.getProcessCode(),case.getProcessName(),case.getProcessCategoryCode()]);
	}	
}
out.data.temp.processesCombo = out.data.temp.processes.clone();
' #txt
Cs0 f3 type htmlwfui.CasesList.CasesListData #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect mycases</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 86 164 36 24 -61 18 #rect
Cs0 f3 @|StepIcon #fIcon
Cs0 f20 actionDecl 'htmlwfui.CasesList.CasesListData out;
' #txt
Cs0 f20 actionTable 'out=in;
' #txt
Cs0 f20 actionCode 'if(in.data.temp.catFilter==ivy.cms.co("/labels/all"))
{
	out.data.temp.processesCombo=in.data.temp.processes.clone();
}	
else
{
	out.data.temp.processesCombo.clear();
	for(int i=0; i<in.data.temp.processes.size(); i++)
	{
		if(in.data.temp.processes.getField(i,"Cat")==in.data.temp.catFilter)
		{
				out.data.temp.processesCombo.add(in.data.temp.processes.getAt(i));
		}	
	}
}' #txt
Cs0 f20 type htmlwfui.CasesList.CasesListData #txt
Cs0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update filterCombos</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f20 398 100 36 24 20 -2 #rect
Cs0 f20 @|StepIcon #fIcon
Cs0 f5 type htmlwfui.CasesList.CasesListData #txt
Cs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>?</name>
        <nameStyle>1,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f5 146 114 28 28 16 -14 #rect
Cs0 f5 @|AlternativeIcon #fIcon
Cs0 f14 type htmlwfui.CasesList.CasesListData #txt
Cs0 f14 guid 13C3E40E403FEC77 #txt
Cs0 f14 566 150 20 20 13 0 #rect
Cs0 f14 @|RichDialogEndIcon #fIcon
Cs0 f4 actionDecl 'htmlwfui.CasesList.CasesListData out;
' #txt
Cs0 f4 actionTable 'out=in;
out.data.temp.description=IF(in.data.temp.caption == "my_cases", ivy.cms.co("/messages/txtMyCases"), ivy.cms.co("/messages/txtAdminCases"));
out.data.temp.processesList=in.data.temp.processesCombo.getColumn("Code");
out.data.temp.title=IF(in.data.temp.caption == "my_cases", ivy.cms.co("/navLabels/caseHistory"), ivy.cms.co("/navLabels/admin"));
out.data.temp.undertitle=IF(in.data.temp.caption == "my_cases", ivy.cms.co("/captions/captionMyCases"), ivy.cms.co("/captions/captionAdminCases"));
' #txt
Cs0 f4 type htmlwfui.CasesList.CasesListData #txt
Cs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Html text</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f4 142 212 36 24 20 -2 #rect
Cs0 f4 @|StepIcon #fIcon
Cs0 f6 actionDecl 'htmlwfui.CasesList.CasesListData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 actionCode 'import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.workflow.ICase;
import java.util.EnumSet;
import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.IWorkflowContext;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import javax.servlet.http.HttpServletRequest;

IPropertyFilter cpfilter = ivy.wf.createCasePropertyFilter(CaseProperty.STATE, RelationalOperator.UNEQUAL, CaseState.CREATED.intValue());

if(in.data.temp.catFilter!=ivy.cms.co("/labels/all"))
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CATEGORY_CODE,RelationalOperator.EQUAL,in.data.temp.catFilter);	
}
if(in.data.temp.procFilter!=ivy.cms.co("/labels/all"))
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CODE,RelationalOperator.EQUAL,in.data.temp.procFilter);	
}
if(in.data.temp.statFilter!=ivy.cms.co("/labels/all"))
{
	if(in.data.temp.statFilter=="RUNNING")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.RUNNING.ordinal());
	}
	else if(in.data.temp.statFilter=="DONE")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.DONE.ordinal());
	}
		else if(in.data.temp.statFilter=="DESTROYED")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.DESTROYED.ordinal());
	}
		else if(in.data.temp.statFilter=="ZOMBIE")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.ZOMBIE.ordinal());
	}				
}

out.data.temp.processes.clear();	
out.data.temp.processes.add([ivy.cms.co("/labels/all"),ivy.cms.co("/labels/all"),ivy.cms.co("/labels/all")]);

if(ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW)
	&& ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL))
{ // WorkflowAdmin can administrate all cases	

	out.data.temp.mode = ivy.cms.co("/labels/permissionWorkflowAdmin");
	
	IQueryResult queryResult = ivy.wf.findCases(
		cpfilter,
		PropertyOrder.create(CaseProperty.ID, OrderDirection.DESCENDING),
		0, -1 ,true);

	out.data.cases = queryResult.getResultList();
	
	//init categories and processes filter combos
	for(ICase case: queryResult.getResultList())
	{
		if(!out.data.temp.categories.contains(case.getProcessCategoryCode()))
		{
			out.data.temp.categories.add(case.getProcessCategoryCode());
		}	
		List pCodes=out.data.temp.processes.getColumn("Code");
		if(!pCodes.contains(case.getProcessCode()))
		{
			out.data.temp.processes.add([case.getProcessCode(),case.getProcessName(),case.getProcessCategoryCode()]);
		}	
	}
}
else if(ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL))	
{
	out.data.temp.mode = ivy.cms.co("/labels/permissionProcessOwner");
	
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
		if(!out.data.temp.categories.contains(case.getProcessCategoryCode()))
		{
			out.data.temp.categories.add(case.getProcessCategoryCode());
		}	
		List pCodes=out.data.temp.processes.getColumn("Code");
		if(!pCodes.contains(case.getProcessCode()))
		{
			out.data.temp.processes.add([case.getProcessCode(),case.getProcessName(),case.getProcessCategoryCode()]);
		}			
	}	
	out.data.cases = cases;
}
else 
{ 
	out.data.temp.mode = ivy.cms.co("/labels/permissionInvolvedCases");
	
	IQueryResult queryResult = ivy.session.findInvolvedCases(
		cpfilter,
		PropertyOrder.create(CaseProperty.ID, OrderDirection.DESCENDING),
		0, -1 ,true);

	out.data.cases = queryResult.getResultList();
	
	//init categories and processes filter combos
	for(ICase case: queryResult.getResultList())
	{
		if(!out.data.temp.categories.contains(case.getProcessCategoryCode()))
		{
			out.data.temp.categories.add(case.getProcessCategoryCode());
		}	
		List pCodes=out.data.temp.processes.getColumn("Code");
		if(!pCodes.contains(case.getProcessCode()))
		{
			out.data.temp.processes.add([case.getProcessCode(),case.getProcessName(),case.getProcessCategoryCode()]);
		}	
	}
}
out.data.temp.processesCombo = out.data.temp.processes.clone();


' #txt
Cs0 f6 type htmlwfui.CasesList.CasesListData #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect involved cases
(all with admin permission)
</name>
        <nameStyle>51,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 198 164 36 24 20 -2 #rect
Cs0 f6 @|StepIcon #fIcon
Cs0 f7 type htmlwfui.CasesList.CasesListData #txt
Cs0 f7 150 310 20 20 13 0 #rect
Cs0 f7 @|RichDialogProcessEndIcon #fIcon
Cs0 f8 expr in #txt
Cs0 f8 outCond in.data.temp.caption=="my_cases" #txt
Cs0 f8 152 134 118 164 #arcP
Cs0 f9 expr in #txt
Cs0 f9 168 134 202 164 #arcP
Cs0 f10 expr out #txt
Cs0 f10 202 188 174 212 #arcP
Cs0 f11 expr out #txt
Cs0 f11 118 188 146 212 #arcP
Cs0 f22 expr out #txt
Cs0 f22 416 124 170 320 #arcP
Cs0 f22 1 416 320 #addKink
Cs0 f22 1 0.1676804224959652 0 0 #arcLabel
Cs0 f19 expr out #txt
Cs0 f19 160 74 160 114 #arcP
Cs0 f1 guid 13CB4B2E58AEC31F #txt
Cs0 f1 type htmlwfui.CasesList.CasesListData #txt
Cs0 f1 method caseDetail(Number) #txt
Cs0 f1 disableUIEvents false #txt
Cs0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number idnx> param = methodEvent.getInputArguments();
' #txt
Cs0 f1 inParameterMapAction 'out.data.temp.n=param.idnx;
' #txt
Cs0 f1 outParameterDecl '<> result;
' #txt
Cs0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Method_Start1</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f1 566 54 20 20 13 0 #rect
Cs0 f1 @|RichDialogMethodStartIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 576 74 576 150 #arcP
Cs0 f15 guid 13CB4C3A1B11FB3D #txt
Cs0 f15 type htmlwfui.CasesList.CasesListData #txt
Cs0 f15 actionDecl 'htmlwfui.CasesList.CasesListData out;
' #txt
Cs0 f15 actionTable 'out=in;
' #txt
Cs0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateCombos</name>
    </language>
</elementInfo>
' #txt
Cs0 f15 406 54 20 20 13 0 #rect
Cs0 f15 @|RichDialogProcessStartIcon #fIcon
Cs0 f24 expr out #txt
Cs0 f24 416 74 416 100 #arcP
Cs0 f13 guid 13CB4C4296654C44 #txt
Cs0 f13 type htmlwfui.CasesList.CasesListData #txt
Cs0 f13 actionDecl 'htmlwfui.CasesList.CasesListData out;
' #txt
Cs0 f13 actionTable 'out=in;
' #txt
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setFilter</name>
    </language>
</elementInfo>
' #txt
Cs0 f13 278 54 20 20 13 0 #rect
Cs0 f13 @|RichDialogProcessStartIcon #fIcon
Cs0 f23 expr out #txt
Cs0 f23 288 74 174 128 #arcP
Cs0 f23 1 288 128 #addKink
Cs0 f23 1 0.24878695536118955 0 0 #arcLabel
Cs0 f12 actionDecl 'htmlwfui.CasesList.CasesListData out;
' #txt
Cs0 f12 actionTable 'out=in;
' #txt
Cs0 f12 actionCode 'import ch.ivyteam.ivy.security.ISecurityMember;
import htmlwfui.Cases;
import java.util.EnumSet;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.ICase;
import javax.servlet.http.HttpServletRequest;

List<ICase> cases = in.data.cases;
out.data.caseList.clear();

for (int t=0; t<cases.size(); t++)
{
				ICase case = cases.get(t);
				Cases caseDetail = new Cases();
				
				caseDetail.id = case.getId();
				caseDetail.name = case.getName();
				caseDetail.stateName = case.getState().toString();
				caseDetail.category = case.getProcessCategoryCode();
				caseDetail.creatorUser = case.getCreatorUserName();
				caseDetail.start = case.getStartTimestamp();
				
		
				out.data.caseList.add(caseDetail);
}' #txt
Cs0 f12 type htmlwfui.CasesList.CasesListData #txt
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Case list</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f12 142 260 36 24 20 -2 #rect
Cs0 f12 @|StepIcon #fIcon
Cs0 f16 expr out #txt
Cs0 f16 160 236 160 260 #arcP
Cs0 f17 expr out #txt
Cs0 f17 160 284 160 310 #arcP
>Proto Cs0 .type htmlwfui.CasesList.CasesListData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f5 out f8 tail #connect
Cs0 f8 head f3 mainIn #connect
Cs0 f5 out f9 tail #connect
Cs0 f9 head f6 mainIn #connect
Cs0 f6 mainOut f10 tail #connect
Cs0 f10 head f4 mainIn #connect
Cs0 f3 mainOut f11 tail #connect
Cs0 f11 head f4 mainIn #connect
Cs0 f20 mainOut f22 tail #connect
Cs0 f22 head f7 mainIn #connect
Cs0 f0 mainOut f19 tail #connect
Cs0 f19 head f5 in #connect
Cs0 f1 mainOut f2 tail #connect
Cs0 f2 head f14 mainIn #connect
Cs0 f15 mainOut f24 tail #connect
Cs0 f24 head f20 mainIn #connect
Cs0 f13 mainOut f23 tail #connect
Cs0 f23 head f5 in #connect
Cs0 f4 mainOut f16 tail #connect
Cs0 f16 head f12 mainIn #connect
Cs0 f12 mainOut f17 tail #connect
Cs0 f17 head f7 mainIn #connect
