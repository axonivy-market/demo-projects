[Ivy]
[>Created: Mon Jan 04 11:39:39 CET 2010]
12520943DCB49E11 3.13 #module
>Proto >Proto Collection #zClass
Ps0 PendenzenListeProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @MessageFlowInP-0n messageIn messageIn #zField
Ps0 @MessageFlowOutP-0n messageOut messageOut #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @RichDialogProcessStep f3 '' #zField
Ps0 @PushWFArc f4 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @RichDialogBroadcastStart f5 '' #zField
Ps0 @PushWFArc f6 '' #zField
Ps0 @RichDialogProcessStart f7 '' #zField
Ps0 @RichDialogProcessEnd f8 '' #zField
Ps0 @RichDialogProcessStart f14 '' #zField
Ps0 @RichDialogEnd f15 '' #zField
Ps0 @PushWFArc f16 '' #zField
Ps0 @Alternative f17 '' #zField
Ps0 @PushWFArc f18 '' #zField
Ps0 @RichDialogMethodStart f11 '' #zField
Ps0 @PushWFArc f12 '' #zField
Ps0 @RichDialogProcessStart f13 '' #zField
Ps0 @RichDialogProcessEnd f21 '' #zField
Ps0 @PushWFArc f22 '' #zField
Ps0 @RichDialogBroadcastStart f23 '' #zField
Ps0 @PushWFArc f24 '' #zField
Ps0 @RichDialogProcessStart f25 '' #zField
Ps0 @PushWFArc f26 '' #zField
Ps0 @RichDialog f27 '' #zField
Ps0 @PushWFArc f28 '' #zField
Ps0 @PushWFArc f29 '' #zField
Ps0 @PushWFArc f9 '' #zField
Ps0 @RichDialog f10 '' #zField
Ps0 @RichDialogProcessEnd f30 '' #zField
Ps0 @RichDialog f33 '' #zField
Ps0 @RichDialogProcessEnd f34 '' #zField
Ps0 @PushWFArc f31 '' #zField
Ps0 @PushWFArc f36 '' #zField
Ps0 @RichDialogProcessStart f19 '' #zField
Ps0 @PushWFArc f20 '' #zField
Ps0 @RichDialogProcessStart f32 '' #zField
Ps0 @PushWFArc f35 '' #zField
Ps0 @RichDialogProcessStep f37 '' #zField
Ps0 @RichDialogProcessStart f39 '' #zField
Ps0 @PushWFArc f40 '' #zField
Ps0 @RichDialogProcessEnd f38 '' #zField
Ps0 @PushWFArc f41 '' #zField
>Proto Ps0 Ps0 PendenzenListeProcess #zField
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startIn</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f0 guid 124FC8F48B7ED55A #txt
Ps0 f0 type ui.task.tasklist.tasklistData #txt
Ps0 f0 method startInPanel(ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel) #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel parentPanel> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 inParameterMapAction 'out.parentPanel=param.parentPanel;
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 embeddedRdInitializations '* ' #txt
Ps0 f0 86 54 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ui.task.tasklist.tasklistData #txt
Ps0 f1 86 158 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f3 actionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 actionCode 'import java.util.EnumSet;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.event.SystemEventCategory;

IQueryResult queryResult  = ivy.session.findWorkTasks(null, PropertyOrder.create(TaskProperty.ID, OrderDirection.DESCENDING), 
          0, 25, true, EnumSet.of(TaskState.SUSPENDED, TaskState.PARKED, TaskState.RESUMED));

out.tasks = queryResult.getResultList();

// register to System events of Workflow category
ivy.rd.subscribeToSystemEvents(SystemEventCategory.WORKFLOW);

out.selectedTask = null;
panel.taskNotesButton.text = ivy.cms.co("/basicwfui/labels/task/notes");' #txt
Ps0 f3 type ui.task.tasklist.tasklistData #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init TaskList</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 78 100 36 24 20 -2 #rect
Ps0 f3 @|RichDialogProcessStepIcon #fIcon
Ps0 f4 expr out #txt
Ps0 f4 96 74 96 100 #arcP
Ps0 f2 expr out #txt
Ps0 f2 96 124 96 158 #arcP
Ps0 f5 guid 124FCB019A6DB691 #txt
Ps0 f5 type ui.task.tasklist.tasklistData #txt
Ps0 f5 broadcast ivy_systemevent_workflow_task_changed #txt
Ps0 f5 actionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f5 actionTable 'out=in;
' #txt
Ps0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy_systemevent_work</name>
        <nameStyle>20,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f5 190 54 20 20 -57 -35 #rect
Ps0 f5 @|RichDialogBroadcastStartIcon #fIcon
Ps0 f6 expr out #txt
Ps0 f6 190 68 114 104 #arcP
Ps0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_StartTask</name>
        <nameStyle>18,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f7 guid 124FCB0D83131C5D #txt
Ps0 f7 type ui.task.tasklist.tasklistData #txt
Ps0 f7 actionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f7 actionTable 'out=in;
out.selectedTask=panel.Table.getSelectedListEntry() as ch.ivyteam.ivy.workflow.ITask;
' #txt
Ps0 f7 86 238 20 20 17 -8 #rect
Ps0 f7 @|RichDialogProcessStartIcon #fIcon
Ps0 f8 type ui.task.tasklist.tasklistData #txt
Ps0 f8 86 430 20 20 13 0 #rect
Ps0 f8 @|RichDialogProcessEndIcon #fIcon
Ps0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Exit</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f14 guid 124FD30175EE0477 #txt
Ps0 f14 type ui.task.tasklist.tasklistData #txt
Ps0 f14 actionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f14 actionTable 'out=in;
' #txt
Ps0 f14 670 54 20 20 13 0 #rect
Ps0 f14 @|RichDialogProcessStartIcon #fIcon
Ps0 f15 type ui.task.tasklist.tasklistData #txt
Ps0 f15 guid 124FD306DE2A6524 #txt
Ps0 f15 670 158 20 20 13 0 #rect
Ps0 f15 @|RichDialogEndIcon #fIcon
Ps0 f16 expr out #txt
Ps0 f16 680 74 680 158 #arcP
Ps0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>task state suspended || parked?</name>
        <nameStyle>31,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f17 type ui.task.tasklist.tasklistData #txt
Ps0 f17 82 282 28 28 21 -7 #rect
Ps0 f17 @|AlternativeIcon #fIcon
Ps0 f18 expr out #txt
Ps0 f18 96 258 96 282 #arcP
Ps0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
        <nameStyle>17,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f11 guid 12520C481231BA4C #txt
Ps0 f11 type ui.task.tasklist.tasklistData #txt
Ps0 f11 method refresh() #txt
Ps0 f11 disableUIEvents false #txt
Ps0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f11 outParameterDecl '<> result;
' #txt
Ps0 f11 294 54 20 20 -3 -34 #rect
Ps0 f11 @|RichDialogMethodStartIcon #fIcon
Ps0 f12 expr out #txt
Ps0 f12 294 66 114 108 #arcP
Ps0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_ListSelected</name>
        <nameStyle>21,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f13 guid 12521CDE3446E78A #txt
Ps0 f13 type ui.task.tasklist.tasklistData #txt
Ps0 f13 actionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f13 actionTable 'out=in;
out.selectedTask=panel.Table.getSelectedRow() >=0 ? panel.Table.selectedListEntry as ch.ivyteam.ivy.workflow.ITask : null;
' #txt
Ps0 f13 actionCode 'if(out.#selectedTask !=null)
{
	panel.taskNotesButton.text = ivy.cms.co("/basicwfui/labels/task/notes")
		+" ("
		+(out.selectedTask.getNotes().size()+out.selectedTask.getCase().getNotes().size())
		+")";
}' #txt
Ps0 f13 350 237 20 22 16 -9 #rect
Ps0 f13 @|RichDialogProcessStartIcon #fIcon
Ps0 f21 type ui.task.tasklist.tasklistData #txt
Ps0 f21 350 390 20 20 13 0 #rect
Ps0 f21 @|RichDialogProcessEndIcon #fIcon
Ps0 f22 expr out #txt
Ps0 f22 360 259 360 390 #arcP
Ps0 f23 guid 125BC0BE0E514006 #txt
Ps0 f23 type ui.task.tasklist.tasklistData #txt
Ps0 f23 broadcast wfUserChanged #txt
Ps0 f23 actionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f23 actionTable 'out=in;
' #txt
Ps0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>wfUserChanged</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f23 374 54 20 20 -14 -34 #rect
Ps0 f23 @|RichDialogBroadcastStartIcon #fIcon
Ps0 f24 expr out #txt
Ps0 f24 374 65 114 109 #arcP
Ps0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Refresh</name>
        <nameStyle>16,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f25 guid 125BC2CC3D740ADC #txt
Ps0 f25 type ui.task.tasklist.tasklistData #txt
Ps0 f25 actionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f25 actionTable 'out=in;
' #txt
Ps0 f25 454 54 20 20 13 0 #rect
Ps0 f25 @|RichDialogProcessStartIcon #fIcon
Ps0 f26 expr out #txt
Ps0 f26 454 65 114 110 #arcP
Ps0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load taskExecution</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f27 targetWindow THIS #txt
Ps0 f27 targetDisplay EXISTING:center_display #txt
Ps0 f27 richDialogId ui.task.TaskExecution #txt
Ps0 f27 startMethod startTask(ch.ivyteam.ivy.workflow.ITask) #txt
Ps0 f27 type ui.task.tasklist.tasklistData #txt
Ps0 f27 panelName <%=in.selectedTask%> #txt
Ps0 f27 requestActionDecl '<ch.ivyteam.ivy.workflow.ITask task> param;' #txt
Ps0 f27 requestMappingAction 'param.task=in.selectedTask;
' #txt
Ps0 f27 responseActionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f27 responseMappingAction 'out=in;
' #txt
Ps0 f27 windowConfiguration '* ' #txt
Ps0 f27 isAsynch true #txt
Ps0 f27 isInnerRd true #txt
Ps0 f27 134 348 36 24 20 -2 #rect
Ps0 f27 @|RichDialogIcon #fIcon
Ps0 f28 expr in #txt
Ps0 f28 outCond 'in.selectedTask !=null && 
(in.selectedTask.getState() == ch.ivyteam.ivy.workflow.TaskState.SUSPENDED
|| in.selectedTask.getState() == ch.ivyteam.ivy.workflow.TaskState.PARKED
|| in.selectedTask.getState() == ch.ivyteam.ivy.workflow.TaskState.RESUMED)' #txt
Ps0 f28 103 303 142 348 #arcP
Ps0 f29 expr out #txt
Ps0 f29 144 372 101 431 #arcP
Ps0 f9 expr in #txt
Ps0 f9 96 310 96 430 #arcP
Ps0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Task Details</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f10 targetWindow NEW:card: #txt
Ps0 f10 targetDisplay TOP #txt
Ps0 f10 richDialogId ui.task.TaskInfo #txt
Ps0 f10 startMethod start(ch.ivyteam.ivy.workflow.ITask) #txt
Ps0 f10 type ui.task.tasklist.tasklistData #txt
Ps0 f10 requestActionDecl '<ch.ivyteam.ivy.workflow.ITask task> param;' #txt
Ps0 f10 requestMappingAction 'param.task=in.selectedTask;
' #txt
Ps0 f10 responseActionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f10 responseMappingAction 'out=in;
' #txt
Ps0 f10 windowConfiguration '{/title "Task Info"/width 860 /height 680 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ps0 f10 isAsynch false #txt
Ps0 f10 isInnerRd true #txt
Ps0 f10 526 308 36 24 20 -2 #rect
Ps0 f10 @|RichDialogIcon #fIcon
Ps0 f30 type ui.task.tasklist.tasklistData #txt
Ps0 f30 534 390 20 20 13 0 #rect
Ps0 f30 @|RichDialogProcessEndIcon #fIcon
Ps0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Task Notes</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f33 targetWindow NEW:card: #txt
Ps0 f33 targetDisplay TOP #txt
Ps0 f33 richDialogId ui.task.TaskNotes #txt
Ps0 f33 startMethod start(ch.ivyteam.ivy.workflow.ITask) #txt
Ps0 f33 type ui.task.tasklist.tasklistData #txt
Ps0 f33 requestActionDecl '<ch.ivyteam.ivy.workflow.ITask aTask> param;' #txt
Ps0 f33 requestMappingAction 'param.aTask=in.selectedTask;
' #txt
Ps0 f33 responseActionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f33 responseMappingAction 'out=in;
' #txt
Ps0 f33 responseActionCode 'if(out.#selectedTask !=null)
{
	panel.taskNotesButton.text = ivy.cms.co("/basicwfui/labels/task/notes")
		+" ("
		+(out.selectedTask.getNotes().size()+out.selectedTask.getCase().getNotes().size())
		+")";
}' #txt
Ps0 f33 windowConfiguration '{/title "Task Notes"/width 700 /height 500 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ps0 f33 isAsynch false #txt
Ps0 f33 isInnerRd true #txt
Ps0 f33 710 308 36 24 20 -2 #rect
Ps0 f33 @|RichDialogIcon #fIcon
Ps0 f34 type ui.task.tasklist.tasklistData #txt
Ps0 f34 718 390 20 20 13 0 #rect
Ps0 f34 @|RichDialogProcessEndIcon #fIcon
Ps0 f31 expr out #txt
Ps0 f31 544 332 544 390 #arcP
Ps0 f36 expr out #txt
Ps0 f36 728 332 728 390 #arcP
Ps0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Details</name>
        <nameStyle>16,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f19 guid 125DFE4EF039BDE9 #txt
Ps0 f19 type ui.task.tasklist.tasklistData #txt
Ps0 f19 actionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f19 actionTable 'out=in;
' #txt
Ps0 f19 534 238 20 20 13 0 #rect
Ps0 f19 @|RichDialogProcessStartIcon #fIcon
Ps0 f20 expr out #txt
Ps0 f20 544 258 544 308 #arcP
Ps0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Notes</name>
        <nameStyle>14,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f32 guid 125DFE508B858195 #txt
Ps0 f32 type ui.task.tasklist.tasklistData #txt
Ps0 f32 actionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f32 actionTable 'out=in;
' #txt
Ps0 f32 718 238 20 20 13 0 #rect
Ps0 f32 @|RichDialogProcessStartIcon #fIcon
Ps0 f35 expr out #txt
Ps0 f35 728 258 728 308 #arcP
Ps0 f37 actionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f37 actionTable 'out=in;
' #txt
Ps0 f37 actionCode ' if (in.selectedTask.getState() == ch.ivyteam.ivy.workflow.TaskState.CREATED || 
	          in.selectedTask.getState() == ch.ivyteam.ivy.workflow.TaskState.RESUMED)
{
								// reset the task
								in.selectedTask.reset();
}	' #txt
Ps0 f37 type ui.task.tasklist.tasklistData #txt
Ps0 f37 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reset</name>
        <nameStyle>5,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f37 78 572 36 24 23 -9 #rect
Ps0 f37 @|RichDialogProcessStepIcon #fIcon
Ps0 f39 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Reset</name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f39 guid 125F8EA2A40F2542 #txt
Ps0 f39 type ui.task.tasklist.tasklistData #txt
Ps0 f39 actionDecl 'ui.task.tasklist.tasklistData out;
' #txt
Ps0 f39 actionTable 'out=in;
' #txt
Ps0 f39 actionCode 'if (in.selectedTask.getState() == ch.ivyteam.ivy.workflow.TaskState.RESUMED)
{
								// reset the task
								in.selectedTask.reset();
}	' #txt
Ps0 f39 86 502 20 20 13 0 #rect
Ps0 f39 @|RichDialogProcessStartIcon #fIcon
Ps0 f40 expr out #txt
Ps0 f40 96 522 96 572 #arcP
Ps0 f38 type ui.task.tasklist.tasklistData #txt
Ps0 f38 86 638 20 20 13 0 #rect
Ps0 f38 @|RichDialogProcessEndIcon #fIcon
Ps0 f41 expr out #txt
Ps0 f41 96 596 96 638 #arcP
>Proto Ps0 .type ui.task.tasklist.tasklistData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 .rdData2UIAction 'panel.resumeButton.enabled=in.selectedTask!=null;
panel.Table.listData=in.tasks;
panel.taskdetailsButton.enabled=in.selectedTask!=null;
panel.taskNotesButton.enabled=in.selectedTask!=null;
panel.resetButton.visible=in.selectedTask!=null && in.selectedTask.getState() == ch.ivyteam.ivy.workflow.TaskState.RESUMED;
panel.resumeButton.visible=in.selectedTask!=null && in.selectedTask.getState() != ch.ivyteam.ivy.workflow.TaskState.RESUMED;
' #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f4 tail #connect
Ps0 f4 head f3 mainIn #connect
Ps0 f3 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f5 mainOut f6 tail #connect
Ps0 f6 head f3 mainIn #connect
Ps0 f14 mainOut f16 tail #connect
Ps0 f16 head f15 mainIn #connect
Ps0 f7 mainOut f18 tail #connect
Ps0 f18 head f17 in #connect
Ps0 f11 mainOut f12 tail #connect
Ps0 f12 head f3 mainIn #connect
Ps0 f13 mainOut f22 tail #connect
Ps0 f22 head f21 mainIn #connect
Ps0 f23 mainOut f24 tail #connect
Ps0 f24 head f3 mainIn #connect
Ps0 f25 mainOut f26 tail #connect
Ps0 f26 head f3 mainIn #connect
Ps0 f17 out f28 tail #connect
Ps0 f28 head f27 mainIn #connect
Ps0 f27 mainOut f29 tail #connect
Ps0 f29 head f8 mainIn #connect
Ps0 f17 out f9 tail #connect
Ps0 f9 head f8 mainIn #connect
Ps0 f10 mainOut f31 tail #connect
Ps0 f31 head f30 mainIn #connect
Ps0 f33 mainOut f36 tail #connect
Ps0 f36 head f34 mainIn #connect
Ps0 f19 mainOut f20 tail #connect
Ps0 f20 head f10 mainIn #connect
Ps0 f32 mainOut f35 tail #connect
Ps0 f35 head f33 mainIn #connect
Ps0 f39 mainOut f40 tail #connect
Ps0 f40 head f37 mainIn #connect
Ps0 f37 mainOut f41 tail #connect
Ps0 f41 head f38 mainIn #connect
