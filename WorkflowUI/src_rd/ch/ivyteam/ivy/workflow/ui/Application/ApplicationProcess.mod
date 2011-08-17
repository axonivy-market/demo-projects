[Ivy]
[>Created: Wed Aug 17 13:35:00 CEST 2011]
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
As0 @PushWFArc f28 '' #zField
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
As0 @RichDialogEnd f41 '' #zField
As0 @PushWFArc f10 '' #zField
As0 @PushWFArc f15 '' #zField
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
>Proto As0 As0 ApplicationDynamicWayProcess #zField
As0 f1 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f1 59 243 26 26 14 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f13 targetWindow THIS #txt
As0 f13 targetDisplay workflowUiWestDisplay #txt
As0 f13 richDialogId ch.ivyteam.ivy.workflow.ui.UserMenu #txt
As0 f13 startMethod start(ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay) #txt
As0 f13 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f13 panelName 'Workflow UI menu' #txt
As0 f13 requestActionDecl '<ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay aDestinationDisplay> param;' #txt
As0 f13 requestMappingAction 'param.aDestinationDisplay=panel.centerTabbedDisplay;
' #txt
As0 f13 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.Application.ApplicationData out;
' #txt
As0 f13 responseMappingAction 'out=in;
' #txt
As0 f13 windowConfiguration '#Fri Jul 18 17:58:21 CEST 2008
use_default=true
' #txt
As0 f13 isAsynch true #txt
As0 f13 isInnerRd true #txt
As0 f13 isDialog false #txt
As0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load the User Menu
on westDisplay</name>
        <nameStyle>33,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f13 54 180 36 24 20 -2 #rect
As0 f13 @|RichDialogIcon #fIcon
As0 f22 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f22 1006 222 20 20 13 0 #rect
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
As0 f23 999 108 34 24 21 -15 #rect
As0 f23 @|RichDialogProcessStepIcon #fIcon
As0 f25 expr out #txt
As0 f25 1016 132 1016 222 #arcP
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
As0 f26 1230 100 36 24 21 -10 #rect
As0 f26 @|RichDialogProcessStepIcon #fIcon
As0 f28 expr out #txt
As0 f28 1248 124 1025 229 #arcP
As0 f28 1 1248 184 #addKink
As0 f28 0 0.9394419044650069 0 0 #arcLabel
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
ivy.log.debug("User {0} preference {1} has value {2}.", sessionUser.getName(), UserPropertyKeys.MENU_AUTO_HIDE_PROPERTY_KEY, out.menuAutoHideMode);' #txt
As0 f29 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>register System Event Handler
get the menu auto hide preference</name>
        <nameStyle>63,7,9
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
As0 f181 686 108 36 24 20 -2 #rect
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
As0 f77 686 156 36 24 20 -2 #rect
As0 f77 @|RichDialogIcon #fIcon
As0 f5 expr out #txt
As0 f5 704 132 704 156 #arcP
As0 f2 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f2 694 230 20 20 13 0 #rect
As0 f2 @|RichDialogProcessEndIcon #fIcon
As0 f3 expr out #txt
As0 f3 704 180 704 230 #arcP
As0 f3 0 0.49533681551418535 0 0 #arcLabel
As0 f8 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f8 550 438 20 20 13 0 #rect
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
As0 f12 354 138 28 28 14 0 #rect
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
As0 f17 350 100 36 24 20 -2 #rect
As0 f17 @|RichDialogProcessStepIcon #fIcon
As0 f14 expr out #txt
As0 f14 368 124 368 138 #arcP
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
As0 f19 responseActionCode 'out.pressedButton = result.pressedButton;' #txt
As0 f19 windowConfiguration '{/title "Question"/width 450 /height 150 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
As0 f19 isAsynch false #txt
As0 f19 isInnerRd true #txt
As0 f19 isDialog true #txt
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
As0 f19 350 292 36 24 20 -2 #rect
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
As0 f11 354 338 28 28 14 0 #rect
As0 f11 @|AlternativeIcon #fIcon
As0 f34 expr out #txt
As0 f34 368 316 368 338 #arcP
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
As0 f35 350 388 36 24 20 -2 #rect
As0 f35 @|RichDialogProcessStepIcon #fIcon
As0 f36 expr in #txt
As0 f36 outCond "yes".equals(in.pressedButton) #txt
As0 f36 368 366 368 388 #arcP
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
As0 f37 446 388 36 24 20 -2 #rect
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
As0 f38 542 388 36 24 20 -2 #rect
As0 f38 @|RichDialogProcessStepIcon #fIcon
As0 f39 expr in #txt
As0 f39 outCond "no".equals(in.pressedButton) #txt
As0 f39 380 354 464 388 #arcP
As0 f39 1 464 368 #addKink
As0 f39 0 0.7122006553628882 0 0 #arcLabel
As0 f40 expr in #txt
As0 f40 382 352 560 388 #arcP
As0 f40 1 560 352 #addKink
As0 f40 0 0.6573840291579892 0 0 #arcLabel
As0 f33 expr out #txt
As0 f33 560 412 560 438 #arcP
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
As0 f43 354 194 28 28 14 0 #rect
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
As0 f44 368 166 368 194 #arcP
As0 f45 expr out #txt
As0 f45 350 400 354 208 #arcP
As0 f45 1 304 400 #addKink
As0 f45 2 304 208 #addKink
As0 f45 1 0.5147058823529411 0 0 #arcLabel
As0 f46 expr out #txt
As0 f46 464 412 356 206 #arcP
As0 f46 1 464 432 #addKink
As0 f46 2 280 432 #addKink
As0 f46 3 280 192 #addKink
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
As0 f48 350 244 36 24 20 -2 #rect
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
As0 f49 368 222 368 244 #arcP
As0 f31 expr out #txt
As0 f31 368 268 368 292 #arcP
As0 f41 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f41 guid 12DA884C8EA1E296 #txt
As0 f41 502 262 20 20 13 0 #rect
As0 f41 @|RichDialogEndIcon #fIcon
As0 f10 expr in #txt
As0 f10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f10 382 208 512 262 #arcP
As0 f10 1 512 208 #addKink
As0 f10 0 0.6123833388845563 0 0 #arcLabel
As0 f15 expr in #txt
As0 f15 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f15 382 152 512 262 #arcP
As0 f15 1 512 152 #addKink
As0 f15 0 0.7231896030994086 0 0 #arcLabel
As0 f0 guid 12DBC5335BE6AFC6 #txt
As0 f0 type ch.ivyteam.ivy.workflow.ui.Application.ApplicationData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents true #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
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
As0 f6 outActionCode 'result.closeCanceled = in.pressedButton.equals("cancel");' #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 358 54 20 20 13 0 #rect
As0 f6 @|RichDialogMethodStartIcon #fIcon
As0 f18 expr out #txt
As0 f18 368 74 368 100 #arcP
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
As0 f4 694 54 20 20 13 0 #rect
As0 f4 @|RichDialogProcessStartIcon #fIcon
As0 f7 expr out #txt
As0 f7 704 74 704 108 #arcP
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
As0 f21 1006 54 20 20 13 0 #rect
As0 f21 @|RichDialogBroadcastStartIcon #fIcon
As0 f24 expr out #txt
As0 f24 1016 74 1016 108 #arcP
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
As0 f20 1238 54 20 20 13 0 #rect
As0 f20 @|RichDialogBroadcastStartIcon #fIcon
As0 f27 expr out #txt
As0 f27 1248 74 1248 100 #arcP
>Proto As0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel>Accepted broadcasts</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>221</swimlaneSize>
    <swimlaneSize>416</swimlaneSize>
    <swimlaneSize>337</swimlaneSize>
    <swimlaneSize>520</swimlaneSize>
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
As0 f26 mainOut f28 tail #connect
As0 f28 head f22 mainIn #connect
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
As0 f43 out f10 tail #connect
As0 f10 head f41 mainIn #connect
As0 f12 out f15 tail #connect
As0 f15 head f41 mainIn #connect
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
