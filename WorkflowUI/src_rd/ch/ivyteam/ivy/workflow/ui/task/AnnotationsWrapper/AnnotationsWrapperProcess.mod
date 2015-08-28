[Ivy]
[>Created: Fri Feb 18 17:27:23 CET 2011]
12D7A779635E3439 3.15 #module
>Proto >Proto Collection #zClass
Ts0 TaskInformationDisplayProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @RichDialogInitStart f14 '' #zField
Ts0 @RichDialogProcessEnd f25 '' #zField
Ts0 @RichDialogProcessEnd f32 '' #zField
Ts0 @RichDialogProcessStep f31 '' #zField
Ts0 @RichDialogProcessStep f103 '' #zField
Ts0 @RichDialogProcessStep f109 '' #zField
Ts0 @RichDialogMethodStart f114 '' #zField
Ts0 @RichDialogBroadcastStart f148 '' #zField
Ts0 @RichDialogBroadcastStart f149 '' #zField
Ts0 @Alternative f152 '' #zField
Ts0 @PushWFArc f153 '' #zField
Ts0 @PushWFArc f151 '' #zField
Ts0 @PushWFArc f154 '' #zField
Ts0 @Alternative f155 '' #zField
Ts0 @PushWFArc f156 '' #zField
Ts0 @PushWFArc f150 '' #zField
Ts0 @PushWFArc f157 '' #zField
Ts0 @RichDialogProcessStep f209 '' #zField
Ts0 @RichDialogEnd f210 '' #zField
Ts0 @PushWFArc f71 '' #zField
Ts0 @PushWFArc f34 '' #zField
Ts0 @RichDialogProcessEnd f7 '' #zField
Ts0 @RichDialogProcessStep f4 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @RichDialogMethodStart f5 '' #zField
Ts0 @PushWFArc f10 '' #zField
Ts0 @RichDialogProcessEnd f3 '' #zField
Ts0 @PushWFArc f11 '' #zField
Ts0 @PushWFArc f9 '' #zField
Ts0 @PushWFArc f12 '' #zField
Ts0 @PushWFArc f13 '' #zField
Ts0 @RichDialogProcessStep f15 '' #zField
Ts0 @PushWFArc f16 '' #zField
Ts0 @PushWFArc f8 '' #zField
>Proto Ts0 Ts0 TaskInformationDisplayProcess #zField
Ts0 f0 guid 116A9C07145A35CE #txt
Ts0 f0 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f0 method start() #txt
Ts0 f0 disableUIEvents false #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 embeddedRdInitializations '{/fileManagerRDC {/fieldName "fileManagerRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/caseDetailsDisplayRDC {/fieldName "caseDetailsDisplayRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/caseNoteDisplayListRDC {/fieldName "caseNoteDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/eventLogDisplayListRDC {/fieldName "eventLogDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/taskNoteDisplayListRDC {/fieldName "taskNoteDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/workflowEventsDisplayListRDC {/fieldName "workflowEventsDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/taskDetailsDisplayRDC {/fieldName "taskDetailsDisplayRDC"/startMethod "start()"/parameterMapping ""/initScript ""}}' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 38 46 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f1 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f1 123 203 26 26 14 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f14 guid 11850D8CF1E93548 #txt
Ts0 f14 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f14 method start(ch.ivyteam.ivy.workflow.ITask) #txt
Ts0 f14 disableUIEvents true #txt
Ts0 f14 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ITask aTask> param = methodEvent.getInputArguments();
' #txt
Ts0 f14 inActionCode 'out.task = param.aTask;' #txt
Ts0 f14 outParameterDecl '<> result;
' #txt
Ts0 f14 embeddedRdInitializations '{/taskNoteDisplayListRDC {/fieldName "taskNoteDisplayListRDC"/startMethod "start(ch.ivyteam.ivy.workflow.ITask,Boolean)"/parameterMapping ""/initScript "param.aTask = callParam.aTask;\nparam.aLoadDataAtStart = true;"/userContext * }/caseNoteDisplayListRDC {/fieldName "caseNoteDisplayListRDC"/startMethod "start(ch.ivyteam.ivy.workflow.ICase,Boolean)"/parameterMapping ""/initScript "param.aCase = callParam.aTask.getCase();\nparam.aLoadDataAtStart = true;"/userContext * }}' #txt
Ts0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ITask)</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f14 126 46 20 20 13 0 #rect
Ts0 f14 @|RichDialogInitStartIcon #fIcon
Ts0 f25 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f25 739 195 26 26 14 0 #rect
Ts0 f25 @|RichDialogProcessEndIcon #fIcon
Ts0 f32 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f32 891 195 26 26 14 0 #rect
Ts0 f32 @|RichDialogProcessEndIcon #fIcon
Ts0 f31 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData out;
' #txt
Ts0 f31 actionTable 'out=in;
' #txt
Ts0 f31 actionCode 'import ch.ivyteam.ivy.event.SystemEventCategory;

// register to System events of Workflow category
ivy.rd.subscribeToSystemEvents(SystemEventCategory.WORKFLOW);' #txt
Ts0 f31 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>register to system event 
&quot;task state changed&quot;</name>
        <nameStyle>46,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f31 118 92 36 24 20 -2 #rect
Ts0 f31 @|RichDialogProcessStepIcon #fIcon
Ts0 f103 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData out;
' #txt
Ts0 f103 actionTable 'out=in;
' #txt
Ts0 f103 actionCode 'panel.caseNoteDisplayListRDC.refresh();
panel._updateTabTitle();' #txt
Ts0 f103 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f103 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh
update the tab''s title</name>
        <nameStyle>8,7,9
22,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f103 734 148 36 24 20 -2 #rect
Ts0 f103 @|RichDialogProcessStepIcon #fIcon
Ts0 f109 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData out;
' #txt
Ts0 f109 actionTable 'out=in;
' #txt
Ts0 f109 actionCode 'panel.taskNoteDisplayListRDC.refresh();
panel._updateTabTitle();' #txt
Ts0 f109 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f109 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh
update the tab''s title</name>
        <nameStyle>8,7,9
22,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f109 886 148 36 24 20 -2 #rect
Ts0 f109 @|RichDialogProcessStepIcon #fIcon
Ts0 f114 guid 118E5F311E7C94E5 #txt
Ts0 f114 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f114 method refresh() #txt
Ts0 f114 disableUIEvents false #txt
Ts0 f114 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Ts0 f114 502 46 20 20 13 0 #rect
Ts0 f114 @|RichDialogMethodStartIcon #fIcon
Ts0 f148 guid 118EFCE2455D7B9A #txt
Ts0 f148 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f148 broadcast xivyCaseNotesChanged #txt
Ts0 f148 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData out;
' #txt
Ts0 f148 actionTable 'out=in;
out.broadcastedCaseIdentifier=param.aCaseIdentifier;
' #txt
Ts0 f148 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>xivyCaseNotesChanged</name>
        <nameStyle>20,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f148 742 46 20 20 13 0 #rect
Ts0 f148 @|RichDialogBroadcastStartIcon #fIcon
Ts0 f149 guid 118EFCE4CD5CCF69 #txt
Ts0 f149 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f149 broadcast xivyTaskNotesChanged #txt
Ts0 f149 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData out;
' #txt
Ts0 f149 actionTable 'out=in;
out.broadcastedTaskIdentifier=param.aTaskIdentifier;
' #txt
Ts0 f149 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>xivyTaskNotesChanged</name>
        <nameStyle>20,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f149 894 46 20 20 11 9 #rect
Ts0 f149 @|RichDialogBroadcastStartIcon #fIcon
Ts0 f152 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f152 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is this case?</name>
        <nameStyle>13,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f152 738 90 28 28 14 0 #rect
Ts0 f152 @|AlternativeIcon #fIcon
Ts0 f153 expr out #txt
Ts0 f153 752 66 752 90 #arcP
Ts0 f153 0 0.6033404358290694 0 0 #arcLabel
Ts0 f151 expr in #txt
Ts0 f151 outCond 'in.broadcastedCaseIdentifier == in.task.getCase().getId()' #txt
Ts0 f151 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f151 752 118 752 148 #arcP
Ts0 f151 0 0.22712095954911413 5 1 #arcLabel
Ts0 f154 expr in #txt
Ts0 f154 766 104 764 206 #arcP
Ts0 f154 1 856 104 #addKink
Ts0 f154 2 856 192 #addKink
Ts0 f154 2 0.6823984667462842 0 0 #arcLabel
Ts0 f155 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f155 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is this task?</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f155 890 90 28 28 14 0 #rect
Ts0 f155 @|AlternativeIcon #fIcon
Ts0 f156 expr out #txt
Ts0 f156 904 66 904 90 #arcP
Ts0 f156 0 0.5569494265130966 0 0 #arcLabel
Ts0 f150 expr in #txt
Ts0 f150 outCond 'in.broadcastedTaskIdentifier == in.task.getId()' #txt
Ts0 f150 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f150 904 118 904 148 #arcP
Ts0 f150 0 0.47058823529411764 0 0 #arcLabel
Ts0 f157 expr in #txt
Ts0 f157 918 104 916 205 #arcP
Ts0 f157 1 992 104 #addKink
Ts0 f157 2 992 192 #addKink
Ts0 f157 2 0.7169951651318569 0 0 #arcLabel
Ts0 f209 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData out;
' #txt
Ts0 f209 actionTable 'out=in;
' #txt
Ts0 f209 actionCode 'import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;
import com.ulcjava.base.application.ULCTabbedPane;
import com.ulcjava.base.application.ULCComponent;


// set the bullet if there is no notes
ULCComponent parent = panel.getParent();

if (parent is initialized && parent instanceof RCardDisplay)
{
	ULCComponent grandParent = panel.getParent().getParent();
	
	if (#grandParent is initialized && grandParent instanceof ULCTabbedPane)
	{
		ivy.log.debug("The parent is {0}, the grand parent {0} is ULCTabbedPane; updating the title...", parent.getName(), grandParent.getName());
		
		ULCTabbedPane grandParentAsTabbedPane = grandParent as ULCTabbedPane;
		
		String tabTitle = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/annotations");
		
		if (!in.task.getCase().getNotes().isEmpty() || !in.task.getNotes().isEmpty())
		{
			tabTitle = tabTitle + " \u2022";
		}
		
		grandParentAsTabbedPane.setTitleAt(grandParentAsTabbedPane.indexOfComponent(parent), tabTitle);
			
	}
}
' #txt
Ts0 f209 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f209 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update tab''s title</name>
        <nameStyle>18,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f209 334 92 36 24 20 -2 #rect
Ts0 f209 @|RichDialogProcessStepIcon #fIcon
Ts0 f210 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f210 guid 12927317941C4346 #txt
Ts0 f210 38 206 20 20 13 0 #rect
Ts0 f210 @|RichDialogEndIcon #fIcon
Ts0 f71 expr out #txt
Ts0 f71 48 66 48 206 #arcP
Ts0 f34 expr out #txt
Ts0 f34 136 66 136 92 #arcP
Ts0 f7 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f7 502 142 20 20 13 0 #rect
Ts0 f7 @|RichDialogProcessEndIcon #fIcon
Ts0 f4 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData out;
' #txt
Ts0 f4 actionTable 'out=in;
' #txt
Ts0 f4 actionCode '// refresh or set case
if (panel.caseNoteDisplayListRDC.caseIsInitialized())
{
	panel.caseNoteDisplayListRDC.refresh();
}
else
{
	panel.caseNoteDisplayListRDC.setCase(in.task.getCase());
}


// refresh or set task
if (panel.taskNoteDisplayListRDC.taskIsInitialized())
{
	panel.taskNoteDisplayListRDC.refresh();
}
else
{
	panel.taskNoteDisplayListRDC.setTask(in.task);
}
	

panel._updateTabTitle();' #txt
Ts0 f4 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh or set case and task notes
update the tab''s title</name>
        <nameStyle>57,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f4 494 92 36 24 20 -2 #rect
Ts0 f4 @|RichDialogProcessStepIcon #fIcon
Ts0 f2 expr out #txt
Ts0 f2 512 66 512 92 #arcP
Ts0 f5 guid 12D7AC90DF79091E #txt
Ts0 f5 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f5 method _updateTabTitle() #txt
Ts0 f5 disableUIEvents false #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_updateTabTitle()</name>
    </language>
</elementInfo>
' #txt
Ts0 f5 342 46 20 20 13 0 #rect
Ts0 f5 @|RichDialogMethodStartIcon #fIcon
Ts0 f10 expr out #txt
Ts0 f10 512 116 512 142 #arcP
Ts0 f3 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f3 342 142 20 20 13 0 #rect
Ts0 f3 @|RichDialogProcessEndIcon #fIcon
Ts0 f11 expr out #txt
Ts0 f11 352 116 352 142 #arcP
Ts0 f11 0 0.5033036536040724 0 0 #arcLabel
Ts0 f9 expr out #txt
Ts0 f9 352 66 352 92 #arcP
Ts0 f12 expr out #txt
Ts0 f12 752 172 752 195 #arcP
Ts0 f12 0 0.6056061339281831 0 0 #arcLabel
Ts0 f13 expr out #txt
Ts0 f13 904 172 904 195 #arcP
Ts0 f13 0 0.9674608831678938 0 0 #arcLabel
Ts0 f15 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData out;
' #txt
Ts0 f15 actionTable 'out=in;
' #txt
Ts0 f15 actionCode panel._updateTabTitle(); #txt
Ts0 f15 type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
Ts0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update tab''s title</name>
        <nameStyle>18,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f15 118 148 36 24 20 -2 #rect
Ts0 f15 @|RichDialogProcessStepIcon #fIcon
Ts0 f16 expr out #txt
Ts0 f16 136 116 136 148 #arcP
Ts0 f8 expr out #txt
Ts0 f8 136 172 136 203 #arcP
>Proto Ts0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Private methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Accepted Broadcasts</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>317</swimlaneSize>
    <swimlaneSize>161</swimlaneSize>
    <swimlaneSize>247</swimlaneSize>
    <swimlaneSize>349</swimlaneSize>
    <swimlaneColor>-16711732</swimlaneColor>
    <swimlaneColor>-16737895</swimlaneColor>
    <swimlaneColor>-16737844</swimlaneColor>
    <swimlaneColor>-16711681</swimlaneColor>
</elementInfo>
' #txt
>Proto Ts0 .type ch.ivyteam.ivy.workflow.ui.task.AnnotationsWrapper.AnnotationsWrapperData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f148 mainOut f153 tail #connect
Ts0 f153 head f152 in #connect
Ts0 f152 out f151 tail #connect
Ts0 f151 head f103 mainIn #connect
Ts0 f152 out f154 tail #connect
Ts0 f154 head f25 mainIn #connect
Ts0 f149 mainOut f156 tail #connect
Ts0 f156 head f155 in #connect
Ts0 f155 out f150 tail #connect
Ts0 f150 head f109 mainIn #connect
Ts0 f155 out f157 tail #connect
Ts0 f157 head f32 mainIn #connect
Ts0 f0 mainOut f71 tail #connect
Ts0 f71 head f210 mainIn #connect
Ts0 f14 mainOut f34 tail #connect
Ts0 f34 head f31 mainIn #connect
Ts0 f114 mainOut f2 tail #connect
Ts0 f2 head f4 mainIn #connect
Ts0 f4 mainOut f10 tail #connect
Ts0 f10 head f7 mainIn #connect
Ts0 f209 mainOut f11 tail #connect
Ts0 f11 head f3 mainIn #connect
Ts0 f5 mainOut f9 tail #connect
Ts0 f9 head f209 mainIn #connect
Ts0 f103 mainOut f12 tail #connect
Ts0 f12 head f25 mainIn #connect
Ts0 f109 mainOut f13 tail #connect
Ts0 f13 head f32 mainIn #connect
Ts0 f31 mainOut f16 tail #connect
Ts0 f16 head f15 mainIn #connect
Ts0 f15 mainOut f8 tail #connect
Ts0 f8 head f1 mainIn #connect
