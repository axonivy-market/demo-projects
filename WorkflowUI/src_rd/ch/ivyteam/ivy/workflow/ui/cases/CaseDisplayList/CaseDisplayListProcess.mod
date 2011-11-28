[Ivy]
[>Created: Thu Nov 24 16:01:47 CET 2011]
119A42FA47DC0EC8 3.17 #module
>Proto >Proto Collection #zClass
Cs0 CaseDisplayListProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogInitStart f1 '' #zField
Cs0 @RichDialogProcessEnd f2 '' #zField
Cs0 @RichDialogProcessStep f4 '' #zField
Cs0 @RichDialogProcessStep f7 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @RichDialogMethodStart f6 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @RichDialogProcessStart f11 '' #zField
Cs0 @RichDialogProcessEnd f12 '' #zField
Cs0 @RichDialogProcessStart f14 '' #zField
Cs0 @RichDialogProcessStart f16 '' #zField
Cs0 @RichDialogProcessStart f19 '' #zField
Cs0 @RichDialogProcessEnd f20 '' #zField
Cs0 @RichDialogProcessStart f22 '' #zField
Cs0 @RichDialogProcessStep f24 '' #zField
Cs0 @Alternative f26 '' #zField
Cs0 @PushWFArc f27 '' #zField
Cs0 @PushWFArc f25 '' #zField
Cs0 @PushWFArc f28 '' #zField
Cs0 @PushWFArc f23 '' #zField
Cs0 @Alternative f29 '' #zField
Cs0 @PushWFArc f30 '' #zField
Cs0 @RichDialog f31 '' #zField
Cs0 @PushWFArc f21 '' #zField
Cs0 @PushWFArc f33 '' #zField
Cs0 @RichDialogProcessStart f38 '' #zField
Cs0 @RichDialogProcessEnd f39 '' #zField
Cs0 @Alternative f41 '' #zField
Cs0 @PushWFArc f42 '' #zField
Cs0 @RichDialogProcessStep f43 '' #zField
Cs0 @PushWFArc f45 '' #zField
Cs0 @RichDialogProcessStart f46 '' #zField
Cs0 @RichDialogProcessStep f47 '' #zField
Cs0 @RichDialogProcessStart f50 '' #zField
Cs0 @RichDialogMethodStart f54 '' #zField
Cs0 @Alternative f34 '' #zField
Cs0 @PushWFArc f35 '' #zField
Cs0 @RichDialogProcessEnd f44 '' #zField
Cs0 @PushWFArc f56 '' #zField
Cs0 @RichDialog f174 '' #zField
Cs0 @PushWFArc f49 '' #zField
Cs0 @PushWFArc f37 '' #zField
Cs0 @RichDialogProcessStep f89 '' #zField
Cs0 @PushWFArc f57 '' #zField
Cs0 @RichDialogFireEvent f58 '' #zField
Cs0 @PushWFArc f59 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @PushWFArc f60 '' #zField
Cs0 @RichDialogProcessStart f55 '' #zField
Cs0 @RichDialogProcessEnd f61 '' #zField
Cs0 @PushWFArc f62 '' #zField
Cs0 @RichDialogProcessStep f205 '' #zField
Cs0 @PushWFArc f63 '' #zField
Cs0 @PushWFArc f3 '' #zField
Cs0 @RichDialog f64 '' #zField
Cs0 @PushWFArc f65 '' #zField
Cs0 @Alternative f66 '' #zField
Cs0 @PushWFArc f67 '' #zField
Cs0 @PushWFArc f36 '' #zField
Cs0 @PushWFArc f68 '' #zField
Cs0 @Alternative f69 '' #zField
Cs0 @PushWFArc f70 '' #zField
Cs0 @PushWFArc f48 '' #zField
Cs0 @PushWFArc f71 '' #zField
Cs0 @RichDialogBroadcastStart f72 '' #zField
Cs0 @RichDialogProcessEnd f73 '' #zField
Cs0 @PushWFArc f74 '' #zField
Cs0 @Alternative f75 '' #zField
Cs0 @PushWFArc f76 '' #zField
Cs0 @PushWFArc f40 '' #zField
Cs0 @RichDialog f182 '' #zField
Cs0 @PushWFArc f77 '' #zField
Cs0 @PushWFArc f78 '' #zField
Cs0 @RichDialogProcessStep f79 '' #zField
Cs0 @PushWFArc f80 '' #zField
Cs0 @PushWFArc f32 '' #zField
Cs0 @RichDialogProcessEnd f17 '' #zField
Cs0 @PushWFArc f81 '' #zField
Cs0 @PushWFArc f13 '' #zField
Cs0 @RichDialogProcessEnd f53 '' #zField
Cs0 @PushWFArc f83 '' #zField
>Proto Cs0 Cs0 CaseDisplayListProcess #zField
Cs0 f0 guid 119A4875F029C0D7 #txt
Cs0 f0 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.runningCasesMode=true;
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '* ' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 38 70 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 guid 119A48768E591E42 #txt
Cs0 f1 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f1 method start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter,Number,Boolean) #txt
Cs0 f1 disableUIEvents false #txt
Cs0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Boolean aRunningCaseMode,ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay aCaseDisplayListParentDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter aPropertyFilter,java.lang.Number aCaseDisplayMode,java.lang.Boolean aHasWfAdministratorPermissions> param = methodEvent.getInputArguments();
' #txt
Cs0 f1 inParameterMapAction 'out.caseDisplayListParentDisplay=param.aCaseDisplayListParentDisplay;
out.caseDisplayMode=param.aCaseDisplayMode;
out.caseDisplayModeText=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDisplayMode" + param.aCaseDisplayMode.toString() + "LongDesc");
out.hasWfAdministratorPermissions=param.aHasWfAdministratorPermissions;
out.propertyFilter=param.aPropertyFilter;
out.runningCaseMode=param.aRunningCaseMode;
' #txt
Cs0 f1 outParameterDecl '<> result;
' #txt
Cs0 f1 embeddedRdInitializations '* ' #txt
Cs0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Boolean,RCloseableTabbedDisplay,IPropertyFilter,Number,Boolean)</name>
        <nameStyle>69,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f1 102 70 20 20 13 0 #rect
Cs0 f1 @|RichDialogInitStartIcon #fIcon
Cs0 f2 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f2 35 427 26 26 14 0 #rect
Cs0 f2 @|RichDialogProcessEndIcon #fIcon
Cs0 f4 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f4 actionTable 'out=in;
' #txt
Cs0 f4 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.restricted.cases.ICaseWrapper;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.workflow.PropertyOrder;


IQueryResult queryResult;
java.util.List casesList;

IPropertyFilter filter = in.propertyFilter;
java.util.List order = [];
int startIndex = 0;
int count = -1;
boolean returnAllCount = true;


// order by case name
order.add(new PropertyOrder(ch.ivyteam.ivy.workflow.CaseProperty.NAME));


// WorkflowUIAccessPermissionHandler.findCases(IPropertyFilter<CaseProperty> filter, List<PropertyOrder<CaseProperty>> order, int startIndex, int count, Boolean returnAllCount, int caseDisplayMode, boolean runningCaseMode)
casesList.clear();
casesList.addAll(WorkflowUIAccessPermissionHandler.findCases(filter, order, startIndex, count, returnAllCount, in.caseDisplayMode, in.runningCaseMode));

out.cases.clear();


// do the loop and add each entry to cases
for (ICase wfCase: casesList)
{
	ICaseWrapper caseWrapper = null;
	caseWrapper.wfCase = wfCase;
	caseWrapper.setBusinessStartTimestamp(wfCase.getBusinessStartTimestamp());
	caseWrapper.setBusinessMilestoneTimestamp(wfCase.getBusinessMilestoneTimestamp());
	
	out.cases.add(caseWrapper);
}


// inform the user about the found result
out.footerMessage = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/found") + " " + 
										in.cases.size() + " " +
										(in.cases.size() == 1 ? ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/case").toString().toLowerCase(ivy.session.getContentLocale()) 
																					: ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/cases").toString().toLowerCase(ivy.session.getContentLocale()));
' #txt
Cs0 f4 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>find cases 
according to 
display mode
</name>
        <nameStyle>39,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f4 30 260 36 24 20 -2 #rect
Cs0 f4 @|RichDialogProcessStepIcon #fIcon
Cs0 f7 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f7 actionTable 'out=in;
' #txt
Cs0 f7 actionCode 'import ch.ivyteam.ivy.event.SystemEventCategory;

import ch.ivyteam.ivy.workflow.ui.utils.UniqueDisplayIdFactory;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay;

out.caseDisplayListChildrenDisplayId = "xivyCaseDisplayId" + UniqueDisplayIdFactory.buildTaskListDisplayId();
panel.caseDisplayTabbedDisplay.displayId = out.caseDisplayListChildrenDisplayId;


// get permissions
out.hasPermissionCaseDestroy = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.CASE_DESTROY);

out.hasPermissionCaseRead = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.CASE_READ_OWN_CASE_OF_TASK) ||
														ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL_OWN_ROLE_STARTED) ||
														ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL_OWN_STARTED) ||
														ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL_OWN_INVOLVED) ||
														ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL_OWN_ROLE_INVOLVED) ||
														ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.CASE_READ) || 
														ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.CASE_READ_ALL);


out.confirmation = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/confirmation");


// register to System events of Workflow category
ivy.rd.subscribeToSystemEvents(SystemEventCategory.WORKFLOW);' #txt
Cs0 f7 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the display ids
define the permissions (case read, case destroy),
set confirmation text,
register for the system events Workflow</name>
        <nameStyle>134,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f7 30 172 36 24 20 -2 #rect
Cs0 f7 @|RichDialogProcessStepIcon #fIcon
Cs0 f8 expr out #txt
Cs0 f8 48 90 48 172 #arcP
Cs0 f5 expr out #txt
Cs0 f5 48 196 48 260 #arcP
Cs0 f9 expr out #txt
Cs0 f9 112 90 66 184 #arcP
Cs0 f9 1 112 184 #addKink
Cs0 f9 1 0.1151278918803634 0 0 #arcLabel
Cs0 f6 guid 119A4A80FB8A5F66 #txt
Cs0 f6 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f6 method refresh() #txt
Cs0 f6 disableUIEvents false #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Cs0 f6 470 70 20 20 13 0 #rect
Cs0 f6 @|RichDialogMethodStartIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 480 90 66 272 #arcP
Cs0 f10 1 480 272 #addKink
Cs0 f10 1 0.0032357713869754236 0 0 #arcLabel
Cs0 f11 guid 119A4A883123F67D #txt
Cs0 f11 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f11 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f11 actionTable 'out=in;
' #txt
Cs0 f11 actionCode panel.getPanelAPI().unload(); #txt
Cs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>unload</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f11 1158 78 20 20 13 0 #rect
Cs0 f11 @|RichDialogProcessStartIcon #fIcon
Cs0 f12 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f12 627 275 26 26 14 0 #rect
Cs0 f12 @|RichDialogProcessEndIcon #fIcon
Cs0 f14 guid 119A4AB3CDD9C7A6 #txt
Cs0 f14 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f14 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f14 actionTable 'out=in;
' #txt
Cs0 f14 actionCode panel.refresh(); #txt
Cs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f14 1598 78 20 20 13 0 #rect
Cs0 f14 @|RichDialogProcessStartIcon #fIcon
Cs0 f16 guid 119A4C070753787A #txt
Cs0 f16 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f16 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f16 actionTable 'out=in;
' #txt
Cs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f16 830 78 20 20 13 0 #rect
Cs0 f16 @|RichDialogProcessStartIcon #fIcon
Cs0 f19 guid 119C28D71BD977A9 #txt
Cs0 f19 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f19 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f19 actionTable 'out=in;
' #txt
Cs0 f19 actionCode 'out.selectedDestinationDisplay = panel.caseDisplayTabbedDisplay; ' #txt
Cs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadCaseInformationUnderThisTab</name>
        <nameStyle>31,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f19 822 390 20 20 13 0 #rect
Cs0 f19 @|RichDialogProcessStartIcon #fIcon
Cs0 f20 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f20 819 747 26 26 14 0 #rect
Cs0 f20 @|RichDialogProcessEndIcon #fIcon
Cs0 f22 guid 119C294D123A469B #txt
Cs0 f22 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f22 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f22 actionTable 'out=in;
' #txt
Cs0 f22 actionCode 'out.selectedDestinationDisplay = in.caseDisplayListParentDisplay; ' #txt
Cs0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadCaseInformationOnSiblingTab</name>
        <nameStyle>31,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f22 878 422 20 20 13 0 #rect
Cs0 f22 @|RichDialogProcessStartIcon #fIcon
Cs0 f24 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f24 actionTable 'out=in;
' #txt
Cs0 f24 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.restricted.cases.ICaseWrapper;
import ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayPanel;
import com.ulcjava.base.application.ULCComponent;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay;
import ch.ivyteam.ivy.workflow.ICase;


List<ULCComponent> componentsList = [];


ICaseWrapper wfCaseWrapper  = panel.casesTable.getSelectedListEntry() as ICaseWrapper;
out.selectedCase = wfCaseWrapper.wfCase;

// do the loop and search for this 
out.alreadyLoadedOnDisplay = false;

componentsList.clear();
componentsList.addAll(in.selectedDestinationDisplay.getComponents().toList());

for (int i=0; i< componentsList.size(); i++)
{
	ULCComponent currentComponent = componentsList.get(i);
	
	if (currentComponent instanceof CaseDisplayPanel && (currentComponent as CaseDisplayPanel).getCaseIdentifier() == out.selectedCase.getIdentifier().intValue())
	{
		// task has been already loaded
		// it should be selected and refresh
		(currentComponent as CaseDisplayPanel).refresh();
		out.selectedDestinationDisplay.setSelectedComponent(currentComponent);
		out.alreadyLoadedOnDisplay = true;
		
		// exit from the loop
		i = componentsList.size();
	}
	
}' #txt
Cs0 f24 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>define the destination display
and check if case already loaded
if yes, refresh it</name>
        <nameStyle>82,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f24 814 532 36 24 20 -2 #rect
Cs0 f24 @|RichDialogProcessStepIcon #fIcon
Cs0 f26 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is valid selection?</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f26 818 466 28 28 5 -22 #rect
Cs0 f26 @|AlternativeIcon #fIcon
Cs0 f27 expr out #txt
Cs0 f27 832 410 832 466 #arcP
Cs0 f25 expr in #txt
Cs0 f25 outCond 'panel.casesTable.getSelectedListEntry() != null && 
panel.casesTable.getSelectedListEntry() instanceof ch.ivyteam.ivy.workflow.ui.data.restricted.cases.ICaseWrapper && 
in.hasPermissionCaseRead' #txt
Cs0 f25 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f25 832 494 832 532 #arcP
Cs0 f28 expr out #txt
Cs0 f28 878 432 832 466 #arcP
Cs0 f28 1 832 432 #addKink
Cs0 f28 1 0.018482180567697896 0 0 #arcLabel
Cs0 f23 expr in #txt
Cs0 f23 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selected entry null
instance not ICase
</name>
        <nameStyle>39,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f23 846 480 845 760 #arcP
Cs0 f23 1 1064 480 #addKink
Cs0 f23 2 1064 760 #addKink
Cs0 f23 1 0.45312378719042634 0 0 #arcLabel
Cs0 f29 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f29 818 586 28 28 14 0 #rect
Cs0 f29 @|AlternativeIcon #fIcon
Cs0 f30 expr out #txt
Cs0 f30 832 556 832 586 #arcP
Cs0 f31 targetWindow THIS #txt
Cs0 f31 targetDisplay EXISTING:<%=in.selectedDestinationDisplay.getDisplayId()%> #txt
Cs0 f31 richDialogId ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay #txt
Cs0 f31 startMethod start(ch.ivyteam.ivy.workflow.ICase,ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay) #txt
Cs0 f31 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f31 panelName <%=in.tabTitle%> #txt
Cs0 f31 requestActionDecl '<ch.ivyteam.ivy.workflow.ICase aCase, ch.ivyteam.ivy.richdialog.widgets.displays.RCloseableTabbedDisplay aParentDisplay> param;' #txt
Cs0 f31 requestMappingAction 'param.aCase=in.selectedCase;
param.aParentDisplay=in.caseDisplayListParentDisplay;
' #txt
Cs0 f31 requestActionCode 'in.tabTitle = in.selectedCase.getName() is initialized? 
						in.selectedCase.getName(): 
						ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/case") + " " + in.selectedCase.getIdentifier();' #txt
Cs0 f31 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f31 responseMappingAction 'out=in;
' #txt
Cs0 f31 windowConfiguration '* ' #txt
Cs0 f31 isAsynch true #txt
Cs0 f31 isInnerRd true #txt
Cs0 f31 isDialog false #txt
Cs0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load the 
case details</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f31 814 684 36 24 20 -2 #rect
Cs0 f31 @|RichDialogIcon #fIcon
Cs0 f21 expr out #txt
Cs0 f21 832 708 832 747 #arcP
Cs0 f33 expr in #txt
Cs0 f33 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>already loaded</name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f33 846 600 845 760 #arcP
Cs0 f33 1 968 600 #addKink
Cs0 f33 2 968 760 #addKink
Cs0 f33 1 0.4159959148479911 0 0 #arcLabel
Cs0 f38 guid 11A08EF0B1A8D34B #txt
Cs0 f38 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f38 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f38 actionTable 'out=in;
' #txt
Cs0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>destroyCase</name>
        <nameStyle>11,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f38 1270 390 20 20 13 0 #rect
Cs0 f38 @|RichDialogProcessStartIcon #fIcon
Cs0 f39 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f39 1267 747 26 26 14 0 #rect
Cs0 f39 @|RichDialogProcessEndIcon #fIcon
Cs0 f41 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f41 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is valid selection?</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f41 1266 434 28 28 7 -23 #rect
Cs0 f41 @|AlternativeIcon #fIcon
Cs0 f42 expr out #txt
Cs0 f42 1280 410 1280 434 #arcP
Cs0 f43 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f43 actionTable 'out=in;
' #txt
Cs0 f43 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.restricted.cases.ICaseWrapper;
import ch.ivyteam.ivy.workflow.ICase;

try
{
	ICaseWrapper wfCaseWrapper = panel.casesTable.getSelectedListEntry() as ICaseWrapper;
	ICase selectedCase = wfCaseWrapper.wfCase;		
		
	selectedCase.destroy();
	
	// update the list of cases
	Number indexOfSelectedCase = out.filteredCases.indexOf(wfCaseWrapper);
	out.filteredCases.elementChangedAt(indexOfSelectedCase);
}
catch (Exception ex)
{
	out.exception = ex;	
}
' #txt
Cs0 f43 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f43 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>destroy the
selected case
and update the list of cases</name>
        <nameStyle>54,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f43 1262 636 36 24 23 -28 #rect
Cs0 f43 @|RichDialogProcessStepIcon #fIcon
Cs0 f45 expr in #txt
Cs0 f45 1294 448 1293 760 #arcP
Cs0 f45 1 1600 448 #addKink
Cs0 f45 2 1600 760 #addKink
Cs0 f45 1 0.3553683707309892 0 0 #arcLabel
Cs0 f46 guid 11A08FA18A39B90B #txt
Cs0 f46 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f46 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f46 actionTable 'out=in;
' #txt
Cs0 f46 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateButtonsAccordingToSelection</name>
        <nameStyle>33,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f46 1262 78 20 20 13 0 #rect
Cs0 f46 @|RichDialogProcessStartIcon #fIcon
Cs0 f47 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f47 actionTable 'out=in;
' #txt
Cs0 f47 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;
import ch.ivyteam.ivy.addons.restricted.workflow.CaseManagedTeamHelper;
import ch.ivyteam.ivy.workflow.ui.data.restricted.cases.ICaseWrapper;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.CaseState;


ICaseWrapper wfCaseWrapper = panel.casesTable.getSelectedListEntry() as ICaseWrapper;
ICase wfCase = wfCaseWrapper.wfCase;
// is user team manager on this case?
Boolean isSessionUserTeamManagerOnWfCase = CaseManagedTeamHelper.isSessionUserTeamManagerOnWfCase(wfCase);
Boolean enabled = false;


//------------------
// inform on case
//------------------
if (
		(in.caseDisplayMode >= 0 || in.caseDisplayMode <= 2) ||
		(in.caseDisplayMode == 3 && WorkflowUIAccessPermissionHandler.userIsInvolvedOnCase(ivy.session, wfCase) || 
																	isSessionUserTeamManagerOnWfCase || 
																	in.hasWfAdministratorPermissions)
		)
{
	enabled = true;
}
else
{
	enabled = false;
}
panel.informOnCaseButton.enabled = enabled;
panel.informOnCaseOnSiblingTabMenuItem.enabled = panel.informOnCaseButton.enabled;


//------------------
// destroy the case
// selectedCase.getState().equals(CaseState.CREATED) || selectedCase.getState().equals(CaseState.RUNNING);
//------------------
if (
		(wfCase.getState().equals(CaseState.CREATED) || wfCase.getState().equals(CaseState.RUNNING)) &&
			((in.caseDisplayMode == 2) || (in.caseDisplayMode == 3 && in.hasWfAdministratorPermissions))
		)
{
	enabled = true;
}
else
{
	enabled = false;
}
	
panel.destroyCaseButton.enabled = enabled;' #txt
Cs0 f47 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f47 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update buttons</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f47 1254 196 36 24 20 -2 #rect
Cs0 f47 @|RichDialogProcessStepIcon #fIcon
Cs0 f50 guid 11A2733FAE51A255 #txt
Cs0 f50 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f50 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f50 actionTable 'out=in;
' #txt
Cs0 f50 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f50 982 78 20 20 13 0 #rect
Cs0 f50 @|RichDialogProcessStartIcon #fIcon
Cs0 f54 guid 11ACA838872138BD #txt
Cs0 f54 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f54 method close() #txt
Cs0 f54 disableUIEvents false #txt
Cs0 f54 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
    </language>
</elementInfo>
' #txt
Cs0 f54 630 70 20 20 13 0 #rect
Cs0 f54 @|RichDialogMethodStartIcon #fIcon
Cs0 f34 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f34 1266 498 28 28 14 0 #rect
Cs0 f34 @|AlternativeIcon #fIcon
Cs0 f35 expr in #txt
Cs0 f35 outCond 'panel.casesTable.getSelectedListEntry() != null && 
panel.casesTable.getSelectedListEntry() instanceof ch.ivyteam.ivy.workflow.ui.data.restricted.cases.ICaseWrapper &&
in.hasPermissionCaseDestroy' #txt
Cs0 f35 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f35 1280 462 1280 498 #arcP
Cs0 f44 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f44 1259 283 26 26 14 0 #rect
Cs0 f44 @|RichDialogProcessEndIcon #fIcon
Cs0 f56 expr out #txt
Cs0 f56 1272 220 1272 283 #arcP
Cs0 f56 0 0.9069236757369171 0 0 #arcLabel
Cs0 f174 targetWindow NEW #txt
Cs0 f174 targetDisplay TOP #txt
Cs0 f174 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Cs0 f174 startMethod showMessageWithTitle(String,String) #txt
Cs0 f174 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f174 requestActionDecl '<String aMessageTitle, String aMessageText> param;' #txt
Cs0 f174 requestMappingAction 'param.aMessageTitle="Permission denied to delegate the tasks";
param.aMessageText="You don''t have the permission called ''" + ch.ivyteam.ivy.security.IPermission.CASE_DESTROY.getName() + "'' that will gives you possibility to do that action. \nContact your Workflow Administrator for that.";
' #txt
Cs0 f174 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f174 responseMappingAction 'out=in;
' #txt
Cs0 f174 windowConfiguration '#Tue Jul 01 17:57:43 CEST 2008
height=200
maximized=false
centered=true
close_after_last_rd=true
resizable=true
width=550
title=Information
' #txt
Cs0 f174 isAsynch false #txt
Cs0 f174 isInnerRd true #txt
Cs0 f174 isDialog true #txt
Cs0 f174 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>infom the user
permission denied</name>
        <nameStyle>32,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f174 1502 692 36 24 20 -2 #rect
Cs0 f174 @|RichDialogIcon #fIcon
Cs0 f49 expr in #txt
Cs0 f49 1294 512 1520 692 #arcP
Cs0 f49 1 1520 512 #addKink
Cs0 f49 1 0.11641912843139941 0 0 #arcLabel
Cs0 f37 expr out #txt
Cs0 f37 1520 716 1293 760 #arcP
Cs0 f37 1 1520 760 #addKink
Cs0 f37 1 0.2037354223333722 0 0 #arcLabel
Cs0 f89 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f89 actionTable 'out=in;
' #txt
Cs0 f89 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;


panel.refreshMenuItem.setText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/refreshCaseListShortDesc"));
// panel.refreshMenuItem.setToolTipText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/refreshCaseListLongDesc"));
// panel.refreshMenuItem.setIconUri("/ch/ivyteam/ivy/workflow/ui/case/images/refreshCaseList16");


panel.informOnCaseOnSiblingTabMenuItem.setText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/informOnCaseShortDesc"));
// panel.informOnCaseOnSiblingTabMenuItem.setToolTipText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/informOnCaseLongDesc"));																							
// panel.informOnCaseOnSiblingTabMenuItem.setIconUri("/ch/ivyteam/ivy/workflow/ui/case/images/informOnCase16");


panel.destroyCaseMenuItem.setText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/destroyCaseShortDesc"));
// panel.destroyCaseMenuItem.setToolTipText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/destroyCaseLongDesc"));
// panel.destroyCaseMenuItem.setIconUri("/ch/ivyteam/ivy/workflow/ui/case/images/destroyCase16");


// set the "find cases" on text field
panel.caseNameCriteriaTextField.setText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/findCaseByNameShortDesc"));
' #txt
Cs0 f89 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f89 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build popup menu 
text, icons, titled border with
CMS resources </name>
        <nameStyle>64,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f89 974 148 36 24 20 -2 #rect
Cs0 f89 @|RichDialogProcessStepIcon #fIcon
Cs0 f57 expr out #txt
Cs0 f57 992 98 992 148 #arcP
Cs0 f57 0 0.4931771289898027 0 0 #arcLabel
Cs0 f58 actionCode panel.fireCloseCaseDisplayList(); #txt
Cs0 f58 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f58 fireEvent closeCaseDisplayList() #txt
Cs0 f58 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Fire RDEvent 
&quot;closeCaseDisplayList&quot;</name>
        <nameStyle>36,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f58 622 148 36 24 20 -2 #rect
Cs0 f58 @|RichDialogFireEventIcon #fIcon
Cs0 f59 expr out #txt
Cs0 f59 840 98 658 160 #arcP
Cs0 f59 1 840 160 #addKink
Cs0 f59 1 0.25924867240581273 0 0 #arcLabel
Cs0 f18 expr out #txt
Cs0 f18 640 90 640 148 #arcP
Cs0 f18 0 0.41643595075920936 0 0 #arcLabel
Cs0 f60 expr out #txt
Cs0 f60 640 172 640 275 #arcP
Cs0 f55 guid 11E36ED810E5980E #txt
Cs0 f55 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f55 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f55 actionTable 'out=in;
' #txt
Cs0 f55 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.restricted.cases.ICaseWrapper;
import ch.ivyteam.ivy.workflow.ICase;
import java.util.regex.Pattern;


out.filteredCases.clear();


if (out.cases.size() > 0)
{
	Pattern patternOnName = Pattern.compile(".*" + in.nameCriteria + ".*", Pattern.CASE_INSENSITIVE);
	
	for(ICaseWrapper currentWfCaseWrapper: in.cases)
	{
		ICase currentCase = currentWfCaseWrapper.wfCase;
		
		if (patternOnName.matcher(currentCase.getName()).matches() ||
					patternOnName.matcher("" + currentCase.getIdentifier()).matches() ||
					patternOnName.matcher("" + currentCase.getBusinessMainContactType()).matches() ||
					patternOnName.matcher("" + currentCase.getBusinessMainContactId()).matches() ||
					patternOnName.matcher(currentCase.getBusinessMainContactName()).matches() ||
				
					patternOnName.matcher(currentCase.getBusinessObjectCode()).matches() ||
					patternOnName.matcher(currentCase.getBusinessObjectName()).matches() ||
					
					patternOnName.matcher(currentCase.getBusinessCreatorUser()).matches() ||
					
					patternOnName.matcher(currentCase.getProcessCategoryCode()).matches() || 
					patternOnName.matcher(currentCase.getProcessCategoryName()).matches() ||
					
					patternOnName.matcher(currentCase.getProcessCode()).matches() ||
					patternOnName.matcher(currentCase.getProcessName()).matches() ||
					
					patternOnName.matcher(currentCase.getTypeCode()).matches() ||
					patternOnName.matcher(currentCase.getTypeName()).matches() ||
					
					patternOnName.matcher(currentCase.getSubTypeCode()).matches() ||					
					patternOnName.matcher(currentCase.getSubTypeName()).matches() ||
					
					patternOnName.matcher(currentCase.getCustomVarCharField5()).matches()
			)
		{
			out.filteredCases.add(currentWfCaseWrapper);
		}
	}
}
else
{
	out.filteredCases.addAll(in.cases);	
}



out.footerMessage = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/found") + " " + 
										out.filteredCases.size() + " " +
										ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/case") + (out.filteredCases.size() > 0? "s": "");

' #txt
Cs0 f55 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>findCases</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f55 1478 78 20 20 13 0 #rect
Cs0 f55 @|RichDialogProcessStartIcon #fIcon
Cs0 f61 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f61 1475 283 26 26 14 0 #rect
Cs0 f61 @|RichDialogProcessEndIcon #fIcon
Cs0 f62 expr out #txt
Cs0 f62 1488 98 1488 283 #arcP
Cs0 f205 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f205 actionTable 'out=in;
' #txt
Cs0 f205 actionCode 'out.filteredCases.clear();

out.filteredCases.addAll(in.cases);' #txt
Cs0 f205 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f205 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>clear filtered cases
and add it all cases</name>
        <nameStyle>41,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f205 30 356 36 24 20 -2 #rect
Cs0 f205 @|RichDialogProcessStepIcon #fIcon
Cs0 f63 expr out #txt
Cs0 f63 48 284 48 356 #arcP
Cs0 f3 expr out #txt
Cs0 f3 48 380 48 427 #arcP
Cs0 f64 targetWindow NEW #txt
Cs0 f64 targetDisplay TOP #txt
Cs0 f64 richDialogId ch.ivyteam.ivy.addons.commondialogs.QuestionDialog #txt
Cs0 f64 startMethod askQuestionWithTitle(String,String,String,List<String>) #txt
Cs0 f64 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f64 panelName <%=in.confirmation%> #txt
Cs0 f64 requestActionDecl '<String icon, String questionTitle, String questionText, List<String> buttons> param;' #txt
Cs0 f64 requestMappingAction 'param.icon="question";
param.buttons=["yes", "no"];
' #txt
Cs0 f64 requestActionCode 'param.questionTitle = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/confirmation");
			
param.questionText = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/confirmDestroyCaseShortDesc");' #txt
Cs0 f64 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f64 responseMappingAction 'out=in;
' #txt
Cs0 f64 responseActionCode 'out.questionDialogPressedButton = result.pressedButton;' #txt
Cs0 f64 windowConfiguration '#Sun Dec 14 23:14:06 CET 2008
height=150
maximized=false
centered=true
close_after_last_rd=true
resizable=true
width=500
title=<%\\=in.confirmation%>
' #txt
Cs0 f64 isAsynch false #txt
Cs0 f64 isInnerRd true #txt
Cs0 f64 isDialog true #txt
Cs0 f64 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>confirmation 
for destroy a case</name>
        <nameStyle>32,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f64 1262 540 36 24 20 -2 #rect
Cs0 f64 @|RichDialogIcon #fIcon
Cs0 f65 expr in #txt
Cs0 f65 outCond 'ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.CASE_DESTROY)' #txt
Cs0 f65 1280 526 1280 540 #arcP
Cs0 f66 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f66 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f66 1266 586 28 28 14 0 #rect
Cs0 f66 @|AlternativeIcon #fIcon
Cs0 f67 expr out #txt
Cs0 f67 1280 564 1280 586 #arcP
Cs0 f36 expr in #txt
Cs0 f36 outCond in.questionDialogPressedButton.equals("yes") #txt
Cs0 f36 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f36 1280 614 1280 636 #arcP
Cs0 f68 expr in #txt
Cs0 f68 1294 600 1293 760 #arcP
Cs0 f68 1 1480 600 #addKink
Cs0 f68 2 1480 760 #addKink
Cs0 f68 0 0.8904466839267087 0 0 #arcLabel
Cs0 f69 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f69 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is valid selection?</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f69 1258 138 28 28 6 -21 #rect
Cs0 f69 @|AlternativeIcon #fIcon
Cs0 f70 expr out #txt
Cs0 f70 1272 98 1272 138 #arcP
Cs0 f48 expr in #txt
Cs0 f48 outCond 'panel.casesTable.getSelectedListEntry() != null' #txt
Cs0 f48 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f48 1272 166 1272 196 #arcP
Cs0 f71 expr in #txt
Cs0 f71 1286 152 1285 296 #arcP
Cs0 f71 1 1376 152 #addKink
Cs0 f71 2 1376 296 #addKink
Cs0 f71 1 0.43974773175768994 0 0 #arcLabel
Cs0 f72 guid 11E4610522E86F12 #txt
Cs0 f72 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f72 broadcast ivy_systemevent_workflow_case_changed #txt
Cs0 f72 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f72 actionTable 'out=in;
' #txt
Cs0 f72 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.restricted.cases.ICaseWrapper;
import java.util.Iterator;
import ch.ivyteam.ivy.workflow.ICase;

Iterator iterator;
ICaseWrapper currentCaseWrapper;
ICase currentCase;

Boolean found = false;
Number caseIndexInTheList = -1;

Number broadcastedCaseIdentifier = param.workflowSystemEventParameter.getIdentifiers().get(0) as Number;

iterator = in.filteredCases.iterator();


while (iterator.hasNext() && !found)
{
	currentCaseWrapper = iterator.next() as ICaseWrapper;
	currentCase = currentCaseWrapper.wfCase;
	
	if (currentCase.getIdentifier().compareTo(broadcastedCaseIdentifier) == 0)
	{
		found = true;
		caseIndexInTheList = in.filteredCases.indexOf(currentCaseWrapper);
		out.filteredCases.elementChanged(currentCaseWrapper);
	}   
}' #txt
Cs0 f72 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy_systemevent_workflow_case_changed</name>
        <nameStyle>37,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f72 1750 70 20 20 13 0 #rect
Cs0 f72 @|RichDialogBroadcastStartIcon #fIcon
Cs0 f73 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f73 1747 339 26 26 14 0 #rect
Cs0 f73 @|RichDialogProcessEndIcon #fIcon
Cs0 f74 expr out #txt
Cs0 f74 1760 90 1760 339 #arcP
Cs0 f75 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f75 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>exception ?</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f75 1266 674 28 28 16 -17 #rect
Cs0 f75 @|AlternativeIcon #fIcon
Cs0 f76 expr out #txt
Cs0 f76 1280 660 1280 674 #arcP
Cs0 f40 expr in #txt
Cs0 f40 outCond 'in.#exception == null' #txt
Cs0 f40 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f40 1280 702 1280 747 #arcP
Cs0 f182 targetWindow NEW #txt
Cs0 f182 targetDisplay TOP #txt
Cs0 f182 richDialogId ch.ivyteam.ivy.addons.commondialogs.ErrorDialog #txt
Cs0 f182 startMethod showError(java.lang.Throwable,Boolean,Boolean) #txt
Cs0 f182 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f182 requestActionDecl '<java.lang.Throwable error, Boolean showCopyButton, Boolean showDetailButton> param;' #txt
Cs0 f182 requestMappingAction 'param.showCopyButton=true;
param.showDetailButton=true;
' #txt
Cs0 f182 requestActionCode 'param.error = new Exception(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/destroyCaseFailed").toString() + ": " + in.selectedCase.getIdentifier(),
	in.exception);
	
ivy.log.error(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/destroyCaseFailed").toString() + ": " + in.selectedCase.getIdentifier(),
	in.exception);' #txt
Cs0 f182 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f182 responseMappingAction 'out=in;
' #txt
Cs0 f182 windowConfiguration '#Mon Apr 27 00:44:01 CEST 2009
height=0
maximized=false
centered=true
close_after_last_rd=true
resizable=true
width=0
title=Error
' #txt
Cs0 f182 isAsynch false #txt
Cs0 f182 isInnerRd true #txt
Cs0 f182 isDialog true #txt
Cs0 f182 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show
error dialog</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f182 1366 708 36 24 20 -2 #rect
Cs0 f182 @|RichDialogIcon #fIcon
Cs0 f77 expr in #txt
Cs0 f77 1294 688 1384 708 #arcP
Cs0 f77 1 1384 688 #addKink
Cs0 f77 0 0.6699265396429553 0 0 #arcLabel
Cs0 f78 expr out #txt
Cs0 f78 1384 732 1293 760 #arcP
Cs0 f78 1 1384 760 #addKink
Cs0 f78 1 0.2960081491167746 0 0 #arcLabel
Cs0 f79 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData out;
' #txt
Cs0 f79 actionTable 'out=in;
' #txt
Cs0 f79 actionCode '
if (out.selectedDestinationDisplay.equals(panel.caseDisplayTabbedDisplay))
{
	double dividerLocation  = 0.45;
	panel.casesSplitPane.setDividerLocation(dividerLocation);
}' #txt
Cs0 f79 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f79 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>if needed,
ensure that under this tab display is visible</name>
        <nameStyle>56,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f79 814 636 36 24 20 -2 #rect
Cs0 f79 @|RichDialogProcessStepIcon #fIcon
Cs0 f80 expr in #txt
Cs0 f80 outCond !in.alreadyLoadedOnDisplay #txt
Cs0 f80 832 614 832 636 #arcP
Cs0 f32 expr out #txt
Cs0 f32 832 660 832 684 #arcP
Cs0 f17 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f17 982 286 20 20 13 0 #rect
Cs0 f17 @|RichDialogProcessEndIcon #fIcon
Cs0 f81 expr out #txt
Cs0 f81 1168 98 1001 294 #arcP
Cs0 f81 1 1168 264 #addKink
Cs0 f81 0 0.7487811188886209 0 0 #arcLabel
Cs0 f13 expr out #txt
Cs0 f13 992 172 992 286 #arcP
Cs0 f13 0 0.3735938815273156 0 0 #arcLabel
Cs0 f53 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
Cs0 f53 1598 286 20 20 13 0 #rect
Cs0 f53 @|RichDialogProcessEndIcon #fIcon
Cs0 f83 expr out #txt
Cs0 f83 1608 98 1608 286 #arcP
Cs0 f83 0 0.3971437680678043 0 0 #arcLabel
>Proto Cs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel>Accepted broadcasts</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>421</swimlaneSize>
    <swimlaneSize>345</swimlaneSize>
    <swimlaneSize>941</swimlaneSize>
    <swimlaneSize>342</swimlaneSize>
    <swimlaneColor>-13369396</swimlaneColor>
    <swimlaneColor>-16724788</swimlaneColor>
    <swimlaneColor>-16751002</swimlaneColor>
    <swimlaneColor>-3355393</swimlaneColor>
</elementInfo>
' #txt
>Proto Cs0 .ui2RdDataAction 'out.nameCriteria=panel.caseNameCriteriaTextField.text;
' #txt
>Proto Cs0 .rdData2UIAction 'panel.casesTable.listData=in.filteredCases;
panel.destroyCaseButton.visible=in.hasPermissionCaseDestroy && in.runningCaseMode;
panel.destroyCaseMenuItem.enabled=in.hasPermissionCaseDestroy && in.runningCaseMode;
panel.footerLabel.text=in.footerMessage;
panel.informOnCaseButton.visible=in.hasPermissionCaseRead;
panel.informOnCaseOnSiblingTabMenuItem.enabled=in.hasPermissionCaseRead;
' #txt
>Proto Cs0 .type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f8 tail #connect
Cs0 f8 head f7 mainIn #connect
Cs0 f7 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f1 mainOut f9 tail #connect
Cs0 f9 head f7 mainIn #connect
Cs0 f6 mainOut f10 tail #connect
Cs0 f10 head f4 mainIn #connect
Cs0 f19 mainOut f27 tail #connect
Cs0 f27 head f26 in #connect
Cs0 f26 out f25 tail #connect
Cs0 f25 head f24 mainIn #connect
Cs0 f22 mainOut f28 tail #connect
Cs0 f28 head f26 in #connect
Cs0 f26 out f23 tail #connect
Cs0 f23 head f20 mainIn #connect
Cs0 f24 mainOut f30 tail #connect
Cs0 f30 head f29 in #connect
Cs0 f31 mainOut f21 tail #connect
Cs0 f21 head f20 mainIn #connect
Cs0 f33 head f20 mainIn #connect
Cs0 f38 mainOut f42 tail #connect
Cs0 f42 head f41 in #connect
Cs0 f45 head f39 mainIn #connect
Cs0 f41 out f35 tail #connect
Cs0 f35 head f34 in #connect
Cs0 f41 out f45 tail #connect
Cs0 f47 mainOut f56 tail #connect
Cs0 f56 head f44 mainIn #connect
Cs0 f49 head f174 mainIn #connect
Cs0 f174 mainOut f37 tail #connect
Cs0 f37 head f39 mainIn #connect
Cs0 f50 mainOut f57 tail #connect
Cs0 f57 head f89 mainIn #connect
Cs0 f16 mainOut f59 tail #connect
Cs0 f59 head f58 mainIn #connect
Cs0 f54 mainOut f18 tail #connect
Cs0 f18 head f58 mainIn #connect
Cs0 f58 mainOut f60 tail #connect
Cs0 f60 head f12 mainIn #connect
Cs0 f55 mainOut f62 tail #connect
Cs0 f62 head f61 mainIn #connect
Cs0 f4 mainOut f63 tail #connect
Cs0 f63 head f205 mainIn #connect
Cs0 f205 mainOut f3 tail #connect
Cs0 f3 head f2 mainIn #connect
Cs0 f34 out f65 tail #connect
Cs0 f65 head f64 mainIn #connect
Cs0 f34 out f49 tail #connect
Cs0 f64 mainOut f67 tail #connect
Cs0 f67 head f66 in #connect
Cs0 f66 out f36 tail #connect
Cs0 f36 head f43 mainIn #connect
Cs0 f66 out f68 tail #connect
Cs0 f68 head f39 mainIn #connect
Cs0 f46 mainOut f70 tail #connect
Cs0 f70 head f69 in #connect
Cs0 f69 out f48 tail #connect
Cs0 f48 head f47 mainIn #connect
Cs0 f69 out f71 tail #connect
Cs0 f71 head f44 mainIn #connect
Cs0 f72 mainOut f74 tail #connect
Cs0 f74 head f73 mainIn #connect
Cs0 f43 mainOut f76 tail #connect
Cs0 f76 head f75 in #connect
Cs0 f75 out f40 tail #connect
Cs0 f40 head f39 mainIn #connect
Cs0 f75 out f77 tail #connect
Cs0 f77 head f182 mainIn #connect
Cs0 f182 mainOut f78 tail #connect
Cs0 f78 head f39 mainIn #connect
Cs0 f29 out f80 tail #connect
Cs0 f80 head f79 mainIn #connect
Cs0 f29 out f33 tail #connect
Cs0 f79 mainOut f32 tail #connect
Cs0 f32 head f31 mainIn #connect
Cs0 f11 mainOut f81 tail #connect
Cs0 f81 head f17 mainIn #connect
Cs0 f89 mainOut f13 tail #connect
Cs0 f13 head f17 mainIn #connect
Cs0 f14 mainOut f83 tail #connect
Cs0 f83 head f53 mainIn #connect
