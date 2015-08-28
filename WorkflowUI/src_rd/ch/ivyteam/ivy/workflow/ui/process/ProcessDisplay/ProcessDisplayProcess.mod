[Ivy]
[>Created: Mon Feb 03 14:46:28 CET 2014]
143E3886B1BD7164 3.17 #module
>Proto >Proto Collection #zClass
Ps0 ProcessDisplayProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @RichDialogInitStart f13 '' #zField
Ps0 @RichDialogProcessStep f15 '' #zField
Ps0 @RichDialogProcessStep f17 '' #zField
Ps0 @PushWFArc f18 '' #zField
Ps0 @RichDialogBroadcastStart f3 '' #zField
Ps0 @RichDialogProcessEnd f4 '' #zField
Ps0 @RichDialogEnd f5 '' #zField
Ps0 @Alternative f7 '' #zField
Ps0 @PushWFArc f6 '' #zField
Ps0 @PushWFArc f9 '' #zField
Ps0 @PushWFArc f8 '' #zField
Ps0 @PushWFArc f16 '' #zField
Ps0 @RichDialogProcessStep f12 '' #zField
Ps0 @RichDialogMethodStart f10 '' #zField
Ps0 @RichDialogProcessEnd f11 '' #zField
Ps0 @PushWFArc f23 '' #zField
Ps0 @PushWFArc f19 '' #zField
Ps0 @PushWFArc f14 '' #zField
Ps0 @RichDialogProcessStart f20 '' #zField
Ps0 @RichDialogProcessEnd f21 '' #zField
Ps0 @RichDialogProcessStep f24 '' #zField
Ps0 @PushWFArc f25 '' #zField
Ps0 @PushWFArc f22 '' #zField
>Proto Ps0 Ps0 ProcessDisplayProcess #zField
Ps0 f0 guid 143E3886B536D6ED #txt
Ps0 f0 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f0 method start() #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 54 54 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f1 54 198 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f2 expr out #txt
Ps0 f2 64 74 64 198 #arcP
Ps0 f13 guid 143E39A678D76D49 #txt
Ps0 f13 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f13 method start(ch.ivyteam.ivy.workflow.IProcessStart) #txt
Ps0 f13 disableUIEvents true #txt
Ps0 f13 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.IProcessStart processStart> param = methodEvent.getInputArguments();
' #txt
Ps0 f13 inActionCode 'out.processStart = param.processStart;' #txt
Ps0 f13 outParameterDecl '<> result;
' #txt
Ps0 f13 embeddedRdInitializations '* ' #txt
Ps0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(IProcessStart)</name>
    </language>
</elementInfo>
' #txt
Ps0 f13 118 54 20 20 13 0 #rect
Ps0 f13 @|RichDialogInitStartIcon #fIcon
Ps0 f15 actionDecl 'ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData out;
' #txt
Ps0 f15 actionTable 'out=in;
' #txt
Ps0 f15 actionCode 'import ch.ivyteam.ivy.richdialog.exec.ProcessStartConfiguration;
import ch.ivyteam.ivy.workflow.IProcessStart;
import ch.ivyteam.ivy.workflow.ui.utils.StartConfigurationCreator;

if(in.#processStart is initialized)
{
	StartConfigurationCreator.startProcess(panel.centerCardDisplay.getDisplayId(), panel, in.processStart);
}' #txt
Ps0 f15 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start the process</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f15 110 148 36 24 20 -2 #rect
Ps0 f15 @|RichDialogProcessStepIcon #fIcon
Ps0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData out;
' #txt
Ps0 f17 actionTable 'out=in;
' #txt
Ps0 f17 actionCode 'import ch.ivyteam.ivy.event.SystemEventCategory;
import ch.ivyteam.ivy.addons.util.GuidGenerator;

// define the display ids
panel.centerCardDisplay.setDisplayId(GuidGenerator.generateID());

// register to System events of Workflow category
ivy.rd.subscribeToSystemEvents(SystemEventCategory.WORKFLOW) ;' #txt
Ps0 f17 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init the display id
register to 
System Event Framework</name>
        <nameStyle>33,7
22,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f17 110 100 36 24 20 -17 #rect
Ps0 f17 @|RichDialogProcessStepIcon #fIcon
Ps0 f18 expr out #txt
Ps0 f18 128 74 128 100 #arcP
Ps0 f18 0 0.5149677565530519 0 0 #arcLabel
Ps0 f3 guid 143E883C2FC65BB0 #txt
Ps0 f3 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f3 broadcast ivy_systemevent_workflow_task_changed #txt
Ps0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData out;
' #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 actionCode 'out.broadcastedTaskIdentifiers.clear();
out.broadcastedTaskIdentifiers.addAll(param.aWorkflowSystemEventParameter.getIds());' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy_systemevent_workflow_task_changed</name>
        <nameStyle>37,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 758 54 20 20 13 0 #rect
Ps0 f3 @|RichDialogBroadcastStartIcon #fIcon
Ps0 f4 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f4 822 198 20 20 13 0 #rect
Ps0 f4 @|RichDialogProcessEndIcon #fIcon
Ps0 f5 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f5 guid 143E883DDD53B5F7 #txt
Ps0 f5 758 198 20 20 13 0 #rect
Ps0 f5 @|RichDialogEndIcon #fIcon
Ps0 f7 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>started task id is part of broacasted ids and 
its state is one of these: DONE, READY_FOR_JOIN, PARKED</name>
        <nameStyle>102,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f7 754 98 28 28 16 -20 #rect
Ps0 f7 @|AlternativeIcon #fIcon
Ps0 f6 expr in #txt
Ps0 f6 outCond '!in.broadcastedTaskIdentifiers.isEmpty() && 
in.#startedTask is initialized &&
in.broadcastedTaskIdentifiers.contains(in.startedTask.getId()) && 	
(in.startedTask.getState().equals(ch.ivyteam.ivy.workflow.TaskState.DONE) || in.startedTask.getState().equals(ch.ivyteam.ivy.workflow.TaskState.READY_FOR_JOIN) || in.startedTask.getState().equals(ch.ivyteam.ivy.workflow.TaskState.PARKED))' #txt
Ps0 f6 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f6 768 126 768 198 #arcP
Ps0 f9 expr in #txt
Ps0 f9 774 120 826 199 #arcP
Ps0 f8 expr out #txt
Ps0 f8 128 124 128 148 #arcP
Ps0 f8 0 0.22009182063251154 0 0 #arcLabel
Ps0 f16 expr out #txt
Ps0 f16 128 172 74 208 #arcP
Ps0 f16 1 128 208 #addKink
Ps0 f16 1 0.2402639258421771 0 0 #arcLabel
Ps0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData out;
' #txt
Ps0 f12 actionTable 'out=in;
' #txt
Ps0 f12 actionCode 'import com.ulcjava.base.application.ULCComponent;
out.startedTask = in.rdPanel.getPanelAPI().getTask();
ivy.log.debug("Found task #{0} with state {1}", out.startedTask.getId(), out.startedTask.getState());' #txt
Ps0 f12 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get started task 
from display</name>
        <nameStyle>18,7
12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f12 302 100 36 24 25 -17 #rect
Ps0 f12 @|RichDialogProcessStepIcon #fIcon
Ps0 f10 guid 143F7AB095A4C3D0 #txt
Ps0 f10 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f10 method _getRichDialogStartedTask(ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel) #txt
Ps0 f10 disableUIEvents false #txt
Ps0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel rdPanel> param = methodEvent.getInputArguments();
' #txt
Ps0 f10 inActionCode '// get the parameter and stop the timer
out.rdPanel = param.rdPanel;
panel.getPollingTimer().stop();' #txt
Ps0 f10 outParameterDecl '<> result;
' #txt
Ps0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_getRichDialogStartedTask(IRichDialogPanel)</name>
        <nameStyle>43,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f10 310 54 20 20 13 0 #rect
Ps0 f10 @|RichDialogMethodStartIcon #fIcon
Ps0 f11 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f11 310 198 20 20 13 0 #rect
Ps0 f11 @|RichDialogProcessEndIcon #fIcon
Ps0 f23 expr out #txt
Ps0 f23 768 74 768 98 #arcP
Ps0 f19 expr out #txt
Ps0 f19 320 124 320 198 #arcP
Ps0 f14 expr out #txt
Ps0 f14 320 74 320 100 #arcP
Ps0 f20 guid 143F7FC8F152E9BD #txt
Ps0 f20 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f20 actionDecl 'ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData out;
' #txt
Ps0 f20 actionTable 'out=in;
' #txt
Ps0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>unload</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f20 598 54 20 20 13 0 #rect
Ps0 f20 @|RichDialogProcessStartIcon #fIcon
Ps0 f21 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f21 598 198 20 20 13 0 #rect
Ps0 f21 @|RichDialogProcessEndIcon #fIcon
Ps0 f24 actionDecl 'ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData out;
' #txt
Ps0 f24 actionTable 'out=in;
' #txt
Ps0 f24 actionCode 'if (panel.getPollingTimer().isRunning())
{
	ivy.log.debug("pollig timer is running, turning it off.");
	panel.getPollingTimer().stop();
}
else
{
	ivy.log.debug("pollig timer is already turned off.");
}' #txt
Ps0 f24 type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
Ps0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>turn off timer</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f24 590 116 36 24 20 -2 #rect
Ps0 f24 @|RichDialogProcessStepIcon #fIcon
Ps0 f25 expr out #txt
Ps0 f25 608 74 608 116 #arcP
Ps0 f22 expr out #txt
Ps0 f22 608 140 608 198 #arcP
>Proto Ps0 .type ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay.ProcessDisplayData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f13 mainOut f18 tail #connect
Ps0 f18 head f17 mainIn #connect
Ps0 f7 out f6 tail #connect
Ps0 f6 head f5 mainIn #connect
Ps0 f7 out f9 tail #connect
Ps0 f9 head f4 mainIn #connect
Ps0 f17 mainOut f8 tail #connect
Ps0 f8 head f15 mainIn #connect
Ps0 f15 mainOut f16 tail #connect
Ps0 f16 head f1 mainIn #connect
Ps0 f3 mainOut f23 tail #connect
Ps0 f23 head f7 in #connect
Ps0 f12 mainOut f19 tail #connect
Ps0 f19 head f11 mainIn #connect
Ps0 f10 mainOut f14 tail #connect
Ps0 f14 head f12 mainIn #connect
Ps0 f20 mainOut f25 tail #connect
Ps0 f25 head f24 mainIn #connect
Ps0 f24 mainOut f22 tail #connect
Ps0 f22 head f21 mainIn #connect
