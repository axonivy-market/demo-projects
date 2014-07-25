[Ivy]
[>Created: Wed Jul 23 11:37:23 CEST 2014]
13EAD85D34683BAF 3.17 #module
>Proto >Proto Collection #zClass
Hs0 HomeProcess Big #zClass
Hs0 RD #cInfo
Hs0 #process
Hs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Hs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Hs0 @TextInP .resExport .resExport #zField
Hs0 @TextInP .type .type #zField
Hs0 @TextInP .processKind .processKind #zField
Hs0 @AnnotationInP-0n ai ai #zField
Hs0 @TextInP .xml .xml #zField
Hs0 @TextInP .responsibility .responsibility #zField
Hs0 @RichDialogInitStart f0 '' #zField
Hs0 @RichDialogProcessEnd f1 '' #zField
Hs0 @GridStep f3 '' #zField
Hs0 @RichDialogMethodStart f4 '' #zField
Hs0 @PushWFArc f9 '' #zField
Hs0 @PushWFArc f7 '' #zField
Hs0 @RichDialogProcessEnd f5 '' #zField
Hs0 @PushWFArc f6 '' #zField
>Proto Hs0 Hs0 HomeProcess #zField
Hs0 f0 guid 13EAD85D35A2754E #txt
Hs0 f0 type ch.ivyteam.wf.workflow.Home.HomeData #txt
Hs0 f0 method start() #txt
Hs0 f0 disableUIEvents true #txt
Hs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Hs0 f0 outParameterDecl '<> result;
' #txt
Hs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Hs0 f0 83 51 26 26 -16 12 #rect
Hs0 f0 @|RichDialogInitStartIcon #fIcon
Hs0 f0 -1|-1|-9671572 #nodeStyle
Hs0 f1 type ch.ivyteam.wf.workflow.Home.HomeData #txt
Hs0 f1 211 51 26 26 0 12 #rect
Hs0 f1 @|RichDialogProcessEndIcon #fIcon
Hs0 f1 -1|-1|-9671572 #nodeStyle
Hs0 f3 actionDecl 'ch.ivyteam.wf.workflow.Home.HomeData out;
' #txt
Hs0 f3 actionTable 'out=in;
' #txt
Hs0 f3 actionCode 'import ch.ivyteam.ivy.security.ISecurityMember;
import java.util.EnumSet;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.IProcessStart;

IQueryResult queryResult  = ivy.session.findWorkTasks(null, PropertyOrder.create(TaskProperty.ID, OrderDirection.DESCENDING), 
          0, 0, true, EnumSet.of(TaskState.SUSPENDED, TaskState.RESUMED, TaskState.PARKED));

int taskCount = queryResult.getAllCount();
out.tasks = taskCount == 1 ? taskCount.toString() + " " + ivy.cms.co("/labels/common/task") : taskCount.toString() + " " + ivy.cms.co("/labels/common/tasks");

int count = 0;
for(IProcessStart processStart : ivy.session.getStartableProcessStarts())
{
	if(processStart.getName() != "Workflow Home")
	{
		count++;
	}
}

if (count == 1)
{
	out.processes = count.toString() + " " + ivy.cms.co("/labels/common/process");
}
else
{
	out.processes = count.toString() + " " + ivy.cms.co("/labels/common/processes");
}' #txt
Hs0 f3 type ch.ivyteam.wf.workflow.Home.HomeData #txt
Hs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f3 168 138 112 44 -8 -8 #rect
Hs0 f3 @|StepIcon #fIcon
Hs0 f3 -1|-1|-9671572 #nodeStyle
Hs0 f4 guid 13F619D2D5C1D228 #txt
Hs0 f4 type ch.ivyteam.wf.workflow.Home.HomeData #txt
Hs0 f4 method update() #txt
Hs0 f4 disableUIEvents false #txt
Hs0 f4 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Hs0 f4 outParameterDecl '<> result;
' #txt
Hs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Hs0 f4 83 147 26 26 -23 12 #rect
Hs0 f4 @|RichDialogMethodStartIcon #fIcon
Hs0 f4 -1|-1|-9671572 #nodeStyle
Hs0 f9 expr out #txt
Hs0 f9 109 64 211 64 #arcP
Hs0 f7 expr out #txt
Hs0 f7 109 160 168 160 #arcP
Hs0 f5 type ch.ivyteam.wf.workflow.Home.HomeData #txt
Hs0 f5 339 147 26 26 0 12 #rect
Hs0 f5 @|RichDialogProcessEndIcon #fIcon
Hs0 f5 -1|-1|-9671572 #nodeStyle
Hs0 f6 expr out #txt
Hs0 f6 280 160 339 160 #arcP
Hs0 f6 0 0.26143232702763897 0 0 #arcLabel
>Proto Hs0 .type ch.ivyteam.wf.workflow.Home.HomeData #txt
>Proto Hs0 .processKind HTML_DIALOG #txt
>Proto Hs0 -8 -8 16 16 16 26 #rect
>Proto Hs0 '' #fIcon
Hs0 f0 mainOut f9 tail #connect
Hs0 f9 head f1 mainIn #connect
Hs0 f4 mainOut f7 tail #connect
Hs0 f7 head f3 mainIn #connect
Hs0 f3 mainOut f6 tail #connect
Hs0 f6 head f5 mainIn #connect
