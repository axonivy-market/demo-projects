[Ivy]
[>Created: Thu Feb 17 16:55:55 CET 2011]
12C97DB1B1EA5971 3.16 #module
>Proto >Proto Collection #zClass
Rt0 CaseList Big #zClass
Rt0 B #cInfo
Rt0 #process
Rt0 @TextInP .resExport .resExport #zField
Rt0 @TextInP .type .type #zField
Rt0 @TextInP .processKind .processKind #zField
Rt0 @AnnotationInP-0n ai ai #zField
Rt0 @TextInP .xml .xml #zField
Rt0 @TextInP .responsibility .responsibility #zField
Rt0 @GridStep f20 '' #zField
Rt0 @Page f1 '' #zField
Rt0 @CallSub f6 '' #zField
Rt0 @PushWFArc f3 '' #zField
Rt0 @StartRequest f0 '' #zField
Rt0 @Page f23 '' #zField
Rt0 @PushWFArc f9 '' #zField
Rt0 @GridStep f10 '' #zField
Rt0 @PushWFArc f11 '' #zField
Rt0 @PushWFArc f8 '' #zField
Rt0 @StartRequest f12 '' #zField
Rt0 @GridStep f13 '' #zField
Rt0 @PushWFArc f17 '' #zField
Rt0 @Page f18 '' #zField
Rt0 @PushWFArc f19 '' #zField
Rt0 @GridStep f21 '' #zField
Rt0 @Alternative f24 '' #zField
Rt0 @PushWFArc f25 '' #zField
Rt0 @PushWFArc f22 '' #zField
Rt0 @PushWFArc f26 '' #zField
Rt0 @CallSub f31 '' #zField
Rt0 @PushWFArc f32 '' #zField
Rt0 @PushWFArc f34 '' #zField
Rt0 @CallSub f30 '' #zField
Rt0 @PushWFArc f35 '' #zField
Rt0 @PushWFArc f36 '' #zField
Rt0 @CallSub f37 '' #zField
Rt0 @PushWFArc f28 '' #zField
Rt0 @PushWFArc f29 '' #zField
Rt0 @Alternative f33 '' #zField
Rt0 @GridStep f38 '' #zField
Rt0 @PushWFArc f39 '' #zField
Rt0 @GridStep f40 '' #zField
Rt0 @PushWFArc f41 '' #zField
Rt0 @PushWFArc f16 '' #zField
Rt0 @PushWFArc f5 '' #zField
Rt0 @PushWFArc f15 '' #zField
Rt0 @PushWFArc f2 '' #zField
Rt0 @PushWFArc f4 '' #zField
Rt0 @GridStep f7 '' #zField
Rt0 @PushWFArc f14 '' #zField
Rt0 @PushWFArc f43 '' #zField
Rt0 @PushWFArc f44 '' #zField
Rt0 @Alternative f27 '' #zField
Rt0 @PushWFArc f45 '' #zField
Rt0 @PushWFArc f42 '' #zField
Rt0 @EndRequest f46 '' #zField
Rt0 @PushWFArc f47 '' #zField
>Proto Rt0 Rt0 CaseList #zField
Rt0 f20 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f20 actionTable 'out=in;
' #txt
Rt0 f20 actionCode 'import java.util.EnumSet;
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
if(in.temp.catFilter!=ivy.cms.co("/labels/all"))
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CATEGORY_CODE,RelationalOperator.EQUAL,in.temp.catFilter);	
}
if(in.temp.procFilter!=ivy.cms.co("/labels/all"))
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CODE,RelationalOperator.EQUAL,in.temp.procFilter);	
}
if(in.temp.statFilter!=ivy.cms.co("/labels/all"))
{
	if(in.temp.statFilter=="RUNNING")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.RUNNING.ordinal());
	}
	else if(in.temp.statFilter=="DONE")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.DONE.ordinal());
	}
		else if(in.temp.statFilter=="DESTROYED")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.DESTROYED.ordinal());
	}
		else if(in.temp.statFilter=="ZOMBIE")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.ZOMBIE.ordinal());
	}				
}

IQueryResult queryResult = ivy.wf.findCases(
	cpfilter,
	null, 0, -1 ,true);

out.cases = queryResult.getResultList();

out.temp.processes.clear();
out.temp.processes.add([ivy.cms.co("/labels/all"),ivy.cms.co("/labels/all"),ivy.cms.co("/labels/all")]);

for(ICase case: queryResult.getResultList())
{
	if(!out.temp.categories.contains(case.getProcessCategoryCode()))
	{
		out.temp.categories.add(case.getProcessCategoryCode());
	}	
	List pCodes=out.temp.processes.getColumn("Code");
	if(!pCodes.contains(case.getProcessCode()))
	{
		out.temp.processes.add([case.getProcessCode(),case.getProcessName(),case.getProcessCategoryCode()]);
	}	
}
out.temp.processesCombo = out.temp.processes.clone();
' #txt
Rt0 f20 type htmlwfui.Data #txt
Rt0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect mycases</name>
        <nameStyle>15,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f20 86 284 36 24 28 -12 #rect
Rt0 f20 @|StepIcon #fIcon
Rt0 f1 outTypes "htmlwfui.Data","htmlwfui.Data","htmlwfui.Data" #txt
Rt0 f1 outLinks "LinkA.ivp","LinkB.ivp","LinkC.ivp" #txt
Rt0 f1 template "caselist.ivc" #txt
Rt0 f1 type htmlwfui.Data #txt
Rt0 f1 skipLink skip.ivp #txt
Rt0 f1 sortLink sort.ivp #txt
Rt0 f1 templateWizard '#
#Mon Dec 06 09:42:42 CET 2010
' #txt
Rt0 f1 pageArchivingActivated false #txt
Rt0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CaseList</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f1 @C|.responsibility Everybody #txt
Rt0 f1 166 340 36 24 11 12 #rect
Rt0 f1 @|PageIcon #fIcon
Rt0 f6 type htmlwfui.Data #txt
Rt0 f6 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Rt0 f6 doCall true #txt
Rt0 f6 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Rt0 f6 requestMappingAction 'param.in=in;
' #txt
Rt0 f6 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f6 responseMappingAction 'out=result.out;
' #txt
Rt0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f6 166 100 36 24 20 -2 #rect
Rt0 f6 @|CallSubIcon #fIcon
Rt0 f3 expr out #txt
Rt0 f3 121 308 167 340 #arcP
Rt0 f0 outLink start1.ivp #txt
Rt0 f0 type htmlwfui.Data #txt
Rt0 f0 inParamDecl '<> param;' #txt
Rt0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f0 guid 12C97DD6D7C6E230 #txt
Rt0 f0 requestEnabled true #txt
Rt0 f0 triggerEnabled false #txt
Rt0 f0 callSignature start1() #txt
Rt0 f0 persist false #txt
Rt0 f0 taskData '#
#Mon Feb 14 09:59:10 CET 2011
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Rt0 f0 caseData '#
#Mon Feb 14 09:59:10 CET 2011
businessCreator.user=
businessMilestone.timestamp=
businessObject.code=
businessObject.docDb.code=
businessObject.folder.id=
businessObject.name=
businessPriority=
businessStart.timestamp=
case.description=
case.name=
correspondent.id=
mainContact.docDb.code=
mainContact.folder.id=
mainContact.id=
mainContact.name=
mainContact.type=
process.code=
process.name=
processCategory.code=
processCategory.name=
subType.code=
subType.name=
type.code=
type.name=
' #txt
Rt0 f0 showInStartList 0 #txt
Rt0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Rt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start1.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f0 @C|.responsibility Everybody #txt
Rt0 f0 67 27 26 26 14 0 #rect
Rt0 f0 @|StartRequestIcon #fIcon
Rt0 f23 outTypes "htmlwfui.Data","htmlwfui.Data","htmlwfui.Data","htmlwfui.Data","htmlwfui.Data" #txt
Rt0 f23 outLinks "LinkA.ivp","LinkB.ivp","LinkD.ivp","LinkE.ivp","LinkC.ivp" #txt
Rt0 f23 template "caseDetail.ivc" #txt
Rt0 f23 type htmlwfui.Data #txt
Rt0 f23 skipLink skip.ivp #txt
Rt0 f23 sortLink sort.ivp #txt
Rt0 f23 templateWizard '#
#Fri Dec 03 11:54:43 CET 2010
' #txt
Rt0 f23 pageArchivingActivated false #txt
Rt0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Casedetails</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f23 @C|.responsibility Everybody #txt
Rt0 f23 166 476 36 24 3 14 #rect
Rt0 f23 @|PageIcon #fIcon
Rt0 f9 expr data #txt
Rt0 f9 outCond ivp=="LinkA.ivp" #txt
Rt0 f9 166 488 166 360 #arcP
Rt0 f9 1 128 488 #addKink
Rt0 f9 2 128 376 #addKink
Rt0 f9 1 0.6385186210179533 0 0 #arcLabel
Rt0 f10 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f10 actionTable 'out=in;
' #txt
Rt0 f10 actionCode 'import ch.ivyteam.ivy.workflow.ICase;
out.tempCase = in.cases.get(in.temp.n);
out.tasks = out.tempCase.getTasks();' #txt
Rt0 f10 type htmlwfui.Data #txt
Rt0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get Details</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f10 166 404 36 24 15 8 #rect
Rt0 f10 @|StepIcon #fIcon
Rt0 f11 expr data #txt
Rt0 f11 outCond ivp=="LinkB.ivp" #txt
Rt0 f11 184 364 184 404 #arcP
Rt0 f8 expr out #txt
Rt0 f8 184 428 184 476 #arcP
Rt0 f12 outLink start2.ivp #txt
Rt0 f12 type htmlwfui.Data #txt
Rt0 f12 inParamDecl '<> param;' #txt
Rt0 f12 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f12 guid 12CBAD990D2F8EFA #txt
Rt0 f12 requestEnabled true #txt
Rt0 f12 triggerEnabled false #txt
Rt0 f12 callSignature start2() #txt
Rt0 f12 persist false #txt
Rt0 f12 taskData '#
#Mon Feb 14 09:59:24 CET 2011
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Rt0 f12 caseData '#
#Mon Feb 14 09:59:24 CET 2011
businessCreator.user=
businessMilestone.timestamp=
businessObject.code=
businessObject.docDb.code=
businessObject.folder.id=
businessObject.name=
businessPriority=
businessStart.timestamp=
case.description=
case.name=
correspondent.id=
mainContact.docDb.code=
mainContact.folder.id=
mainContact.id=
mainContact.name=
mainContact.type=
process.code=
process.name=
processCategory.code=
processCategory.name=
subType.code=
subType.name=
type.code=
type.name=
' #txt
Rt0 f12 showInStartList 0 #txt
Rt0 f12 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Rt0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start2.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f12 @C|.responsibility Everybody #txt
Rt0 f12 259 27 26 26 14 0 #rect
Rt0 f12 @|StartRequestIcon #fIcon
Rt0 f13 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f13 actionTable 'out=in;
' #txt
Rt0 f13 actionCode 'import ch.ivyteam.ivy.workflow.IPropertyFilter;
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

if(in.temp.catFilter!=ivy.cms.co("/labels/all"))
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CATEGORY_CODE,RelationalOperator.EQUAL,in.temp.catFilter);	
}
if(in.temp.procFilter!=ivy.cms.co("/labels/all"))
{
	cpfilter = cpfilter.and(CaseProperty.PROCESS_CODE,RelationalOperator.EQUAL,in.temp.procFilter);	
}
if(in.temp.statFilter!=ivy.cms.co("/labels/all"))
{
	if(in.temp.statFilter=="RUNNING")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.RUNNING.ordinal());
	}
	else if(in.temp.statFilter=="DONE")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.DONE.ordinal());
	}
		else if(in.temp.statFilter=="DESTROYED")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.DESTROYED.ordinal());
	}
		else if(in.temp.statFilter=="ZOMBIE")
	{
		cpfilter = cpfilter.and(CaseProperty.STATE,RelationalOperator.EQUAL,CaseState.ZOMBIE.ordinal());
	}				
}

IQueryResult queryResult = ivy.wf.findCases(
	cpfilter,
	null, 0, -1 ,true);
	
out.temp.processes.clear();	
out.temp.processes.add([ivy.cms.co("/labels/all"),ivy.cms.co("/labels/all"),ivy.cms.co("/labels/all")]);

if(ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW))
{ // WorkflowAdmin can administrate all cases
	out.cases = queryResult.getResultList();
	
	//init categories and processes filter combos
	for(ICase case: queryResult.getResultList())
	{
		if(!out.temp.categories.contains(case.getProcessCategoryCode()))
		{
			out.temp.categories.add(case.getProcessCategoryCode());
		}	
		List pCodes=out.temp.processes.getColumn("Code");
		if(!pCodes.contains(case.getProcessCode()))
		{
			out.temp.processes.add([case.getProcessCode(),case.getProcessName(),case.getProcessCategoryCode()]);
		}	
	}
}
else	
{
	//roles of the user
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
		if(!out.temp.categories.contains(case.getProcessCategoryCode()))
		{
			out.temp.categories.add(case.getProcessCategoryCode());
		}	
		List pCodes=out.temp.processes.getColumn("Code");
		if(!pCodes.contains(case.getProcessCode()))
		{
			out.temp.processes.add([case.getProcessCode(),case.getProcessName(),case.getProcessCategoryCode()]);
		}			
	}	
	out.cases = cases;
}
out.temp.processesCombo = out.temp.processes.clone();


' #txt
Rt0 f13 type htmlwfui.Data #txt
Rt0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect processowner cases
</name>
        <nameStyle>27,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f13 254 276 36 24 23 -6 #rect
Rt0 f13 @|StepIcon #fIcon
Rt0 f17 expr out #txt
Rt0 f17 256 300 201 340 #arcP
Rt0 f18 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Rt0 f18 outLinks "LinkA.ivp","LinkB.ivp" #txt
Rt0 f18 template "confirmDeleteCase.ivc" #txt
Rt0 f18 type htmlwfui.Data #txt
Rt0 f18 skipLink skip.ivp #txt
Rt0 f18 sortLink sort.ivp #txt
Rt0 f18 templateWizard '#
#Mon Dec 06 09:57:19 CET 2010
' #txt
Rt0 f18 pageArchivingActivated false #txt
Rt0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Confirm Delete</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f18 @C|.responsibility Everybody #txt
Rt0 f18 70 540 36 24 20 -2 #rect
Rt0 f18 @|PageIcon #fIcon
Rt0 f19 expr data #txt
Rt0 f19 outCond ivp=="LinkB.ivp" #txt
Rt0 f19 166 500 106 540 #arcP
Rt0 f21 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f21 actionTable 'out=in;
' #txt
Rt0 f21 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ICase;

ICase case =in.tempCase.destroy();
if(case.getState()==CaseState.DESTROYED)
{
	in.cases.remove(in.tempCase);
	out.temp.msg = "DESTROYED";
}
' #txt
Rt0 f21 type htmlwfui.Data #txt
Rt0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete Case</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f21 70 612 36 24 20 -2 #rect
Rt0 f21 @|StepIcon #fIcon
Rt0 f24 type htmlwfui.Data #txt
Rt0 f24 74 682 28 28 14 0 #rect
Rt0 f24 @|AlternativeIcon #fIcon
Rt0 f25 expr out #txt
Rt0 f25 88 636 88 682 #arcP
Rt0 f22 expr data #txt
Rt0 f22 outCond ivp=="LinkA.ivp" #txt
Rt0 f22 88 564 88 612 #arcP
Rt0 f26 expr data #txt
Rt0 f26 outCond ivp=="LinkB.ivp" #txt
Rt0 f26 70 552 74 696 #arcP
Rt0 f26 1 40 552 #addKink
Rt0 f26 2 40 696 #addKink
Rt0 f26 1 0.07729854326440172 0 0 #arcLabel
Rt0 f31 type htmlwfui.Data #txt
Rt0 f31 processCall 'Functional Processes/AddNote:call(htmlwfui.Data)' #txt
Rt0 f31 doCall true #txt
Rt0 f31 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Rt0 f31 requestMappingAction 'param.in=in;
param.in.noteFor="case";
' #txt
Rt0 f31 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f31 responseMappingAction 'out=in;
' #txt
Rt0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addNote</name>
        <nameStyle>7
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f31 382 564 36 24 12 6 #rect
Rt0 f31 @|CallSubIcon #fIcon
Rt0 f32 expr data #txt
Rt0 f32 outCond ivp=="LinkD.ivp" #txt
Rt0 f32 202 495 382 569 #arcP
Rt0 f32 0 0.4568671957714201 0 0 #arcLabel
Rt0 f34 expr out #txt
Rt0 f34 382 569 202 495 #arcP
Rt0 f34 0 0.3298838642993683 0 0 #arcLabel
Rt0 f30 type htmlwfui.Data #txt
Rt0 f30 processCall 'Functional Processes/TaskDetail:call(htmlwfui.Data)' #txt
Rt0 f30 doCall true #txt
Rt0 f30 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Rt0 f30 requestMappingAction 'param.in=in;
param.in.tmpTask=in.tasks.get(in.temp.n);
' #txt
Rt0 f30 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f30 responseMappingAction 'out=in;
out.tmpTask=null;
' #txt
Rt0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>taskDetail</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f30 526 564 36 24 16 9 #rect
Rt0 f30 @|CallSubIcon #fIcon
Rt0 f35 expr data #txt
Rt0 f35 outCond ivp=="LinkE.ivp" #txt
Rt0 f35 202 492 526 572 #arcP
Rt0 f36 expr out #txt
Rt0 f36 526 572 202 492 #arcP
Rt0 f36 0 0.3294303582455013 0 0 #arcLabel
Rt0 f37 type htmlwfui.Data #txt
Rt0 f37 processCall 'Functional Processes/PageArchive:call(htmlwfui.Data)' #txt
Rt0 f37 doCall true #txt
Rt0 f37 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Rt0 f37 requestMappingAction 'param.in=in;
' #txt
Rt0 f37 responseActionDecl 'htmlwfui.Data out;
' #txt
Rt0 f37 responseMappingAction 'out=in;
out.pageArchives=null;
' #txt
Rt0 f37 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>PageArchive</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f37 254 564 36 24 16 8 #rect
Rt0 f37 @|CallSubIcon #fIcon
Rt0 f28 expr data #txt
Rt0 f28 outCond ivp=="LinkC.ivp" #txt
Rt0 f28 196 500 260 564 #arcP
Rt0 f29 expr out #txt
Rt0 f29 260 564 196 500 #arcP
Rt0 f29 0 0.22539243841503825 0 0 #arcLabel
Rt0 f33 type htmlwfui.Data #txt
Rt0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>?</name>
        <nameStyle>1
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f33 170 234 28 28 19 -12 #rect
Rt0 f33 @|AlternativeIcon #fIcon
Rt0 f38 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f38 actionTable 'out=in;
out.temp.caption="my_cases";
' #txt
Rt0 f38 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;

out.temp.statFilter = CaseState.RUNNING.toString();
out.temp.catFilter = ivy.cms.co("/labels/all");
out.temp.procFilter = ivy.cms.co("/labels/all");

out.temp.categories = [ivy.cms.co("/labels/all")];
out.temp.processes.addColumn("Code",[ivy.cms.co("/labels/all")]).addColumn("Name",[ivy.cms.co("/labels/all")]).addColumn("Cat",[ivy.cms.co("/labels/all")]);
out.temp.processesCombo.addColumn("Code",[ivy.cms.co("/labels/all")]).addColumn("Name",[ivy.cms.co("/labels/all")]).addColumn("Cat",[ivy.cms.co("/labels/all")]);
out.temp.states = [ivy.cms.co("/labels/all"), CaseState.RUNNING.toString(),CaseState.DONE.toString(), CaseState.DESTROYED.toString(), CaseState.ZOMBIE.toString()];
' #txt
Rt0 f38 type htmlwfui.Data #txt
Rt0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init my_cases</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f38 62 76 36 24 24 -11 #rect
Rt0 f38 @|StepIcon #fIcon
Rt0 f39 expr out #txt
Rt0 f39 80 53 80 76 #arcP
Rt0 f39 0 0.6514195840404282 0 0 #arcLabel
Rt0 f40 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f40 actionTable 'out=in;
out.temp.caption="admin_cases";
' #txt
Rt0 f40 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;

out.temp.statFilter = CaseState.RUNNING.toString();
out.temp.catFilter = ivy.cms.co("/labels/all");
out.temp.procFilter = ivy.cms.co("/labels/all");

out.temp.categories = [ivy.cms.co("/labels/all")];
out.temp.processes.addColumn("Code",[ivy.cms.co("/labels/all")]).addColumn("Name",[ivy.cms.co("/labels/all")]).addColumn("Cat",[ivy.cms.co("/labels/all")]);
out.temp.processesCombo.addColumn("Code",[ivy.cms.co("/labels/all")]).addColumn("Name",[ivy.cms.co("/labels/all")]).addColumn("Cat",[ivy.cms.co("/labels/all")]);
out.temp.states = [ivy.cms.co("/labels/all"), CaseState.RUNNING.toString(),CaseState.DONE.toString(), CaseState.DESTROYED.toString(), CaseState.ZOMBIE.toString()];' #txt
Rt0 f40 type htmlwfui.Data #txt
Rt0 f40 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init admin_cases</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f40 254 76 36 24 20 -2 #rect
Rt0 f40 @|StepIcon #fIcon
Rt0 f41 expr out #txt
Rt0 f41 272 53 272 76 #arcP
Rt0 f16 expr out #txt
Rt0 f16 98 91 166 107 #arcP
Rt0 f16 0 0.4999999999999999 0 0 #arcLabel
Rt0 f5 expr out #txt
Rt0 f5 254 93 202 107 #arcP
Rt0 f15 expr data #txt
Rt0 f15 outCond ivp=="LinkA.ivp" #txt
Rt0 f15 166 352 170 248 #arcP
Rt0 f15 1 48 352 #addKink
Rt0 f15 2 48 248 #addKink
Rt0 f15 1 0.18116225130813152 0 0 #arcLabel
Rt0 f2 expr in #txt
Rt0 f2 outCond in.temp.caption=="my_cases" #txt
Rt0 f2 175 253 122 285 #arcP
Rt0 f4 expr in #txt
Rt0 f4 194 252 254 280 #arcP
Rt0 f7 actionDecl 'htmlwfui.Data out;
' #txt
Rt0 f7 actionTable 'out=in;
' #txt
Rt0 f7 actionCode 'if(in.temp.catFilter==ivy.cms.co("/labels/all"))
{
	out.temp.processesCombo=in.temp.processes.clone();
}	
else
{
	out.temp.processesCombo.clear();
	for(int i=0; i<in.temp.processes.size(); i++)
	{
		if(in.temp.processes.getField(i,"Cat")==in.temp.catFilter)
		{
				out.temp.processesCombo.add(in.temp.processes.getAt(i));
		}	
	}
}' #txt
Rt0 f7 type htmlwfui.Data #txt
Rt0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update filterCombos</name>
        <nameStyle>19
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f7 254 340 36 24 22 -8 #rect
Rt0 f7 @|StepIcon #fIcon
Rt0 f14 expr data #txt
Rt0 f14 outCond ivp=="LinkC.ivp" #txt
Rt0 f14 202 352 254 352 #arcP
Rt0 f43 expr out #txt
Rt0 f43 254 352 202 352 #arcP
Rt0 f43 0 0.7806989874641023 0 0 #arcLabel
Rt0 f44 expr in #txt
Rt0 f44 102 696 202 488 #arcP
Rt0 f44 1 632 696 #addKink
Rt0 f44 2 632 488 #addKink
Rt0 f44 0 0.9615118834304544 0 0 #arcLabel
Rt0 f27 type htmlwfui.Data #txt
Rt0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>hasPermission?</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f27 170 162 28 28 14 0 #rect
Rt0 f27 @|AlternativeIcon #fIcon
Rt0 f45 expr out #txt
Rt0 f45 184 124 184 162 #arcP
Rt0 f42 expr in #txt
Rt0 f42 outCond 'ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL)
' #txt
Rt0 f42 184 190 184 234 #arcP
Rt0 f46 type htmlwfui.Data #txt
Rt0 f46 template "PermissionError.ivc" #txt
Rt0 f46 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Missing Permission</name>
        <nameStyle>18
</nameStyle>
    </language>
</elementInfo>
' #txt
Rt0 f46 363 163 26 26 14 0 #rect
Rt0 f46 @|EndRequestIcon #fIcon
Rt0 f47 expr in #txt
Rt0 f47 198 176 363 176 #arcP
>Proto Rt0 .type htmlwfui.Data #txt
>Proto Rt0 .processKind NORMAL #txt
>Proto Rt0 0 0 32 24 18 0 #rect
>Proto Rt0 @|BIcon #fIcon
Rt0 f20 mainOut f3 tail #connect
Rt0 f3 head f1 mainIn #connect
Rt0 f23 out f9 tail #connect
Rt0 f9 head f1 mainIn #connect
Rt0 f11 head f10 mainIn #connect
Rt0 f10 mainOut f8 tail #connect
Rt0 f8 head f23 mainIn #connect
Rt0 f13 mainOut f17 tail #connect
Rt0 f17 head f1 mainIn #connect
Rt0 f23 out f19 tail #connect
Rt0 f19 head f18 mainIn #connect
Rt0 f21 mainOut f25 tail #connect
Rt0 f25 head f24 in #connect
Rt0 f18 out f22 tail #connect
Rt0 f22 head f21 mainIn #connect
Rt0 f18 out f26 tail #connect
Rt0 f26 head f24 in #connect
Rt0 f23 out f32 tail #connect
Rt0 f32 head f31 mainIn #connect
Rt0 f31 mainOut f34 tail #connect
Rt0 f34 head f23 mainIn #connect
Rt0 f23 out f35 tail #connect
Rt0 f35 head f30 mainIn #connect
Rt0 f30 mainOut f36 tail #connect
Rt0 f36 head f23 mainIn #connect
Rt0 f23 out f28 tail #connect
Rt0 f28 head f37 mainIn #connect
Rt0 f37 mainOut f29 tail #connect
Rt0 f29 head f23 mainIn #connect
Rt0 f0 mainOut f39 tail #connect
Rt0 f39 head f38 mainIn #connect
Rt0 f12 mainOut f41 tail #connect
Rt0 f41 head f40 mainIn #connect
Rt0 f38 mainOut f16 tail #connect
Rt0 f16 head f6 mainIn #connect
Rt0 f40 mainOut f5 tail #connect
Rt0 f5 head f6 mainIn #connect
Rt0 f1 out f15 tail #connect
Rt0 f15 head f33 in #connect
Rt0 f1 out f11 tail #connect
Rt0 f33 out f2 tail #connect
Rt0 f2 head f20 mainIn #connect
Rt0 f33 out f4 tail #connect
Rt0 f4 head f13 mainIn #connect
Rt0 f1 out f14 tail #connect
Rt0 f14 head f7 mainIn #connect
Rt0 f7 mainOut f43 tail #connect
Rt0 f43 head f1 mainIn #connect
Rt0 f24 out f44 tail #connect
Rt0 f44 head f23 mainIn #connect
Rt0 f6 mainOut f45 tail #connect
Rt0 f45 head f27 in #connect
Rt0 f27 out f42 tail #connect
Rt0 f42 head f33 in #connect
Rt0 f27 out f47 tail #connect
Rt0 f47 head f46 mainIn #connect
