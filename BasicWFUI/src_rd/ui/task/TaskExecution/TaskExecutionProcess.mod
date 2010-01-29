[Ivy]
[>Created: Mon Jan 04 10:48:16 CET 2010]
125BC4949448C7B9 3.13 #module
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
Ps0 @PushWFArc f2 '' #zField
Ps0 @RichDialogProcessStep f10 '' #zField
Ps0 @RichDialogInitStart f3 '' #zField
Ps0 @RichDialogProcessEnd f5 '' #zField
Ps0 @PushWFArc f6 '' #zField
Ps0 @RichDialogBroadcastStart f7 '' #zField
Ps0 @RichDialogEnd f8 '' #zField
Ps0 @RichDialogProcessEnd f13 '' #zField
Ps0 @RichDialogProcessStart f11 '' #zField
Ps0 @RichDialogEnd f12 '' #zField
Ps0 @PushWFArc f14 '' #zField
Ps0 @Alternative f15 '' #zField
Ps0 @PushWFArc f16 '' #zField
Ps0 @PushWFArc f17 '' #zField
Ps0 @PushWFArc f9 '' #zField
Ps0 @RichDialogProcessStart f18 '' #zField
Ps0 @RichDialogEnd f19 '' #zField
Ps0 @RichDialogProcessStep f21 '' #zField
Ps0 @PushWFArc f22 '' #zField
Ps0 @PushWFArc f20 '' #zField
Ps0 @RichDialogProcessStart f23 '' #zField
Ps0 @RichDialogEnd f24 '' #zField
Ps0 @RichDialogProcessStep f25 '' #zField
Ps0 @PushWFArc f26 '' #zField
Ps0 @PushWFArc f27 '' #zField
Ps0 @RichDialogProcessStart f28 '' #zField
Ps0 @RichDialog f29 '' #zField
Ps0 @RichDialogProcessEnd f30 '' #zField
Ps0 @PushWFArc f31 '' #zField
Ps0 @PushWFArc f32 '' #zField
Ps0 @RichDialog f33 '' #zField
Ps0 @RichDialogProcessEnd f34 '' #zField
Ps0 @RichDialogProcessStart f35 '' #zField
Ps0 @PushWFArc f36 '' #zField
Ps0 @PushWFArc f37 '' #zField
Ps0 @PushWFArc f4 '' #zField
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
Ps0 f0 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f0 method start() #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 embeddedRdInitializations '* ' #txt
Ps0 f0 70 54 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f1 70 158 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f2 expr out #txt
Ps0 f2 80 74 80 158 #arcP
Ps0 f10 actionDecl 'ui.task.TaskExecution.TaskExecutionData out;
' #txt
Ps0 f10 actionTable 'out=in;
' #txt
Ps0 f10 actionCode 'import ch.ivyteam.ivy.richdialog.exec.TaskStartConfiguration;
import ch.ivyteam.ivy.richdialog.exec.application.DisplayConfigurationFactory;
import ch.ivyteam.ivy.richdialog.exec.application.IDisplayConfiguration;
import ch.ivyteam.ivy.event.SystemEventCategory;

// register to System events of Workflow category
ivy.rd.subscribeToSystemEvents(SystemEventCategory.WORKFLOW);


if(in.selectedTask != null)
{
		IDisplayConfiguration displayConfig;
		TaskStartConfiguration taskStartConfig;

		// set display_id to be unique 
		panel.CardDisplay.setDisplayId("execution_display"+in.selectedTask.getIdentifier());

		displayConfig = DisplayConfigurationFactory.createForThisWindow("execution_display"+in.selectedTask.getIdentifier(), panel);
		taskStartConfig = new TaskStartConfiguration(in.selectedTask, displayConfig);
		ivy.rd.startTask(taskStartConfig);
		panel.captionLabel.text = + in.selectedTask.toString()+" "+in.selectedTask.getName();
		panel.notesButton.text = ivy.cms.co("/basicwfui/labels/task/notes")
		+" ("
		+(out.selectedTask.getNotes().size()+out.selectedTask.getCase().getNotes().size())
		+")";
}


' #txt
Ps0 f10 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startTask</name>
        <nameStyle>9,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f10 190 108 36 24 20 -12 #rect
Ps0 f10 @|RichDialogProcessStepIcon #fIcon
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startTask(ITask)</name>
        <nameStyle>16,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 guid 125BC6881751D9E4 #txt
Ps0 f3 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f3 method startTask(ch.ivyteam.ivy.workflow.ITask) #txt
Ps0 f3 disableUIEvents true #txt
Ps0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ITask task> param = methodEvent.getInputArguments();
' #txt
Ps0 f3 inParameterMapAction 'out.selectedTask=param.task;
' #txt
Ps0 f3 outParameterDecl '<> result;
' #txt
Ps0 f3 embeddedRdInitializations '* ' #txt
Ps0 f3 198 54 20 20 13 0 #rect
Ps0 f3 @|RichDialogInitStartIcon #fIcon
Ps0 f5 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f5 198 166 20 20 13 0 #rect
Ps0 f5 @|RichDialogProcessEndIcon #fIcon
Ps0 f6 expr out #txt
Ps0 f6 208 132 208 166 #arcP
Ps0 f7 guid 125C00A2821F9B1C #txt
Ps0 f7 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f7 broadcast ivy_systemevent_workflow_task_changed #txt
Ps0 f7 actionDecl 'ui.task.TaskExecution.TaskExecutionData out;
' #txt
Ps0 f7 actionTable 'out=in;
out.wfEventParam=param.eventParam;
' #txt
Ps0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy_systemevent_workflow</name>
        <nameStyle>24,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f7 94 486 20 20 17 -7 #rect
Ps0 f7 @|RichDialogBroadcastStartIcon #fIcon
Ps0 f8 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f8 guid 125C00A3906C27BF #txt
Ps0 f8 62 630 20 20 13 0 #rect
Ps0 f8 @|RichDialogEndIcon #fIcon
Ps0 f13 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f13 142 630 20 20 13 0 #rect
Ps0 f13 @|RichDialogProcessEndIcon #fIcon
Ps0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Start1</name>
    </language>
</elementInfo>
' #txt
Ps0 f11 guid 125C090DEE3E9260 #txt
Ps0 f11 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f11 actionDecl 'ui.task.TaskExecution.TaskExecutionData out;
' #txt
Ps0 f11 actionTable 'out=in;
' #txt
Ps0 f11 398 46 20 20 17 -8 #rect
Ps0 f11 @|RichDialogProcessStartIcon #fIcon
Ps0 f12 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f12 guid 125C090F611267A6 #txt
Ps0 f12 398 166 20 20 13 0 #rect
Ps0 f12 @|RichDialogEndIcon #fIcon
Ps0 f14 expr out #txt
Ps0 f14 408 66 408 166 #arcP
Ps0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>my task DONE?</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f15 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f15 90 546 28 28 19 -4 #rect
Ps0 f15 @|AlternativeIcon #fIcon
Ps0 f16 expr out #txt
Ps0 f16 104 506 104 546 #arcP
Ps0 f17 expr in #txt
Ps0 f17 outCond 'in.wfEventParam.getIdentifiers().contains(in.selectedTask.getIdentifier()) && in.selectedTask.getState() == ch.ivyteam.ivy.workflow.TaskState.DONE' #txt
Ps0 f17 100 570 75 630 #arcP
Ps0 f9 expr in #txt
Ps0 f9 109 569 146 631 #arcP
Ps0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Park</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f18 guid 125DF230FDE60487 #txt
Ps0 f18 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f18 actionDecl 'ui.task.TaskExecution.TaskExecutionData out;
' #txt
Ps0 f18 actionTable 'out=in;
' #txt
Ps0 f18 86 254 20 20 13 0 #rect
Ps0 f18 @|RichDialogProcessStartIcon #fIcon
Ps0 f19 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f19 guid 125DF232FED488B4 #txt
Ps0 f19 86 398 20 20 13 0 #rect
Ps0 f19 @|RichDialogEndIcon #fIcon
Ps0 f21 actionDecl 'ui.task.TaskExecution.TaskExecutionData out;
' #txt
Ps0 f21 actionTable 'out=in;
' #txt
Ps0 f21 actionCode ' if (in.selectedTask.getState() == ch.ivyteam.ivy.workflow.TaskState.CREATED || 
	          in.selectedTask.getState() == ch.ivyteam.ivy.workflow.TaskState.RESUMED)
{
								// park the task
								ivy.session.parkTask(in.selectedTask);
}	' #txt
Ps0 f21 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>park</name>
        <nameStyle>4,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f21 78 324 36 24 23 -9 #rect
Ps0 f21 @|RichDialogProcessStepIcon #fIcon
Ps0 f22 expr out #txt
Ps0 f22 96 274 96 324 #arcP
Ps0 f20 expr out #txt
Ps0 f20 96 348 96 398 #arcP
Ps0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Reset</name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f23 guid 125DF25E3B6E8555 #txt
Ps0 f23 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f23 actionDecl 'ui.task.TaskExecution.TaskExecutionData out;
' #txt
Ps0 f23 actionTable 'out=in;
' #txt
Ps0 f23 actionCode 'if (in.selectedTask.getState() == ch.ivyteam.ivy.workflow.TaskState.RESUMED)
{
								// reset the task
								in.selectedTask.reset();
}	' #txt
Ps0 f23 238 254 20 20 13 0 #rect
Ps0 f23 @|RichDialogProcessStartIcon #fIcon
Ps0 f24 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f24 guid 125DF232FED488B4 #txt
Ps0 f24 238 398 20 20 13 0 #rect
Ps0 f24 @|RichDialogEndIcon #fIcon
Ps0 f25 actionDecl 'ui.task.TaskExecution.TaskExecutionData out;
' #txt
Ps0 f25 actionTable 'out=in;
' #txt
Ps0 f25 actionCode ' if (in.selectedTask.getState() == ch.ivyteam.ivy.workflow.TaskState.CREATED || 
	          in.selectedTask.getState() == ch.ivyteam.ivy.workflow.TaskState.RESUMED)
{
								// reset the task
								in.selectedTask.reset();
}	' #txt
Ps0 f25 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reset</name>
        <nameStyle>5,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f25 230 324 36 24 23 -9 #rect
Ps0 f25 @|RichDialogProcessStepIcon #fIcon
Ps0 f26 expr out #txt
Ps0 f26 248 274 248 324 #arcP
Ps0 f27 expr out #txt
Ps0 f27 248 348 248 398 #arcP
Ps0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_InfoDetails</name>
        <nameStyle>20,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f28 guid 125DF59F6CBD398C #txt
Ps0 f28 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f28 actionDecl 'ui.task.TaskExecution.TaskExecutionData out;
' #txt
Ps0 f28 actionTable 'out=in;
' #txt
Ps0 f28 398 246 20 20 13 0 #rect
Ps0 f28 @|RichDialogProcessStartIcon #fIcon
Ps0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ps0 f29 targetWindow NEW:card: #txt
Ps0 f29 targetDisplay TOP #txt
Ps0 f29 richDialogId ui.task.TaskInfoDetails #txt
Ps0 f29 startMethod start(ch.ivyteam.ivy.workflow.ITask) #txt
Ps0 f29 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f29 requestActionDecl '<ch.ivyteam.ivy.workflow.ITask aTask> param;' #txt
Ps0 f29 requestMappingAction 'param.aTask=in.selectedTask;
' #txt
Ps0 f29 responseActionDecl 'ui.task.TaskExecution.TaskExecutionData out;
' #txt
Ps0 f29 responseMappingAction 'out=in;
' #txt
Ps0 f29 windowConfiguration '{/title "Task Info"/width 860 /height 680 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ps0 f29 isAsynch false #txt
Ps0 f29 isInnerRd true #txt
Ps0 f29 390 316 36 24 20 -2 #rect
Ps0 f29 @|RichDialogIcon #fIcon
Ps0 f30 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f30 398 398 20 20 13 0 #rect
Ps0 f30 @|RichDialogProcessEndIcon #fIcon
Ps0 f31 expr out #txt
Ps0 f31 408 340 408 398 #arcP
Ps0 f32 expr out #txt
Ps0 f32 408 266 408 316 #arcP
Ps0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ps0 f33 targetWindow NEW:card: #txt
Ps0 f33 targetDisplay TOP #txt
Ps0 f33 richDialogId ui.task.TaskNotes #txt
Ps0 f33 startMethod start(ch.ivyteam.ivy.workflow.ITask) #txt
Ps0 f33 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f33 requestActionDecl '<ch.ivyteam.ivy.workflow.ITask aTask> param;' #txt
Ps0 f33 requestMappingAction 'param.aTask=in.selectedTask;
' #txt
Ps0 f33 responseActionDecl 'ui.task.TaskExecution.TaskExecutionData out;
' #txt
Ps0 f33 responseMappingAction 'out=in;
' #txt
Ps0 f33 responseActionCode 'if(out.#selectedTask !=null)
{
	panel.notesButton.text =ivy.cms.co("/basicwfui/labels/task/notes")
		+" ("
		+(out.selectedTask.getNotes().size()+out.selectedTask.getCase().getNotes().size())
		+")";
}' #txt
Ps0 f33 windowConfiguration '{/title "Task Notes"/width 700 /height 500 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ps0 f33 isAsynch false #txt
Ps0 f33 isInnerRd true #txt
Ps0 f33 574 316 36 24 20 -2 #rect
Ps0 f33 @|RichDialogIcon #fIcon
Ps0 f34 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f34 582 398 20 20 13 0 #rect
Ps0 f34 @|RichDialogProcessEndIcon #fIcon
Ps0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_TaskNotes</name>
        <nameStyle>18,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f35 guid 125DF678E0CE27DE #txt
Ps0 f35 type ui.task.TaskExecution.TaskExecutionData #txt
Ps0 f35 actionDecl 'ui.task.TaskExecution.TaskExecutionData out;
' #txt
Ps0 f35 actionTable 'out=in;
' #txt
Ps0 f35 582 246 20 20 13 0 #rect
Ps0 f35 @|RichDialogProcessStartIcon #fIcon
Ps0 f36 expr out #txt
Ps0 f36 592 340 592 398 #arcP
Ps0 f37 expr out #txt
Ps0 f37 592 266 592 316 #arcP
Ps0 f4 expr out #txt
Ps0 f4 208 74 208 108 #arcP
>Proto Ps0 .type ui.task.TaskExecution.TaskExecutionData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f10 mainOut f6 tail #connect
Ps0 f6 head f5 mainIn #connect
Ps0 f11 mainOut f14 tail #connect
Ps0 f14 head f12 mainIn #connect
Ps0 f7 mainOut f16 tail #connect
Ps0 f16 head f15 in #connect
Ps0 f15 out f17 tail #connect
Ps0 f17 head f8 mainIn #connect
Ps0 f15 out f9 tail #connect
Ps0 f9 head f13 mainIn #connect
Ps0 f18 mainOut f22 tail #connect
Ps0 f22 head f21 mainIn #connect
Ps0 f21 mainOut f20 tail #connect
Ps0 f20 head f19 mainIn #connect
Ps0 f23 mainOut f26 tail #connect
Ps0 f26 head f25 mainIn #connect
Ps0 f25 mainOut f27 tail #connect
Ps0 f27 head f24 mainIn #connect
Ps0 f29 mainOut f31 tail #connect
Ps0 f31 head f30 mainIn #connect
Ps0 f28 mainOut f32 tail #connect
Ps0 f32 head f29 mainIn #connect
Ps0 f33 mainOut f36 tail #connect
Ps0 f36 head f34 mainIn #connect
Ps0 f35 mainOut f37 tail #connect
Ps0 f37 head f33 mainIn #connect
Ps0 f3 mainOut f4 tail #connect
Ps0 f4 head f10 mainIn #connect
