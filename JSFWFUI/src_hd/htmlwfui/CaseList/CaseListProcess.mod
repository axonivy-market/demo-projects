[Ivy]
[>Created: Tue Jan 22 19:18:38 CET 2013]
13C3D58D030BDEA8 3.17 #module
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
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @RichDialogProcessStep f3 '' #zField
Cs0 @RichDialogProcessStep f4 '' #zField
Cs0 @Alternative f5 '' #zField
Cs0 @PushWFArc f6 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @RichDialogInitStart f2 '' #zField
Cs0 @RichDialogProcessStep f0 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @RichDialogMethodStart f15 '' #zField
Cs0 @RichDialogProcessStart f12 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @RichDialogEnd f14 '' #zField
Cs0 @PushWFArc f17 '' #zField
Cs0 @RichDialogProcessStart f13 '' #zField
Cs0 @RichDialogProcessStep f20 '' #zField
Cs0 @PushWFArc f21 '' #zField
Cs0 @PushWFArc f22 '' #zField
>Proto Cs0 Cs0 CaseListProcess #zField
Cs0 f1 type htmlwfui.CaseList.CaseListData #txt
Cs0 f1 118 278 20 20 13 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f3 actionDecl 'htmlwfui.CaseList.CaseListData out;
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
Cs0 f3 type htmlwfui.CaseList.CaseListData #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect mycases</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 54 188 36 24 -61 18 #rect
Cs0 f3 @|RichDialogProcessStepIcon #fIcon
Cs0 f4 actionDecl 'htmlwfui.CaseList.CaseListData out;
' #txt
Cs0 f4 actionTable 'out=in;
' #txt
Cs0 f4 actionCode 'import ch.ivyteam.ivy.workflow.IPropertyFilter;
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
Cs0 f4 type htmlwfui.CaseList.CaseListData #txt
Cs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
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
Cs0 f4 166 188 36 24 20 -2 #rect
Cs0 f4 @|RichDialogProcessStepIcon #fIcon
Cs0 f5 type htmlwfui.CaseList.CaseListData #txt
Cs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>?</name>
        <nameStyle>1,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f5 114 138 28 28 16 -14 #rect
Cs0 f5 @|AlternativeIcon #fIcon
Cs0 f6 expr in #txt
Cs0 f6 outCond in.data.temp.caption=="my_cases" #txt
Cs0 f6 120 158 86 188 #arcP
Cs0 f7 expr in #txt
Cs0 f7 136 158 170 188 #arcP
Cs0 f2 guid 13C3D7831D9247E0 #txt
Cs0 f2 type htmlwfui.CaseList.CaseListData #txt
Cs0 f2 method start(htmlwfui.Data) #txt
Cs0 f2 disableUIEvents true #txt
Cs0 f2 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Data data> param = methodEvent.getInputArguments();
' #txt
Cs0 f2 inParameterMapAction 'out.data=param.data;
' #txt
Cs0 f2 outParameterDecl '<java.lang.String option> result;
' #txt
Cs0 f2 embeddedRdInitializations '* ' #txt
Cs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f2 118 54 20 20 13 0 #rect
Cs0 f2 @|RichDialogInitStartIcon #fIcon
Cs0 f0 actionDecl 'htmlwfui.CaseList.CaseListData out;
' #txt
Cs0 f0 actionTable 'out=in;
out.data.temp.description=IF(in.data.temp.caption == "my_cases", ivy.cms.co("/messages/txtMyCases"), ivy.cms.co("/messages/txtAdminCases"));
out.data.temp.title=IF(in.data.temp.caption == "my_cases", ivy.cms.co("/navLabels/caseHistory"), ivy.cms.co("/navLabels/admin"));
out.data.temp.undertitle=IF(in.data.temp.caption == "my_cases", ivy.cms.co("/captions/captionMyCases"), ivy.cms.co("/captions/captionAdminCases"));
' #txt
Cs0 f0 type htmlwfui.CaseList.CaseListData #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Html text</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 110 236 36 24 20 -2 #rect
Cs0 f0 @|RichDialogProcessStepIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 170 212 142 236 #arcP
Cs0 f9 expr out #txt
Cs0 f9 86 212 114 236 #arcP
Cs0 f8 expr out #txt
Cs0 f8 128 260 128 278 #arcP
Cs0 f11 expr out #txt
Cs0 f11 128 74 128 138 #arcP
Cs0 f15 guid 13C3DA404C8FB8F3 #txt
Cs0 f15 type htmlwfui.CaseList.CaseListData #txt
Cs0 f15 method caseDetail(Number) #txt
Cs0 f15 disableUIEvents false #txt
Cs0 f15 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number idnx> param = methodEvent.getInputArguments();
' #txt
Cs0 f15 inParameterMapAction 'out.data.temp.n=param.idnx;
' #txt
Cs0 f15 outParameterDecl '<> result;
' #txt
Cs0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>caseDetail(Number)</name>
        <nameStyle>18,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f15 534 54 20 20 13 0 #rect
Cs0 f15 @|RichDialogMethodStartIcon #fIcon
Cs0 f12 guid 13C3DC8B3FC416ED #txt
Cs0 f12 type htmlwfui.CaseList.CaseListData #txt
Cs0 f12 actionDecl 'htmlwfui.CaseList.CaseListData out;
' #txt
Cs0 f12 actionTable 'out=in;
' #txt
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setFilter</name>
    </language>
</elementInfo>
' #txt
Cs0 f12 246 54 20 20 13 0 #rect
Cs0 f12 @|RichDialogProcessStartIcon #fIcon
Cs0 f18 expr out #txt
Cs0 f18 256 74 142 152 #arcP
Cs0 f18 1 256 152 #addKink
Cs0 f18 1 0.1750253578906284 0 0 #arcLabel
Cs0 f14 type htmlwfui.CaseList.CaseListData #txt
Cs0 f14 guid 13C3E40E403FEC77 #txt
Cs0 f14 534 150 20 20 13 0 #rect
Cs0 f14 @|RichDialogEndIcon #fIcon
Cs0 f17 expr out #txt
Cs0 f17 544 74 544 150 #arcP
Cs0 f13 guid 13C3E577AE8D5BA4 #txt
Cs0 f13 type htmlwfui.CaseList.CaseListData #txt
Cs0 f13 actionDecl 'htmlwfui.CaseList.CaseListData out;
' #txt
Cs0 f13 actionTable 'out=in;
' #txt
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateCombos</name>
    </language>
</elementInfo>
' #txt
Cs0 f13 374 54 20 20 13 0 #rect
Cs0 f13 @|RichDialogProcessStartIcon #fIcon
Cs0 f20 actionDecl 'htmlwfui.CaseList.CaseListData out;
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
Cs0 f20 type htmlwfui.CaseList.CaseListData #txt
Cs0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update filterCombos</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f20 366 100 36 24 20 -2 #rect
Cs0 f20 @|RichDialogProcessStepIcon #fIcon
Cs0 f21 expr out #txt
Cs0 f21 384 74 384 100 #arcP
Cs0 f22 expr out #txt
Cs0 f22 384 124 138 288 #arcP
Cs0 f22 1 384 288 #addKink
Cs0 f22 1 0.1676804224959652 0 0 #arcLabel
>Proto Cs0 .type htmlwfui.CaseList.CaseListData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f5 out f6 tail #connect
Cs0 f6 head f3 mainIn #connect
Cs0 f5 out f7 tail #connect
Cs0 f7 head f4 mainIn #connect
Cs0 f4 mainOut f10 tail #connect
Cs0 f10 head f0 mainIn #connect
Cs0 f3 mainOut f9 tail #connect
Cs0 f9 head f0 mainIn #connect
Cs0 f0 mainOut f8 tail #connect
Cs0 f8 head f1 mainIn #connect
Cs0 f2 mainOut f11 tail #connect
Cs0 f11 head f5 in #connect
Cs0 f12 mainOut f18 tail #connect
Cs0 f18 head f5 in #connect
Cs0 f15 mainOut f17 tail #connect
Cs0 f17 head f14 mainIn #connect
Cs0 f13 mainOut f21 tail #connect
Cs0 f21 head f20 mainIn #connect
Cs0 f20 mainOut f22 tail #connect
Cs0 f22 head f1 mainIn #connect
