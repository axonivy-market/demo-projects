[Ivy]
[>Created: Thu Sep 15 14:10:53 CEST 2011]
117CB5CD6E5F88C6 3.17 #module
>Proto >Proto Collection #zClass
As0 ApplicationDynamicWayProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @AnnotationInP-0n ai ai #zField
As0 @MessageFlowInP-0n messageIn messageIn #zField
As0 @MessageFlowOutP-0n messageOut messageOut #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @RichDialog f13 '' #zField
As0 @RichDialogProcessEnd f22 '' #zField
As0 @RichDialogProcessStep f23 '' #zField
As0 @PushWFArc f25 '' #zField
As0 @RichDialogProcessStep f26 '' #zField
As0 @RichDialogProcessStep f29 '' #zField
As0 @PushWFArc f16 '' #zField
As0 @PushWFArc f32 '' #zField
As0 @RichDialogProcessStep f181 '' #zField
As0 @RichDialog f77 '' #zField
As0 @PushWFArc f5 '' #zField
As0 @RichDialogProcessEnd f2 '' #zField
As0 @PushWFArc f3 '' #zField
As0 @RichDialogProcessEnd f8 '' #zField
As0 @Alternative f12 '' #zField
As0 @RichDialogProcessStep f17 '' #zField
As0 @PushWFArc f14 '' #zField
As0 @RichDialog f19 '' #zField
As0 @Alternative f11 '' #zField
As0 @PushWFArc f34 '' #zField
As0 @RichDialogProcessStep f35 '' #zField
As0 @PushWFArc f36 '' #zField
As0 @RichDialogProcessStep f37 '' #zField
As0 @RichDialogProcessStep f38 '' #zField
As0 @PushWFArc f39 '' #zField
As0 @PushWFArc f40 '' #zField
As0 @PushWFArc f33 '' #zField
As0 @Alternative f43 '' #zField
As0 @PushWFArc f44 '' #zField
As0 @PushWFArc f45 '' #zField
As0 @PushWFArc f46 '' #zField
As0 @RichDialogProcessStep f48 '' #zField
As0 @PushWFArc f49 '' #zField
As0 @PushWFArc f31 '' #zField
As0 @RichDialogInitStart f0 '' #zField
As0 @PushWFArc f9 '' #zField
As0 @RichDialogMethodStart f6 '' #zField
As0 @PushWFArc f18 '' #zField
As0 @RichDialogProcessStart f4 '' #zField
As0 @PushWFArc f7 '' #zField
As0 @RichDialogBroadcastStart f21 '' #zField
As0 @PushWFArc f24 '' #zField
As0 @RichDialogBroadcastStart f20 '' #zField
As0 @PushWFArc f27 '' #zField
As0 @RichDialogProcessEnd f30 '' #zField
As0 @RichDialogProcessStep f10 '' #zField
As0 @PushWFArc f41 '' #zField
As0 @PushWFArc f42 '' #zField
As0 @PushWFArc f15 '' #zField
As0 @RichDialogProcessEnd f47 '' #zField
As0 @PushWFArc f50 '' #zField
As0 @RichDialogBroadcastStart f28 '' #zField
As0 @RichDialogProcessEnd f51 '' #zField
As0 @RichDialog f53 '' #zField
As0 @PushWFArc f54 '' #zField
As0 @PushWFArc f52 '' #zField
As0 @RichDialogInitStart f55 '' #zField
As0 @PushWFArc f56 '' #zField
>Proto As0 As0 ApplicationDynamicWayProcess #zField
As0 f1 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f1 59 243 26 26 14 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f13 targetWindow THIS #txt
As0 f13 targetDisplay EXISTING:workflowUiWestDisplay #txt
As0 f13 richDialogId ch.ivyteam.ivy.workflow.ui.UserMenu #txt
As0 f13 startMethod start(ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,Boolean,Boolean) #txt
As0 f13 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f13 panelName 'Workflow UI menu' #txt
As0 f13 requestActionDecl '<ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay aDestinationDisplay, Boolean hasWFAdminPermissions, Boolean standAloneMode> param;' #txt
As0 f13 requestActionCode 'param.aDestinationDisplay = panel.centerTabbedDisplay;
param.hasWFAdminPermissions = in.hasWfAdministratorPermissions;
param.standAloneMode = in.standAloneMode;' #txt
As0 f13 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f13 responseMappingAction 'out=in;
' #txt
As0 f13 windowConfiguration '* ' #txt
As0 f13 isAsynch true #txt
As0 f13 isInnerRd true #txt
As0 f13 isDialog false #txt
As0 f13 userContext '* ' #txt
As0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load the User Menu
on westDisplay</name>
        <nameStyle>33,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f13 54 180 36 24 20 -2 #rect
As0 f13 @|RichDialogIcon #fIcon
As0 f22 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f22 1086 222 20 20 13 0 #rect
As0 f22 @|RichDialogProcessEndIcon #fIcon
As0 f23 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f23 actionTable 'out=in;
' #txt
As0 f23 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.UserPropertyKeys;

String autoHideMenuValue ;
out.initialDividerPosition = panel.applicationSplitPane.getDividerLocationRelative();
	
//test auto hide menu parameter value
if(in.menuAutoHideMode)
{
	panel.applicationSplitPane.setDividerLocation(0) ;
}
	' #txt
As0 f23 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set divider location depends
on auto hide menu parameter</name>
        <nameStyle>56,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f23 1079 108 34 24 21 -15 #rect
As0 f23 @|RichDialogProcessStepIcon #fIcon
As0 f25 expr out #txt
As0 f25 1096 132 1096 222 #arcP
As0 f25 0 0.4757491676510102 0 0 #arcLabel
As0 f26 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f26 actionTable 'out=in;
' #txt
As0 f26 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;
import ch.ivyteam.ivy.workflow.TaskState;
//TIFAM - 11.08.2009 - store initial divider posision
import ch.ivyteam.ivy.workflow.ui.utils.UserPropertyKeys;


String isCurrentTaskParkedOrDone = "false" ;
TaskState currentTaskState ;
	
//check if currentTaskId part of system event and if it''s parked or done
if(in.broadcastedTasks.contains(in.currentTaskId))
{
	currentTaskState = WorkflowUIAccessPermissionHandler.wfFindTaskAsSystemUser(in.currentTaskId).getState() ;
	
	ivy.log.info("Current task state : " + currentTaskState.name()) ;
	
	if (currentTaskState.compareTo(TaskState.DONE) == 0 || 
			currentTaskState.compareTo(TaskState.PARKED) == 0 || 
			currentTaskState.compareTo(TaskState.SUSPENDED) == 0 ||
			currentTaskState.compareTo(TaskState.READY_FOR_JOIN) == 0)
	{
		isCurrentTaskParkedOrDone = "true" ;
	}
} 
	
//test auto hide menu parameter value
if(in.menuAutoHideMode && 
		(in.#initialDividerPosition is initialized && isCurrentTaskParkedOrDone.equalsIgnoreCase("true")))
{
	Double oldDividerLocation = panel.applicationSplitPane.getDividerLocation();
	panel.applicationSplitPane.setDividerLocation(in.initialDividerPosition.doubleValue());
	ivy.log.debug("Change the divider location from {0} to {1}.", oldDividerLocation, in.initialDividerPosition);
}	' #txt
As0 f26 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reset divider location</name>
        <nameStyle>22,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f26 1310 100 36 24 21 -10 #rect
As0 f26 @|RichDialogProcessStepIcon #fIcon
As0 f29 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f29 actionTable 'out=in;
' #txt
As0 f29 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.workflow.ui.utils.UserPropertyKeys;
import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUserPropertyHelper;
//TIFAM - 12.in.2009
import ch.ivyteam.ivy.event.SystemEventCategory ;

// register to System events of Workflow category
ivy.rd.subscribeToSystemEvents(SystemEventCategory.WORKFLOW) ;


// get the menu auto hide preference
IUser sessionUser = ivy.session.getSessionUser();
out.menuAutoHideMode = WorkflowUserPropertyHelper.getMenuAutoHidePreference(sessionUser);
ivy.log.debug("User {0} preference {1} has value {2}.", sessionUser.getName(), UserPropertyKeys.MENU_AUTO_HIDE_PROPERTY_KEY, out.menuAutoHideMode);

// get multiple task list mode preference
out.multipleTaskListMode = WorkflowUserPropertyHelper.getMultipleTaskListModePreference(sessionUser);

// has the user wf admin permissions
out.hasWfAdministratorPermissions = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);' #txt
As0 f29 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>register System Event Handler
get user preferences
see if the user wf admin permissions</name>
        <nameStyle>87,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f29 54 124 36 24 24 -15 #rect
As0 f29 @|RichDialogProcessStepIcon #fIcon
As0 f16 expr out #txt
As0 f16 72 148 72 180 #arcP
As0 f32 expr out #txt
As0 f32 72 204 72 243 #arcP
As0 f181 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f181 actionTable 'out=in;
' #txt
As0 f181 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;

// team running tasks
out.taskDisplayMode = 1;

out.taskHierarchyContext.setPropertyFilter(WorkflowUIAccessPermissionHandler.getTaskStatesPropertyFilterByRunningModeAndTaskDisplayMode(true, out.taskDisplayMode));

out.taskHierarchyContext.title = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/allTasks");
out.taskHierarchyContext.icon = "";
out.taskHierarchyContext.toolTipText = out.taskHierarchyContext.title;


' #txt
As0 f181 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f181 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>consider the task states,
build the &quot;Running|Finished Tasks&quot; title</name>
        <nameStyle>66,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f181 766 108 36 24 20 -2 #rect
As0 f181 @|RichDialogProcessStepIcon #fIcon
As0 f77 targetWindow THIS #txt
As0 f77 targetDisplay EXISTING:<%=in.destinationDisplay.getDisplayId()%> #txt
As0 f77 richDialogId ch.ivyteam.ivy.workflow.ui.task.RunningTaskDisplayList #txt
As0 f77 startMethod start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter,Number,Boolean) #txt
As0 f77 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f77 panelName <%=in.taskHierarchyContext.title%> #txt
As0 f77 requestActionDecl '<Boolean aRunningTaskMode, ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay aTaskDisplayListParentDisplay, ch.ivyteam.ivy.workflow.IPropertyFilter aPropertyFilter, Number aTaskDisplayMode, Boolean aHasWfAdministratorPermissions> param;' #txt
As0 f77 requestActionCode 'param.aRunningTaskMode = true;

param.aTaskDisplayListParentDisplay = panel.centerTabbedDisplay;

param.aPropertyFilter = in.taskHierarchyContext.propertyFilter;
// my tasks
param.aTaskDisplayMode = in.taskDisplayMode;

param.aHasWfAdministratorPermissions = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),
 ch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);' #txt
As0 f77 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f77 responseMappingAction 'out=in;
' #txt
As0 f77 windowConfiguration '* ' #txt
As0 f77 isAsynch true #txt
As0 f77 isInnerRd true #txt
As0 f77 isDialog false #txt
As0 f77 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load
running task list</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f77 766 156 36 24 20 -2 #rect
As0 f77 @|RichDialogIcon #fIcon
As0 f5 expr out #txt
As0 f5 784 132 784 156 #arcP
As0 f2 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f2 774 230 20 20 13 0 #rect
As0 f2 @|RichDialogProcessEndIcon #fIcon
As0 f3 expr out #txt
As0 f3 784 180 784 230 #arcP
As0 f3 0 0.49533681551418535 0 0 #arcLabel
As0 f8 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f8 630 438 20 20 13 0 #rect
As0 f8 @|RichDialogProcessEndIcon #fIcon
As0 f12 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is still some 
running tasks?</name>
        <nameStyle>29,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f12 434 138 28 28 14 0 #rect
As0 f12 @|AlternativeIcon #fIcon
As0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f17 actionTable 'out=in;
' #txt
As0 f17 actionCode 'import java.util.Iterator;

out.sessionUserResumedTasks = ivy.session.findResumedWorkTasks(0, -1);

out.sessionUserResumedTasksIterator = out.sessionUserResumedTasks.iterator();' #txt
As0 f17 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get session user 
running tasks</name>
        <nameStyle>31,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f17 430 100 36 24 20 -2 #rect
As0 f17 @|RichDialogProcessStepIcon #fIcon
As0 f14 expr out #txt
As0 f14 448 124 448 138 #arcP
As0 f19 targetWindow NEW:card: #txt
As0 f19 targetDisplay TOP #txt
As0 f19 richDialogId ch.ivyteam.ivy.addons.commondialogs.QuestionDialog #txt
As0 f19 startMethod askQuestion(String,String,List<String>) #txt
As0 f19 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f19 requestActionDecl '<String icon, String question, List<String> buttons> param;' #txt
As0 f19 requestActionCode 'param.question = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/doYouWantToBookTheTask") + 
									"\n " + in.sessionUserResumedTask.getName() + " - " + in.sessionUserResumedTask.getIdentifier() + " ?";

param.buttons = ["yes", "no", "cancel"];' #txt
As0 f19 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f19 responseMappingAction 'out=in;
' #txt
As0 f19 responseActionCode 'out.pressedButton = result.pressedButton;
out.closeCanceled = "cancel".equals(out.pressedButton);' #txt
As0 f19 windowConfiguration '{/title "Question"/width 450 /height 150 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
As0 f19 isAsynch false #txt
As0 f19 isInnerRd true #txt
As0 f19 isDialog true #txt
As0 f19 userContext '* ' #txt
As0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ask question:
do you want to
book (park) the task?</name>
        <nameStyle>50,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f19 430 292 36 24 20 -2 #rect
As0 f19 @|RichDialogIcon #fIcon
As0 f11 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>park task?</name>
        <nameStyle>10,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f11 434 338 28 28 14 0 #rect
As0 f11 @|AlternativeIcon #fIcon
As0 f34 expr out #txt
As0 f34 448 316 448 338 #arcP
As0 f35 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f35 actionTable 'out=in;
' #txt
As0 f35 actionCode ivy.session.parkTask(in.sessionUserResumedTask); #txt
As0 f35 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>park
task</name>
        <nameStyle>9,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f35 430 388 36 24 20 -2 #rect
As0 f35 @|RichDialogProcessStepIcon #fIcon
As0 f36 expr in #txt
As0 f36 outCond "yes".equals(in.pressedButton) #txt
As0 f36 448 366 448 388 #arcP
As0 f37 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f37 actionTable 'out=in;
' #txt
As0 f37 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;
WorkflowUIAccessPermissionHandler.resetTaskAsSystemUser(in.sessionUserResumedTask);' #txt
As0 f37 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f37 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reset
task</name>
        <nameStyle>10,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f37 526 388 36 24 20 -2 #rect
As0 f37 @|RichDialogProcessStepIcon #fIcon
As0 f38 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f38 actionTable 'out=in;
' #txt
As0 f38 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f38 622 388 36 24 20 -2 #rect
As0 f38 @|RichDialogProcessStepIcon #fIcon
As0 f39 expr in #txt
As0 f39 outCond "no".equals(in.pressedButton) #txt
As0 f39 460 354 544 388 #arcP
As0 f39 1 544 368 #addKink
As0 f39 0 0.7122006553628882 0 0 #arcLabel
As0 f40 expr in #txt
As0 f40 462 352 640 388 #arcP
As0 f40 1 640 352 #addKink
As0 f40 0 0.6573840291579892 0 0 #arcLabel
As0 f33 expr out #txt
As0 f33 640 412 640 438 #arcP
As0 f43 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f43 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>has next?</name>
        <nameStyle>9,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f43 434 194 28 28 14 0 #rect
As0 f43 @|AlternativeIcon #fIcon
As0 f44 expr in #txt
As0 f44 outCond 'in.sessionUserResumedTasks.size() > 0' #txt
As0 f44 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f44 448 166 448 194 #arcP
As0 f45 expr out #txt
As0 f45 430 400 434 208 #arcP
As0 f45 1 384 400 #addKink
As0 f45 2 384 208 #addKink
As0 f45 1 0.5147058823529411 0 0 #arcLabel
As0 f46 expr out #txt
As0 f46 544 412 436 206 #arcP
As0 f46 1 544 432 #addKink
As0 f46 2 360 432 #addKink
As0 f46 3 360 192 #addKink
As0 f46 2 0.43657112433872813 0 0 #arcLabel
As0 f48 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f48 actionTable 'out=in;
' #txt
As0 f48 actionCode 'import ch.ivyteam.ivy.workflow.ITask;

out.sessionUserResumedTask = in.sessionUserResumedTasksIterator.next() as ITask;' #txt
As0 f48 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f48 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get next element</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f48 430 244 36 24 20 -2 #rect
As0 f48 @|RichDialogProcessStepIcon #fIcon
As0 f49 expr in #txt
As0 f49 outCond in.sessionUserResumedTasksIterator.hasNext() #txt
As0 f49 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f49 448 222 448 244 #arcP
As0 f31 expr out #txt
As0 f31 448 268 448 292 #arcP
As0 f0 guid 12DBC5335BE6AFC6 #txt
As0 f0 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents true #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 inActionCode 'out.standAloneMode = true;' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 embeddedRdInitializations '* ' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f0 62 62 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f9 expr out #txt
As0 f9 72 82 72 124 #arcP
As0 f6 guid 12DBC5586468D63C #txt
As0 f6 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f6 method close() #txt
As0 f6 disableUIEvents false #txt
As0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f6 outParameterDecl '<java.lang.Boolean closeCanceled> result;
' #txt
As0 f6 outActionCode 'result.closeCanceled = in.closeCanceled;' #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 438 54 20 20 13 0 #rect
As0 f6 @|RichDialogMethodStartIcon #fIcon
As0 f18 expr out #txt
As0 f18 448 74 448 100 #arcP
As0 f4 guid 12DBC5700459AECB #txt
As0 f4 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f4 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f4 actionTable 'out=in;
' #txt
As0 f4 actionCode 'out.destinationDisplay = panel.centerTabbedDisplay;' #txt
As0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load</name>
        <nameStyle>4,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f4 774 54 20 20 13 0 #rect
As0 f4 @|RichDialogProcessStartIcon #fIcon
As0 f7 expr out #txt
As0 f7 784 74 784 108 #arcP
As0 f21 guid 12DBC57969BB06BD #txt
As0 f21 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f21 broadcast xivyTaskStarted #txt
As0 f21 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f21 actionTable 'out=in;
' #txt
As0 f21 actionCode 'out.currentTaskId = param.task.getIdentifier();' #txt
As0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>xivyTaskStarted</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f21 1086 54 20 20 13 0 #rect
As0 f21 @|RichDialogBroadcastStartIcon #fIcon
As0 f24 expr out #txt
As0 f24 1096 74 1096 108 #arcP
As0 f20 guid 12DBC58313D91843 #txt
As0 f20 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f20 broadcast ivy_systemevent_workflow_task_changed #txt
As0 f20 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f20 actionTable 'out=in;
' #txt
As0 f20 actionCode 'out.broadcastedTasks = param.aWorkflowSystemEventParameter.getIdentifiers();' #txt
As0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ivy_systemevent_workflow_task_changed</name>
        <nameStyle>37,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f20 1318 54 20 20 13 0 #rect
As0 f20 @|RichDialogBroadcastStartIcon #fIcon
As0 f27 expr out #txt
As0 f27 1328 74 1328 100 #arcP
As0 f30 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f30 614 262 20 20 13 0 #rect
As0 f30 @|RichDialogProcessEndIcon #fIcon
As0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f10 actionTable 'out=in;
' #txt
As0 f10 actionCode 'out.closeCanceled = false;' #txt
As0 f10 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the 
output attribute</name>
        <nameStyle>25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f10 606 220 36 24 20 -2 #rect
As0 f10 @|RichDialogProcessStepIcon #fIcon
As0 f41 expr in #txt
As0 f41 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f41 462 152 624 220 #arcP
As0 f41 1 624 152 #addKink
As0 f41 0 0.7231896030994086 0 0 #arcLabel
As0 f42 expr in #txt
As0 f42 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f42 462 208 616 220 #arcP
As0 f42 1 608 208 #addKink
As0 f42 0 0.63891195171502 0 0 #arcLabel
As0 f15 expr out #txt
As0 f15 624 244 624 262 #arcP
As0 f47 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f47 1318 230 20 20 13 0 #rect
As0 f47 @|RichDialogProcessEndIcon #fIcon
As0 f50 expr out #txt
As0 f50 1328 124 1328 230 #arcP
As0 f50 0 0.1960608132519369 0 0 #arcLabel
As0 f28 guid 132631281B54F7B0 #txt
As0 f28 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f28 broadcast xivyAnyQueryTaskListRequested #txt
As0 f28 actionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f28 actionTable 'out=in;
' #txt
As0 f28 actionCode 'out.receivedAnyQueryTaskListParameter = param.parameter;' #txt
As0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>xivyAnyQueryTaskListRequested</name>
        <nameStyle>29,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f28 1086 334 20 20 13 0 #rect
As0 f28 @|RichDialogBroadcastStartIcon #fIcon
As0 f51 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f51 1086 566 20 20 13 0 #rect
As0 f51 @|RichDialogProcessEndIcon #fIcon
As0 f53 targetWindow THIS #txt
As0 f53 targetDisplay EXISTING:workflowUiCenterDisplay #txt
As0 f53 richDialogId ch.ivyteam.ivy.workflow.ui.task.AnyQueryTaskDisplayList #txt
As0 f53 startMethod start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,ch.ivyteam.ivy.workflow.ui.data.task.AnyQueryTaskListParameter,Number,Boolean) #txt
As0 f53 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f53 panelName <%=in.receivedAnyQueryTaskListParameter.tabTitle%> #txt
As0 f53 requestActionDecl '<Boolean aRunningTaskMode, ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay aTaskDisplayListParentDisplay, ch.ivyteam.ivy.workflow.ui.data.task.AnyQueryTaskListParameter aAnyQueryTaskListParameter, Number aTaskDisplayMode, Boolean aHasWfAdministratorPermissions> param;' #txt
As0 f53 requestActionCode 'param.aRunningTaskMode = true;
param.aTaskDisplayListParentDisplay = panel.centerTabbedDisplay;
param.aAnyQueryTaskListParameter = in.receivedAnyQueryTaskListParameter;
// it''s the "any query mode" in order to display tasks that fit to criterias
param.aTaskDisplayMode = 3;
param.aHasWfAdministratorPermissions = in.hasWfAdministratorPermissions;
' #txt
As0 f53 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f53 responseMappingAction 'out=in;
' #txt
As0 f53 windowConfiguration '* ' #txt
As0 f53 isAsynch true #txt
As0 f53 isInnerRd true #txt
As0 f53 userContext '* ' #txt
As0 f53 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load task list
that fits to the 
received task criterias</name>
        <nameStyle>15,7
41,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f53 1078 476 36 24 20 -2 #rect
As0 f53 @|RichDialogIcon #fIcon
As0 f54 expr out #txt
As0 f54 1096 354 1096 476 #arcP
As0 f52 expr out #txt
As0 f52 1096 500 1096 566 #arcP
As0 f55 guid 1326C1F1D50F5DDD #txt
As0 f55 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f55 method start(Boolean) #txt
As0 f55 disableUIEvents true #txt
As0 f55 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Boolean standAloneMode> param = methodEvent.getInputArguments();
' #txt
As0 f55 inActionCode 'out.standAloneMode = param.standAloneMode;' #txt
As0 f55 outParameterDecl '<> result;
' #txt
As0 f55 embeddedRdInitializations '* ' #txt
As0 f55 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Boolean)</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f55 134 62 20 20 13 0 #rect
As0 f55 @|RichDialogInitStartIcon #fIcon
As0 f56 expr out #txt
As0 f56 136 78 86 124 #arcP
>Proto As0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel>Accepted broadcasts</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>299</swimlaneSize>
    <swimlaneSize>433</swimlaneSize>
    <swimlaneSize>337</swimlaneSize>
    <swimlaneSize>636</swimlaneSize>
    <swimlaneColor>-6697729</swimlaneColor>
    <swimlaneColor>-16737895</swimlaneColor>
    <swimlaneColor>-6697729</swimlaneColor>
    <swimlaneColor>-6710785</swimlaneColor>
</elementInfo>
' #txt
>Proto As0 .type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
>Proto As0 .processKind RICH_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f23 mainOut f25 tail #connect
As0 f25 head f22 mainIn #connect
As0 f29 mainOut f16 tail #connect
As0 f16 head f13 mainIn #connect
As0 f13 mainOut f32 tail #connect
As0 f32 head f1 mainIn #connect
As0 f181 mainOut f5 tail #connect
As0 f5 head f77 mainIn #connect
As0 f77 mainOut f3 tail #connect
As0 f3 head f2 mainIn #connect
As0 f17 mainOut f14 tail #connect
As0 f14 head f12 in #connect
As0 f19 mainOut f34 tail #connect
As0 f34 head f11 in #connect
As0 f11 out f36 tail #connect
As0 f36 head f35 mainIn #connect
As0 f11 out f39 tail #connect
As0 f39 head f37 mainIn #connect
As0 f11 out f40 tail #connect
As0 f40 head f38 mainIn #connect
As0 f38 mainOut f33 tail #connect
As0 f33 head f8 mainIn #connect
As0 f12 out f44 tail #connect
As0 f44 head f43 in #connect
As0 f35 mainOut f45 tail #connect
As0 f45 head f43 in #connect
As0 f37 mainOut f46 tail #connect
As0 f46 head f43 in #connect
As0 f43 out f49 tail #connect
As0 f49 head f48 mainIn #connect
As0 f48 mainOut f31 tail #connect
As0 f31 head f19 mainIn #connect
As0 f0 mainOut f9 tail #connect
As0 f9 head f29 mainIn #connect
As0 f6 mainOut f18 tail #connect
As0 f18 head f17 mainIn #connect
As0 f4 mainOut f7 tail #connect
As0 f7 head f181 mainIn #connect
As0 f21 mainOut f24 tail #connect
As0 f24 head f23 mainIn #connect
As0 f20 mainOut f27 tail #connect
As0 f27 head f26 mainIn #connect
As0 f12 out f41 tail #connect
As0 f41 head f10 mainIn #connect
As0 f43 out f42 tail #connect
As0 f42 head f10 mainIn #connect
As0 f10 mainOut f15 tail #connect
As0 f15 head f30 mainIn #connect
As0 f26 mainOut f50 tail #connect
As0 f50 head f47 mainIn #connect
As0 f28 mainOut f54 tail #connect
As0 f54 head f53 mainIn #connect
As0 f53 mainOut f52 tail #connect
As0 f52 head f51 mainIn #connect
As0 f55 mainOut f56 tail #connect
As0 f56 head f29 mainIn #connect
