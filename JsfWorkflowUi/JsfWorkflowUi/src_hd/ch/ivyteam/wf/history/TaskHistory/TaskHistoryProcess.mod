[Ivy]
[>Created: Thu Jul 31 15:26:04 CEST 2014]
13F2E0370AA5B84E 3.17 #module
>Proto >Proto Collection #zClass
Ts0 TaskHistoryProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @GridStep f3 '' #zField
Ts0 @RichDialogMethodStart f5 '' #zField
Ts0 @GridStep f8 '' #zField
Ts0 @PushWFArc f10 '' #zField
Ts0 @PushWFArc f9 '' #zField
Ts0 @GridStep f4 '' #zField
Ts0 @PushWFArc f6 '' #zField
Ts0 @PushWFArc f7 '' #zField
Ts0 @RichDialogProcessEnd f11 '' #zField
Ts0 @PushWFArc f12 '' #zField
>Proto Ts0 Ts0 TaskHistoryProcess #zField
Ts0 f0 guid 13F2E0370C9B06E8 #txt
Ts0 f0 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f0 method start() #txt
Ts0 f0 disableUIEvents true #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ts0 f0 83 51 26 26 -16 15 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f0 -1|-1|-9671572 #nodeStyle
Ts0 f1 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f1 339 51 26 26 0 12 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f1 -1|-1|-9671572 #nodeStyle
Ts0 f3 actionDecl 'ch.ivyteam.wf.history.TaskHistory.TaskHistoryData out;
' #txt
Ts0 f3 actionTable 'out=in;
' #txt
Ts0 f3 actionCode 'import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.WorkflowPriority;
import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.TaskProperty;

IPropertyFilter taskFilter = null;
if(in.#prioFilter != null)
{
	taskFilter = ivy.wf.createTaskPropertyFilter(TaskProperty.PRIORITY, RelationalOperator.EQUAL, in.prioFilter);	
}
if(in.responsibleFilter != "All")
{
	IPropertyFilter responsibleFilter = ivy.wf.createTaskPropertyFilter(TaskProperty.ACTIVATOR_NAME, RelationalOperator.EQUAL, in.responsibleFilter);
	taskFilter = taskFilter != null ? taskFilter.and(responsibleFilter) : responsibleFilter;
}

in.tasks.setTaskFilter(taskFilter);' #txt
Ts0 f3 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set filter</name>
        <nameStyle>10,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 328 138 112 44 -21 -8 #rect
Ts0 f3 @|StepIcon #fIcon
Ts0 f3 -1|-1|-9671572 #nodeStyle
Ts0 f5 guid 13F75DB798E48053 #txt
Ts0 f5 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f5 method update() #txt
Ts0 f5 disableUIEvents false #txt
Ts0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f5 outParameterDecl '<> result;
' #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ts0 f5 83 147 26 26 -23 12 #rect
Ts0 f5 @|RichDialogMethodStartIcon #fIcon
Ts0 f5 -1|-1|-9671572 #nodeStyle
Ts0 f8 actionDecl 'ch.ivyteam.wf.history.TaskHistory.TaskHistoryData out;
' #txt
Ts0 f8 actionTable 'out=in;
out.responsibleFilter="All";
' #txt
Ts0 f8 actionCode 'import ch.ivyteam.ivy.workflow.WorkflowPriority;

in.tasks.setIsHistory(true);

out.prios = WorkflowPriority.values();' #txt
Ts0 f8 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filter default</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f8 168 42 112 44 -31 -8 #rect
Ts0 f8 @|StepIcon #fIcon
Ts0 f8 -1|-1|-9671572 #nodeStyle
Ts0 f10 expr out #txt
Ts0 f10 109 64 168 64 #arcP
Ts0 f9 expr out #txt
Ts0 f9 280 64 339 64 #arcP
Ts0 f4 actionDecl 'ch.ivyteam.wf.history.TaskHistory.TaskHistoryData out;
' #txt
Ts0 f4 actionTable 'out=in;
' #txt
Ts0 f4 actionCode 'import ch.ivyteam.ivy.security.IRole;

out.roleList.clear();
List roles = ivy.session.getSessionUser().getAllRoles();
for(IRole role: roles)
{
	out.roleList.add(role);
}' #txt
Ts0 f4 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>role list</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f4 168 138 112 44 -20 -8 #rect
Ts0 f4 @|StepIcon #fIcon
Ts0 f4 -1|-1|-9671572 #nodeStyle
Ts0 f6 expr out #txt
Ts0 f6 109 160 168 160 #arcP
Ts0 f7 expr out #txt
Ts0 f7 280 160 328 160 #arcP
Ts0 f11 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f11 499 147 26 26 0 12 #rect
Ts0 f11 @|RichDialogProcessEndIcon #fIcon
Ts0 f11 -1|-1|-9671572 #nodeStyle
Ts0 f12 expr out #txt
Ts0 f12 440 160 499 160 #arcP
Ts0 f12 0 0.7157193798890246 0 0 #arcLabel
>Proto Ts0 .type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f10 tail #connect
Ts0 f10 head f8 mainIn #connect
Ts0 f8 mainOut f9 tail #connect
Ts0 f9 head f1 mainIn #connect
Ts0 f5 mainOut f6 tail #connect
Ts0 f6 head f4 mainIn #connect
Ts0 f4 mainOut f7 tail #connect
Ts0 f7 head f3 mainIn #connect
Ts0 f3 mainOut f12 tail #connect
Ts0 f12 head f11 mainIn #connect
