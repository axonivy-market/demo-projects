[Ivy]
[>Created: Thu May 16 15:34:08 CEST 2013]
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
Hs0 @PushWFArc f4 '' #zField
Hs0 @PushWFArc f2 '' #zField
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
Hs0 f0 86 54 20 20 13 0 #rect
Hs0 f0 @|RichDialogInitStartIcon #fIcon
Hs0 f1 type ch.ivyteam.wf.workflow.Home.HomeData #txt
Hs0 f1 86 182 20 20 13 0 #rect
Hs0 f1 @|RichDialogProcessEndIcon #fIcon
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
          0, 25, true, EnumSet.of(TaskState.SUSPENDED, TaskState.RESUMED, TaskState.PARKED));

List<ITask> tasks = queryResult.getResultList();
out.tasks = tasks.size() == 1 ? tasks.size().toString() + " " + ivy.cms.co("/labels/task") : tasks.size().toString() + " " + ivy.cms.co("/labels/tasks");

int count = 0;
for(IProcessStart s: ivy.session.getStartableProcessStarts())
{
		if(s.getName().length()>0)
		{
			count++;
		}	
}
out.processes = count == 1 ? count.toString() + " " + ivy.cms.co("/labels/process") : count.toString() + " " + ivy.cms.co("/labels/processes");' #txt
Hs0 f3 type ch.ivyteam.wf.workflow.Home.HomeData #txt
Hs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Hs0 f3 78 116 36 24 20 -2 #rect
Hs0 f3 @|StepIcon #fIcon
Hs0 f4 expr out #txt
Hs0 f4 96 74 96 116 #arcP
Hs0 f2 expr out #txt
Hs0 f2 96 140 96 182 #arcP
>Proto Hs0 .type ch.ivyteam.wf.workflow.Home.HomeData #txt
>Proto Hs0 .processKind HTML_DIALOG #txt
>Proto Hs0 -8 -8 16 16 16 26 #rect
>Proto Hs0 '' #fIcon
Hs0 f0 mainOut f4 tail #connect
Hs0 f4 head f3 mainIn #connect
Hs0 f3 mainOut f2 tail #connect
Hs0 f2 head f1 mainIn #connect
