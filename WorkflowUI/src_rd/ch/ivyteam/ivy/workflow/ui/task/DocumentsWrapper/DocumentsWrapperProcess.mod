[Ivy]
[>Created: Fri Jan 21 16:39:04 CET 2011]
12D7A786BCFAFC3B 3.15 #module
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
Ts0 @RichDialogEnd f210 '' #zField
Ts0 @PushWFArc f71 '' #zField
Ts0 @RichDialogProcessStep f63 '' #zField
Ts0 @RichDialogInitStart f8 '' #zField
Ts0 @PushWFArc f9 '' #zField
Ts0 @RichDialogMethodStart f2 '' #zField
Ts0 @RichDialogProcessEnd f3 '' #zField
Ts0 @RichDialogProcessStep f5 '' #zField
Ts0 @PushWFArc f6 '' #zField
Ts0 @PushWFArc f4 '' #zField
Ts0 @RichDialogProcessEnd f11 '' #zField
Ts0 @RichDialogMethodStart f10 '' #zField
Ts0 @RichDialogProcessStep f13 '' #zField
Ts0 @PushWFArc f14 '' #zField
Ts0 @PushWFArc f12 '' #zField
Ts0 @RichDialogMethodStart f15 '' #zField
Ts0 @RichDialogProcessEnd f16 '' #zField
Ts0 @RichDialogProcessStep f18 '' #zField
Ts0 @PushWFArc f19 '' #zField
Ts0 @PushWFArc f17 '' #zField
Ts0 @RichDialogProcessStep f20 '' #zField
Ts0 @PushWFArc f21 '' #zField
Ts0 @PushWFArc f7 '' #zField
Ts0 @RichDialogProcessEnd f23 '' #zField
Ts0 @RichDialogProcessStep f25 '' #zField
Ts0 @PushWFArc f24 '' #zField
Ts0 @RichDialogProcessStart f22 '' #zField
Ts0 @PushWFArc f26 '' #zField
>Proto Ts0 Ts0 TaskInformationDisplayProcess #zField
Ts0 f0 guid 116A9C07145A35CE #txt
Ts0 f0 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
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
Ts0 f0 38 54 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f1 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f1 123 203 26 26 14 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f210 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f210 guid 12927317941C4346 #txt
Ts0 f210 38 206 20 20 13 0 #rect
Ts0 f210 @|RichDialogEndIcon #fIcon
Ts0 f71 expr out #txt
Ts0 f71 48 74 48 206 #arcP
Ts0 f63 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData out;
' #txt
Ts0 f63 actionTable 'out=in;
' #txt
Ts0 f63 actionCode 'panel.fileManagerRDC.enableRoundCornerIconsMode(true);
' #txt
Ts0 f63 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f63 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enable the round corner 
icons on filemanager</name>
        <nameStyle>45,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f63 118 92 36 24 20 -2 #rect
Ts0 f63 @|RichDialogProcessStepIcon #fIcon
Ts0 f8 guid 12D7A8590CA88EC8 #txt
Ts0 f8 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f8 method start(ch.ivyteam.ivy.workflow.ICase) #txt
Ts0 f8 disableUIEvents true #txt
Ts0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase wfCase> param = methodEvent.getInputArguments();
' #txt
Ts0 f8 inActionCode 'out.wfCase = param.wfCase;' #txt
Ts0 f8 outParameterDecl '<> result;
' #txt
Ts0 f8 embeddedRdInitializations '{/fileManagerRDC {/fieldName "fileManagerRDC"/startMethod "startWithServerPathAndUseIvySystemDB(String)"/parameterMapping ""/initScript "import ch.ivyteam.ivy.addons.restricted.resources.ResourceServicesHelper;\n\nparam.serverPath = ResourceServicesHelper.readCaseDocumentsPath(callParam.wfCase.getId());"/userContext * }}' #txt
Ts0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase)</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f8 126 54 20 20 13 0 #rect
Ts0 f8 @|RichDialogInitStartIcon #fIcon
Ts0 f9 expr out #txt
Ts0 f9 136 74 136 92 #arcP
Ts0 f2 guid 12D7A88ED20413B6 #txt
Ts0 f2 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f2 method refresh() #txt
Ts0 f2 disableUIEvents false #txt
Ts0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Ts0 f2 694 54 20 20 13 0 #rect
Ts0 f2 @|RichDialogMethodStartIcon #fIcon
Ts0 f3 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f3 694 166 20 20 13 0 #rect
Ts0 f3 @|RichDialogProcessEndIcon #fIcon
Ts0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData out;
' #txt
Ts0 f5 actionTable 'out=in;
' #txt
Ts0 f5 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;

panel.fileManagerRDC.refresh();

panel._updateTabTitle();

// enable readonly mode if case is done
if (in.wfCase.getState().compareTo(CaseState.DONE) == 0)
{
	panel.fileManagerRDC.enableReadOnlyMode(true);
}' #txt
Ts0 f5 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh fileManager,
update the tab title,
set to readonly mode if case is done</name>
        <nameStyle>79,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f5 686 100 36 24 20 -2 #rect
Ts0 f5 @|RichDialogProcessStepIcon #fIcon
Ts0 f6 expr out #txt
Ts0 f6 704 74 704 100 #arcP
Ts0 f4 expr out #txt
Ts0 f4 704 124 704 166 #arcP
Ts0 f11 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f11 342 158 20 20 13 0 #rect
Ts0 f11 @|RichDialogProcessEndIcon #fIcon
Ts0 f10 guid 12D7AC2BDC94BB21 #txt
Ts0 f10 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f10 method _createDefaultDirectories() #txt
Ts0 f10 disableUIEvents false #txt
Ts0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_createDefaultDirectories()</name>
    </language>
</elementInfo>
' #txt
Ts0 f10 342 54 20 20 13 0 #rect
Ts0 f10 @|RichDialogMethodStartIcon #fIcon
Ts0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData out;
' #txt
Ts0 f13 actionTable 'out=in;
' #txt
Ts0 f13 actionCode 'import ch.ivyteam.ivy.addons.restricted.resources.ResourceServicesHelper;


// ensure to create the default folders
ResourceServicesHelper.makeDefaultCaseDirectories(panel.fileManagerRDC, in.wfCase);' #txt
Ts0 f13 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f13 334 108 36 24 20 -2 #rect
Ts0 f13 @|RichDialogProcessStepIcon #fIcon
Ts0 f14 expr out #txt
Ts0 f14 352 74 352 108 #arcP
Ts0 f12 expr out #txt
Ts0 f12 352 132 352 158 #arcP
Ts0 f15 guid 12D7ACEAFCECBCCF #txt
Ts0 f15 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f15 method _updateTabTitle() #txt
Ts0 f15 disableUIEvents false #txt
Ts0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>_updateTabTitle()</name>
    </language>
</elementInfo>
' #txt
Ts0 f15 526 54 20 20 13 0 #rect
Ts0 f15 @|RichDialogMethodStartIcon #fIcon
Ts0 f16 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f16 526 166 20 20 13 0 #rect
Ts0 f16 @|RichDialogProcessEndIcon #fIcon
Ts0 f18 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData out;
' #txt
Ts0 f18 actionTable 'out=in;
' #txt
Ts0 f18 actionCode 'import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;
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
		
		String tabTitle = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/documents");
		
		if (!panel.fileManagerRDC.getDocumentsListInPath(panel.fileManagerRDC.getServerPath()).isEmpty())
		{
			tabTitle = tabTitle + " \u2022";
		}		
		
		grandParentAsTabbedPane.setTitleAt(grandParentAsTabbedPane.indexOfComponent(parent), tabTitle);
			
	}
}
' #txt
Ts0 f18 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f18 518 108 36 24 20 -2 #rect
Ts0 f18 @|RichDialogProcessStepIcon #fIcon
Ts0 f19 expr out #txt
Ts0 f19 536 74 536 108 #arcP
Ts0 f17 expr out #txt
Ts0 f17 536 132 536 166 #arcP
Ts0 f20 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData out;
' #txt
Ts0 f20 actionTable 'out=in;
' #txt
Ts0 f20 actionCode 'panel._createDefaultDirectories();
panel._updateTabTitle();' #txt
Ts0 f20 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create default directories
update the tab title</name>
        <nameStyle>27,7
20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f20 118 140 36 24 20 -2 #rect
Ts0 f20 @|RichDialogProcessStepIcon #fIcon
Ts0 f21 expr out #txt
Ts0 f21 136 116 136 140 #arcP
Ts0 f7 expr out #txt
Ts0 f7 136 164 136 203 #arcP
Ts0 f23 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f23 974 166 20 20 13 0 #rect
Ts0 f23 @|RichDialogProcessEndIcon #fIcon
Ts0 f25 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData out;
' #txt
Ts0 f25 actionTable 'out=in;
' #txt
Ts0 f25 actionCode panel._updateTabTitle(); #txt
Ts0 f25 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update tab title</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f25 966 100 36 24 20 -2 #rect
Ts0 f25 @|RichDialogProcessStepIcon #fIcon
Ts0 f24 expr out #txt
Ts0 f24 984 124 984 166 #arcP
Ts0 f22 guid 12DA939C2A8607C2 #txt
Ts0 f22 type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
Ts0 f22 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData out;
' #txt
Ts0 f22 actionTable 'out=in;
' #txt
Ts0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateTabTitle</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f22 974 54 20 20 13 0 #rect
Ts0 f22 @|RichDialogProcessStartIcon #fIcon
Ts0 f26 expr out #txt
Ts0 f26 984 74 984 100 #arcP
>Proto Ts0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Private methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>323</swimlaneSize>
    <swimlaneSize>333</swimlaneSize>
    <swimlaneSize>279</swimlaneSize>
    <swimlaneSize>180</swimlaneSize>
    <swimlaneColor>-16711732</swimlaneColor>
    <swimlaneColor>-16737844</swimlaneColor>
    <swimlaneColor>-16737844</swimlaneColor>
    <swimlaneColor>-6697729</swimlaneColor>
</elementInfo>
' #txt
>Proto Ts0 .type ch.ivyteam.ivy.workflow.ui.task.DocumentsWrapper.DocumentsWrapperData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f71 tail #connect
Ts0 f71 head f210 mainIn #connect
Ts0 f8 mainOut f9 tail #connect
Ts0 f9 head f63 mainIn #connect
Ts0 f2 mainOut f6 tail #connect
Ts0 f6 head f5 mainIn #connect
Ts0 f5 mainOut f4 tail #connect
Ts0 f4 head f3 mainIn #connect
Ts0 f10 mainOut f14 tail #connect
Ts0 f14 head f13 mainIn #connect
Ts0 f13 mainOut f12 tail #connect
Ts0 f12 head f11 mainIn #connect
Ts0 f15 mainOut f19 tail #connect
Ts0 f19 head f18 mainIn #connect
Ts0 f18 mainOut f17 tail #connect
Ts0 f17 head f16 mainIn #connect
Ts0 f63 mainOut f21 tail #connect
Ts0 f21 head f20 mainIn #connect
Ts0 f20 mainOut f7 tail #connect
Ts0 f7 head f1 mainIn #connect
Ts0 f25 mainOut f24 tail #connect
Ts0 f24 head f23 mainIn #connect
Ts0 f22 mainOut f26 tail #connect
Ts0 f26 head f25 mainIn #connect
