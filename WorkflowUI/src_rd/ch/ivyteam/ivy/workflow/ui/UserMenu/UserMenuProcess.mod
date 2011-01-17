[Ivy]
[>Created: Tue Jan 11 16:58:04 CET 2011]
11898D6F2E86E751 3.15 #module
>Proto >Proto Collection #zClass
Us0 UserMenuProcess Big #zClass
Us0 RD #cInfo
Us0 #process
Us0 @AnnotationInP-0n ai ai #zField
Us0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Us0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Us0 @TextInP .resExport .resExport #zField
Us0 @TextInP .type .type #zField
Us0 @TextInP .processKind .processKind #zField
Us0 @MessageFlowInP-0n messageIn messageIn #zField
Us0 @MessageFlowOutP-0n messageOut messageOut #zField
Us0 @TextInP .xml .xml #zField
Us0 @TextInP .responsibility .responsibility #zField
Us0 @RichDialogInitStart f0 '' #zField
Us0 @RichDialogProcessEnd f1 '' #zField
Us0 @RichDialogProcessStart f3 '' #zField
Us0 @RichDialogProcessEnd f4 '' #zField
Us0 @RichDialogInitStart f6 '' #zField
Us0 @RichDialogProcessStep f8 '' #zField
Us0 @PushWFArc f9 '' #zField
Us0 @PushWFArc f2 '' #zField
Us0 @PushWFArc f7 '' #zField
Us0 @RichDialogProcessStep f10 '' #zField
Us0 @PushWFArc f11 '' #zField
Us0 @PushWFArc f5 '' #zField
Us0 @RichDialogProcessStart f21 '' #zField
Us0 @PushWFArc f22 '' #zField
Us0 @RichDialogProcessStep f23 '' #zField
Us0 @RichDialogProcessStart f24 '' #zField
Us0 @Alternative f25 '' #zField
Us0 @RichDialog f26 '' #zField
Us0 @PushWFArc f27 '' #zField
Us0 @PushWFArc f28 '' #zField
Us0 @RichDialogProcessStart f32 '' #zField
Us0 @RichDialogProcessStep f33 '' #zField
Us0 @RichDialog f34 '' #zField
Us0 @Alternative f35 '' #zField
Us0 @PushWFArc f37 '' #zField
Us0 @PushWFArc f36 '' #zField
Us0 @RichDialogProcessStart f57 '' #zField
Us0 @PushWFArc f62 '' #zField
Us0 @RichDialogProcessStart f63 '' #zField
Us0 @PushWFArc f64 '' #zField
Us0 @RichDialogProcessStart f65 '' #zField
Us0 @PushWFArc f66 '' #zField
Us0 @RichDialogProcessStart f12 '' #zField
Us0 @RichDialogBroadcastStart f14 '' #zField
Us0 @RichDialogProcessEnd f15 '' #zField
Us0 @Alternative f17 '' #zField
Us0 @PushWFArc f18 '' #zField
Us0 @RichDialogProcessStep f19 '' #zField
Us0 @PushWFArc f20 '' #zField
Us0 @PushWFArc f16 '' #zField
Us0 @PushWFArc f43 '' #zField
Us0 @RichDialogProcessStart f44 '' #zField
Us0 @RichDialog f46 '' #zField
Us0 @PushWFArc f47 '' #zField
Us0 @PushWFArc f45 '' #zField
Us0 @RichDialogProcessStart f48 '' #zField
Us0 @PushWFArc f49 '' #zField
Us0 @PushWFArc f50 '' #zField
Us0 @PushWFArc f40 '' #zField
Us0 @PushWFArc f39 '' #zField
Us0 @PushWFArc f31 '' #zField
Us0 @PushWFArc f58 '' #zField
Us0 @PushWFArc f56 '' #zField
Us0 @RichDialogProcessStart f29 '' #zField
Us0 @RichDialog f38 '' #zField
Us0 @PushWFArc f30 '' #zField
Us0 @RichDialogProcessEnd f42 '' #zField
Us0 @PushWFArc f51 '' #zField
Us0 @Alternative f53 '' #zField
Us0 @PushWFArc f41 '' #zField
Us0 @PushWFArc f55 '' #zField
Us0 @RichDialogProcessStep f13 '' #zField
Us0 @PushWFArc f52 '' #zField
Us0 @PushWFArc f54 '' #zField
Us0 @RichDialogProcessStep f59 '' #zField
Us0 @Alternative f60 '' #zField
Us0 @RichDialog f61 '' #zField
Us0 @RichDialogProcessStart f67 '' #zField
Us0 @PushWFArc f68 '' #zField
Us0 @PushWFArc f69 '' #zField
Us0 @PushWFArc f70 '' #zField
Us0 @PushWFArc f71 '' #zField
Us0 @PushWFArc f72 '' #zField
>Proto Us0 Us0 UserMenuProcess #zField
Us0 f0 guid 11898E4DF4D450B5 #txt
Us0 f0 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f0 method start() #txt
Us0 f0 disableUIEvents false #txt
Us0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Us0 f0 inParameterMapAction 'out.destinationDisplay=null;
out.hasWfAdministratorPermissions=false;
' #txt
Us0 f0 outParameterDecl '<> result;
' #txt
Us0 f0 embeddedRdInitializations '{/finishedCaseSearchRDC {/fieldName "finishedCaseSearchRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/settings {/fieldName "settings"/startMethod "start()"/parameterMapping ""/initScript ""}/runningTaskSearchRDC {/fieldName "runningTaskSearchRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/runningCaseSearchRDC {/fieldName "runningCaseSearchRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/startList {/fieldName "startList"/startMethod "start()"/parameterMapping ""/initScript ""}/finishedTaskSearchRDC {/fieldName "finishedTaskSearchRDC"/startMethod "start()"/parameterMapping ""/initScript ""}}' #txt
Us0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f0 62 94 20 20 13 0 #rect
Us0 f0 @|RichDialogInitStartIcon #fIcon
Us0 f1 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f1 59 411 26 26 14 0 #rect
Us0 f1 @|RichDialogProcessEndIcon #fIcon
Us0 f3 guid 11898E4F9F92111B #txt
Us0 f3 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f3 actionTable 'out=in;
' #txt
Us0 f3 actionCode 'panel.userMenuElementsCardPane.setSelectedComponent(panel.runningTaskSearchRDC);

// set the user menu title to inform the current selection and expanded to false 
//panel.userMenuTaskPane.setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/userMenuShortDesc") + " (" + panel.runningTasksHyperlink.getText() + ")");


if (!panel.runningTasksHyperlink.isClicked())
{
	panel.runningTaskSearchRDC.initializeTaskHierarchyLayoutPrefferedIndex();	
}
' #txt
Us0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showRunningTasksSearch</name>
        <nameStyle>22,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f3 462 78 20 20 13 0 #rect
Us0 f3 @|RichDialogProcessStartIcon #fIcon
Us0 f4 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f4 427 411 26 26 14 0 #rect
Us0 f4 @|RichDialogProcessEndIcon #fIcon
Us0 f6 guid 11898E916E47860B #txt
Us0 f6 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f6 method start(ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay) #txt
Us0 f6 disableUIEvents false #txt
Us0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay aDestinationDisplay> param = methodEvent.getInputArguments();
' #txt
Us0 f6 inParameterMapAction 'out.destinationDisplay=param.aDestinationDisplay;
' #txt
Us0 f6 inActionCode 'out.hasWfAdministratorPermissions = 
ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),
 ch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);' #txt
Us0 f6 outParameterDecl '<> result;
' #txt
Us0 f6 embeddedRdInitializations '{/finishedCaseSearchRDC {/fieldName "finishedCaseSearchRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,Boolean,Boolean)"/parameterMapping ""/initScript "param.aMultipleCaseListMode = false;\nparam.aDestinationDisplay = callParam.aDestinationDisplay;\nparam.aRunningCaseMode = false;\nparam.aHasWfAdministratorPermissions = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);"}/tasksSeparatorPanel {/fieldName "tasksSeparatorPanel"/startMethod "start()"/parameterMapping ""/initScript ""}/securitySeparatorPanel {/fieldName "securitySeparatorPanel"/startMethod "start()"/parameterMapping ""/initScript ""}/runningTaskSearchRDC {/fieldName "runningTaskSearchRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,Boolean,Boolean)"/parameterMapping ""/initScript "param.aMultipleTaskListMode = false;\nparam.aDestinationDisplay = callParam.aDestinationDisplay;\nparam.aRunningTaskMode = true;\nparam.aHasWfAdministratorPermissions = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);"}/runningCaseSearchRDC {/fieldName "runningCaseSearchRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,Boolean,Boolean)"/parameterMapping ""/initScript "param.aMultipleCaseListMode = false;\nparam.aDestinationDisplay = callParam.aDestinationDisplay;\nparam.aRunningCaseMode = true;\nparam.aHasWfAdministratorPermissions = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);"}/administrationSeparatorPanel {/fieldName "administrationSeparatorPanel"/startMethod "start()"/parameterMapping ""/initScript ""}/startList {/fieldName "startList"/startMethod "start(String)"/parameterMapping "param.aDisplayId=in.destinationDisplay.getDisplayId();\n"/initScript ""}/finishedTaskSearchRDC {/fieldName "finishedTaskSearchRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,Boolean,Boolean)"/parameterMapping ""/initScript "param.aMultipleTaskListMode = false;\nparam.aDestinationDisplay = callParam.aDestinationDisplay;\nparam.aRunningTaskMode = false;\nparam.aHasWfAdministratorPermissions = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);"}/casesSeparatorPanel {/fieldName "casesSeparatorPanel"/startMethod "start()"/parameterMapping ""/initScript ""}/processesSeparatorPanel {/fieldName "processesSeparatorPanel"/startMethod "start()"/parameterMapping ""/initScript ""}}' #txt
Us0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(RTabbedDisplay)</name>
        <nameStyle>21,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f6 126 94 20 20 13 0 #rect
Us0 f6 @|RichDialogInitStartIcon #fIcon
Us0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f8 actionTable 'out=in;
' #txt
Us0 f8 actionCode 'import ch.ivyteam.ivy.event.SystemEventCategory;

// register to System events of Workflow category
ivy.rd.subscribeToSystemEvents(SystemEventCategory.WORKFLOW);


out.footerTextMessage = "";
out.footerToolTipTextMessage = "";
' #txt
Us0 f8 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>make the menu entries 
visible or not (wf administrator or not)
register to the system event 
footer message to empty
</name>
        <nameStyle>118,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f8 54 188 36 24 17 4 #rect
Us0 f8 @|RichDialogProcessStepIcon #fIcon
Us0 f9 expr out #txt
Us0 f9 72 114 72 188 #arcP
Us0 f2 expr out #txt
Us0 f2 136 114 90 200 #arcP
Us0 f2 1 136 200 #addKink
Us0 f2 0 0.8246512861264338 0 0 #arcLabel
Us0 f7 expr out #txt
Us0 f7 72 212 72 411 #arcP
Us0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f10 actionTable 'out=in;
' #txt
Us0 f10 actionCode 'panel.userMenuTaskPane.collapsed = false;
panel.userMenuTaskPane.collapsed = true;' #txt
Us0 f10 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collapse the 
user menu</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f10 422 332 36 24 -19 18 #rect
Us0 f10 @|RichDialogProcessStepIcon #fIcon
Us0 f11 expr out #txt
Us0 f11 462 88 440 332 #arcP
Us0 f11 1 440 88 #addKink
Us0 f11 1 0.6061968080215532 0 0 #arcLabel
Us0 f5 expr out #txt
Us0 f5 440 356 440 411 #arcP
Us0 f5 0 0.518510330855064 0 0 #arcLabel
Us0 f21 guid 11952DFDAC1FEC98 #txt
Us0 f21 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f21 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f21 actionTable 'out=in;
' #txt
Us0 f21 actionCode 'panel.userMenuElementsCardPane.setSelectedComponent(panel.startList);

// set the user menu title to inform the current selection and expanded to false 
//panel.userMenuTaskPane.setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/userMenuShortDesc") + " (" + panel.startingProcessesHyperlink.getText() + ")");
' #txt
Us0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showStartList</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f21 462 262 20 20 14 -4 #rect
Us0 f21 @|RichDialogProcessStartIcon #fIcon
Us0 f22 expr out #txt
Us0 f22 462 272 440 332 #arcP
Us0 f22 1 440 272 #addKink
Us0 f22 1 0.5548064761785831 0 0 #arcLabel
Us0 f23 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f23 actionTable 'out=in;
' #txt
Us0 f23 actionCode 'import ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList.AbsenceDisplayListPanel;
import com.ulcjava.base.application.ULCComponent;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;

// set the user menu title to inform the current selection and expanded to false 
// panel.userMenuTaskPane.setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/userMenuShortDesc") + " (" + panel.substitutesHyperlink.getText() + ")");


List<ULCComponent> componentsList;


// display under this tab
componentsList = in.destinationDisplay.getComponents().toList();


// reset the flag (task found on display to false)
out.rdAlreadyLoadedOnDisplay = false;

for (int i=0; i< componentsList.size(); i++)
{
	ULCComponent currentComponent = componentsList.get(i);
	
	if (currentComponent instanceof AbsenceDisplayListPanel)
	{
		// finished tasks RD has been already loaded
		// it should be selected
		out.destinationDisplay.setSelectedComponent(currentComponent);
		out.rdAlreadyLoadedOnDisplay = true;

		// exit from the loop
		i = componentsList.size();
	}
	
}' #txt
Us0 f23 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the task pane title
acc. to the selection
load absence mgmt
(if loaded refresh)</name>
        <nameStyle>83,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f23 798 180 36 24 25 -13 #rect
Us0 f23 @|RichDialogProcessStepIcon #fIcon
Us0 f24 guid 119999C290E7B3DE #txt
Us0 f24 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f24 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f24 actionTable 'out=in;
' #txt
Us0 f24 actionCode panel.userMenuElementsCardPane.setSelectedComponent(panel.emptyBoxPane); #txt
Us0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadAbsenceManagement</name>
        <nameStyle>21,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f24 806 78 20 20 13 0 #rect
Us0 f24 @|RichDialogProcessStartIcon #fIcon
Us0 f25 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>already loaded?</name>
        <nameStyle>15,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f25 802 266 28 28 14 0 #rect
Us0 f25 @|AlternativeIcon #fIcon
Us0 f26 targetWindow THIS #txt
Us0 f26 targetDisplay EXISTING:<%=in.destinationDisplay.getDisplayId()%> #txt
Us0 f26 richDialogId ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList #txt
Us0 f26 startMethod start() #txt
Us0 f26 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f26 panelName <%=in.windowTitle%> #txt
Us0 f26 requestActionDecl '<> param;' #txt
Us0 f26 requestActionCode 'in.windowTitle = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/absenceShortDesc") + (ivy.session.getSessionUser().getAbsences().isEmpty()? "": " \u2022");
' #txt
Us0 f26 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f26 responseMappingAction 'out=in;
' #txt
Us0 f26 windowConfiguration '* ' #txt
Us0 f26 isAsynch true #txt
Us0 f26 isInnerRd true #txt
Us0 f26 isDialog false #txt
Us0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>prepate the title and
load absences</name>
        <nameStyle>35,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f26 798 356 36 24 20 -2 #rect
Us0 f26 @|RichDialogIcon #fIcon
Us0 f27 expr out #txt
Us0 f27 816 98 816 180 #arcP
Us0 f28 expr out #txt
Us0 f28 816 204 816 266 #arcP
Us0 f32 guid 11999AC996C1819B #txt
Us0 f32 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f32 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f32 actionTable 'out=in;
' #txt
Us0 f32 actionCode panel.userMenuElementsCardPane.setSelectedComponent(panel.emptyBoxPane); #txt
Us0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadSubstituteManagement</name>
        <nameStyle>24,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f32 1006 78 20 20 13 0 #rect
Us0 f32 @|RichDialogProcessStartIcon #fIcon
Us0 f33 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f33 actionTable 'out=in;
' #txt
Us0 f33 actionCode 'import ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList.SubstituteDisplayListPanel;
import com.ulcjava.base.application.ULCComponent;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;




// set the user menu title to inform the current selection and expanded to false 
//panel.userMenuTaskPane.setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/userMenuShortDesc") + " (" + panel.substitutesHyperlink.getText() + ")");



List<ULCComponent> componentsList;


// display under this tab
componentsList = in.destinationDisplay.getComponents().toList();


// reset the flag (task found on display to false)
out.rdAlreadyLoadedOnDisplay = false;

for (int i=0; i< componentsList.size(); i++)
{
	ULCComponent currentComponent = componentsList.get(i);
	
	if (currentComponent instanceof SubstituteDisplayListPanel)
	{
		// finished tasks RD has been already loaded
		// it should be selected
		out.destinationDisplay.setSelectedComponent(currentComponent);
		out.rdAlreadyLoadedOnDisplay = true;

		// exit from the loop
		i = componentsList.size();
	}
	
}' #txt
Us0 f33 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the task pane title
acc. to the selection
load substitute management 
(if loaded refresh)</name>
        <nameStyle>93,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f33 998 172 36 24 20 -2 #rect
Us0 f33 @|RichDialogProcessStepIcon #fIcon
Us0 f34 targetWindow THIS #txt
Us0 f34 targetDisplay EXISTING:<%=in.destinationDisplay.getDisplayId()%> #txt
Us0 f34 richDialogId ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList #txt
Us0 f34 startMethod start() #txt
Us0 f34 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f34 panelName <%=in.windowTitle%> #txt
Us0 f34 requestActionDecl '<> param;' #txt
Us0 f34 requestActionCode 'in.windowTitle = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substitutesShortDesc") + (ivy.session.getSessionUser().getSubstitutes().isEmpty()? "": " \u2022");' #txt
Us0 f34 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f34 responseMappingAction 'out=in;
' #txt
Us0 f34 windowConfiguration '* ' #txt
Us0 f34 isAsynch true #txt
Us0 f34 isInnerRd true #txt
Us0 f34 isDialog false #txt
Us0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>prepate the title and
load substitutes</name>
        <nameStyle>27,7,9
11,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f34 998 356 36 24 20 -2 #rect
Us0 f34 @|RichDialogIcon #fIcon
Us0 f35 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>already loaded?</name>
        <nameStyle>15,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f35 1002 266 28 28 14 0 #rect
Us0 f35 @|AlternativeIcon #fIcon
Us0 f37 expr out #txt
Us0 f37 1016 196 1016 266 #arcP
Us0 f36 expr out #txt
Us0 f36 1016 98 1016 172 #arcP
Us0 f57 guid 11AC4F6A88B99CF6 #txt
Us0 f57 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f57 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f57 actionTable 'out=in;
' #txt
Us0 f57 actionCode 'panel.userMenuElementsCardPane.setSelectedComponent(panel.runningCaseSearchRDC);

// set the user menu title to inform the current selection and expanded to false 
//panel.userMenuTaskPane.setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/userMenuShortDesc") + " (" + panel.runningCasesHyperlink.getText() + ")");


if (!panel.runningCasesHyperlink.isClicked())
{
	panel.runningCaseSearchRDC.initializeCaseHierarchyLayoutPrefferedIndex();	
}
' #txt
Us0 f57 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showRunningCasesSearch</name>
        <nameStyle>22,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f57 462 166 20 20 13 0 #rect
Us0 f57 @|RichDialogProcessStartIcon #fIcon
Us0 f62 expr out #txt
Us0 f62 462 176 440 332 #arcP
Us0 f62 1 440 176 #addKink
Us0 f62 1 0.6252316270605078 0 0 #arcLabel
Us0 f63 guid 11AC4F90661EFB95 #txt
Us0 f63 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f63 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f63 actionTable 'out=in;
' #txt
Us0 f63 actionCode 'panel.userMenuElementsCardPane.setSelectedComponent(panel.finishedCaseSearchRDC);

// set the user menu title to inform the current selection and expanded to false 
//panel.userMenuTaskPane.setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/userMenuShortDesc") + " (" + panel.finishedCasesHyperlink.getText() + ")");


if (!panel.finishedCasesHyperlink.isClicked())
{
	panel.finishedCaseSearchRDC.initializeCaseHierarchyLayoutPrefferedIndex();
}' #txt
Us0 f63 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showFinishedCasesSearch</name>
        <nameStyle>23,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f63 462 198 20 20 13 0 #rect
Us0 f63 @|RichDialogProcessStartIcon #fIcon
Us0 f64 expr out #txt
Us0 f64 462 208 440 332 #arcP
Us0 f64 1 440 208 #addKink
Us0 f64 1 0.6442681545628067 0 0 #arcLabel
Us0 f65 guid 11B3584EAAEF2660 #txt
Us0 f65 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f65 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f65 actionTable 'out=in;
' #txt
Us0 f65 actionCode 'panel.userMenuElementsCardPane.setSelectedComponent(panel.finishedTaskSearchRDC);

// set the user menu title to inform the current selection and expanded to false 
//panel.userMenuTaskPane.setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/userMenuShortDesc") + " (" + panel.finishedTasksHyperlink.getText() + ")");


if (!panel.finishedTasksHyperlink.isClicked())
{
	panel.finishedTaskSearchRDC.initializeTaskHierarchyLayoutPrefferedIndex();	
}
' #txt
Us0 f65 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showFinishedTasksSearch</name>
        <nameStyle>23,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f65 462 110 20 20 13 0 #rect
Us0 f65 @|RichDialogProcessStartIcon #fIcon
Us0 f66 expr out #txt
Us0 f66 462 120 440 332 #arcP
Us0 f66 1 440 120 #addKink
Us0 f66 1 0.5705200543498615 0 0 #arcLabel
Us0 f12 guid 11E3A98E2AF8E247 #txt
Us0 f12 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f12 actionTable 'out=in;
' #txt
Us0 f12 actionCode '/*
import com.ulcjava.base.application.border.ULCTitledBorder;

if (panel.getBorder() != null && panel.getBorder() instanceof ULCTitledBorder)
{
	(panel.getBorder() as ULCTitledBorder).setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/userMenuShortDesc"));
}

*/' #txt
Us0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f12 342 78 20 20 13 0 #rect
Us0 f12 @|RichDialogProcessStartIcon #fIcon
Us0 f14 guid 1207B74D67233A74 #txt
Us0 f14 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f14 broadcast ivy_systemevent_workflow_case_created #txt
Us0 f14 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f14 actionTable 'out=in;
' #txt
Us0 f14 actionCode 'import java.util.Iterator;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.persistence.IQueryResult;


IQueryResult queryResult = ivy.session.findInvolvedCases(null, null, 0, -1, true);
List<ICase> involvedCases;
Iterator casesIterator;
Boolean found = false;
ICase currentCase;
Number broadcastedCaseCreatedCaseId = param.workflowSystemEventParameter.getIdentifiers().get(0) as Number;


involvedCases.clear();
involvedCases.addAll(queryResult.getResultList());
casesIterator = involvedCases.iterator();


out.broadcastedInvolvedCaseCreatedCaseId = 0;

while (casesIterator.hasNext() && !found)
{
	currentCase = casesIterator.next() as ICase;
	ivy.log.debug("current case: " + currentCase.getName() + ", id: " + currentCase.getIdentifier());
	if (currentCase.getIdentifier() == broadcastedCaseCreatedCaseId)
	{
		out.broadcastedInvolvedCaseCreatedCaseId = broadcastedCaseCreatedCaseId;
		out.broadcastedInvolvedCaseCreatedCase = currentCase;
		found = true;
	}
}' #txt
Us0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy_systemevent_workflow_case_created</name>
        <nameStyle>37,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f14 1622 78 20 20 13 0 #rect
Us0 f14 @|RichDialogBroadcastStartIcon #fIcon
Us0 f15 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f15 1619 419 26 26 14 0 #rect
Us0 f15 @|RichDialogProcessEndIcon #fIcon
Us0 f17 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>the user is involved in this case ?</name>
        <nameStyle>35,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f17 1618 146 28 28 14 0 #rect
Us0 f17 @|AlternativeIcon #fIcon
Us0 f18 expr out #txt
Us0 f18 1632 98 1632 146 #arcP
Us0 f19 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f19 actionTable 'out=in;
' #txt
Us0 f19 actionCode '// text
String title = "<html>" + "<h3>" + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseCreatedLongDesc").toString() + "</h3>";


String caseDetails = "<b>" + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDetails").toString() + "</b>" + 
"<table border = \"0\">" +
"<tr><th align=left>" + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseId").toString() + "</th><td>" + (in.broadcastedInvolvedCaseCreatedCase.getIdentifier() is initialized? in.broadcastedInvolvedCaseCreatedCase.getIdentifier(): "n/a") + "</td></tr>" +
"<tr><th align=left>" + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseState").toString() + "</th><td>" + (in.broadcastedInvolvedCaseCreatedCase.getState() is initialized? in.broadcastedInvolvedCaseCreatedCase.getState(): "n/a") + "</td></tr>" +
"<tr><th align=left>" + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseStartTimestamp").toString() + "</th><td>" + (in.broadcastedInvolvedCaseCreatedCase.getStartTimestamp() is initialized? new DateTime(in.broadcastedInvolvedCaseCreatedCase.getStartTimestamp()).format("medium"): "n/a") + "</td></tr>" +
"<tr><th align=left>" + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseCreatorUserName").toString() + "</th><td>" + (in.broadcastedInvolvedCaseCreatedCase.getCreatorUserName() is initialized? in.broadcastedInvolvedCaseCreatedCase.getCreatorUserName(): "n/a") + "</td></tr>" +
"<tr><th align=left>" + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseName").toString() + "</th><td>" + (in.broadcastedInvolvedCaseCreatedCase.getName() is initialized? in.broadcastedInvolvedCaseCreatedCase.getName(): "n/a") + "</td></tr>" +
"<tr><th align=left>" + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDescription").toString() + "</th><td>" + (in.broadcastedInvolvedCaseCreatedCase.getDescription() is initialized? in.broadcastedInvolvedCaseCreatedCase.getDescription(): "n/a") + "</td></tr>" +
"<tr><th align=left>" + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessCategoryName").toString() + "</th><td>" + (in.broadcastedInvolvedCaseCreatedCase.getProcessCategoryName() is initialized? 
													in.broadcastedInvolvedCaseCreatedCase.getProcessCategoryName(): 
													(in.broadcastedInvolvedCaseCreatedCase.getProcessCategoryCode() is initialized? in.broadcastedInvolvedCaseCreatedCase.getProcessCategoryCode(): "n/a")) + "</td></tr>" +

"<tr><th align=left>" + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseProcessName").toString() + "</th><td>" + (in.broadcastedInvolvedCaseCreatedCase.getProcessName() is initialized? 
													in.broadcastedInvolvedCaseCreatedCase.getProcessName(): 
													(in.broadcastedInvolvedCaseCreatedCase.getProcessCode() is initialized? in.broadcastedInvolvedCaseCreatedCase.getProcessCode(): "n/a")) + "</td></tr>" +

"<tr><th align=left>" + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseTypeName").toString() + "</th><td>" + (in.broadcastedInvolvedCaseCreatedCase.getTypeName() is initialized? 
													in.broadcastedInvolvedCaseCreatedCase.getTypeName(): 
													(in.broadcastedInvolvedCaseCreatedCase.getTypeCode() is initialized? in.broadcastedInvolvedCaseCreatedCase.getTypeCode(): "n/a")) + "</td></tr>" +													

"<tr><th align=left>" + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseSubTypeName").toString() + "</th><td>" + (in.broadcastedInvolvedCaseCreatedCase.getSubTypeName() is initialized? 
													in.broadcastedInvolvedCaseCreatedCase.getSubTypeName(): 
													(in.broadcastedInvolvedCaseCreatedCase.getSubTypeCode() is initialized? in.broadcastedInvolvedCaseCreatedCase.getSubTypeCode(): "n/a")) + "</td></tr>" +		
																										
"</table>" + 

"</html>";


out.footerToolTipTextMessage = title + caseDetails;
out.footerTextMessage = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseCreatedShortDesc");
' #txt
Us0 f19 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the footer message</name>
        <nameStyle>24,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f19 1614 228 36 24 20 -2 #rect
Us0 f19 @|RichDialogProcessStepIcon #fIcon
Us0 f20 expr in #txt
Us0 f20 outCond 'in.broadcastedInvolvedCaseCreatedCaseId > 0' #txt
Us0 f20 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f20 1632 174 1632 228 #arcP
Us0 f16 expr out #txt
Us0 f16 1632 252 1632 419 #arcP
Us0 f43 expr in #txt
Us0 f43 1646 160 1645 432 #arcP
Us0 f43 1 1832 160 #addKink
Us0 f43 2 1832 432 #addKink
Us0 f43 1 0.27089112972412394 0 0 #arcLabel
Us0 f44 guid 120D8A3D53FAB0B3 #txt
Us0 f44 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f44 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f44 actionTable 'out=in;
' #txt
Us0 f44 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadUsersPermissions</name>
        <nameStyle>20,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f44 1406 78 20 20 13 0 #rect
Us0 f44 @|RichDialogProcessStartIcon #fIcon
Us0 f46 targetDisplay TOP #txt
Us0 f46 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Us0 f46 startMethod showMessageWithTitle(String,String) #txt
Us0 f46 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f46 panelName Information #txt
Us0 f46 requestActionDecl '<String aMessageTitle, String aMessageText> param;' #txt
Us0 f46 requestActionCode 'param.aMessageTitle = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/fonctionNotYetAvailable");
param.aMessageText = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/fonctionNotYetAvailableLookOnAdminTool");
' #txt
Us0 f46 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f46 responseMappingAction 'out=in;
' #txt
Us0 f46 windowConfiguration '* ' #txt
Us0 f46 isAsynch false #txt
Us0 f46 isInnerRd true #txt
Us0 f46 isDialog true #txt
Us0 f46 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Us0 f46 1398 172 36 24 20 -2 #rect
Us0 f46 @|RichDialogIcon #fIcon
Us0 f47 expr out #txt
Us0 f47 1416 98 1416 172 #arcP
Us0 f47 0 0.4948161653090129 0 0 #arcLabel
Us0 f45 expr out #txt
Us0 f45 1416 196 453 424 #arcP
Us0 f45 1 1416 424 #addKink
Us0 f45 1 0.42996443692919767 0 0 #arcLabel
Us0 f48 guid 120D8A4674E7FF64 #txt
Us0 f48 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f48 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f48 actionTable 'out=in;
' #txt
Us0 f48 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadRolesPermissions</name>
        <nameStyle>20,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f48 1454 110 20 20 13 0 #rect
Us0 f48 @|RichDialogProcessStartIcon #fIcon
Us0 f49 expr out #txt
Us0 f49 1464 130 1434 184 #arcP
Us0 f49 1 1464 184 #addKink
Us0 f49 1 0.05066689691311281 0 0 #arcLabel
Us0 f50 expr in #txt
Us0 f50 1030 280 453 424 #arcP
Us0 f50 1 1152 280 #addKink
Us0 f50 2 1152 424 #addKink
Us0 f50 2 0.46234964535081763 0 0 #arcLabel
Us0 f40 expr out #txt
Us0 f40 1016 380 453 424 #arcP
Us0 f40 1 1016 424 #addKink
Us0 f40 1 0.44940459846825515 0 0 #arcLabel
Us0 f39 expr in #txt
Us0 f39 830 280 453 424 #arcP
Us0 f39 1 952 280 #addKink
Us0 f39 2 952 424 #addKink
Us0 f39 2 0.4864722790872087 0 0 #arcLabel
Us0 f31 expr out #txt
Us0 f31 816 380 453 424 #arcP
Us0 f31 1 816 424 #addKink
Us0 f31 1 0.41675608213254894 0 0 #arcLabel
Us0 f58 expr in #txt
Us0 f58 outCond !in.rdAlreadyLoadedOnDisplay #txt
Us0 f58 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>not yet</name>
        <nameStyle>7,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f58 816 294 816 356 #arcP
Us0 f56 expr in #txt
Us0 f56 outCond !in.rdAlreadyLoadedOnDisplay #txt
Us0 f56 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>not yet</name>
        <nameStyle>7,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f56 1016 294 1016 356 #arcP
Us0 f29 guid 12A4427998E28157 #txt
Us0 f29 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f29 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f29 actionTable 'out=in;
' #txt
Us0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showManagedTeams</name>
        <nameStyle>16,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f29 630 78 20 20 13 0 #rect
Us0 f29 @|RichDialogProcessStartIcon #fIcon
Us0 f38 targetWindow THIS #txt
Us0 f38 targetDisplay EXISTING:<%=in.destinationDisplay.getDisplayId()%> #txt
Us0 f38 richDialogId ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList #txt
Us0 f38 startMethod start() #txt
Us0 f38 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f38 panelName <%=in.windowTitle%> #txt
Us0 f38 requestActionDecl '<> param;' #txt
Us0 f38 requestActionCode 'in.windowTitle = 
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/dependentTeamManagement");' #txt
Us0 f38 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f38 responseMappingAction 'out=in;
' #txt
Us0 f38 windowConfiguration '* ' #txt
Us0 f38 isAsynch true #txt
Us0 f38 isInnerRd true #txt
Us0 f38 isDialog false #txt
Us0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show
managed teams</name>
        <nameStyle>5,7,9
13,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f38 622 332 36 24 20 -2 #rect
Us0 f38 @|RichDialogIcon #fIcon
Us0 f30 expr out #txt
Us0 f30 640 356 453 424 #arcP
Us0 f30 1 640 424 #addKink
Us0 f30 1 0.27764302449921835 0 0 #arcLabel
Us0 f42 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f42 342 414 20 20 13 0 #rect
Us0 f42 @|RichDialogProcessEndIcon #fIcon
Us0 f51 expr out #txt
Us0 f51 352 98 352 414 #arcP
Us0 f51 0 0.5573829790386314 0 0 #arcLabel
Us0 f53 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f53 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>already loaded?</name>
        <nameStyle>15,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f53 626 266 28 28 14 0 #rect
Us0 f53 @|AlternativeIcon #fIcon
Us0 f41 expr in #txt
Us0 f41 outCond !in.rdAlreadyLoadedOnDisplay #txt
Us0 f41 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>not yet</name>
        <nameStyle>7,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f41 640 294 640 332 #arcP
Us0 f55 expr in #txt
Us0 f55 654 280 453 424 #arcP
Us0 f55 1 760 280 #addKink
Us0 f55 2 760 424 #addKink
Us0 f55 1 0.9749153249718624 0 0 #arcLabel
Us0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f13 actionTable 'out=in;
' #txt
Us0 f13 actionCode 'import ch.ivyteam.ivy.workflow.ui.administration.ManagedTeamsDisplayList.ManagedTeamsDisplayListPanel;
import com.ulcjava.base.application.ULCComponent;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;


List<ULCComponent> componentsList;


// display under this tab
componentsList = in.destinationDisplay.getComponents().toList();


// reset the flag (task found on display to false)
out.rdAlreadyLoadedOnDisplay = false;

for (int i=0; i< componentsList.size(); i++)
{
	ULCComponent currentComponent = componentsList.get(i);
	
	if (currentComponent instanceof ManagedTeamsDisplayListPanel)
	{
		// finished tasks RD has been already loaded
		// it should be selected
		out.destinationDisplay.setSelectedComponent(currentComponent);
		out.rdAlreadyLoadedOnDisplay = true;

		// exit from the loop
		i = componentsList.size();
	}
	
}' #txt
Us0 f13 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the task pane title
acc. to the selection
load absence mgmt
(if loaded refresh)</name>
        <nameStyle>83,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f13 622 180 36 24 25 -13 #rect
Us0 f13 @|RichDialogProcessStepIcon #fIcon
Us0 f52 expr out #txt
Us0 f52 640 98 640 180 #arcP
Us0 f54 expr out #txt
Us0 f54 640 204 640 266 #arcP
Us0 f59 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f59 actionTable 'out=in;
' #txt
Us0 f59 actionCode 'import ch.ivyteam.ivy.workflow.ui.administration.EmailNotificationEdit.EmailNotificationEditPanel;

import com.ulcjava.base.application.ULCComponent;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;



List<ULCComponent> componentsList;


// display under this tab
componentsList = in.destinationDisplay.getComponents().toList();


// reset the flag (task found on display to false)
out.rdAlreadyLoadedOnDisplay = false;

for (int i=0; i< componentsList.size(); i++)
{
	ULCComponent currentComponent = componentsList.get(i);
	
	if (currentComponent instanceof EmailNotificationEditPanel)
	{
		// finished tasks RD has been already loaded
		// it should be selected
		out.destinationDisplay.setSelectedComponent(currentComponent);
		out.rdAlreadyLoadedOnDisplay = true;

		// exit from the loop
		break;
	}
	
}' #txt
Us0 f59 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f59 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the task pane title
acc. to the selection
load email notification
(if loaded refresh)</name>
        <nameStyle>89,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f59 1206 172 36 24 20 -2 #rect
Us0 f59 @|RichDialogProcessStepIcon #fIcon
Us0 f60 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f60 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>already loaded?</name>
        <nameStyle>15,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f60 1210 266 28 28 14 0 #rect
Us0 f60 @|AlternativeIcon #fIcon
Us0 f61 targetWindow THIS #txt
Us0 f61 targetDisplay EXISTING:<%=in.destinationDisplay.getDisplayId()%> #txt
Us0 f61 richDialogId ch.ivyteam.ivy.workflow.ui.administration.EmailNotificationEdit #txt
Us0 f61 startMethod start(ch.ivyteam.ivy.security.IUserEMailNotificationSettings,java.util.Locale,ch.ivyteam.ivy.security.IEMailNotificationSettings,java.util.Locale) #txt
Us0 f61 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f61 panelName <%=in.windowTitle%> #txt
Us0 f61 requestActionDecl '<ch.ivyteam.ivy.security.IUserEMailNotificationSettings userSettings, java.util.Locale userLanguage, ch.ivyteam.ivy.security.IEMailNotificationSettings applicationDefaultSettings, java.util.Locale applicationDefaultLanguage> param;' #txt
Us0 f61 requestActionCode 'in.windowTitle = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/emailNotification/plainStrings/emailNotificationShortDesc"); 
// (ivy.session.getSessionUser().getSubstitutes().isEmpty()? "": " \u2022")

param.userSettings = ivy.session.getSessionUser().eMailNotificationSettings;
param.userLanguage = ivy.session.getSessionUser().getEMailLanguage();
param.applicationDefaultSettings = ivy.request.getApplication().getDefaultEMailNotifcationSettings();
param.applicationDefaultLanguage = ivy.request.getApplication().getDefaultEMailLanguage();

' #txt
Us0 f61 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f61 responseMappingAction 'out=in;
' #txt
Us0 f61 windowConfiguration '* ' #txt
Us0 f61 isAsynch true #txt
Us0 f61 isInnerRd true #txt
Us0 f61 isDialog false #txt
Us0 f61 userContext '* ' #txt
Us0 f61 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>prepate the title and
load substitutes</name>
        <nameStyle>27,7,9
11,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f61 1206 356 36 24 20 -2 #rect
Us0 f61 @|RichDialogIcon #fIcon
Us0 f67 guid 12D75AD1C01197DC #txt
Us0 f67 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f67 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f67 actionTable 'out=in;
' #txt
Us0 f67 actionCode panel.userMenuElementsCardPane.setSelectedComponent(panel.emptyBoxPane); #txt
Us0 f67 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadEmailNotification</name>
        <nameStyle>21,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f67 1214 78 20 20 13 0 #rect
Us0 f67 @|RichDialogProcessStartIcon #fIcon
Us0 f68 expr out #txt
Us0 f68 1224 196 1224 266 #arcP
Us0 f69 expr out #txt
Us0 f69 1224 98 1224 172 #arcP
Us0 f70 expr in #txt
Us0 f70 outCond !in.rdAlreadyLoadedOnDisplay #txt
Us0 f70 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>not yet</name>
        <nameStyle>7,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f70 1224 294 1224 356 #arcP
Us0 f71 expr out #txt
Us0 f71 1224 380 453 424 #arcP
Us0 f71 1 1224 424 #addKink
Us0 f71 1 0.4451023162298257 0 0 #arcLabel
Us0 f72 expr in #txt
Us0 f72 1238 280 453 424 #arcP
Us0 f72 1 1360 280 #addKink
Us0 f72 2 1360 424 #addKink
Us0 f72 2 0.40492032201296674 0 0 #arcLabel
>Proto Us0 .rdData2UIAction 'panel.administrationSeparatorPanel.separatorText=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/administration");
panel.casesSeparatorPanel.separatorText=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/cases");
panel.footerLabel.text=in.footerTextMessage;
panel.footerLabel.toolTipText=in.footerToolTipTextMessage;
panel.footerLabel.visible=in.footerToolTipTextMessage.length() > 0;
panel.managedTeamsHyperlink.visible=in.hasWfAdministratorPermissions;
panel.processesSeparatorPanel.separatorText=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/process/plainStrings/processes");
panel.roleSecurityHyperlink.visible=false;
panel.securitySeparatorPanel.separatorText=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/security/plainStrings/security");
panel.securitySeparatorPanel.visible=false;
panel.tasksSeparatorPanel.separatorText=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasks");
panel.userSecurityHyperlink.visible=false;
' #txt
>Proto Us0 .type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
>Proto Us0 .processKind RICH_DIALOG #txt
>Proto Us0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>294</swimlaneSize>
    <swimlaneSize>1310</swimlaneSize>
    <swimlaneColor>-16724839</swimlaneColor>
    <swimlaneColor>-16724890</swimlaneColor>
</elementInfo>
' #txt
>Proto Us0 -8 -8 16 16 16 26 #rect
>Proto Us0 '' #fIcon
Us0 f0 mainOut f9 tail #connect
Us0 f9 head f8 mainIn #connect
Us0 f6 mainOut f2 tail #connect
Us0 f2 head f8 mainIn #connect
Us0 f8 mainOut f7 tail #connect
Us0 f7 head f1 mainIn #connect
Us0 f3 mainOut f11 tail #connect
Us0 f11 head f10 mainIn #connect
Us0 f10 mainOut f5 tail #connect
Us0 f5 head f4 mainIn #connect
Us0 f21 mainOut f22 tail #connect
Us0 f22 head f10 mainIn #connect
Us0 f24 mainOut f27 tail #connect
Us0 f27 head f23 mainIn #connect
Us0 f23 mainOut f28 tail #connect
Us0 f28 head f25 in #connect
Us0 f33 mainOut f37 tail #connect
Us0 f37 head f35 in #connect
Us0 f32 mainOut f36 tail #connect
Us0 f36 head f33 mainIn #connect
Us0 f57 mainOut f62 tail #connect
Us0 f62 head f10 mainIn #connect
Us0 f63 mainOut f64 tail #connect
Us0 f64 head f10 mainIn #connect
Us0 f65 mainOut f66 tail #connect
Us0 f66 head f10 mainIn #connect
Us0 f14 mainOut f18 tail #connect
Us0 f18 head f17 in #connect
Us0 f17 out f20 tail #connect
Us0 f20 head f19 mainIn #connect
Us0 f19 mainOut f16 tail #connect
Us0 f16 head f15 mainIn #connect
Us0 f17 out f43 tail #connect
Us0 f43 head f15 mainIn #connect
Us0 f44 mainOut f47 tail #connect
Us0 f47 head f46 mainIn #connect
Us0 f46 mainOut f45 tail #connect
Us0 f45 head f4 mainIn #connect
Us0 f48 mainOut f49 tail #connect
Us0 f49 head f46 mainIn #connect
Us0 f50 head f4 mainIn #connect
Us0 f34 mainOut f40 tail #connect
Us0 f40 head f4 mainIn #connect
Us0 f39 head f4 mainIn #connect
Us0 f26 mainOut f31 tail #connect
Us0 f31 head f4 mainIn #connect
Us0 f25 out f58 tail #connect
Us0 f58 head f26 mainIn #connect
Us0 f25 out f39 tail #connect
Us0 f35 out f56 tail #connect
Us0 f56 head f34 mainIn #connect
Us0 f35 out f50 tail #connect
Us0 f38 mainOut f30 tail #connect
Us0 f30 head f4 mainIn #connect
Us0 f12 mainOut f51 tail #connect
Us0 f51 head f42 mainIn #connect
Us0 f53 out f41 tail #connect
Us0 f41 head f38 mainIn #connect
Us0 f53 out f55 tail #connect
Us0 f55 head f4 mainIn #connect
Us0 f29 mainOut f52 tail #connect
Us0 f52 head f13 mainIn #connect
Us0 f13 mainOut f54 tail #connect
Us0 f54 head f53 in #connect
Us0 f59 mainOut f68 tail #connect
Us0 f68 head f60 in #connect
Us0 f67 mainOut f69 tail #connect
Us0 f69 head f59 mainIn #connect
Us0 f60 out f70 tail #connect
Us0 f70 head f61 mainIn #connect
Us0 f61 mainOut f71 tail #connect
Us0 f71 head f4 mainIn #connect
Us0 f60 out f72 tail #connect
Us0 f72 head f4 mainIn #connect
