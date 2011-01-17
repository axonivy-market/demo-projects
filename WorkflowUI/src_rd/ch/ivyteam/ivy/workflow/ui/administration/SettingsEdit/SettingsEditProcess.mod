[Ivy]
[>Created: Mon Nov 22 15:40:21 CET 2010]
12A146365AD40893 3.13.1 #module
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
Ss0 @RichDialogProcessStep f6 '' #zField
Ss0 @RichDialogProcessStep f13 '' #zField
Ss0 @PushWFArc f16 '' #zField
Ss0 @RichDialogProcessStart f17 '' #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @PushWFArc f14 '' #zField
Ss0 @RichDialog f23 '' #zField
Ss0 @PushWFArc f18 '' #zField
Ss0 @RichDialogProcessStart f19 '' #zField
Ss0 @RichDialogEnd f20 '' #zField
Ss0 @PushWFArc f27 '' #zField
Ss0 @PushWFArc f8 '' #zField
Ss0 @RichDialogProcessStart f2 '' #zField
Ss0 @RichDialogProcessStep f10 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @Alternative f15 '' #zField
Ss0 @PushWFArc f21 '' #zField
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
>Proto Ss0 Ss0 SettingsProcess #zField
Ss0 f1 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f1 43 363 26 26 14 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ok</name>
        <nameStyle>2,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 guid 11989E29DB2D45AB #txt
Ss0 f3 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f3 actionTable 'out=in;
out.error="";
' #txt
Ss0 f3 494 38 20 20 13 0 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f4 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f4 267 363 26 26 14 0 #rect
Ss0 f4 @|RichDialogProcessEndIcon #fIcon
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update email 
language and notifications</name>
        <nameStyle>40,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 actionCode 'import ch.ivyteam.ivy.security.*;
import java.util.EnumSet;

//set eMail notification fields
if(in.dailyTask && in.newTask){
	IUser myNotification = ivy.session.getSessionUser().setEMailNotificationKind(EnumSet.of(EMailNotificationKind.DAILY_WORKFLOW_TASKS_SUMMARY, EMailNotificationKind.ON_NEW_WORKFLOW_WORK_TASKS));
} else if(in.dailyTask){
	IUser myNotification = ivy.session.getSessionUser().setEMailNotificationKind(EnumSet.of(EMailNotificationKind.DAILY_WORKFLOW_TASKS_SUMMARY));
} else if(in.newTask){
	IUser myNotification = ivy.session.getSessionUser().setEMailNotificationKind(EnumSet.of(EMailNotificationKind.ON_NEW_WORKFLOW_WORK_TASKS));
}

//set eMail language
if(panel.languageComboBox.selectedIndex >= 0){
	ivy.session.getSessionUser().setEMailLanguage(new java.util.Locale(in.selectedLanguage));
}
		
ivy.log.debug(ivy.session.getSessionUser().getEMailNotificationKind());
' #txt
Ss0 f6 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f6 486 124 36 24 20 -2 #rect
Ss0 f6 @|RichDialogProcessStepIcon #fIcon
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>display the
 user name</name>
        <nameStyle>22,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f13 actionTable 'out=in;
' #txt
Ss0 f13 actionCode 'import java.util.Iterator;

out.language = ivy.cms.getSupportedLanguages();

if(!ivy.session.isSessionUserUnknown()){
	out.loggedInAs = ivy.session.getSessionUser().getName() + " (" + ivy.session.getSessionUser().getFullName() + ")";

	for ( Iterator i = ivy.session.getSessionUser().getEMailNotificationKind().iterator(); i.hasNext(); )
	{
		String notification = i.next().toString();
		ivy.log.info(notification);
		if (notification.equals("DAILY_WORKFLOW_TASKS_SUMMARY")){
			out.dailyTask = true;
		}
		if(notification.equals("ON_NEW_WORKFLOW_WORK_TASKS")){
			out.newTask = true;
		}
	}
	
}else{
	out.loggedInAs = "<html><b>You are not logged in</b>";
}
' #txt
Ss0 f13 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f13 38 204 36 24 20 -2 #rect
Ss0 f13 @|RichDialogProcessStepIcon #fIcon
Ss0 f16 expr out #txt
Ss0 f16 56 228 56 363 #arcP
Ss0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>changePassword</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f17 guid 11B703F21D65DE7D #txt
Ss0 f17 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f17 actionTable 'out=in;
' #txt
Ss0 f17 270 38 20 20 13 0 #rect
Ss0 f17 @|RichDialogProcessStartIcon #fIcon
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
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
Ss0 f0 46 38 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f14 expr out #txt
Ss0 f14 56 58 56 204 #arcP
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
Ss0 f23 262 164 36 24 20 -2 #rect
Ss0 f23 @|RichDialogIcon #fIcon
Ss0 f18 expr out #txt
Ss0 f18 280 188 280 363 #arcP
Ss0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancel</name>
        <nameStyle>6,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f19 guid 12A148CFC364845D #txt
Ss0 f19 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f19 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f19 actionTable 'out=in;
' #txt
Ss0 f19 718 38 20 20 13 0 #rect
Ss0 f19 @|RichDialogProcessStartIcon #fIcon
Ss0 f20 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f20 guid 12A148D1B785D9E4 #txt
Ss0 f20 494 366 20 20 13 0 #rect
Ss0 f20 @|RichDialogEndIcon #fIcon
Ss0 f27 expr out #txt
Ss0 f27 728 58 514 376 #arcP
Ss0 f27 1 728 376 #addKink
Ss0 f27 0 0.8509003178487277 0 0 #arcLabel
Ss0 f8 expr out #txt
Ss0 f8 504 58 504 124 #arcP
Ss0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load</name>
        <nameStyle>4,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f2 guid 12A1492E0B8BA00D #txt
Ss0 f2 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f2 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f2 actionTable 'out=in;
' #txt
Ss0 f2 174 38 20 20 13 0 #rect
Ss0 f2 @|RichDialogProcessStartIcon #fIcon
Ss0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>check permissions
and show current settings</name>
        <nameStyle>18,7,9
25,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f10 actionTable 'out=in;
' #txt
Ss0 f10 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.UserPropertyKeys;


out.hasUserSetOwnPropertyPermission = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.USER_SET_OWN_PROPERTY);
out.hasUserReadOwnPropertyPermission = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.USER_READ_OWN_PROPERTY);


// get the user settings, if there is not, apply the cms parameters
// tasks
panel.tasksHierarchyLayoutSelectRDC.selectedTaskHierarchyLayoutIndex = 
								(in.hasUserReadOwnPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.TASKS_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.TASKS_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY).toNumber():
									ivy.cms.co(UserPropertyKeys.TASKS_HIERARCHY_LAYOUT_INDEX_PROPERTY_CMS_DEFAULT_VALUE).toNumber();


panel.tasksSortByPriorityCheckBox.selected = 
								(in.hasUserReadOwnPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.TASKS_SORTED_BY_PRIORITY_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.TASKS_SORTED_BY_PRIORITY_PROPERTY_KEY).equalsIgnoreCase("true"):
									ivy.cms.co(UserPropertyKeys.TASKS_SORTED_BY_PRIORITY_PROPERTY_CMS_DEFAULT_VALUE).equalsIgnoreCase("true");


panel.isMultipleTaskListCheckBox.selected = 
								(in.hasUserReadOwnPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.IS_MULTIPLE_TASKLIST_MODE_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.IS_MULTIPLE_TASKLIST_MODE_PROPERTY_KEY).equalsIgnoreCase("true"):
									ivy.cms.co(UserPropertyKeys.IS_MULTIPLE_TASKLIST_MODE_PROPERTY_CMS_DEFAULT_VALUE).equalsIgnoreCase("true");
									
//TIFAM - 11.08.2009 - save auto hide menu parameter
panel.taskAutoHideMenuCheckBox.selected = 
								(in.hasUserReadOwnPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.MENU_AUTO_HIDE_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.MENU_AUTO_HIDE_PROPERTY_KEY).equalsIgnoreCase("true"):
									ivy.cms.co(UserPropertyKeys.MENU_AUTO_HIDE__PROPERTY_CMS_DEFAULT_VALUE).equalsIgnoreCase("true");
									


// cases
panel.casesHierarchyLayoutSelectRDC.selectedCaseHierarchyLayoutIndex = 
								(in.hasUserReadOwnPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.CASES_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.CASES_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY).toNumber():
									ivy.cms.co(UserPropertyKeys.CASES_HIERARCHY_LAYOUT_INDEX_PROPERTY_CMS_DEFAULT_VALUE).toNumber();


panel.casesSortByPriorityCheckBox.selected = 
								(in.hasUserReadOwnPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.CASES_SORTED_BY_PRIORITY_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.CASES_SORTED_BY_PRIORITY_PROPERTY_KEY).equalsIgnoreCase("true"):
									ivy.cms.co(UserPropertyKeys.CASES_SORTED_BY_PRIORITY_PROPERTY_CMS_DEFAULT_VALUE).equalsIgnoreCase("true");


panel.isMultipleCaseListCheckBox.selected = 
								(in.hasUserReadOwnPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.IS_MULTIPLE_CASELIST_MODE_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.IS_MULTIPLE_CASELIST_MODE_PROPERTY_KEY).equalsIgnoreCase("true"):
									ivy.cms.co(UserPropertyKeys.IS_MULTIPLE_CASELIST_MODE_PROPERTY_CMS_DEFAULT_VALUE).equalsIgnoreCase("true");																					' #txt
Ss0 f10 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f10 166 276 36 24 20 -2 #rect
Ss0 f10 @|RichDialogProcessStepIcon #fIcon
Ss0 f5 expr out #txt
Ss0 f5 184 300 69 376 #arcP
Ss0 f5 1 184 376 #addKink
Ss0 f5 1 0.2029966286631347 0 0 #arcLabel
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
Ss0 f15 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f15 490 186 28 28 14 0 #rect
Ss0 f15 @|AlternativeIcon #fIcon
Ss0 f21 expr out #txt
Ss0 f21 504 148 504 186 #arcP
Ss0 f21 0 0.8860935960591134 0 0 #arcLabel
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
Ss0 f24 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f24 actionTable 'out=in;
' #txt
Ss0 f24 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.UserPropertyKeys;


// tasks
ivy.session.getSessionUser().setProperty(UserPropertyKeys.TASKS_SORTED_BY_PRIORITY_PROPERTY_KEY, panel.tasksSortByPriorityCheckBox.selected.toString());
ivy.session.getSessionUser().setProperty(UserPropertyKeys.TASKS_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY, panel.tasksHierarchyLayoutSelectRDC.getSelectedTaskHierarchyLayoutIndex().toString());
ivy.session.getSessionUser().setProperty(UserPropertyKeys.IS_MULTIPLE_TASKLIST_MODE_PROPERTY_KEY, panel.isMultipleTaskListCheckBox.selected.toString());

//TIFAM - 11.08.2009 - save auto hide menu parameter
ivy.session.getSessionUser().setProperty(UserPropertyKeys.MENU_AUTO_HIDE_PROPERTY_KEY, panel.taskAutoHideMenuCheckBox.selected.toString());


// cases
ivy.session.getSessionUser().setProperty(UserPropertyKeys.CASES_SORTED_BY_PRIORITY_PROPERTY_KEY, panel.casesSortByPriorityCheckBox.selected.toString());
ivy.session.getSessionUser().setProperty(UserPropertyKeys.CASES_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY, panel.casesHierarchyLayoutSelectRDC.getSelectedCaseHierarchyLayoutIndex().toString());
ivy.session.getSessionUser().setProperty(UserPropertyKeys.IS_MULTIPLE_CASELIST_MODE_PROPERTY_KEY, panel.isMultipleCaseListCheckBox.selected.toString());' #txt
Ss0 f24 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f24 486 244 36 24 20 -2 #rect
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
Ss0 f28 504 214 504 244 #arcP
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
Ss0 f11 actionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f11 actionTable 'out=in;
' #txt
Ss0 f11 actionCode 'out.windowTitle = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/changePassword");' #txt
Ss0 f11 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f11 262 108 36 24 20 -2 #rect
Ss0 f11 @|RichDialogProcessStepIcon #fIcon
Ss0 f31 expr out #txt
Ss0 f31 280 58 280 108 #arcP
Ss0 f26 expr out #txt
Ss0 f26 280 132 280 164 #arcP
Ss0 f32 expr out #txt
Ss0 f32 184 58 184 276 #arcP
Ss0 f32 0 0.5140798111392898 0 0 #arcLabel
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
Ss0 f22 targetWindow NEW #txt
Ss0 f22 targetDisplay TOP #txt
Ss0 f22 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Ss0 f22 startMethod showMessage(String) #txt
Ss0 f22 type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
Ss0 f22 requestActionDecl '<String message> param;' #txt
Ss0 f22 requestActionCode 'in.windowTitle = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/settings");
param.message = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/settingsWillByAppliedAtNextRestart");' #txt
Ss0 f22 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData out;
' #txt
Ss0 f22 responseMappingAction 'out=in;
' #txt
Ss0 f22 windowConfiguration '{/title "<%=in.windowTitle%>"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ss0 f22 isAsynch false #txt
Ss0 f22 isInnerRd true #txt
Ss0 f22 isDialog true #txt
Ss0 f22 486 300 36 24 20 -2 #rect
Ss0 f22 @|RichDialogIcon #fIcon
Ss0 f34 expr out #txt
Ss0 f34 504 268 504 300 #arcP
Ss0 f7 expr out #txt
Ss0 f7 504 324 504 366 #arcP
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
Ss0 f9 518 200 513 375 #arcP
Ss0 f9 1 688 200 #addKink
Ss0 f9 2 688 360 #addKink
Ss0 f9 1 0.3484513511667232 0 0 #arcLabel
>Proto Ss0 .type ch.ivyteam.ivy.workflow.ui.administration.SettingsEdit.SettingsEditData #txt
>Proto Ss0 .processKind RICH_DIALOG #txt
>Proto Ss0 .ui2RdDataAction 'out.dailyTask=panel.dailyTaskSummaryCheckBox.selected;
out.selectedLanguage=panel.languageComboBox.selectedListEntry.toString();
out.newTask=panel.onNewTaskCheckBox.selected;
' #txt
>Proto Ss0 .rdData2UIAction 'panel.caseSettingsGridBagLayoutPane.enabled=in.hasUserSetOwnPropertyPermission;
panel.caseSettingsGridBagLayoutPane.enabled=in.hasUserSetOwnPropertyPermission;
panel.casesSeparatorRDC.separatorText=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/cases");
panel.casesSortByPriorityCheckBox.visible=false;
panel.languageComboBox.listData=in.language.toArray().toList();
panel.dailyTaskSummaryCheckBox.selected=in.dailyTask;
panel.emailGridBagLayoutPane.visible=false;
panel.headerLabel.visible=!in.hasUserSetOwnPropertyPermission;
panel.loggedInAsLabel.text=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/loggedInAs") + 
in.loggedInAs;
panel.onNewTaskCheckBox.selected=in.newTask;
panel.taskSettingsGridBagLayoutPane.enabled=in.hasUserSetOwnPropertyPermission;
panel.taskSettingsGridBagLayoutPane.enabled=in.hasUserSetOwnPropertyPermission;
panel.tasksSeparatorRDC.separatorText=ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasks");
panel.caseSortByPriorityLabel.visible=false;
' #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f13 mainOut f16 tail #connect
Ss0 f16 head f1 mainIn #connect
Ss0 f0 mainOut f14 tail #connect
Ss0 f14 head f13 mainIn #connect
Ss0 f23 mainOut f18 tail #connect
Ss0 f18 head f4 mainIn #connect
Ss0 f19 mainOut f27 tail #connect
Ss0 f27 head f20 mainIn #connect
Ss0 f3 mainOut f8 tail #connect
Ss0 f8 head f6 mainIn #connect
Ss0 f10 mainOut f5 tail #connect
Ss0 f5 head f1 mainIn #connect
Ss0 f6 mainOut f21 tail #connect
Ss0 f21 head f15 in #connect
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
