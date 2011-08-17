[Ivy]
[>Created: Wed Aug 17 10:46:25 CEST 2011]
12A146365AD40893 3.17 #module
>Proto >Proto Collection #zClass
Ss0 SettingsProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStart f3 '' #zField
Ss0 @RichDialogProcessEnd f4 '' #zField
Ss0 @RichDialogProcessStart f17 '' #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialog f23 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @RichDialogProcessStart f19 '' #zField
Ss0 @RichDialogEnd f20 '' #zField
Ss0 @PushWFArc f27 '' #zField
Ss0 @RichDialogProcessStart f2 '' #zField
Ss0 @RichDialogProcessStep f10 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @Alternative f15 '' #zField
Ss0 @RichDialogProcessStep f24 '' #zField
Ss0 @PushWFArc f28 '' #zField
Ss0 @RichDialogProcessStep f11 '' #zField
Ss0 @PushWFArc f31 '' #zField
Ss0 @PushWFArc f26 '' #zField
Ss0 @PushWFArc f32 '' #zField
Ss0 @RichDialog f22 '' #zField
Ss0 @PushWFArc f34 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @PushWFArc f9 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @PushWFArc f6 '' #zField
>Proto Ss0 Ss0 SettingsProcess #zField
Ss0 f1 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f1 43 251 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 guid 11989E29DB2D45AB #txt
Ss0 f3 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f3 actionTable 'out=in;
out.error="";
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 670 38 20 20 13 0 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f4 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f4 443 251 26 26 14 0 #rect
Ss0 f4 @|RichDialogProcessEndIcon #fIcon
Ss0 f17 guid 11B703F21D65DE7D #txt
Ss0 f17 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f17 actionTable 'out=in;
' #txt
Ss0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>changePassword</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f17 446 38 20 20 13 0 #rect
Ss0 f17 @|RichDialogProcessStartIcon #fIcon
Ss0 f0 guid 11B70775058C5285 #txt
Ss0 f0 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents false #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 embeddedRdInitializations '{/casesHierarchyLayoutSelectRDC {/fieldName "casesHierarchyLayoutSelectRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/tasksSeparatorRDC {/fieldName "tasksSeparatorRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/casesSeparatorRDC {/fieldName "casesSeparatorRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/tasksHierarchyLayoutSelectRDC {/fieldName "tasksHierarchyLayoutSelectRDC"/startMethod "start()"/parameterMapping ""/initScript ""}}' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 46 38 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f23 targetDisplay TOP #txt
Ss0 f23 richDialogId ch.ivyteam.ivy.workflow.ui.security.PasswordChange #txt
Ss0 f23 startMethod start() #txt
Ss0 f23 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f23 requestActionDecl '<> param;' #txt
Ss0 f23 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f23 responseMappingAction 'out=in;
' #txt
Ss0 f23 windowConfiguration '{/title "<%=in.windowTitle%>"/width 350 /height 125 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ss0 f23 isAsynch false #txt
Ss0 f23 isInnerRd true #txt
Ss0 f23 isDialog true #txt
Ss0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>change 
password</name>
        <nameStyle>8,7,9
8,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f23 438 164 36 24 20 -2 #rect
Ss0 f23 @|RichDialogIcon #fIcon
Ss0 f18 expr out #txt
Ss0 f18 456 188 456 251 #arcP
Ss0 f19 guid 12A148CFC364845D #txt
Ss0 f19 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f19 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f19 actionTable 'out=in;
' #txt
Ss0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f19 894 38 20 20 13 0 #rect
Ss0 f19 @|RichDialogProcessStartIcon #fIcon
Ss0 f20 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f20 guid 12A148D1B785D9E4 #txt
Ss0 f20 670 254 20 20 13 0 #rect
Ss0 f20 @|RichDialogEndIcon #fIcon
Ss0 f27 expr out #txt
Ss0 f27 904 58 690 264 #arcP
Ss0 f27 1 904 264 #addKink
Ss0 f27 0 0.8509003178487277 0 0 #arcLabel
Ss0 f2 guid 12A1492E0B8BA00D #txt
Ss0 f2 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f2 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f2 actionTable 'out=in;
' #txt
Ss0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load</name>
        <nameStyle>4,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f2 198 38 20 20 13 0 #rect
Ss0 f2 @|RichDialogProcessStartIcon #fIcon
Ss0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f10 actionTable 'out=in;
' #txt
Ss0 f10 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUserPropertyHelper;
import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;
import ch.ivyteam.ivy.workflow.ui.utils.UserPropertyKeys;
import ch.ivyteam.ivy.addons.restricted.workflow.CaseManagedTeamHelper;


out.hasUserSetOwnPropertyPermission = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.USER_SET_OWN_PROPERTY);
out.hasUserReadOwnPropertyPermission = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.USER_READ_OWN_PROPERTY);

// set the session user information
String sessionUserInformation = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/security/plainStrings/sessionUserSummaryInformation", 
			["<b>" + ivy.session.getSessionUserName() + "</b>", ivy.request.getApplication().getName(), 
				"".equals(ivy.session.getActiveEnvironment())? "Default": ivy.session.getActiveEnvironment() ]) +
				
				(ch.ivyteam.ivy.addons.restricted.workflow.CaseManagedTeamHelper.getSessionUserManagedTeamsAsString(ivy.session.getSessionUser()).isEmpty()?
				"": ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/youAreTeamManagerOf")  + " <b>" + CaseManagedTeamHelper.getSessionUserManagedTeamsAsString(ivy.session.getSessionUser()) + "</b>.");
									
panel.sessionUserInformationHtmlPane.setText(sessionUserInformation);


// get the user settings, if there is not, apply the cms parameters
IUser sessionUser = ivy.session.getSessionUser();

// tasks
int tasksHierarchyLayoutIndex = WorkflowUserPropertyHelper.getTasksHierarchyLayoutIndexPreference(sessionUser);
ivy.log.debug("User {0} preference {1} has value {2}.", sessionUser.getName(), UserPropertyKeys.TASKS_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY, tasksHierarchyLayoutIndex);
panel.tasksHierarchyLayoutSelectRDC.selectedTaskHierarchyLayoutIndex = (tasksHierarchyLayoutIndex != -1? tasksHierarchyLayoutIndex: 0);
									
boolean enableTasksSortedByPriorityMode = WorkflowUserPropertyHelper.getTasksSortedByPriorityPreference(sessionUser);
ivy.log.debug("User {0} preference {1} has value {2}.", sessionUser.getName(), UserPropertyKeys.TASKS_SORTED_BY_PRIORITY_PROPERTY_KEY, enableTasksSortedByPriorityMode);
panel.tasksSortByPriorityCheckBox.selected = enableTasksSortedByPriorityMode;

boolean enableMultipleTaskListMode = WorkflowUserPropertyHelper.getMultipleTaskListModePreference(sessionUser);
ivy.log.debug("User {0} preference {1} has value {2}.", sessionUser.getName(), UserPropertyKeys.IS_MULTIPLE_TASKLIST_MODE_PROPERTY_KEY, enableMultipleTaskListMode);
panel.isMultipleTaskListCheckBox.selected = enableMultipleTaskListMode;
						
boolean enableMenuAutoHideMode = WorkflowUserPropertyHelper.getMenuAutoHidePreference(sessionUser);
ivy.log.debug("User {0} preference {1} has value {2}.", sessionUser.getName(), UserPropertyKeys.MENU_AUTO_HIDE_PROPERTY_KEY, enableMenuAutoHideMode);
panel.taskAutoHideMenuCheckBox.selected = enableMenuAutoHideMode;




// cases
int casesHierarchyLayoutIndex = WorkflowUserPropertyHelper.getCasesHierarchyLayoutIndexPreference(sessionUser);
ivy.log.debug("User {0} preference {1} has value {2}.", sessionUser.getName(), UserPropertyKeys.CASES_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY, casesHierarchyLayoutIndex);
panel.casesHierarchyLayoutSelectRDC.selectedCaseHierarchyLayoutIndex = (casesHierarchyLayoutIndex != -1? casesHierarchyLayoutIndex: 0);

boolean enableCasesSortedByPriorityMode = WorkflowUserPropertyHelper.getCasesSortedByPriorityPreference(sessionUser);
ivy.log.debug("User {0} preference {1} has value {2}.", sessionUser.getName(), UserPropertyKeys.CASES_SORTED_BY_PRIORITY_PROPERTY_KEY, enableCasesSortedByPriorityMode);
panel.casesSortByPriorityCheckBox.selected = enableCasesSortedByPriorityMode;

boolean enableMultipleCaseListMode = WorkflowUserPropertyHelper.getMultipleCaseListModePreference(sessionUser);
ivy.log.debug("User {0} preference {1} has value {2}.", sessionUser.getName(), UserPropertyKeys.IS_MULTIPLE_CASELIST_MODE_PROPERTY_KEY, enableMultipleCaseListMode);
panel.isMultipleCaseListCheckBox.selected = enableMultipleCaseListMode;' #txt
Ss0 f10 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>check permissions
show session user information
and show current settings</name>
        <nameStyle>48,7,9
25,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f10 190 100 36 24 20 -2 #rect
Ss0 f10 @|RichDialogProcessStepIcon #fIcon
Ss0 f5 expr out #txt
Ss0 f5 208 124 68 263 #arcP
Ss0 f5 1 208 256 #addKink
Ss0 f5 1 0.2029966286631347 0 0 #arcLabel
Ss0 f15 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>user has 
set property permission?</name>
        <nameStyle>34,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f15 666 74 28 28 14 0 #rect
Ss0 f15 @|AlternativeIcon #fIcon
Ss0 f24 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f24 actionTable 'out=in;
' #txt
Ss0 f24 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUserPropertyHelper;
import ch.ivyteam.ivy.workflow.ui.utils.UserPropertyKeys;

IUser sessionUser = ivy.session.getSessionUser();

// tasks
ivy.log.debug("User {0} saves property {1} with value {2}.", sessionUser, UserPropertyKeys.TASKS_SORTED_BY_PRIORITY_PROPERTY_KEY, panel.tasksSortByPriorityCheckBox.selected);
WorkflowUserPropertyHelper.setTasksSortedByPriorityPreference(sessionUser, panel.tasksSortByPriorityCheckBox.selected);

ivy.log.debug("User {0} saves property {1} with value {2}.", sessionUser, UserPropertyKeys.TASKS_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY, panel.tasksHierarchyLayoutSelectRDC.getSelectedTaskHierarchyLayoutIndex());
WorkflowUserPropertyHelper.setTasksHierarchyLayoutIndexPreference(sessionUser, panel.tasksHierarchyLayoutSelectRDC.getSelectedTaskHierarchyLayoutIndex());

ivy.log.debug("User {0} saves property {1} with value {2}.", sessionUser, UserPropertyKeys.IS_MULTIPLE_TASKLIST_MODE_PROPERTY_KEY, panel.isMultipleTaskListCheckBox.selected);
WorkflowUserPropertyHelper.setMultipleTaskListModePreference(sessionUser, panel.isMultipleTaskListCheckBox.selected);

ivy.log.debug("User {0} saves property {1} with value {2}.", sessionUser, UserPropertyKeys.MENU_AUTO_HIDE_PROPERTY_KEY, panel.taskAutoHideMenuCheckBox.selected);
WorkflowUserPropertyHelper.setMenuAutoHidePreference(sessionUser, panel.taskAutoHideMenuCheckBox.selected);



// cases
ivy.log.debug("User {0} saves property {1} with value {2}.", sessionUser, UserPropertyKeys.CASES_SORTED_BY_PRIORITY_PROPERTY_KEY, panel.casesSortByPriorityCheckBox.selected);
WorkflowUserPropertyHelper.setCasesSortedByPriorityPreference(sessionUser, panel.casesSortByPriorityCheckBox.selected);

ivy.log.debug("User {0} saves property {1} with value {2}.", sessionUser, UserPropertyKeys.CASES_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY, panel.casesHierarchyLayoutSelectRDC.getSelectedCaseHierarchyLayoutIndex());
WorkflowUserPropertyHelper.setCasesHierarchyLayoutIndexPreference(sessionUser, panel.casesHierarchyLayoutSelectRDC.getSelectedCaseHierarchyLayoutIndex());

ivy.log.debug("User {0} saves property {1} with value {2}.", sessionUser, UserPropertyKeys.IS_MULTIPLE_CASELIST_MODE_PROPERTY_KEY, panel.isMultipleCaseListCheckBox.selected);
WorkflowUserPropertyHelper.setMultipleCaseListModePreference(sessionUser, panel.isMultipleCaseListCheckBox.selected);' #txt
Ss0 f24 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save settings:
tasks
cases</name>
        <nameStyle>15,7,9
11,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f24 662 132 36 24 20 -2 #rect
Ss0 f24 @|RichDialogProcessStepIcon #fIcon
Ss0 f28 expr in #txt
Ss0 f28 outCond in.hasUserSetOwnPropertyPermission #txt
Ss0 f28 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f28 680 102 680 132 #arcP
Ss0 f11 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f11 actionTable 'out=in;
' #txt
Ss0 f11 actionCode 'out.windowTitle = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/changePassword");' #txt
Ss0 f11 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>prepare
window title</name>
        <nameStyle>8,7,9
12,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f11 438 108 36 24 20 -2 #rect
Ss0 f11 @|RichDialogProcessStepIcon #fIcon
Ss0 f31 expr out #txt
Ss0 f31 456 58 456 108 #arcP
Ss0 f26 expr out #txt
Ss0 f26 456 132 456 164 #arcP
Ss0 f32 expr out #txt
Ss0 f32 208 58 208 100 #arcP
Ss0 f32 0 0.5140798111392898 0 0 #arcLabel
Ss0 f22 targetWindow NEW:card: #txt
Ss0 f22 targetDisplay TOP #txt
Ss0 f22 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Ss0 f22 startMethod showMessage(String) #txt
Ss0 f22 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f22 requestActionDecl '<String message> param;' #txt
Ss0 f22 requestActionCode 'in.windowTitle = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/information");
param.message = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/settingsWillByAppliedAtNextRestart");' #txt
Ss0 f22 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f22 responseMappingAction 'out=in;
' #txt
Ss0 f22 windowConfiguration '{/title "<%=in.windowTitle%>"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ss0 f22 isAsynch false #txt
Ss0 f22 isInnerRd true #txt
Ss0 f22 isDialog true #txt
Ss0 f22 userContext '* ' #txt
Ss0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show that settings 
will be applied at next restart</name>
        <nameStyle>10,7,9
41,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f22 662 188 36 24 20 -2 #rect
Ss0 f22 @|RichDialogIcon #fIcon
Ss0 f34 expr out #txt
Ss0 f34 680 156 680 188 #arcP
Ss0 f7 expr out #txt
Ss0 f7 680 212 680 254 #arcP
Ss0 f9 expr in #txt
Ss0 f9 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f9 694 88 689 263 #arcP
Ss0 f9 1 864 88 #addKink
Ss0 f9 2 864 248 #addKink
Ss0 f9 1 0.3484513511667232 0 0 #arcLabel
Ss0 f12 expr out #txt
Ss0 f12 680 58 680 74 #arcP
Ss0 f6 expr out #txt
Ss0 f6 56 58 56 251 #arcP
>Proto Ss0 .type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 .rdData2UIAction 'panel.caseSettingsGridBagLayoutPane.enabled=in.hasUserSetOwnPropertyPermission;
panel.caseSettingsGridBagLayoutPane.enabled=in.hasUserSetOwnPropertyPermission;
panel.caseSortByPriorityLabel.visible=false;
panel.casesSeparatorRDC.separatorText=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/cases");
panel.casesSortByPriorityCheckBox.visible=false;
panel.headerLabel.visible=!in.hasUserSetOwnPropertyPermission;
panel.taskSettingsGridBagLayoutPane.enabled=in.hasUserSetOwnPropertyPermission;
panel.taskSettingsGridBagLayoutPane.enabled=in.hasUserSetOwnPropertyPermission;
panel.tasksSeparatorRDC.separatorText=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasks");
' #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f23 mainOut f18 tail #connect
Ss0 f18 head f4 mainIn #connect
Ss0 f19 mainOut f27 tail #connect
Ss0 f27 head f20 mainIn #connect
Ss0 f10 mainOut f5 tail #connect
Ss0 f5 head f1 mainIn #connect
Ss0 f15 out f28 tail #connect
Ss0 f28 head f24 mainIn #connect
Ss0 f17 mainOut f31 tail #connect
Ss0 f31 head f11 mainIn #connect
Ss0 f11 mainOut f26 tail #connect
Ss0 f26 head f23 mainIn #connect
Ss0 f2 mainOut f32 tail #connect
Ss0 f32 head f10 mainIn #connect
Ss0 f24 mainOut f34 tail #connect
Ss0 f34 head f22 mainIn #connect
Ss0 f22 mainOut f7 tail #connect
Ss0 f7 head f20 mainIn #connect
Ss0 f15 out f9 tail #connect
Ss0 f9 head f20 mainIn #connect
Ss0 f3 mainOut f12 tail #connect
Ss0 f12 head f15 in #connect
Ss0 f0 mainOut f6 tail #connect
Ss0 f6 head f1 mainIn #connect
