[Ivy]
[>Created: Mon Feb 03 15:12:13 CET 2014]
12A235154BB40481 3.17 #module
>Proto >Proto Collection #zClass
Ss0 StartListProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStep f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogProcessStart f8 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @RichDialogProcessStart f9 '' #zField
Ss0 @PushWFArc f11 '' #zField
Ss0 @RichDialogInitStart f12 '' #zField
Ss0 @PushWFArc f13 '' #zField
Ss0 @RichDialogProcessStart f14 '' #zField
Ss0 @RichDialogProcessEnd f15 '' #zField
Ss0 @PushWFArc f16 '' #zField
Ss0 @RichDialogProcessStart f5 '' #zField
Ss0 @RichDialogProcessEnd f6 '' #zField
Ss0 @RichDialog f17 '' #zField
Ss0 @Alternative f19 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @PushWFArc f20 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @PushWFArc f21 '' #zField
>Proto Ss0 Ss0 StartListProcess #zField
Ss0 f0 guid 1194923FF289C8F3 #txt
Ss0 f0 type ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents false #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 inParameterMapAction 'out.displayId="workflowUiCenterDisplay";
' #txt
Ss0 f0 inActionCode 'out.searchUnnamed = true;' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 embeddedRdInitializations '* ' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 62 30 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData #txt
Ss0 f1 59 171 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData out;
' #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 actionCode 'import ch.ivyteam.ivy.richdialog.exec.ProcessStartConfiguration;
import ch.ivyteam.ivy.workflow.IProcessStart;
import ch.ivyteam.ivy.workflow.ui.utils.SortProcessStartsUtil;
import ch.ivyteam.ivy.workflow.ui.sudo.GetProcessModelVersionState;
import ch.ivyteam.ivy.security.SecurityManagerFactory;

String name;
String description;
String pmName;
String searchAsUpperCase = in.search.toUpperCase();

out.startNames.clear();

for (IProcessStart start : ivy.session.getStartableProcessStarts())
{
	// do not include banner, custom tabs (functions), and wfui process start
	// Ex. of requestPath: 1215975017F13818/demoRunner.ivp to split as two elements
	// equals has to be done on second String (ex: demoRunner.ivp)
	List requestPathStrings = start.getRequestPath().split("/");

	// banner
	ivy.log.debug("Looking for the {0} as banner process start request path.", start.getRequestPath());
	if (ivy.var.xivy_workflow_ui_webBannerProcessStartLinkHREF.length() > 0 && ivy.var.xivy_workflow_ui_webBannerProcessStartLinkHREF.equals(requestPathStrings.get(1)))
	{				
		// request path from global variable found, skip it!
		ivy.log.debug("Banner {0} found as {1}; skip it from startable process starts for user {2}.", 
				ivy.var.xivy_workflow_ui_webBannerProcessStartLinkHREF,
				start.getRequestPath(),
				ivy.session.getSessionUserName());
					
				continue;
	}
	
	
	// custom "functions", it could be multiple process starts comma separated
	if(ivy.var.xivy_workflow_ui_functionsProcessStartLinkHREF.length() > 0)
	{
		boolean found = false;
		
		List<String> functionsProcessStartRequestPaths = ivy.var.xivy_workflow_ui_functionsProcessStartLinkHREF.split(", ");
	
		for (String processStartRequestPath: functionsProcessStartRequestPaths)
		{
			ivy.log.debug("Looking for the {0} as function process start request path.", processStartRequestPath);
			
			if (processStartRequestPath.equals(requestPathStrings.get(1)))
			{
				// request path from functions global variable found; skip it
				ivy.log.debug("Function {0} found as {1}; skip it from startable process starts for user {2}.", 
						processStartRequestPath,
						start.getRequestPath(),
						ivy.session.getSessionUserName());
				
				found = true;
				break;
			}
		}
		
		// if found go to next iteration
		if (found)
		{
			continue;
		}
	}
	
	
	// workflowUI process start
	String wfuiProcessStartRequestPath = "WorkflowUI/start.ivp";
	ivy.log.debug("Looking for the {0} as WorkflowUI process start request path.", start.getRequestPath());
	if (wfuiProcessStartRequestPath.equals(start.getRequestPath()))
	{
		// request path from WFUI start process start; skip it
		// request path from functions global variable found; skip it
		ivy.log.debug("WFUI process start {0} found as {1}; skip it from startable process starts for user {2}.", 
				wfuiProcessStartRequestPath,
				start.getRequestPath(),
				ivy.session.getSessionUserName());
				
		continue;
	}
	
	
		
	Boolean stateActiv = SecurityManagerFactory.getSecurityManager().executeAsSystem(
                new GetProcessModelVersionState(start.getProcessModelVersion())) as Boolean;
		if(stateActiv)
		{
	    name = start.getName().toUpperCase();
			description = start.getDescription().toUpperCase();
			pmName = start.getProcessModelVersion().getProcessModel().getName().toUpperCase();
	
	    if (name is initialized){
			if(!in.searchUnnamed){
				if(name.length() > 0){
					if(name.contains(searchAsUpperCase) || description.contains(searchAsUpperCase) || pmName.contains(searchAsUpperCase)){
						out.startNames.add(start);
					}
				}
			}else{
				if(name.length() > 0){
					if(name.contains(searchAsUpperCase) || description.contains(searchAsUpperCase) || pmName.contains(searchAsUpperCase)){
						out.startNames.add(start);
					}
				}else{
					if(start.getUserFriendlyRequestPath().replaceAll("/"," ").toUpperCase().contains(searchAsUpperCase)){
						out.startNames.add(start);
					}
				}
			}
		}
	}
}


SortProcessStartsUtil.SortProcessStarts(out.startNames, ivy.session.getFormattingLocale());' #txt
Ss0 f3 type ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load startable processes</name>
        <nameStyle>24,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 54 101 36 22 20 -2 #rect
Ss0 f3 @|RichDialogProcessStepIcon #fIcon
Ss0 f4 expr out #txt
Ss0 f4 72 50 72 101 #arcP
Ss0 f2 expr out #txt
Ss0 f2 72 123 72 171 #arcP
Ss0 f8 guid 1198AD228381C945 #txt
Ss0 f8 type ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData #txt
Ss0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData out;
' #txt
Ss0 f8 actionTable 'out=in;
out.searchUnnamed=panel.showNoNameCheckBox.isSelected();
' #txt
Ss0 f8 actionCode '/*
if(panel.noNamedToggleButton.isSelected()){
	panel.noNamedToggleButton.iconUri = "/ch/ivyteam/ivy/workflow/ui/common/images/showUnnamed16";
	panel.noNamedToggleButton.toolTipText = "show unnamed processes";
}else{
	panel.noNamedToggleButton.iconUri = "/ch/ivyteam/ivy/workflow/ui/common/images/hideUnnamed16";
	panel.noNamedToggleButton.toolTipText = "hide unnamed processes";
}

*/' #txt
Ss0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toggleShowProperties</name>
        <nameStyle>20,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f8 286 30 20 20 13 0 #rect
Ss0 f8 @|RichDialogProcessStartIcon #fIcon
Ss0 f10 expr out #txt
Ss0 f10 296 50 72 101 #arcP
Ss0 f10 1 296 80 #addKink
Ss0 f10 2 72 80 #addKink
Ss0 f10 1 0.4861111111111111 0 0 #arcLabel
Ss0 f9 guid 1198AF348A23A0BC #txt
Ss0 f9 type ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData #txt
Ss0 f9 actionDecl 'ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData out;
' #txt
Ss0 f9 actionTable 'out=in;
' #txt
Ss0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>search</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f9 406 30 20 20 13 0 #rect
Ss0 f9 @|RichDialogProcessStartIcon #fIcon
Ss0 f11 expr out #txt
Ss0 f11 416 50 72 101 #arcP
Ss0 f11 1 416 80 #addKink
Ss0 f11 2 72 80 #addKink
Ss0 f11 1 0.5293671760956539 0 0 #arcLabel
Ss0 f12 guid 11A9B8D99F1AD970 #txt
Ss0 f12 type ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData #txt
Ss0 f12 method start(String) #txt
Ss0 f12 disableUIEvents false #txt
Ss0 f12 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String aDisplayId> param = methodEvent.getInputArguments();
' #txt
Ss0 f12 inParameterMapAction 'out.displayId=param.aDisplayId;
' #txt
Ss0 f12 inActionCode 'out.searchUnnamed = true;' #txt
Ss0 f12 outParameterDecl '<> result;
' #txt
Ss0 f12 embeddedRdInitializations '* ' #txt
Ss0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(String)</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f12 150 30 20 20 13 0 #rect
Ss0 f12 @|RichDialogInitStartIcon #fIcon
Ss0 f13 expr out #txt
Ss0 f13 160 50 72 101 #arcP
Ss0 f13 1 160 80 #addKink
Ss0 f13 2 72 80 #addKink
Ss0 f13 1 0.46888853413051373 0 0 #arcLabel
Ss0 f14 guid 12C73BE98EA97C14 #txt
Ss0 f14 type ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData #txt
Ss0 f14 actionDecl 'ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData out;
' #txt
Ss0 f14 actionTable 'out=in;
' #txt
Ss0 f14 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;

if (panel.getBorder() instanceof ULCTitledBorder)
{
	(panel.getBorder() as ULCTitledBorder).setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/process/plainStrings/processStartList"));
}' #txt
Ss0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load</name>
        <nameStyle>4,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f14 478 30 20 20 13 0 #rect
Ss0 f14 @|RichDialogProcessStartIcon #fIcon
Ss0 f15 type ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData #txt
Ss0 f15 478 126 20 20 13 0 #rect
Ss0 f15 @|RichDialogProcessEndIcon #fIcon
Ss0 f16 expr out #txt
Ss0 f16 488 50 488 126 #arcP
Ss0 f5 guid 143F817862FD7B03 #txt
Ss0 f5 type ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData #txt
Ss0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData out;
' #txt
Ss0 f5 actionTable 'out=in;
' #txt
Ss0 f5 actionCode 'import ch.ivyteam.ivy.richdialog.exec.ProcessStartConfiguration;
import ch.ivyteam.ivy.workflow.IProcessStart;
import ch.ivyteam.ivy.workflow.ui.utils.StartConfigurationCreator;

if(panel.startList.getSelectedListEntry() is initialized)
{
	out.processStart = panel.startList.getSelectedListEntry() as IProcessStart;
}' #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startProcess</name>
        <nameStyle>12,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 630 30 20 20 13 0 #rect
Ss0 f5 @|RichDialogProcessStartIcon #fIcon
Ss0 f6 type ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData #txt
Ss0 f6 627 179 26 26 14 0 #rect
Ss0 f6 @|RichDialogProcessEndIcon #fIcon
Ss0 f17 targetWindow THIS #txt
Ss0 f17 targetDisplay EXISTING:<%=in.displayId%> #txt
Ss0 f17 richDialogId ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay #txt
Ss0 f17 startMethod start(ch.ivyteam.ivy.workflow.IProcessStart) #txt
Ss0 f17 type ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData #txt
Ss0 f17 panelName <%=in.title%> #txt
Ss0 f17 requestActionDecl '<ch.ivyteam.ivy.workflow.IProcessStart processStart> param;' #txt
Ss0 f17 requestActionCode 'param.processStart = in.processStart;
in.title = in.processStart.getName() is initialized? in.processStart.getName(): in.processStart.getUserFriendlyRequestPath();' #txt
Ss0 f17 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData out;
' #txt
Ss0 f17 responseMappingAction 'out=in;
' #txt
Ss0 f17 windowConfiguration '* ' #txt
Ss0 f17 isAsynch true #txt
Ss0 f17 isInnerRd true #txt
Ss0 f17 isDialog true #txt
Ss0 f17 userContext '* ' #txt
Ss0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ss0 f17 622 132 36 24 20 -2 #rect
Ss0 f17 @|RichDialogIcon #fIcon
Ss0 f19 type ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData #txt
Ss0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Process to start selected?</name>
        <nameStyle>26,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f19 626 74 28 28 9 -24 #rect
Ss0 f19 @|AlternativeIcon #fIcon
Ss0 f7 expr out #txt
Ss0 f7 640 156 640 179 #arcP
Ss0 f20 expr out #txt
Ss0 f20 640 50 640 74 #arcP
Ss0 f18 expr in #txt
Ss0 f18 outCond 'in.#processStart is initialized' #txt
Ss0 f18 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f18 640 102 640 132 #arcP
Ss0 f21 expr in #txt
Ss0 f21 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f21 654 88 653 192 #arcP
Ss0 f21 1 747 88 #addKink
Ss0 f21 2 747 192 #addKink
Ss0 f21 1 0.301389159280854 0 0 #arcLabel
>Proto Ss0 .type ch.ivyteam.ivy.workflow.ui.process.StartProcessDisplayList.StartProcessDisplayListData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 .ui2RdDataAction 'out.search=panel.searchTextField.valueAsString;
out.searchUnnamed=panel.showNoNameCheckBox.selected;
' #txt
>Proto Ss0 .rdData2UIAction 'panel.searchTextField.text=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/process/plainStrings/findProcesses");
panel.searchTextField.valueAsString=in.search;
panel.startList.listData=in.startNames;
panel.showNoNameCheckBox.selected=in.searchUnnamed;
panel.startMenuItem.text=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/process/plainStrings/menuStartProcess");
' #txt
>Proto Ss0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>246</swimlaneSize>
    <swimlaneSize>603</swimlaneSize>
    <swimlaneColor>-16711732</swimlaneColor>
    <swimlaneColor>-16737793</swimlaneColor>
</elementInfo>
' #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f0 mainOut f4 tail #connect
Ss0 f4 head f3 mainIn #connect
Ss0 f3 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f8 mainOut f10 tail #connect
Ss0 f10 head f3 mainIn #connect
Ss0 f9 mainOut f11 tail #connect
Ss0 f11 head f3 mainIn #connect
Ss0 f12 mainOut f13 tail #connect
Ss0 f13 head f3 mainIn #connect
Ss0 f14 mainOut f16 tail #connect
Ss0 f16 head f15 mainIn #connect
Ss0 f17 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f5 mainOut f20 tail #connect
Ss0 f20 head f19 in #connect
Ss0 f19 out f18 tail #connect
Ss0 f18 head f17 mainIn #connect
Ss0 f19 out f21 tail #connect
Ss0 f21 head f6 mainIn #connect
