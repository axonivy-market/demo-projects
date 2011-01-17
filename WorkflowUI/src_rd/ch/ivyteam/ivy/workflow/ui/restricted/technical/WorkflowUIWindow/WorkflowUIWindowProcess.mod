[Ivy]
[>Created: Mon Jan 17 16:20:05 CET 2011]
128B5701B1FDD6EF 3.15 #module
>Proto >Proto Collection #zClass
Ws0 WorkflowUIWindowProcess Big #zClass
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
Ws0 @RichDialog f58 '' #zField
Ws0 @RichDialogProcessStart f14 '' #zField
Ws0 @RichDialogProcessEnd f15 '' #zField
Ws0 @PushWFArc f17 '' #zField
Ws0 @RichDialogProcessStart f18 '' #zField
Ws0 @RichDialogProcessEnd f19 '' #zField
Ws0 @RichDialogProcessStep f21 '' #zField
Ws0 @PushWFArc f22 '' #zField
Ws0 @PushWFArc f20 '' #zField
Ws0 @RichDialogProcessStart f23 '' #zField
Ws0 @RichDialogProcessEnd f24 '' #zField
Ws0 @PushWFArc f27 '' #zField
Ws0 @RichDialogProcessStep f16 '' #zField
Ws0 @PushWFArc f28 '' #zField
Ws0 @Alternative f29 '' #zField
Ws0 @RichDialog f32 '' #zField
Ws0 @PushWFArc f33 '' #zField
Ws0 @RichDialogProcessStep f35 '' #zField
Ws0 @PushWFArc f36 '' #zField
Ws0 @PushWFArc f2 '' #zField
Ws0 @RichDialogProcessStep f40 '' #zField
Ws0 @Alternative f41 '' #zField
Ws0 @RichDialogProcessStep f31 '' #zField
Ws0 @PushWFArc f43 '' #zField
Ws0 @PushWFArc f44 '' #zField
Ws0 @RichDialogProcessStart f3 '' #zField
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
Ws0 @PushWFArc f13 '' #zField
Ws0 @RichDialogProcessStart f26 '' #zField
Ws0 @RichDialogProcessEnd f45 '' #zField
Ws0 @RichDialog f47 '' #zField
Ws0 @PushWFArc f48 '' #zField
Ws0 @PushWFArc f46 '' #zField
Ws0 @RichDialogMethodStart f30 '' #zField
Ws0 @RichDialogProcessEnd f49 '' #zField
Ws0 @PushWFArc f50 '' #zField
Ws0 @RichDialogProcessStep f52 '' #zField
Ws0 @PushWFArc f53 '' #zField
Ws0 @PushWFArc f51 '' #zField
Ws0 @PushWFArc f34 '' #zField
Ws0 @PushWFArc f55 '' #zField
>Proto Ws0 Ws0 WorkflowUIWindowProcess #zField
Ws0 f0 guid 128B5701B5E5F4EF #txt
Ws0 f0 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
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
Ws0 f1 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f1 78 278 20 20 13 0 #rect
Ws0 f1 @|RichDialogProcessEndIcon #fIcon
Ws0 f6 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f6 guid 128B58A404C35958 #txt
Ws0 f6 662 374 20 20 13 0 #rect
Ws0 f6 @|RichDialogEndIcon #fIcon
Ws0 f12 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f12 446 294 20 20 13 0 #rect
Ws0 f12 @|RichDialogProcessEndIcon #fIcon
Ws0 f58 targetWindow NEW #txt
Ws0 f58 targetDisplay TOP #txt
Ws0 f58 richDialogId IvyScript://ch.ivyteam.ivy.addons.commondialogs.AboutDialog #txt
Ws0 f58 startMethod start() #txt
Ws0 f58 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f58 requestActionDecl '<> param;' #txt
Ws0 f58 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f58 responseMappingAction 'out=in;
' #txt
Ws0 f58 windowConfiguration '{/title "About"/width 400 /height 300 /centered true /resizable false /maximized false /close_after_last_rd true }' #txt
Ws0 f58 isAsynch false #txt
Ws0 f58 isInnerRd true #txt
Ws0 f58 isDialog true #txt
Ws0 f58 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show 
about</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f58 1166 156 36 24 20 -2 #rect
Ws0 f58 @|RichDialogIcon #fIcon
Ws0 f14 guid 128B58FA131B870C #txt
Ws0 f14 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f14 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f14 actionTable 'out=in;
' #txt
Ws0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showAbout</name>
        <nameStyle>9,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f14 1174 46 20 20 13 0 #rect
Ws0 f14 @|RichDialogProcessStartIcon #fIcon
Ws0 f15 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f15 1174 278 20 20 13 0 #rect
Ws0 f15 @|RichDialogProcessEndIcon #fIcon
Ws0 f17 expr out #txt
Ws0 f17 1184 180 1184 278 #arcP
Ws0 f18 guid 128B5907D879F086 #txt
Ws0 f18 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f18 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f18 actionTable 'out=in;
' #txt
Ws0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showWorkflowUIUserGuide</name>
        <nameStyle>23,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f18 1286 46 20 20 13 0 #rect
Ws0 f18 @|RichDialogProcessStartIcon #fIcon
Ws0 f19 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f19 1286 278 20 20 13 0 #rect
Ws0 f19 @|RichDialogProcessEndIcon #fIcon
Ws0 f21 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f21 actionTable 'out=in;
' #txt
Ws0 f21 actionCode 'com.ulcjava.base.application.ClientContext.showDocument(ivy.html.coref("/ch/ivyteam/ivy/workflow/ui/help/userGuide"));
String userGuideCoref = ivy.html.coref("/ch/ivyteam/ivy/workflow/ui/help/userGuide");

ivy.log.debug("Displaying the WorkflowUI user guide from {0}.", userGuideCoref);' #txt
Ws0 f21 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>display wf user guide
 from CMS</name>
        <nameStyle>31,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f21 1278 156 36 24 20 -2 #rect
Ws0 f21 @|RichDialogProcessStepIcon #fIcon
Ws0 f22 expr out #txt
Ws0 f22 1296 66 1296 156 #arcP
Ws0 f20 expr out #txt
Ws0 f20 1296 180 1296 278 #arcP
Ws0 f23 guid 128BA9DF91EA6F89 #txt
Ws0 f23 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f23 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f23 actionTable 'out=in;
' #txt
Ws0 f23 actionCode '
// setun closing action
panel.setUpCloseHandler();' #txt
Ws0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load</name>
        <nameStyle>4,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f23 878 38 20 20 13 0 #rect
Ws0 f23 @|RichDialogProcessStartIcon #fIcon
Ws0 f24 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f24 878 334 20 20 13 0 #rect
Ws0 f24 @|RichDialogProcessEndIcon #fIcon
Ws0 f27 expr out #txt
Ws0 f27 1184 66 1184 278 #arcP
Ws0 f16 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
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
Ws0 f16 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
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
Ws0 f16 870 84 36 24 20 -2 #rect
Ws0 f16 @|RichDialogProcessStepIcon #fIcon
Ws0 f28 expr out #txt
Ws0 f28 888 58 888 84 #arcP
Ws0 f29 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>custom web banner found?</name>
        <nameStyle>24,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f29 874 210 28 28 14 0 #rect
Ws0 f29 @|AlternativeIcon #fIcon
Ws0 f32 targetWindow THIS #txt
Ws0 f32 targetDisplay EXISTING:<%=in.workflowUIWindowNorthDisplayId%> #txt
Ws0 f32 richDialogId ch.ivyteam.ivy.workflow.ui.restricted.technical.DefaultWebBannerDisplay #txt
Ws0 f32 startMethod start() #txt
Ws0 f32 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f32 requestActionDecl '<> param;' #txt
Ws0 f32 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f32 responseMappingAction 'out=in;
' #txt
Ws0 f32 windowConfiguration '* ' #txt
Ws0 f32 isAsynch true #txt
Ws0 f32 isInnerRd true #txt
Ws0 f32 isDialog false #txt
Ws0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load default
web banner</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f32 958 260 36 24 20 -2 #rect
Ws0 f32 @|RichDialogIcon #fIcon
Ws0 f33 expr in #txt
Ws0 f33 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f33 902 224 976 260 #arcP
Ws0 f33 1 976 224 #addKink
Ws0 f33 0 0.7655925810092158 0 0 #arcLabel
Ws0 f35 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f35 actionTable 'out=in;
' #txt
Ws0 f35 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.UniqueDisplayIdFactory;


out.workflowUIWindowCenterDisplayId = "workflowUICenterDisplayId";
panel.workflowUIWindowCenterDisplay.displayId = out.workflowUIWindowCenterDisplayId;

out.workflowUIWindowNorthDisplayId = "workflowUINorthDisplayId";
panel.workflowUIWindowNorthDisplay.displayId = out.workflowUIWindowNorthDisplayId;' #txt
Ws0 f35 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>define display ids</name>
        <nameStyle>18,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f35 70 156 36 24 20 -2 #rect
Ws0 f35 @|RichDialogProcessStepIcon #fIcon
Ws0 f36 expr out #txt
Ws0 f36 88 58 88 156 #arcP
Ws0 f2 expr out #txt
Ws0 f2 88 180 88 278 #arcP
Ws0 f40 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
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
Ws0 f40 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
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
Ws0 f40 438 84 36 24 20 -2 #rect
Ws0 f40 @|RichDialogProcessStepIcon #fIcon
Ws0 f41 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f41 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user clicked on cancel?</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f41 442 146 28 28 6 -19 #rect
Ws0 f41 @|AlternativeIcon #fIcon
Ws0 f31 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f31 actionTable 'out=in;
' #txt
Ws0 f31 actionCode ivy.session.logoutSessionUser(); #txt
Ws0 f31 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
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
Ws0 f31 654 316 36 24 20 -2 #rect
Ws0 f31 @|RichDialogProcessStepIcon #fIcon
Ws0 f43 expr out #txt
Ws0 f43 672 340 672 374 #arcP
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
Ws0 f44 456 174 456 294 #arcP
Ws0 f3 guid 1296A7DEAC2FC506 #txt
Ws0 f3 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f3 actionTable 'out=in;
' #txt
Ws0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f3 782 38 20 20 13 0 #rect
Ws0 f3 @|RichDialogProcessStartIcon #fIcon
Ws0 f8 guid 1296A857D1D694E4 #txt
Ws0 f8 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
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
Ws0 f8 446 38 20 20 13 0 #rect
Ws0 f8 @|RichDialogMethodStartIcon #fIcon
Ws0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f5 actionTable 'out=in;
' #txt
Ws0 f5 actionCode 'out.centerRichDialogPanels = panel.workflowUIWindowCenterDisplay.getPanels();

out.centerRichDialogPanelsIterator = out.centerRichDialogPanels.iterator();' #txt
Ws0 f5 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
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
Ws0 f5 526 188 36 24 20 -2 #rect
Ws0 f5 @|RichDialogProcessStepIcon #fIcon
Ws0 f9 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>has next?</name>
        <nameStyle>9,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f9 530 250 28 28 14 0 #rect
Ws0 f9 @|AlternativeIcon #fIcon
Ws0 f10 expr out #txt
Ws0 f10 544 212 544 250 #arcP
Ws0 f4 expr out #txt
Ws0 f4 456 58 456 84 #arcP
Ws0 f37 expr out #txt
Ws0 f37 456 108 456 146 #arcP
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
Ws0 f7 470 160 544 188 #arcP
Ws0 f7 1 544 160 #addKink
Ws0 f7 0 0.754734180593086 0 0 #arcLabel
Ws0 f38 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f38 actionTable 'out=in;
' #txt
Ws0 f38 actionCode 'import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;

IRichDialogPanel richDialogPanel = in.centerRichDialogPanelsIterator.next() as IRichDialogPanel;

richDialogPanel.getPanelAPI().unload();' #txt
Ws0 f38 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
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
Ws0 f38 526 316 36 24 20 -2 #rect
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
Ws0 f39 544 278 544 316 #arcP
Ws0 f42 expr out #txt
Ws0 f42 526 328 530 264 #arcP
Ws0 f42 1 496 328 #addKink
Ws0 f42 2 496 264 #addKink
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
Ws0 f11 558 264 672 316 #arcP
Ws0 f11 1 672 264 #addKink
Ws0 f11 0 0.7103221060912253 0 0 #arcLabel
Ws0 f13 expr out #txt
Ws0 f13 792 58 474 95 #arcP
Ws0 f13 1 792 80 #addKink
Ws0 f13 1 0.43596374799624255 0 0 #arcLabel
Ws0 f26 guid 12A15F94D8DE4145 #txt
Ws0 f26 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f26 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f26 actionTable 'out=in;
' #txt
Ws0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showSettings</name>
        <nameStyle>12,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f26 1510 46 20 20 13 0 #rect
Ws0 f26 @|RichDialogProcessStartIcon #fIcon
Ws0 f45 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f45 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ws0 f45 1510 278 20 20 13 0 #rect
Ws0 f45 @|RichDialogProcessEndIcon #fIcon
Ws0 f47 targetDisplay TOP #txt
Ws0 f47 richDialogId ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit #txt
Ws0 f47 startMethod start() #txt
Ws0 f47 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f47 requestActionDecl '<> param;' #txt
Ws0 f47 requestActionCode 'in.title = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/settingsShortDesc");' #txt
Ws0 f47 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f47 responseMappingAction 'out=in;
' #txt
Ws0 f47 windowConfiguration '{/title "<%=in.title%>"/width 700 /height 400 /centered true /resizable false /maximized false /close_after_last_rd true }' #txt
Ws0 f47 isAsynch false #txt
Ws0 f47 isInnerRd true #txt
Ws0 f47 isDialog true #txt
Ws0 f47 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ws0 f47 1502 156 36 24 20 -2 #rect
Ws0 f47 @|RichDialogIcon #fIcon
Ws0 f48 expr out #txt
Ws0 f48 1520 66 1520 156 #arcP
Ws0 f46 expr out #txt
Ws0 f46 1520 180 1520 278 #arcP
Ws0 f30 guid 12AF75B0A8B7AF5F #txt
Ws0 f30 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
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
Ws0 f30 214 38 20 20 13 0 #rect
Ws0 f30 @|RichDialogMethodStartIcon #fIcon
Ws0 f49 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f49 214 294 20 20 13 0 #rect
Ws0 f49 @|RichDialogProcessEndIcon #fIcon
Ws0 f50 expr out #txt
Ws0 f50 224 58 224 294 #arcP
Ws0 f52 actionDecl 'ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData out;
' #txt
Ws0 f52 actionTable 'out=in;
' #txt
Ws0 f52 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.StartConfigurationCreator;
import ch.ivyteam.ivy.richdialog.exec.ProcessStartConfiguration;
import ch.ivyteam.ivy.workflow.IProcessStart;

try
{	
	out.webBannerProcessStartRequestPathFound = false;
		// custom "web banner"
	if (ivy.var.xivy_workflow_ui_webBannerProcessStartLinkHREF.length() > 0)
	{
		for (IProcessStart processStart : ivy.session.getStartableProcessStarts())
		{		
				// Ex. of requestPath: 1215975017F13818/demoRunner.ivp to split as two elements
				// equals has to be done on second String (ex: demoRunner.ivp)
				List requestPathStrings = processStart.getRequestPath().split("/");
				
				if (ivy.var.xivy_workflow_ui_webBannerProcessStartLinkHREF.equals(requestPathStrings.get(1)))
				{
					// request path from global variable found!
					out.webBannerProcessStartRequestPathFound = true;
					ivy.log.debug("Found process start request path{0} name{1}, starting of it...", processStart.getRequestPath(), processStart.getName());
					StartConfigurationCreator.startProcess(panel.workflowUIWindowNorthDisplay.displayId, panel, processStart);
					break;
				}
		}
		
	}
}
catch (Exception e)
{
	ivy.log.debug("Error during custom functions tab / custom web banner :{0}.", e.getMessage());
}



' #txt
Ws0 f52 type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
Ws0 f52 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loop on startable processes
and find the one set on global variables:
banner</name>
        <nameStyle>70,7,9
6,0,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f52 870 148 36 24 20 -2 #rect
Ws0 f52 @|RichDialogProcessStepIcon #fIcon
Ws0 f53 expr out #txt
Ws0 f53 888 108 888 148 #arcP
Ws0 f51 expr out #txt
Ws0 f51 888 172 888 210 #arcP
Ws0 f34 expr in #txt
Ws0 f34 outCond in.webBannerProcessStartRequestPathFound #txt
Ws0 f34 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ws0 f34 888 238 888 334 #arcP
Ws0 f55 expr out #txt
Ws0 f55 976 284 897 340 #arcP
Ws0 f55 1 976 312 #addKink
Ws0 f55 1 0.28149288778123105 0 0 #arcLabel
>Proto Ws0 .type ch.ivyteam.ivy.workflow.ui.restricted.technical.WorkflowUIWindow.WorkflowUIWindowData #txt
>Proto Ws0 .processKind RICH_DIALOG #txt
>Proto Ws0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>RD Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>207</swimlaneSize>
    <swimlaneSize>559</swimlaneSize>
    <swimlaneSize>903</swimlaneSize>
    <swimlaneColor>-6684673</swimlaneColor>
    <swimlaneColor>-6710785</swimlaneColor>
    <swimlaneColor>-6697729</swimlaneColor>
</elementInfo>
' #txt
>Proto Ws0 -8 -8 16 16 16 26 #rect
>Proto Ws0 '' #fIcon
Ws0 f58 mainOut f17 tail #connect
Ws0 f17 head f15 mainIn #connect
Ws0 f18 mainOut f22 tail #connect
Ws0 f22 head f21 mainIn #connect
Ws0 f21 mainOut f20 tail #connect
Ws0 f20 head f19 mainIn #connect
Ws0 f14 mainOut f27 tail #connect
Ws0 f27 head f15 mainIn #connect
Ws0 f23 mainOut f28 tail #connect
Ws0 f28 head f16 mainIn #connect
Ws0 f33 head f32 mainIn #connect
Ws0 f0 mainOut f36 tail #connect
Ws0 f36 head f35 mainIn #connect
Ws0 f35 mainOut f2 tail #connect
Ws0 f2 head f1 mainIn #connect
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
Ws0 f3 mainOut f13 tail #connect
Ws0 f13 head f40 mainIn #connect
Ws0 f26 mainOut f48 tail #connect
Ws0 f48 head f47 mainIn #connect
Ws0 f47 mainOut f46 tail #connect
Ws0 f46 head f45 mainIn #connect
Ws0 f30 mainOut f50 tail #connect
Ws0 f50 head f49 mainIn #connect
Ws0 f16 mainOut f53 tail #connect
Ws0 f53 head f52 mainIn #connect
Ws0 f52 mainOut f51 tail #connect
Ws0 f51 head f29 in #connect
Ws0 f29 out f34 tail #connect
Ws0 f34 head f24 mainIn #connect
Ws0 f29 out f33 tail #connect
Ws0 f32 mainOut f55 tail #connect
Ws0 f55 head f24 mainIn #connect
