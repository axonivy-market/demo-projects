[Ivy]
[>Created: Fri Jan 14 11:56:38 CET 2011]
12D7A78EFE9A786D 3.15 #module
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
Ts0 @RichDialogEnd f210 '' #zField
Ts0 @PushWFArc f71 '' #zField
Ts0 @RichDialogProcessStep f63 '' #zField
Ts0 @RichDialogMethodStart f2 '' #zField
Ts0 @RichDialogProcessEnd f3 '' #zField
Ts0 @RichDialogMethodStart f5 '' #zField
Ts0 @RichDialogProcessEnd f6 '' #zField
Ts0 @PushWFArc f9 '' #zField
Ts0 @RichDialogProcessStep f10 '' #zField
Ts0 @PushWFArc f11 '' #zField
Ts0 @PushWFArc f8 '' #zField
Ts0 @RichDialogProcessStep f12 '' #zField
Ts0 @PushWFArc f13 '' #zField
Ts0 @PushWFArc f7 '' #zField
Ts0 @RichDialogProcessStep f15 '' #zField
Ts0 @PushWFArc f16 '' #zField
Ts0 @PushWFArc f4 '' #zField
>Proto Ts0 Ts0 TaskInformationDisplayProcess #zField
Ts0 f0 guid 116A9C07145A35CE #txt
Ts0 f0 type ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData #txt
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
Ts0 f1 type ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData #txt
Ts0 f1 123 203 26 26 14 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f14 guid 11850D8CF1E93548 #txt
Ts0 f14 type ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData #txt
Ts0 f14 method start(ch.ivyteam.ivy.workflow.ICase) #txt
Ts0 f14 disableUIEvents true #txt
Ts0 f14 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase wfCase> param = methodEvent.getInputArguments();
' #txt
Ts0 f14 inActionCode 'out.wfCase = param.wfCase;' #txt
Ts0 f14 outParameterDecl '<> result;
' #txt
Ts0 f14 embeddedRdInitializations '{/eventLogDisplayListRDC {/fieldName "eventLogDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""/userContext * }}' #txt
Ts0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase)</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f14 126 46 20 20 13 0 #rect
Ts0 f14 @|RichDialogInitStartIcon #fIcon
Ts0 f210 type ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData #txt
Ts0 f210 guid 12927317941C4346 #txt
Ts0 f210 38 206 20 20 13 0 #rect
Ts0 f210 @|RichDialogEndIcon #fIcon
Ts0 f71 expr out #txt
Ts0 f71 48 66 48 206 #arcP
Ts0 f63 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData out;
' #txt
Ts0 f63 actionTable 'out=in;
' #txt
Ts0 f63 actionCode 'import ch.ivyteam.ivy.workflow.TaskState;

// turn on the silent mode
panel.eventLogDisplayListRDC.setSilentMode(true);

// display only case business events
panel.eventLogDisplayListRDC.setDisplayMode(1);' #txt
Ts0 f63 type ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData #txt
Ts0 f63 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>turn on the silent mode
define the display mode</name>
        <nameStyle>47,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f63 118 92 36 24 20 -2 #rect
Ts0 f63 @|RichDialogProcessStepIcon #fIcon
Ts0 f2 guid 12D7B045083D58AD #txt
Ts0 f2 type ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData #txt
Ts0 f2 method _updateTabTitle() #txt
Ts0 f2 disableUIEvents false #txt
Ts0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_updateTabTitle()</name>
    </language>
</elementInfo>
' #txt
Ts0 f2 334 46 20 20 13 0 #rect
Ts0 f2 @|RichDialogMethodStartIcon #fIcon
Ts0 f3 type ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData #txt
Ts0 f3 334 150 20 20 13 0 #rect
Ts0 f3 @|RichDialogProcessEndIcon #fIcon
Ts0 f5 guid 12D7B049C959AAA0 #txt
Ts0 f5 type ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData #txt
Ts0 f5 method refresh() #txt
Ts0 f5 disableUIEvents false #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Ts0 f5 534 46 20 20 13 0 #rect
Ts0 f5 @|RichDialogMethodStartIcon #fIcon
Ts0 f6 type ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData #txt
Ts0 f6 534 150 20 20 13 0 #rect
Ts0 f6 @|RichDialogProcessEndIcon #fIcon
Ts0 f9 expr out #txt
Ts0 f9 136 66 136 92 #arcP
Ts0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData out;
' #txt
Ts0 f10 actionTable 'out=in;
' #txt
Ts0 f10 actionCode '// load case business events
panel.eventLogDisplayListRDC.setWfCase(in.wfCase);

// update tab title
panel._updateTabTitle();' #txt
Ts0 f10 type ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData #txt
Ts0 f10 526 92 36 24 20 -2 #rect
Ts0 f10 @|RichDialogProcessStepIcon #fIcon
Ts0 f11 expr out #txt
Ts0 f11 544 66 544 92 #arcP
Ts0 f8 expr out #txt
Ts0 f8 544 116 544 150 #arcP
Ts0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData out;
' #txt
Ts0 f12 actionTable 'out=in;
' #txt
Ts0 f12 actionCode panel._updateTabTitle(); #txt
Ts0 f12 type ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData #txt
Ts0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update tab title</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f12 118 148 36 24 20 -2 #rect
Ts0 f12 @|RichDialogProcessStepIcon #fIcon
Ts0 f13 expr out #txt
Ts0 f13 136 116 136 148 #arcP
Ts0 f7 expr out #txt
Ts0 f7 136 172 136 203 #arcP
Ts0 f15 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData out;
' #txt
Ts0 f15 actionTable 'out=in;
' #txt
Ts0 f15 actionCode 'import ch.ivyteam.ivy.addons.restricted.eventlog.EventLogHelper;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;
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
		
		String tabTitle = ivy.cms.co("/ch/ivyteam/ivy/addons/eventlog/plainStrings/eventLogs");
		
		if (!EventLogHelper.findBusinessEventLogsAsSystemUser(in.wfCase).isEmpty())
		{
			tabTitle = tabTitle + " \u2022";
		}
		
		grandParentAsTabbedPane.setTitleAt(grandParentAsTabbedPane.indexOfComponent(parent), tabTitle);
	}
}
' #txt
Ts0 f15 type ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData #txt
Ts0 f15 326 92 36 24 20 -2 #rect
Ts0 f15 @|RichDialogProcessStepIcon #fIcon
Ts0 f16 expr out #txt
Ts0 f16 344 66 344 92 #arcP
Ts0 f4 expr out #txt
Ts0 f4 344 116 344 150 #arcP
>Proto Ts0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Private methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>312</swimlaneSize>
    <swimlaneSize>175</swimlaneSize>
    <swimlaneSize>151</swimlaneSize>
    <swimlaneColor>-16711732</swimlaneColor>
    <swimlaneColor>-16737844</swimlaneColor>
    <swimlaneColor>-16737844</swimlaneColor>
</elementInfo>
' #txt
>Proto Ts0 .type ch.ivyteam.ivy.workflow.ui.task.EventsWrapper.EventsWrapperData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f71 tail #connect
Ts0 f71 head f210 mainIn #connect
Ts0 f14 mainOut f9 tail #connect
Ts0 f9 head f63 mainIn #connect
Ts0 f5 mainOut f11 tail #connect
Ts0 f11 head f10 mainIn #connect
Ts0 f10 mainOut f8 tail #connect
Ts0 f8 head f6 mainIn #connect
Ts0 f63 mainOut f13 tail #connect
Ts0 f13 head f12 mainIn #connect
Ts0 f12 mainOut f7 tail #connect
Ts0 f7 head f1 mainIn #connect
Ts0 f2 mainOut f16 tail #connect
Ts0 f16 head f15 mainIn #connect
Ts0 f15 mainOut f4 tail #connect
Ts0 f4 head f3 mainIn #connect
