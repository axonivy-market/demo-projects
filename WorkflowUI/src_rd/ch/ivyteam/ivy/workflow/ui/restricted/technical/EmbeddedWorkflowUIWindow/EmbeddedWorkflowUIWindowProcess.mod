[Ivy]
[>Created: Mon Sep 24 17:11:39 CEST 2012]
13271335CD7B681D 3.17 #module
>Proto >Proto Collection #zClass
Ws0 EmbeddedWorkflowUIWindowProcess Big #zClass
Ws0 RD #cInfo
Ws0 #process
Ws0 @MessageFlowInP-0n messageIn messageIn #zField
Ws0 @MessageFlowOutP-0n messageOut messageOut #zField
Ws0 @TextInP .resExport .resExport #zField
Ws0 @TextInP .type .type #zField
Ws0 @TextInP .processKind .processKind #zField
Ws0 @AnnotationInP-0n ai ai #zField
Ws0 @TextInP .xml .xml #zField
Ws0 @TextInP .responsibility .responsibility #zField
Ws0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ws0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ws0 @RichDialogInitStart f0 '' #zField
Ws0 @RichDialogProcessEnd f1 '' #zField
Ws0 @RichDialogProcessEnd f12 '' #zField
Ws0 @RichDialogProcessStart f23 '' #zField
Ws0 @RichDialogProcessEnd f24 '' #zField
Ws0 @RichDialogProcessStep f16 '' #zField
Ws0 @RichDialogProcessStep f40 '' #zField
Ws0 @Alternative f41 '' #zField
Ws0 @PushWFArc f44 '' #zField
Ws0 @RichDialogMethodStart f8 '' #zField
Ws0 @RichDialogProcessStep f5 '' #zField
Ws0 @Alternative f9 '' #zField
Ws0 @PushWFArc f10 '' #zField
Ws0 @PushWFArc f4 '' #zField
Ws0 @PushWFArc f37 '' #zField
Ws0 @PushWFArc f7 '' #zField
Ws0 @RichDialogProcessStep f38 '' #zField
Ws0 @PushWFArc f39 '' #zField
Ws0 @PushWFArc f42 '' #zField
Ws0 @RichDialogProcessStep f25 '' #zField
Ws0 @CallSub f56 '' #zField
Ws0 @PushWFArc f52 '' #zField
Ws0 @PushWFArc f29 '' #zField
Ws0 @RichDialog f14 '' #zField
Ws0 @PushWFArc f17 '' #zField
Ws0 @PushWFArc f18 '' #zField
Ws0 @PushWFArc f19 '' #zField
Ws0 @PushWFArc f2 '' #zField
Ws0 @RichDialogEnd f6 '' #zField
Ws0 @PushWFArc f11 '' #zField
>Proto Ws0 Ws0 EmbeddedWorkflowUIWindowProcess #zField
Ws0 f0 guid 128B5701B5E5F4EF #txt
Ws0 f0 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f0 method start() #txt
Ws0 f0 disableUIEvents true #txt
Ws0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ws0 f0 outParameterDecl '<> result;
' #txt
Ws0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ws0 f0 78 38 20 20 13 0 #rect
Ws0 f0 @|RichDialogInitStartIcon #fIcon
Ws0 f1 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f1 78 358 20 20 13 0 #rect
Ws0 f1 @|RichDialogProcessEndIcon #fIcon
Ws0 f12 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f12 342 358 20 20 13 0 #rect
Ws0 f12 @|RichDialogProcessEndIcon #fIcon
Ws0 f23 guid 128BA9DF91EA6F89 #txt
Ws0 f23 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f23 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData out;
' #txt
Ws0 f23 actionTable 'out=in;
' #txt
Ws0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load</name>
        <nameStyle>4,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f23 718 38 20 20 13 0 #rect
Ws0 f23 @|RichDialogProcessStartIcon #fIcon
Ws0 f24 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f24 718 358 20 20 13 0 #rect
Ws0 f24 @|RichDialogProcessEndIcon #fIcon
Ws0 f16 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData out;
' #txt
Ws0 f16 actionTable 'out=in;
' #txt
Ws0 f16 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIIntegrationHelper;

WorkflowUIIntegrationHelper.startFunctionProcessStarts(ivy.session, ivy.rd, panel, panel.workflowUIWindowCenterDisplay.displayId);' #txt
Ws0 f16 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loop on startable processes
and find the one set on global variables
functions</name>
        <nameStyle>69,7,9
9,0,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f16 710 156 36 24 20 -2 #rect
Ws0 f16 @|RichDialogProcessStepIcon #fIcon
Ws0 f40 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData out;
' #txt
Ws0 f40 actionTable 'out=in;
' #txt
Ws0 f40 actionCode 'import ch.ivyteam.ivy.workflow.ui.Application.ApplicationPanel;
import com.ulcjava.base.application.ULCComponent;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;


/*
Do the loop on center display and for each:
	if ApplicationPanel then call close
		break if closeCanceled

*/

IRichDialogPanel currentRichDialogPanel;
out.closeCanceled = false;

for(IRichDialogPanel richDialogPanel: panel.workflowUIWindowCenterDisplay.getPanels())
{
	ivy.log.debug("WorkflowUIWindow - looking at component {0} ref {1}.", richDialogPanel.getName(), richDialogPanel.toString());
	
	currentRichDialogPanel = (richDialogPanel as IRichDialogPanel);
	
	if (currentRichDialogPanel instanceof ApplicationPanel)
	{
		// this is a Workflow Rich Dialog
		out.closeCanceled = (currentRichDialogPanel as ApplicationPanel).close();
		break;
	}	
}
' #txt
Ws0 f40 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f40 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>try to 
close the WFUI Application</name>
        <nameStyle>34,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f40 334 92 36 24 20 -2 #rect
Ws0 f40 @|RichDialogProcessStepIcon #fIcon
Ws0 f41 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f41 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user clicked on cancel?</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f41 338 146 28 28 6 -19 #rect
Ws0 f41 @|AlternativeIcon #fIcon
Ws0 f44 expr in #txt
Ws0 f44 outCond in.closeCanceled #txt
Ws0 f44 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f44 352 174 352 358 #arcP
Ws0 f8 guid 1296A857D1D694E4 #txt
Ws0 f8 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f8 method close() #txt
Ws0 f8 disableUIEvents false #txt
Ws0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ws0 f8 outParameterDecl '<> result;
' #txt
Ws0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
    </language>
</elementInfo>
' #txt
Ws0 f8 342 38 20 20 13 0 #rect
Ws0 f8 @|RichDialogMethodStartIcon #fIcon
Ws0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData out;
' #txt
Ws0 f5 actionTable 'out=in;
' #txt
Ws0 f5 actionCode 'out.centerRichDialogPanels = panel.workflowUIWindowCenterDisplay.getPanels();

out.centerRichDialogPanelsIterator = out.centerRichDialogPanels.iterator();' #txt
Ws0 f5 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get all others 
loaded
Rich Dialogs</name>
        <nameStyle>35,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f5 438 188 36 24 20 -2 #rect
Ws0 f5 @|RichDialogProcessStepIcon #fIcon
Ws0 f9 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>has next?</name>
        <nameStyle>9,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f9 442 250 28 28 14 0 #rect
Ws0 f9 @|AlternativeIcon #fIcon
Ws0 f10 expr out #txt
Ws0 f10 456 212 456 250 #arcP
Ws0 f4 expr out #txt
Ws0 f4 352 58 352 92 #arcP
Ws0 f37 expr out #txt
Ws0 f37 352 116 352 146 #arcP
Ws0 f7 expr in #txt
Ws0 f7 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f7 366 160 456 188 #arcP
Ws0 f7 1 456 160 #addKink
Ws0 f7 0 0.754734180593086 0 0 #arcLabel
Ws0 f38 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData out;
' #txt
Ws0 f38 actionTable 'out=in;
' #txt
Ws0 f38 actionCode 'import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;

IRichDialogPanel richDialogPanel = in.centerRichDialogPanelsIterator.next() as IRichDialogPanel;

richDialogPanel.getPanelAPI().unload();' #txt
Ws0 f38 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>unload
Rich Dialog</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f38 438 316 36 24 20 -2 #rect
Ws0 f38 @|RichDialogProcessStepIcon #fIcon
Ws0 f39 expr in #txt
Ws0 f39 outCond in.centerRichDialogPanelsIterator.hasNext() #txt
Ws0 f39 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f39 456 278 456 316 #arcP
Ws0 f42 expr out #txt
Ws0 f42 438 328 442 264 #arcP
Ws0 f42 1 408 328 #addKink
Ws0 f42 2 408 264 #addKink
Ws0 f42 1 0.8627429653780683 0 0 #arcLabel
Ws0 f25 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData out;
' #txt
Ws0 f25 actionTable 'out=in;
' #txt
Ws0 f25 actionCode panel.workflowUIWindowCenterDisplay.setDisplayId(in.workflowUIWindowCenterDisplayId); #txt
Ws0 f25 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>apply the center display id 
from global variable</name>
        <nameStyle>49,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f25 70 188 36 24 20 -2 #rect
Ws0 f25 @|RichDialogProcessStepIcon #fIcon
Ws0 f56 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f56 processCall 'Functional Processes/technical/WorkflowServices:getWindowCenterDisplayId()' #txt
Ws0 f56 doCall true #txt
Ws0 f56 requestActionDecl '<> param;
' #txt
Ws0 f56 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData out;
' #txt
Ws0 f56 responseMappingAction 'out=in;
out.workflowUIWindowCenterDisplayId=result.displayId;
' #txt
Ws0 f56 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>define center display id
getWindowCenterDisplayId()</name>
        <nameStyle>51,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f56 70 116 36 24 20 -2 #rect
Ws0 f56 @|CallSubIcon #fIcon
Ws0 f52 expr out #txt
Ws0 f52 728 180 728 358 #arcP
Ws0 f29 expr out #txt
Ws0 f29 88 58 88 116 #arcP
Ws0 f14 targetWindow THIS #txt
Ws0 f14 targetDisplay EXISTING:<%=panel.workflowUIWindowCenterDisplay.displayId%> #txt
Ws0 f14 richDialogId ch.ivyteam.ivy.workflow.ui.Application #txt
Ws0 f14 startMethod start(Boolean) #txt
Ws0 f14 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f14 panelName <%=in.windowTitle%> #txt
Ws0 f14 requestActionDecl '<Boolean standAloneMode> param;' #txt
Ws0 f14 requestActionCode 'param.standAloneMode = false;

// prepare the window title
in.windowTitle = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/flow");' #txt
Ws0 f14 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData out;
' #txt
Ws0 f14 responseMappingAction 'out=in;
' #txt
Ws0 f14 windowConfiguration '* ' #txt
Ws0 f14 isAsynch true #txt
Ws0 f14 isInnerRd true #txt
Ws0 f14 userContext '* ' #txt
Ws0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load Application</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f14 70 268 36 24 20 -2 #rect
Ws0 f14 @|RichDialogIcon #fIcon
Ws0 f17 expr out #txt
Ws0 f17 88 292 88 358 #arcP
Ws0 f18 expr out #txt
Ws0 f18 728 58 728 156 #arcP
Ws0 f19 expr out #txt
Ws0 f19 88 212 88 268 #arcP
Ws0 f2 expr out #txt
Ws0 f2 88 140 88 188 #arcP
Ws0 f6 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f6 guid 132818B7B0681314 #txt
Ws0 f6 582 358 20 20 13 0 #rect
Ws0 f6 @|RichDialogEndIcon #fIcon
Ws0 f11 expr in #txt
Ws0 f11 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f11 470 264 592 358 #arcP
Ws0 f11 1 592 264 #addKink
Ws0 f11 0 0.7103221060912253 0 0 #arcLabel
>Proto Ws0 .type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
>Proto Ws0 .processKind RICH_DIALOG #txt
>Proto Ws0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>RD Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>278</swimlaneSize>
    <swimlaneSize>378</swimlaneSize>
    <swimlaneSize>340</swimlaneSize>
    <swimlaneColor>-6684673</swimlaneColor>
    <swimlaneColor>-6710785</swimlaneColor>
    <swimlaneColor>-6697729</swimlaneColor>
</elementInfo>
' #txt
>Proto Ws0 -8 -8 16 16 16 26 #rect
>Proto Ws0 '' #fIcon
Ws0 f41 out f44 tail #connect
Ws0 f44 head f12 mainIn #connect
Ws0 f5 mainOut f10 tail #connect
Ws0 f10 head f9 in #connect
Ws0 f8 mainOut f4 tail #connect
Ws0 f4 head f40 mainIn #connect
Ws0 f40 mainOut f37 tail #connect
Ws0 f37 head f41 in #connect
Ws0 f41 out f7 tail #connect
Ws0 f7 head f5 mainIn #connect
Ws0 f9 out f39 tail #connect
Ws0 f39 head f38 mainIn #connect
Ws0 f38 mainOut f42 tail #connect
Ws0 f42 head f9 in #connect
Ws0 f16 mainOut f52 tail #connect
Ws0 f52 head f24 mainIn #connect
Ws0 f0 mainOut f29 tail #connect
Ws0 f29 head f56 mainIn #connect
Ws0 f14 mainOut f17 tail #connect
Ws0 f17 head f1 mainIn #connect
Ws0 f23 mainOut f18 tail #connect
Ws0 f18 head f16 mainIn #connect
Ws0 f25 mainOut f19 tail #connect
Ws0 f19 head f14 mainIn #connect
Ws0 f56 mainOut f2 tail #connect
Ws0 f2 head f25 mainIn #connect
Ws0 f9 out f11 tail #connect
Ws0 f11 head f6 mainIn #connect
