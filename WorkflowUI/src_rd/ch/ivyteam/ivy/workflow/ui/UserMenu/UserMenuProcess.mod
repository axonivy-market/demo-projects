[Ivy]
[>Created: Fri Jun 25 17:53:05 CEST 2010]
11898D6F2E86E751 3.14 #module
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
Us0 @RichDialogProcessStart f24 '' #zField
Us0 @RichDialogProcessStart f32 '' #zField
Us0 @RichDialogProcessStart f57 '' #zField
Us0 @PushWFArc f62 '' #zField
Us0 @RichDialogProcessStart f63 '' #zField
Us0 @PushWFArc f64 '' #zField
Us0 @RichDialogProcessStart f65 '' #zField
Us0 @PushWFArc f66 '' #zField
Us0 @RichDialogProcessStart f12 '' #zField
Us0 @PushWFArc f13 '' #zField
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
Us0 @RichDialogProcessStep f51 '' #zField
Us0 @RichDialogProcessEnd f52 '' #zField
Us0 @PushWFArc f54 '' #zField
Us0 @RichDialogProcessStep f55 '' #zField
Us0 @RichDialogProcessStart f56 '' #zField
Us0 @PushWFArc f58 '' #zField
Us0 @Alternative f59 '' #zField
Us0 @RichDialog f60 '' #zField
Us0 @PushWFArc f67 '' #zField
Us0 @PushWFArc f68 '' #zField
Us0 @PushWFArc f69 '' #zField
Us0 @PushWFArc f61 '' #zField
Us0 @PushWFArc f70 '' #zField
Us0 @PushWFArc f27 '' #zField
Us0 @RichDialogBroadcastStart f23 '' #zField
Us0 @PushWFArc f25 '' #zField
Us0 @InfoButton f26 '' #zField
Us0 @AnnotationArc f28 '' #zField
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
Us0 f0 118 126 20 20 13 0 #rect
Us0 f0 @|RichDialogInitStartIcon #fIcon
Us0 f1 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f1 115 411 26 26 14 0 #rect
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
Us0 f3 326 158 20 20 13 0 #rect
Us0 f3 @|RichDialogProcessStartIcon #fIcon
Us0 f4 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f4 411 427 26 26 14 0 #rect
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
Us0 f6 embeddedRdInitializations '{/finishedCaseSearchRDC {/fieldName "finishedCaseSearchRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,Boolean,Boolean)"/parameterMapping ""/initScript "param.aMultipleCaseListMode = false;\nparam.aDestinationDisplay = callParam.aDestinationDisplay;\nparam.aRunningCaseMode = false;\nparam.aHasWfAdministratorPermissions = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);"}/runningTaskSearchRDC {/fieldName "runningTaskSearchRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,Boolean,Boolean)"/parameterMapping ""/initScript "param.aMultipleTaskListMode = false;\nparam.aDestinationDisplay = callParam.aDestinationDisplay;\nparam.aRunningTaskMode = true;\nparam.aHasWfAdministratorPermissions = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);"}/finishedTaskSearchRDC {/fieldName "finishedTaskSearchRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,Boolean,Boolean)"/parameterMapping ""/initScript "param.aMultipleTaskListMode = false;\nparam.aDestinationDisplay = callParam.aDestinationDisplay;\nparam.aRunningTaskMode = false;\nparam.aHasWfAdministratorPermissions = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);"}/runningCaseSearchRDC {/fieldName "runningCaseSearchRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,Boolean,Boolean)"/parameterMapping ""/initScript "param.aMultipleCaseListMode = false;\nparam.aDestinationDisplay = callParam.aDestinationDisplay;\nparam.aRunningCaseMode = true;\nparam.aHasWfAdministratorPermissions = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);"}/startList {/fieldName "startList"/startMethod "start(String)"/parameterMapping "param.aDisplayId=in.destinationDisplay.getDisplayId();\n"/initScript ""}}' #txt
Us0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(RTabbedDisplay)</name>
        <nameStyle>21,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f6 182 126 20 20 13 0 #rect
Us0 f6 @|RichDialogInitStartIcon #fIcon
Us0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f8 actionTable 'out=in;
out.alreadyLoadedOnDisplay=new java.util.HashMap();
' #txt
Us0 f8 actionCode 'import ch.ivyteam.ivy.event.SystemEventCategory;

// panel.calendarHyperlink.visible = in.hasWfAdministratorPermissions;
panel.cleanHyperlink.visible = in.hasWfAdministratorPermissions;

panel.securityLabel.visible = in.hasWfAdministratorPermissions;
panel.userSecurityHyperlink.visible = in.hasWfAdministratorPermissions;
panel.roleSecurityHyperlink.visible = in.hasWfAdministratorPermissions;

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
Us0 f8 110 220 36 24 17 4 #rect
Us0 f8 @|RichDialogProcessStepIcon #fIcon
Us0 f9 expr out #txt
Us0 f9 128 146 128 220 #arcP
Us0 f2 expr out #txt
Us0 f2 192 146 146 232 #arcP
Us0 f2 1 192 232 #addKink
Us0 f2 0 0.8246512861264338 0 0 #arcLabel
Us0 f7 expr out #txt
Us0 f7 128 244 128 411 #arcP
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
Us0 f10 334 428 36 24 -19 18 #rect
Us0 f10 @|RichDialogProcessStepIcon #fIcon
Us0 f11 expr out #txt
Us0 f11 326 168 334 440 #arcP
Us0 f11 1 304 168 #addKink
Us0 f11 2 304 440 #addKink
Us0 f11 1 0.6730567500827538 0 0 #arcLabel
Us0 f5 expr out #txt
Us0 f5 370 440 411 440 #arcP
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
Us0 f21 326 222 20 20 14 -4 #rect
Us0 f21 @|RichDialogProcessStartIcon #fIcon
Us0 f22 expr out #txt
Us0 f22 326 232 334 440 #arcP
Us0 f22 1 304 232 #addKink
Us0 f22 2 304 440 #addKink
Us0 f22 1 0.6348266410120326 0 0 #arcLabel
Us0 f24 guid 119999C290E7B3DE #txt
Us0 f24 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f24 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f24 actionTable 'out=in;
out.panelToLoad.optionalPanelDisplayName=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/absenceShortDesc");
out.panelToLoad.richDialogId=ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementPanel.class.getPackage().getName();
' #txt
Us0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadAbsenceManagement</name>
        <nameStyle>21,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f24 534 110 20 20 13 0 #rect
Us0 f24 @|RichDialogProcessStartIcon #fIcon
Us0 f32 guid 11999AC996C1819B #txt
Us0 f32 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f32 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f32 actionTable 'out=in;
out.panelToLoad.optionalPanelDisplayName=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/substitutesShortDesc");
out.panelToLoad.richDialogId=ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementPanel.class.getPackage().getName();
' #txt
Us0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadSubstituteManagement</name>
        <nameStyle>24,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f32 558 150 20 20 13 0 #rect
Us0 f32 @|RichDialogProcessStartIcon #fIcon
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
Us0 f57 326 286 20 20 13 0 #rect
Us0 f57 @|RichDialogProcessStartIcon #fIcon
Us0 f62 expr out #txt
Us0 f62 326 296 334 440 #arcP
Us0 f62 1 304 296 #addKink
Us0 f62 2 304 440 #addKink
Us0 f62 1 0.755488216031447 0 0 #arcLabel
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
Us0 f63 326 318 20 20 13 0 #rect
Us0 f63 @|RichDialogProcessStartIcon #fIcon
Us0 f64 expr out #txt
Us0 f64 326 328 334 440 #arcP
Us0 f64 1 304 328 #addKink
Us0 f64 2 304 440 #addKink
Us0 f64 1 0.8168399816778443 0 0 #arcLabel
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
Us0 f65 326 190 20 20 13 0 #rect
Us0 f65 @|RichDialogProcessStartIcon #fIcon
Us0 f66 expr out #txt
Us0 f66 326 200 334 440 #arcP
Us0 f66 1 304 200 #addKink
Us0 f66 2 304 440 #addKink
Us0 f66 1 0.6685973049060121 0 0 #arcLabel
Us0 f12 guid 11E3A98E2AF8E247 #txt
Us0 f12 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f12 actionTable 'out=in;
' #txt
Us0 f12 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;

if (panel.getBorder() != null && panel.getBorder() instanceof ULCTitledBorder)
{
	(panel.getBorder() as ULCTitledBorder).setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/userMenuShortDesc"));
}' #txt
Us0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f12 222 310 20 20 13 0 #rect
Us0 f12 @|RichDialogProcessStartIcon #fIcon
Us0 f13 expr out #txt
Us0 f13 224 327 137 414 #arcP
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
Us0 f14 1118 102 20 20 13 0 #rect
Us0 f14 @|RichDialogBroadcastStartIcon #fIcon
Us0 f15 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f15 1115 379 26 26 14 0 #rect
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
Us0 f17 1114 170 28 28 14 0 #rect
Us0 f17 @|AlternativeIcon #fIcon
Us0 f18 expr out #txt
Us0 f18 1128 122 1128 170 #arcP
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
Us0 f19 1110 252 36 24 20 -2 #rect
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
Us0 f20 1128 198 1128 252 #arcP
Us0 f16 expr out #txt
Us0 f16 1128 276 1128 379 #arcP
Us0 f43 expr in #txt
Us0 f43 1142 184 1141 392 #arcP
Us0 f43 1 1328 184 #addKink
Us0 f43 2 1328 392 #addKink
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
Us0 f44 886 262 20 20 13 0 #rect
Us0 f44 @|RichDialogProcessStartIcon #fIcon
Us0 f46 targetWindow NEW #txt
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
Us0 f46 windowConfiguration '#Fri Apr 24 17:02:38 CEST 2009
use_default=true
' #txt
Us0 f46 isAsynch true #txt
Us0 f46 isInnerRd true #txt
Us0 f46 isDialog true #txt
Us0 f46 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Us0 f46 878 356 36 24 20 -2 #rect
Us0 f46 @|RichDialogIcon #fIcon
Us0 f47 expr out #txt
Us0 f47 896 282 896 356 #arcP
Us0 f47 0 0.4948161653090129 0 0 #arcLabel
Us0 f45 expr out #txt
Us0 f45 896 380 437 440 #arcP
Us0 f45 1 896 440 #addKink
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
Us0 f48 974 286 20 20 13 0 #rect
Us0 f48 @|RichDialogProcessStartIcon #fIcon
Us0 f49 expr out #txt
Us0 f49 984 306 914 368 #arcP
Us0 f49 1 984 368 #addKink
Us0 f49 1 0.05066689691311281 0 0 #arcLabel
Us0 f51 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f51 actionTable 'out=in;
' #txt
Us0 f51 actionCode 'panel.userMenuElementsCardPane.setSelectedComponent(panel.emptyBoxPane);
panel.userMenuTaskPane.setExpanded(true);' #txt
Us0 f51 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f51 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>resetUserMenu</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f51 110 580 36 24 20 -2 #rect
Us0 f51 @|RichDialogProcessStepIcon #fIcon
Us0 f52 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f52 115 643 26 26 14 0 #rect
Us0 f52 @|RichDialogProcessEndIcon #fIcon
Us0 f54 expr out #txt
Us0 f54 128 604 128 643 #arcP
Us0 f55 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f55 actionTable 'out=in;
' #txt
Us0 f55 actionCode 'import ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementPanel;
import com.ulcjava.base.application.ULCComponent;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;

// 1. set empty pane below settings menu
panel.userMenuElementsCardPane.setSelectedComponent(panel.emptyBoxPane);

// 2. set the user menu title to inform the current selection and expanded to false 
// panel.userMenuTaskPane.setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/userMenuShortDesc") + " (" + panel.substitutesHyperlink.getText() + ")");

// 3. infer "already loaded" state for panel to load
out.alreadyLoadedOnDisplay.put(in.panelToLoad.richDialogId, false); // clear state
List<ULCComponent> componentsList = in.destinationDisplay.getComponents().toList();
String currentComponentRichDialogId;
for (ULCComponent currentComponent : componentsList)
{
	currentComponentRichDialogId = currentComponent.getClass().getPackage().getName(); // id = panel package
	if (in.panelToLoad.richDialogId == currentComponentRichDialogId)
	{
		out.alreadyLoadedOnDisplay.put(in.panelToLoad.richDialogId, true); // already loaded
		out.destinationDisplay.setSelectedComponent(currentComponent);  // select (bring to front)
		break;
	}
}' #txt
Us0 f55 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f55 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>- set empty user menu elements pane
- set &quot;already loaded&quot; state for panel to load</name>
        <nameStyle>36,7
46,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f55 574 260 36 24 20 -2 #rect
Us0 f55 @|RichDialogProcessStepIcon #fIcon
Us0 f56 guid 1296FA829B5AE440 #txt
Us0 f56 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f56 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f56 actionTable 'out=in;
out.panelToLoad.optionalPanelDisplayName=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/settingsShortDesc");
out.panelToLoad.richDialogId=ch.ivyteam.ivy.workflow.ui.common.Settings.SettingsPanel.class.getPackage().getName();
' #txt
Us0 f56 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadSettings</name>
        <nameStyle>12,5,6
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f56 582 182 20 20 13 0 #rect
Us0 f56 @|RichDialogProcessStartIcon #fIcon
Us0 f58 expr out #txt
Us0 f58 592 202 592 260 #arcP
Us0 f59 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f59 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>already loaded?</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f59 578 330 28 28 25 -7 #rect
Us0 f59 @|AlternativeIcon #fIcon
Us0 f60 targetWindow THIS #txt
Us0 f60 targetDisplay EXISTING:<%=in.destinationDisplay.getDisplayId()%> #txt
Us0 f60 richDialogId IvyScript://in.panelToLoad.richDialogId #txt
Us0 f60 startMethod start() #txt
Us0 f60 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f60 panelName <%=in.panelToLoad.optionalPanelDisplayName%> #txt
Us0 f60 requestActionDecl '<> param;' #txt
Us0 f60 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f60 responseMappingAction 'out=in;
' #txt
Us0 f60 windowConfiguration '* ' #txt
Us0 f60 isAsynch true #txt
Us0 f60 isInnerRd true #txt
Us0 f60 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load selected rd</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f60 574 388 36 24 26 -2 #rect
Us0 f60 @|RichDialogIcon #fIcon
Us0 f67 expr out #txt
Us0 f67 592 284 592 330 #arcP
Us0 f68 expr out #txt
Us0 f68 592 412 437 440 #arcP
Us0 f68 1 592 440 #addKink
Us0 f68 1 0.38300435215715106 0 0 #arcLabel
Us0 f69 expr in #txt
Us0 f69 outCond 'in.alreadyLoadedOnDisplay.get(in.panelToLoad.richDialogId) as Boolean' #txt
Us0 f69 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f69 578 344 437 440 #arcP
Us0 f69 1 544 344 #addKink
Us0 f69 2 544 440 #addKink
Us0 f69 0 0.6470588235294118 0 -10 #arcLabel
Us0 f61 expr in #txt
Us0 f61 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f61 592 358 592 388 #arcP
Us0 f70 expr out #txt
Us0 f70 544 130 578 260 #arcP
Us0 f70 1 544 232 #addKink
Us0 f70 0 0.9823661953369547 0 0 #arcLabel
Us0 f27 expr out #txt
Us0 f27 568 170 585 260 #arcP
Us0 f27 1 568 232 #addKink
Us0 f27 1 0.011433205470630339 0 0 #arcLabel
Us0 f23 guid 1296FCDF74CD5FFB #txt
Us0 f23 type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
Us0 f23 broadcast resetUserMenu #txt
Us0 f23 actionDecl 'ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData out;
' #txt
Us0 f23 actionTable 'out=in;
' #txt
Us0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>resetUserMenu</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f23 118 518 20 20 13 0 #rect
Us0 f23 @|RichDialogBroadcastStartIcon #fIcon
Us0 f25 expr out #txt
Us0 f25 128 538 128 580 #arcP
Us0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>May be sent by settings panel</name>
        <nameStyle>29,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Us0 f26 75 475 171 26 -80 -8 #rect
Us0 f26 @|IBIcon #fIcon
Us0 f26 -657956|-657956|-16777216 #nodeStyle
Us0 f28 159 501 119 522 #arcP
>Proto Us0 .rdData2UIAction 'panel.calendarHyperlink.visible=false;
panel.cleanHyperlink.visible=false;
panel.footerLabel.text=in.footerTextMessage;
panel.footerLabel.toolTipText=in.footerToolTipTextMessage;
panel.footerLabel.visible=in.footerToolTipTextMessage.length() > 0;
panel.roleSecurityHyperlink.visible=false;
panel.securityLabel.visible=false;
panel.userSecurityHyperlink.visible=false;
' #txt
>Proto Us0 .type ch.ivyteam.ivy.workflow.ui.UserMenu.UserMenuData #txt
>Proto Us0 .processKind RICH_DIALOG #txt
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
Us0 f57 mainOut f62 tail #connect
Us0 f62 head f10 mainIn #connect
Us0 f63 mainOut f64 tail #connect
Us0 f64 head f10 mainIn #connect
Us0 f65 mainOut f66 tail #connect
Us0 f66 head f10 mainIn #connect
Us0 f12 mainOut f13 tail #connect
Us0 f13 head f1 mainIn #connect
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
Us0 f51 mainOut f54 tail #connect
Us0 f54 head f52 mainIn #connect
Us0 f56 mainOut f58 tail #connect
Us0 f58 head f55 mainIn #connect
Us0 f55 mainOut f67 tail #connect
Us0 f67 head f59 in #connect
Us0 f60 mainOut f68 tail #connect
Us0 f68 head f4 mainIn #connect
Us0 f59 out f69 tail #connect
Us0 f69 head f4 mainIn #connect
Us0 f59 out f61 tail #connect
Us0 f61 head f60 mainIn #connect
Us0 f24 mainOut f70 tail #connect
Us0 f70 head f55 mainIn #connect
Us0 f32 mainOut f27 tail #connect
Us0 f27 head f55 mainIn #connect
Us0 f23 mainOut f25 tail #connect
Us0 f25 head f51 mainIn #connect
Us0 f26 ao f28 tail #connect
Us0 f28 head f23 @CG|ai #connect
