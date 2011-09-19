[Ivy]
[>Created: Mon Sep 19 10:54:45 CEST 2011]
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
Ws0 @RichDialogEnd f6 '' #zField
Ws0 @RichDialogProcessEnd f12 '' #zField
Ws0 @RichDialogProcessStart f23 '' #zField
Ws0 @RichDialogProcessEnd f24 '' #zField
Ws0 @RichDialogProcessStep f16 '' #zField
Ws0 @RichDialogProcessStep f40 '' #zField
Ws0 @Alternative f41 '' #zField
Ws0 @RichDialogProcessStep f31 '' #zField
Ws0 @PushWFArc f43 '' #zField
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
Ws0 @PushWFArc f11 '' #zField
Ws0 @RichDialogMethodStart f30 '' #zField
Ws0 @RichDialogProcessEnd f49 '' #zField
Ws0 @PushWFArc f50 '' #zField
Ws0 @RichDialogProcessStep f25 '' #zField
Ws0 @CallSub f56 '' #zField
Ws0 @PushWFArc f52 '' #zField
Ws0 @PushWFArc f29 '' #zField
Ws0 @RichDialog f14 '' #zField
Ws0 @PushWFArc f17 '' #zField
Ws0 @PushWFArc f18 '' #zField
Ws0 @PushWFArc f19 '' #zField
Ws0 @PushWFArc f2 '' #zField
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
Ws0 f1 78 286 20 20 13 0 #rect
Ws0 f1 @|RichDialogProcessEndIcon #fIcon
Ws0 f6 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f6 guid 128B58A404C35958 #txt
Ws0 f6 774 374 20 20 13 0 #rect
Ws0 f6 @|RichDialogEndIcon #fIcon
Ws0 f12 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f12 558 286 20 20 13 0 #rect
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
Ws0 f23 990 38 20 20 13 0 #rect
Ws0 f23 @|RichDialogProcessStartIcon #fIcon
Ws0 f24 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f24 990 294 20 20 13 0 #rect
Ws0 f24 @|RichDialogProcessEndIcon #fIcon
Ws0 f16 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData out;
' #txt
Ws0 f16 actionTable 'out=in;
' #txt
Ws0 f16 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.StartConfigurationCreator;
import ch.ivyteam.ivy.richdialog.exec.ProcessStartConfiguration;
import ch.ivyteam.ivy.workflow.IProcessStart;

List<IProcessStart> functionProcessStarts = new List<IProcessStart>();
List<IProcessStart> sessionStartableProcessStarts = ivy.session.getStartableProcessStarts();

try
{	
	// custom "functions" tab, it could be multiple process starts comma separated
	if(ivy.var.xivy_workflow_ui_functionsProcessStartLinkHREF.length() > 0)
	{
		List<String> functionsProcessStartRequestPaths = ivy.var.xivy_workflow_ui_functionsProcessStartLinkHREF.split(", ");
	
		for (String processStartRequestPath: functionsProcessStartRequestPaths)
		{
			ivy.log.debug("Looking for the {0} as process start request path.", processStartRequestPath);
			
			for (IProcessStart processStart : sessionStartableProcessStarts)
			{		
					// Ex. of requestPath: 1215975017F13818/demoRunner.ivp to split as two elements
					// equals has to be done on second String (ex: demoRunner.ivp)
					List requestPathElements = processStart.getRequestPath().split("/");
					
					ivy.log.debug("Is process start request <{0}> equals to <{1}> ? {2}.", 
													processStartRequestPath,
													requestPathElements.get(1),
													processStartRequestPath.equals(requestPathElements.get(1)));
					
					if (processStartRequestPath.equals(requestPathElements.get(1)))
					{
						// request path from global variable found!
						ivy.log.debug("Found process start request path{0} name{1}, starting of it...", processStart.getRequestPath(), processStart.getName());
						//StartConfigurationCreator.startProcess(panel.workflowUIWindowCenterDisplay.displayId, panel, processStart);
						functionProcessStarts.add(processStart);
						break;
					}
			}//for
			
		}//for
		
		// start the process starts
		ivy.log.debug("Start function processes {0}.", functionProcessStarts);
		StartConfigurationCreator.startMultipleProcesses(ivy.rd, panel.workflowUIWindowCenterDisplay.displayId, panel, functionProcessStarts);		
	}
	

}
catch (Exception e)
{
	ivy.log.debug("Error during custom functions tab :{0}.", e.getMessage());
}' #txt
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
Ws0 f16 982 156 36 24 20 -2 #rect
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
Ws0 f40 550 92 36 24 20 -2 #rect
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
Ws0 f41 554 146 28 28 6 -19 #rect
Ws0 f41 @|AlternativeIcon #fIcon
Ws0 f31 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData out;
' #txt
Ws0 f31 actionTable 'out=in;
' #txt
Ws0 f31 actionCode ivy.session.logoutSessionUser(); #txt
Ws0 f31 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>logout
user session</name>
        <nameStyle>19,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f31 766 316 36 24 20 -2 #rect
Ws0 f31 @|RichDialogProcessStepIcon #fIcon
Ws0 f43 expr out #txt
Ws0 f43 784 340 784 374 #arcP
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
Ws0 f44 568 174 568 286 #arcP
Ws0 f8 guid 1296A857D1D694E4 #txt
Ws0 f8 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f8 method _windowClosingRequested() #txt
Ws0 f8 disableUIEvents false #txt
Ws0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ws0 f8 outParameterDecl '<> result;
' #txt
Ws0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_windowClosingRequested()</name>
    </language>
</elementInfo>
' #txt
Ws0 f8 558 38 20 20 13 0 #rect
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
Ws0 f5 638 188 36 24 20 -2 #rect
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
Ws0 f9 642 250 28 28 14 0 #rect
Ws0 f9 @|AlternativeIcon #fIcon
Ws0 f10 expr out #txt
Ws0 f10 656 212 656 250 #arcP
Ws0 f4 expr out #txt
Ws0 f4 568 58 568 92 #arcP
Ws0 f37 expr out #txt
Ws0 f37 568 116 568 146 #arcP
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
Ws0 f7 582 160 656 188 #arcP
Ws0 f7 1 656 160 #addKink
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
Ws0 f38 638 316 36 24 20 -2 #rect
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
Ws0 f39 656 278 656 316 #arcP
Ws0 f42 expr out #txt
Ws0 f42 638 328 642 264 #arcP
Ws0 f42 1 608 328 #addKink
Ws0 f42 2 608 264 #addKink
Ws0 f42 1 0.8627429653780683 0 0 #arcLabel
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
Ws0 f11 670 264 784 316 #arcP
Ws0 f11 1 784 264 #addKink
Ws0 f11 0 0.7103221060912253 0 0 #arcLabel
Ws0 f30 guid 12AF75B0A8B7AF5F #txt
Ws0 f30 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f30 method _startProcess(String,ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel,ch.ivyteam.ivy.workflow.IProcessStart) #txt
Ws0 f30 disableUIEvents false #txt
Ws0 f30 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String displayId,ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel richDialogPanel,ch.ivyteam.ivy.workflow.IProcessStart processStart> param = methodEvent.getInputArguments();
' #txt
Ws0 f30 inActionCode 'import ch.ivyteam.ivy.workflow.ui.utils.StartConfigurationCreator;

StartConfigurationCreator.startProcess(param.displayId, param.richDialogPanel, param.processStart);' #txt
Ws0 f30 outParameterDecl '<> result;
' #txt
Ws0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_startProcess(String,IRichDialogPanel,IProcessStart)</name>
        <nameStyle>52,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f30 302 38 20 20 13 0 #rect
Ws0 f30 @|RichDialogMethodStartIcon #fIcon
Ws0 f49 type ch.ivyteam.ivy.workflow.ui.restricted.technical.EmbeddedWorkflowUIWindow.EmbeddedWorkflowUIWindowData #txt
Ws0 f49 302 286 20 20 13 0 #rect
Ws0 f49 @|RichDialogProcessEndIcon #fIcon
Ws0 f50 expr out #txt
Ws0 f50 312 58 312 286 #arcP
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
Ws0 f25 70 148 36 24 20 -2 #rect
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
Ws0 f56 70 92 36 24 20 -2 #rect
Ws0 f56 @|CallSubIcon #fIcon
Ws0 f52 expr out #txt
Ws0 f52 1000 180 1000 294 #arcP
Ws0 f29 expr out #txt
Ws0 f29 88 58 88 92 #arcP
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
Ws0 f14 70 204 36 24 20 -2 #rect
Ws0 f14 @|RichDialogIcon #fIcon
Ws0 f17 expr out #txt
Ws0 f17 88 228 88 286 #arcP
Ws0 f18 expr out #txt
Ws0 f18 1000 58 1000 156 #arcP
Ws0 f19 expr out #txt
Ws0 f19 88 172 88 204 #arcP
Ws0 f2 expr out #txt
Ws0 f2 88 116 88 148 #arcP
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
    <swimlaneSize>619</swimlaneSize>
    <swimlaneSize>375</swimlaneSize>
    <swimlaneColor>-6684673</swimlaneColor>
    <swimlaneColor>-6710785</swimlaneColor>
    <swimlaneColor>-6697729</swimlaneColor>
</elementInfo>
' #txt
>Proto Ws0 -8 -8 16 16 16 26 #rect
>Proto Ws0 '' #fIcon
Ws0 f31 mainOut f43 tail #connect
Ws0 f43 head f6 mainIn #connect
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
Ws0 f9 out f11 tail #connect
Ws0 f11 head f31 mainIn #connect
Ws0 f30 mainOut f50 tail #connect
Ws0 f50 head f49 mainIn #connect
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
