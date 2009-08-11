[Ivy]
[>Created: Tue Aug 11 16:18:32 CEST 2009]
11B5A67AE22EAA46 3.12 #module
>Proto >Proto Collection #zClass
Cs0 CaseTaskParametersEditProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @RichDialogProcessEnd f4 '' #zField
Cs0 @RichDialogProcessStep f6 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogProcessStart f8 '' #zField
Cs0 @RichDialogProcessStep f10 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @RichDialogProcessStep f12 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @RichDialogMethodStart f14 '' #zField
Cs0 @RichDialogMethodStart f16 '' #zField
Cs0 @RichDialogProcessStep f17 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @PushWFArc f19 '' #zField
Cs0 @RichDialogProcessStart f3 '' #zField
Cs0 @Alternative f20 '' #zField
Cs0 @PushWFArc f21 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @PushWFArc f22 '' #zField
Cs0 @PushWFArc f23 '' #zField
>Proto Cs0 Cs0 CaseTaskParametersEditProcess #zField
Cs0 f0 guid 11B5A67AF6A4B446 #txt
Cs0 f0 type ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '{/casesHierarchyLayoutSelectRDC {/fieldName "casesHierarchyLayoutSelectRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/tasksHierarchyLayoutSelectRDC {/fieldName "tasksHierarchyLayoutSelectRDC"/startMethod "start()"/parameterMapping ""/initScript ""}}' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 86 38 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData #txt
Cs0 f1 83 363 26 26 14 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f4 type ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData #txt
Cs0 f4 643 363 26 26 14 0 #rect
Cs0 f4 @|RichDialogProcessEndIcon #fIcon
Cs0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 actionCode 'out.hasUserSetPropertyPermission = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.USER_SET_PROPERTY);
out.hasUserReadPropertyPermission = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.USER_READ_PROPERTY);

' #txt
Cs0 f6 type ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>check the user
set and read property 
permissions,
if yes, then defines the property keys</name>
        <nameStyle>89,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 78 116 36 24 20 -2 #rect
Cs0 f6 @|RichDialogProcessStepIcon #fIcon
Cs0 f7 expr out #txt
Cs0 f7 96 58 96 116 #arcP
Cs0 f2 expr out #txt
Cs0 f2 96 140 96 363 #arcP
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f8 guid 11B5A8598E3527BB #txt
Cs0 f8 type ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData #txt
Cs0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData out;
' #txt
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 358 38 20 20 13 0 #rect
Cs0 f8 @|RichDialogProcessStartIcon #fIcon
Cs0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData out;
' #txt
Cs0 f10 actionTable 'out=in;
' #txt
Cs0 f10 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;


// cases title
panel.configurationTabbedPane.setTitleAt(0, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/cases"));

// tasks title
panel.configurationTabbedPane.setTitleAt(1, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasks"));


// set the border of the root panel
if (panel.getBorder() instanceof ULCTitledBorder)
{
	(panel.getBorder() as ULCTitledBorder).setTitle(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/layoutConfiguration"));
}' #txt
Cs0 f10 type ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData #txt
Cs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the titles on tabs</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f10 350 116 36 24 20 -2 #rect
Cs0 f10 @|RichDialogProcessStepIcon #fIcon
Cs0 f11 expr out #txt
Cs0 f11 368 58 368 116 #arcP
Cs0 f11 0 0.9568695328247575 0 0 #arcLabel
Cs0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData out;
' #txt
Cs0 f12 actionTable 'out=in;
' #txt
Cs0 f12 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.UserPropertyKeys;


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
Cs0 f12 type ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData #txt
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set user setting</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f12 638 204 36 24 20 -2 #rect
Cs0 f12 @|RichDialogProcessStepIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 656 228 656 363 #arcP
Cs0 f14 guid 11B6F467BE86919D #txt
Cs0 f14 type ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData #txt
Cs0 f14 method save() #txt
Cs0 f14 disableUIEvents false #txt
Cs0 f14 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f14 outParameterDecl '<> result;
' #txt
Cs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save()</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f14 646 38 20 20 13 0 #rect
Cs0 f14 @|RichDialogMethodStartIcon #fIcon
Cs0 f16 guid 11B6F46A8095B3EA #txt
Cs0 f16 type ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData #txt
Cs0 f16 method refresh() #txt
Cs0 f16 disableUIEvents false #txt
Cs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Cs0 f16 446 38 20 20 13 0 #rect
Cs0 f16 @|RichDialogMethodStartIcon #fIcon
Cs0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData out;
' #txt
Cs0 f17 actionTable 'out=in;
' #txt
Cs0 f17 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.UserPropertyKeys;


// get the user settings, if there is not, apply the cms parameters
// tasks
panel.tasksHierarchyLayoutSelectRDC.selectedTaskHierarchyLayoutIndex = 
								(in.hasUserReadPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.TASKS_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.TASKS_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY).toNumber():
									ivy.cms.co(UserPropertyKeys.TASKS_HIERARCHY_LAYOUT_INDEX_PROPERTY_CMS_DEFAULT_VALUE).toNumber();


panel.tasksSortByPriorityCheckBox.selected = 
								(in.hasUserReadPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.TASKS_SORTED_BY_PRIORITY_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.TASKS_SORTED_BY_PRIORITY_PROPERTY_KEY).equalsIgnoreCase("true"):
									ivy.cms.co(UserPropertyKeys.TASKS_SORTED_BY_PRIORITY_PROPERTY_CMS_DEFAULT_VALUE).equalsIgnoreCase("true");


panel.isMultipleTaskListCheckBox.selected = 
								(in.hasUserReadPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.IS_MULTIPLE_TASKLIST_MODE_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.IS_MULTIPLE_TASKLIST_MODE_PROPERTY_KEY).equalsIgnoreCase("true"):
									ivy.cms.co(UserPropertyKeys.IS_MULTIPLE_TASKLIST_MODE_PROPERTY_CMS_DEFAULT_VALUE).equalsIgnoreCase("true");
									
//TIFAM - 11.08.2009 - save auto hide menu parameter
panel.taskAutoHideMenuCheckBox.selected = 
								(in.hasUserReadPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.MENU_AUTO_HIDE_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.MENU_AUTO_HIDE_PROPERTY_KEY).equalsIgnoreCase("true"):
									ivy.cms.co(UserPropertyKeys.MENU_AUTO_HIDE__PROPERTY_CMS_DEFAULT_VALUE).equalsIgnoreCase("true");
									


// cases
panel.casesHierarchyLayoutSelectRDC.selectedCaseHierarchyLayoutIndex = 
								(in.hasUserReadPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.CASES_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.CASES_HIERARCHY_LAYOUT_INDEX_PROPERTY_KEY).toNumber():
									ivy.cms.co(UserPropertyKeys.CASES_HIERARCHY_LAYOUT_INDEX_PROPERTY_CMS_DEFAULT_VALUE).toNumber();


panel.casesSortByPriorityCheckBox.selected = 
								(in.hasUserReadPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.CASES_SORTED_BY_PRIORITY_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.CASES_SORTED_BY_PRIORITY_PROPERTY_KEY).equalsIgnoreCase("true"):
									ivy.cms.co(UserPropertyKeys.CASES_SORTED_BY_PRIORITY_PROPERTY_CMS_DEFAULT_VALUE).equalsIgnoreCase("true");


panel.isMultipleCaseListCheckBox.selected = 
								(in.hasUserReadPropertyPermission && ivy.session.getSessionUser().getProperty(UserPropertyKeys.IS_MULTIPLE_CASELIST_MODE_PROPERTY_KEY).length() > 0)?
									ivy.session.getSessionUser().getProperty(UserPropertyKeys.IS_MULTIPLE_CASELIST_MODE_PROPERTY_KEY).equalsIgnoreCase("true"):
									ivy.cms.co(UserPropertyKeys.IS_MULTIPLE_CASELIST_MODE_PROPERTY_CMS_DEFAULT_VALUE).equalsIgnoreCase("true");																					' #txt
Cs0 f17 type ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData #txt
Cs0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>apply the user settings
if he has a user read property permission</name>
        <nameStyle>65,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f17 350 228 36 24 20 -2 #rect
Cs0 f17 @|RichDialogProcessStepIcon #fIcon
Cs0 f18 expr out #txt
Cs0 f18 368 140 368 228 #arcP
Cs0 f18 0 0.443227743652969 0 0 #arcLabel
Cs0 f9 expr out #txt
Cs0 f9 368 252 109 376 #arcP
Cs0 f9 1 368 376 #addKink
Cs0 f9 1 0.2543383751307128 0 0 #arcLabel
Cs0 f19 expr out #txt
Cs0 f19 456 58 386 240 #arcP
Cs0 f19 1 456 240 #addKink
Cs0 f19 0 0.7263455783114603 0 0 #arcLabel
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
        <nameStyle>4,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 guid 11B6F4B600BFAAD9 #txt
Cs0 f3 type ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData #txt
Cs0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 702 38 20 20 13 0 #rect
Cs0 f3 @|RichDialogProcessStartIcon #fIcon
Cs0 f20 type ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData #txt
Cs0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f20 642 122 28 28 14 0 #rect
Cs0 f20 @|AlternativeIcon #fIcon
Cs0 f21 expr out #txt
Cs0 f21 656 58 656 122 #arcP
Cs0 f15 expr in #txt
Cs0 f15 outCond in.hasUserSetPropertyPermission #txt
Cs0 f15 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>has set permission</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f15 656 150 656 204 #arcP
Cs0 f22 expr in #txt
Cs0 f22 670 136 669 376 #arcP
Cs0 f22 1 776 136 #addKink
Cs0 f22 2 776 376 #addKink
Cs0 f22 1 0.39228286222129144 0 0 #arcLabel
Cs0 f23 expr out #txt
Cs0 f23 712 58 668 134 #arcP
Cs0 f23 1 712 128 #addKink
Cs0 f23 0 0.853011130472607 0 0 #arcLabel
>Proto Cs0 .rdData2UIAction 'panel.casesHierarchyLayoutSelectRDC.selectionEnabled=in.hasUserSetPropertyPermission;
panel.casesSortByPriorityCheckBox.enabled=in.hasUserSetPropertyPermission;
panel.isMultipleCaseListCheckBox.enabled=in.hasUserSetPropertyPermission;
panel.isMultipleTaskListCheckBox.enabled=in.hasUserSetPropertyPermission;
panel.tasksHierarchyLayoutSelectRDC.selectionEnabled=in.hasUserSetPropertyPermission;
panel.tasksSortByPriorityCheckBox.enabled=in.hasUserSetPropertyPermission;
panel.taskAutoHideMenuCheckBox.enabled=in.hasUserSetPropertyPermission;
' #txt
>Proto Cs0 .type ch.ivyteam.ivy.workflow.ui.common.CaseTaskParametersEdit.CaseTaskParametersEditData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
Cs0 f6 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f8 mainOut f11 tail #connect
Cs0 f11 head f10 mainIn #connect
Cs0 f12 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f10 mainOut f18 tail #connect
Cs0 f18 head f17 mainIn #connect
Cs0 f17 mainOut f9 tail #connect
Cs0 f9 head f1 mainIn #connect
Cs0 f16 mainOut f19 tail #connect
Cs0 f19 head f17 mainIn #connect
Cs0 f14 mainOut f21 tail #connect
Cs0 f21 head f20 in #connect
Cs0 f20 out f15 tail #connect
Cs0 f15 head f12 mainIn #connect
Cs0 f20 out f22 tail #connect
Cs0 f22 head f4 mainIn #connect
Cs0 f3 mainOut f23 tail #connect
Cs0 f23 head f20 in #connect
