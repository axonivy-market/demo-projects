[Ivy]
[>Created: Wed Jan 12 12:04:45 CET 2011]
119C23018068C697 3.15 #module
>Proto >Proto Collection #zClass
Cs0 CaseDisplayProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogInitStart f1 '' #zField
Cs0 @RichDialogProcessEnd f3 '' #zField
Cs0 @RichDialogMethodStart f7 '' #zField
Cs0 @RichDialogMethodStart f8 '' #zField
Cs0 @RichDialogProcessEnd f9 '' #zField
Cs0 @RichDialogProcessStep f12 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @Alternative f14 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @PushWFArc f13 '' #zField
Cs0 @RichDialogProcessStart f20 '' #zField
Cs0 @PushWFArc f21 '' #zField
Cs0 @RichDialogProcessStart f22 '' #zField
Cs0 @RichDialogEnd f23 '' #zField
Cs0 @PushWFArc f24 '' #zField
Cs0 @RichDialogProcessStart f25 '' #zField
Cs0 @RichDialogProcessStep f27 '' #zField
Cs0 @PushWFArc f19 '' #zField
Cs0 @PushWFArc f28 '' #zField
Cs0 @RichDialogProcessStep f26 '' #zField
Cs0 @PushWFArc f37 '' #zField
Cs0 @PushWFArc f38 '' #zField
Cs0 @RichDialogProcessEnd f39 '' #zField
Cs0 @PushWFArc f40 '' #zField
Cs0 @RichDialogProcessStep f16 '' #zField
Cs0 @PushWFArc f17 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @RichDialogProcessStep f42 '' #zField
Cs0 @PushWFArc f43 '' #zField
Cs0 @PushWFArc f33 '' #zField
Cs0 @RichDialogBroadcastStart f45 '' #zField
Cs0 @RichDialogProcessEnd f46 '' #zField
Cs0 @Alternative f48 '' #zField
Cs0 @PushWFArc f49 '' #zField
Cs0 @PushWFArc f50 '' #zField
Cs0 @PushWFArc f47 '' #zField
Cs0 @PushWFArc f51 '' #zField
Cs0 @RichDialogProcessStep f32 '' #zField
Cs0 @PushWFArc f52 '' #zField
Cs0 @PushWFArc f30 '' #zField
Cs0 @RichDialogProcessStart f5 '' #zField
Cs0 @PushWFArc f6 '' #zField
Cs0 @RichDialogProcessStep f10 '' #zField
Cs0 @PushWFArc f29 '' #zField
Cs0 @RichDialogProcessEnd f35 '' #zField
Cs0 @PushWFArc f36 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogProcessStep f4 '' #zField
Cs0 @PushWFArc f34 '' #zField
Cs0 @PushWFArc f31 '' #zField
Cs0 @PushWFArc f41 '' #zField
>Proto Cs0 Cs0 CaseDisplayProcess #zField
Cs0 f0 guid 119C2655307CB251 #txt
Cs0 f0 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '{/fileManagerRDC {/fieldName "fileManagerRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/caseDetailsDisplayRDC {/fieldName "caseDetailsDisplayRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/taskDisplayListRDC {/fieldName "taskDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/caseNoteDisplayListRDC {/fieldName "caseNoteDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/eventLogDisplayListRDC {/fieldName "eventLogDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/workflowEventsDisplayListRDC {/fieldName "workflowEventsDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}}' #txt
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
Cs0 f1 guid 119C2655B7589E81 #txt
Cs0 f1 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f1 method start(ch.ivyteam.ivy.workflow.ICase,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay) #txt
Cs0 f1 disableUIEvents false #txt
Cs0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase aCase,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay aParentDisplay> param = methodEvent.getInputArguments();
' #txt
Cs0 f1 inParameterMapAction 'out.fCase=param.aCase;
' #txt
Cs0 f1 outParameterDecl '<> result;
' #txt
Cs0 f1 embeddedRdInitializations '{/taskDisplayListRDC {/fieldName "taskDisplayListRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter,Number,Boolean)"/parameterMapping "param.aRunningTaskMode=true;\nparam.aTaskDisplayListParentDisplay=callParam.aParentDisplay;\nparam.aTaskDisplayMode=-1;\nparam.aHasWfAdministratorPermissions=ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);\n"/initScript ""/userContext * }/workflowEventsDisplayListRDC {/fieldName "workflowEventsDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""/userContext * }/caseNoteDisplayListRDC {/fieldName "caseNoteDisplayListRDC"/startMethod "start(ch.ivyteam.ivy.workflow.ICase,Boolean)"/parameterMapping "param.aCase=callParam.aCase;\nparam.aLoadDataAtStart=false;\n"/initScript ""/userContext * }/caseDetailsDisplayRDC {/fieldName "caseDetailsDisplayRDC"/startMethod "start(ch.ivyteam.ivy.workflow.ICase)"/parameterMapping ""/initScript "param.aCase = in.fCase;"/userContext * }/eventLogDisplayListRDC {/fieldName "eventLogDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""/userContext * }/formArchiveDisplayListRDC {/fieldName "formArchiveDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""/userContext * }/fileManagerRDC {/fieldName "fileManagerRDC"/startMethod "startWithServerPathAndUseIvySystemDB(String)"/parameterMapping ""/initScript "import ch.ivyteam.ivy.addons.restricted.resources.ResourceServicesHelper;\n\n// param.serverPath = \"\";\nparam.serverPath = ResourceServicesHelper.readCaseDocumentsPath(in.fCase.getIdentifier());\n"/userContext * }}' #txt
Cs0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase, RTabbedDisplay)</name>
        <nameStyle>28,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f1 110 70 20 20 13 0 #rect
Cs0 f1 @|RichDialogInitStartIcon #fIcon
Cs0 f3 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f3 35 347 26 26 14 0 #rect
Cs0 f3 @|RichDialogProcessEndIcon #fIcon
Cs0 f7 guid 119C2A4C0E28A78A #txt
Cs0 f7 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f7 method getCaseIdentifier() #txt
Cs0 f7 disableUIEvents false #txt
Cs0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f7 outParameterDecl '<java.lang.Number aCaseIdentifier> result;
' #txt
Cs0 f7 outParameterMapAction 'result.aCaseIdentifier=in.fCase.getIdentifier();
' #txt
Cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getCaseIdentifier()</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f7 486 62 20 20 13 0 #rect
Cs0 f7 @|RichDialogMethodStartIcon #fIcon
Cs0 f8 guid 119C2A4C9C24DDD5 #txt
Cs0 f8 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f8 method refresh() #txt
Cs0 f8 disableUIEvents false #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Cs0 f8 606 62 20 20 13 0 #rect
Cs0 f8 @|RichDialogMethodStartIcon #fIcon
Cs0 f9 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f9 603 339 26 26 14 0 #rect
Cs0 f9 @|RichDialogProcessEndIcon #fIcon
Cs0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f12 actionTable 'out=in;
' #txt
Cs0 f12 actionCode panel.caseDetailsDisplayRDC.setCase(in.fCase); #txt
Cs0 f12 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh</name>
        <nameStyle>7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f12 598 252 36 24 20 -2 #rect
Cs0 f12 @|RichDialogProcessStepIcon #fIcon
Cs0 f11 expr out #txt
Cs0 f11 616 276 616 339 #arcP
Cs0 f11 0 0.31601487597555505 0 0 #arcLabel
Cs0 f14 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f14 602 138 28 28 14 0 #rect
Cs0 f14 @|AlternativeIcon #fIcon
Cs0 f15 expr out #txt
Cs0 f15 616 82 616 138 #arcP
Cs0 f13 expr in #txt
Cs0 f13 outCond panel.caseDisplayTabbedPane.getSelectedComponent().equals(panel.caseDetailsScrollPane) #txt
Cs0 f13 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>case details</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 616 166 616 252 #arcP
Cs0 f13 0 0.5758543687130186 11 -1 #arcLabel
Cs0 f20 guid 119C375F9DC90CCF #txt
Cs0 f20 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f20 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f20 actionTable 'out=in;
' #txt
Cs0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f20 886 62 20 20 13 0 #rect
Cs0 f20 @|RichDialogProcessStartIcon #fIcon
Cs0 f21 expr out #txt
Cs0 f21 896 82 629 151 #arcP
Cs0 f21 1 896 136 #addKink
Cs0 f21 1 0.033938722103950804 0 0 #arcLabel
Cs0 f22 guid 119C3858019F192E #txt
Cs0 f22 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f22 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f22 actionTable 'out=in;
' #txt
Cs0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
        <nameStyle>5,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f22 1270 46 20 20 13 0 #rect
Cs0 f22 @|RichDialogProcessStartIcon #fIcon
Cs0 f23 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f23 guid 119C38585D56E043 #txt
Cs0 f23 1267 99 26 26 14 0 #rect
Cs0 f23 @|RichDialogEndIcon #fIcon
Cs0 f24 expr out #txt
Cs0 f24 1280 66 1280 99 #arcP
Cs0 f25 guid 11B07C6D87C9D076 #txt
Cs0 f25 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f25 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f25 actionTable 'out=in;
' #txt
Cs0 f25 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;
import ch.ivyteam.ivy.addons.restricted.eventlog.EventLogHelper;
import ch.ivyteam.ivy.addons.restricted.resources.ResourceServicesHelper;

// case details
panel.caseDisplayTabbedPane.setTitleAt(0, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/details") + " \u2022");



// documents

// create default folders (if needed)
ResourceServicesHelper.makeDefaultCaseDirectories(panel.fileManagerRDC, in.fCase);

// if there is some documents, add the bullet as a suffix
panel.caseDisplayTabbedPane.setTitleAt(1, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/documents") + 
	(panel.fileManagerRDC.getDocumentsListInPath(panel.fileManagerRDC.getServerPath()).isEmpty()? "": " \u2022"));


// annotations
// if there is annotations, add the bullet as a suffix
panel.caseDisplayTabbedPane.setTitleAt(2, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/annotations") + (in.fCase.getNotes().isEmpty()? "": " \u2022"));


// events
panel.caseDisplayTabbedPane.setTitleAt(3, ivy.cms.co("/ch/ivyteam/ivy/addons/eventlog/plainStrings/eventLogs") + (EventLogHelper.findBusinessEventLogsAsSystemUser(in.fCase).isEmpty()? "": + " \u2022"));


// tasks
panel.caseDisplayTabbedPane.setTitleAt(4, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseTasks") + " \u2022");


// wf events
panel.caseDisplayTabbedPane.setTitleAt(5, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseWorkflowEventsShortDesc") + " \u2022");

// form archives
panel.caseDisplayTabbedPane.setTitleAt(6, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/formArchive/plainStrings/pageArchives") + (WorkflowUIAccessPermissionHandler.getCasePageArchivesAsSystemUser(in.fCase).isEmpty()? "": " \u2022"));' #txt
Cs0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f25 1126 46 20 20 13 0 #rect
Cs0 f25 @|RichDialogProcessStartIcon #fIcon
Cs0 f27 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f27 actionTable 'out=in;
' #txt
Cs0 f27 actionCode 'import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;

panel.taskDisplayListRDC.findTasksByCase(in.fCase);

/*
if (!panel.taskDisplayListRDC.caseIsInitialized())
{
	panel.taskDisplayListRDC.findTasksByCase(in.fCase);
}

*/' #txt
Cs0 f27 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh
tasks</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f27 966 252 36 24 20 -2 #rect
Cs0 f27 @|RichDialogProcessStepIcon #fIcon
Cs0 f19 expr out #txt
Cs0 f19 984 276 628 350 #arcP
Cs0 f19 1 984 304 #addKink
Cs0 f19 1 0.4015451849356501 0 0 #arcLabel
Cs0 f28 expr in #txt
Cs0 f28 outCond panel.caseDisplayTabbedPane.getSelectedComponent().equals(panel.taskDisplayListRDC) #txt
Cs0 f28 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>tasks</name>
        <nameStyle>5,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f28 628 154 984 252 #arcP
Cs0 f28 1 984 208 #addKink
Cs0 f28 0 0.5938247384128846 0 0 #arcLabel
Cs0 f26 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f26 actionTable 'out=in;
' #txt
Cs0 f26 actionCode '// load case business events
panel.eventLogDisplayListRDC.setWfCase(in.fCase);' #txt
Cs0 f26 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh
event logs</name>
        <nameStyle>18,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f26 1062 252 36 24 20 -2 #rect
Cs0 f26 @|RichDialogProcessStepIcon #fIcon
Cs0 f37 expr in #txt
Cs0 f37 outCond panel.caseDisplayTabbedPane.getSelectedComponent().equals(panel.eventLogDisplayListRDC) #txt
Cs0 f37 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>event logs</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f37 628 154 1080 252 #arcP
Cs0 f37 1 1080 208 #addKink
Cs0 f37 0 0.5988669123777718 0 0 #arcLabel
Cs0 f38 expr out #txt
Cs0 f38 1080 276 628 350 #arcP
Cs0 f38 1 1080 304 #addKink
Cs0 f38 1 0.3993226344155925 0 0 #arcLabel
Cs0 f39 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f39 486 342 20 20 13 0 #rect
Cs0 f39 @|RichDialogProcessEndIcon #fIcon
Cs0 f40 expr out #txt
Cs0 f40 496 82 496 342 #arcP
Cs0 f16 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f16 actionTable 'out=in;
' #txt
Cs0 f16 actionCode panel.workflowEventsDisplayListRDC.setCase(in.fCase); #txt
Cs0 f16 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh
the wf events
(history)</name>
        <nameStyle>31,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f16 1158 252 36 24 20 -2 #rect
Cs0 f16 @|RichDialogProcessStepIcon #fIcon
Cs0 f17 expr in #txt
Cs0 f17 outCond panel.caseDisplayTabbedPane.getSelectedComponent().equals(panel.workflowEventsDisplayListRDC) #txt
Cs0 f17 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>wf events</name>
        <nameStyle>9,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f17 629 153 1176 252 #arcP
Cs0 f17 1 1176 200 #addKink
Cs0 f17 1 0.12830044811306476 0 0 #arcLabel
Cs0 f18 expr out #txt
Cs0 f18 1176 276 628 351 #arcP
Cs0 f18 1 1176 312 #addKink
Cs0 f18 1 0.4236208311786735 0 0 #arcLabel
Cs0 f42 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f42 actionTable 'out=in;
' #txt
Cs0 f42 actionCode 'panel.caseNoteDisplayListRDC.refresh();

// set the icon if there is notes on case
if (in.fCase.getNotes().isEmpty())
{
	panel.caseDisplayTabbedPane.setTitleAt(2, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/annotations"));
}
else
{
	panel.caseDisplayTabbedPane.setTitleAt(2, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/annotations") + " \u2022");
}' #txt
Cs0 f42 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f42 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh notes</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f42 1398 252 36 24 20 -2 #rect
Cs0 f42 @|RichDialogProcessStepIcon #fIcon
Cs0 f43 expr in #txt
Cs0 f43 outCond panel.caseDisplayTabbedPane.getSelectedComponent().equals(panel.caseNotesTaskPaneContainer) #txt
Cs0 f43 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>notes</name>
        <nameStyle>5,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f43 629 153 1416 252 #arcP
Cs0 f43 1 1416 184 #addKink
Cs0 f43 0 0.8392404049253279 0 0 #arcLabel
Cs0 f33 expr out #txt
Cs0 f33 1416 276 628 351 #arcP
Cs0 f33 1 1416 336 #addKink
Cs0 f33 1 0.43854446445217987 0 0 #arcLabel
Cs0 f45 guid 128DE3AB3875949B #txt
Cs0 f45 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f45 broadcast xivyCaseNotesChanged #txt
Cs0 f45 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f45 actionTable 'out=in;
' #txt
Cs0 f45 actionCode 'out.broadcastedCaseIdentifier = param.caseIdentifier;' #txt
Cs0 f45 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>xivyCaseNotesChanged</name>
        <nameStyle>20,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f45 1534 78 20 20 13 0 #rect
Cs0 f45 @|RichDialogBroadcastStartIcon #fIcon
Cs0 f46 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f46 1582 334 20 20 13 0 #rect
Cs0 f46 @|RichDialogProcessEndIcon #fIcon
Cs0 f48 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f48 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>is this case?</name>
        <nameStyle>13,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f48 1530 162 28 28 14 0 #rect
Cs0 f48 @|AlternativeIcon #fIcon
Cs0 f49 expr out #txt
Cs0 f49 1544 98 1544 162 #arcP
Cs0 f50 expr in #txt
Cs0 f50 outCond 'in.fCase.getIdentifier() == in.broadcastedCaseIdentifier' #txt
Cs0 f50 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f50 1544 190 1434 262 #arcP
Cs0 f50 1 1544 248 #addKink
Cs0 f50 1 0.37247752813456403 0 0 #arcLabel
Cs0 f47 expr in #txt
Cs0 f47 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f47 1558 176 1592 334 #arcP
Cs0 f47 1 1592 176 #addKink
Cs0 f47 1 0.3534285093955627 0 0 #arcLabel
Cs0 f51 expr out #txt
Cs0 f51 48 90 48 347 #arcP
Cs0 f32 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f32 actionTable 'out=in;
' #txt
Cs0 f32 actionCode 'import ch.ivyteam.ivy.addons.restricted.resources.ResourceServicesHelper;
import ch.ivyteam.ivy.workflow.CaseState;


// ensure to create the default folders
ResourceServicesHelper.makeDefaultCaseDirectories(panel.fileManagerRDC, in.fCase);


// if there is some documents, add the bullet as a suffix
if (panel.fileManagerRDC.getDocumentsListInPath(panel.fileManagerRDC.getServerPath()).isEmpty())
{
	panel.caseDisplayTabbedPane.setTitleAt(1, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/documents"));
}
else
{
	panel.caseDisplayTabbedPane.setTitleAt(1, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/documents") + " \u2022");
}


// enable readonly mode if case is done
if (in.fCase.getState().compareTo(CaseState.DONE) == 0)
{
	panel.fileManagerRDC.enableReadOnlyMode(true);
}' #txt
Cs0 f32 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create case directories</name>
        <nameStyle>23,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f32 782 252 36 24 20 -2 #rect
Cs0 f32 @|RichDialogProcessStepIcon #fIcon
Cs0 f52 expr in #txt
Cs0 f52 outCond panel.caseDisplayTabbedPane.getSelectedComponent().equals(panel.fileManagerRDC) #txt
Cs0 f52 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>case documents</name>
        <nameStyle>14,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f52 628 154 800 252 #arcP
Cs0 f52 1 800 184 #addKink
Cs0 f52 1 0.23680266926968482 -3 1 #arcLabel
Cs0 f30 expr out #txt
Cs0 f30 800 276 628 348 #arcP
Cs0 f30 1 800 304 #addKink
Cs0 f30 1 0.3001442881510825 0 0 #arcLabel
Cs0 f5 guid 129A6F7504EDB9A2 #txt
Cs0 f5 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f5 actionTable 'out=in;
' #txt
Cs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>updateDocumentsTab</name>
        <nameStyle>18,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f5 814 214 20 20 13 0 #rect
Cs0 f5 @|RichDialogProcessStartIcon #fIcon
Cs0 f6 expr out #txt
Cs0 f6 824 234 812 252 #arcP
Cs0 f6 1 824 240 #addKink
Cs0 f6 1 0.22512629162548936 0 0 #arcLabel
Cs0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f10 actionTable 'out=in;
' #txt
Cs0 f10 actionCode 'panel.eventLogDisplayListRDC.setSilentMode(true);
// display only case business events
panel.eventLogDisplayListRDC.setDisplayMode(1);

panel.fileManagerRDC.enableRoundCornerIconsMode(true);' #txt
Cs0 f10 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enable the silent mode to true on eventlog
define the display mode on eventlog
enable the round corner icons on file manager</name>
        <nameStyle>23,7,9
101,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f10 102 132 36 24 20 -2 #rect
Cs0 f10 @|RichDialogProcessStepIcon #fIcon
Cs0 f29 expr out #txt
Cs0 f29 120 90 120 132 #arcP
Cs0 f29 0 0.5299504005393467 0 0 #arcLabel
Cs0 f35 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f35 1126 102 20 20 13 0 #rect
Cs0 f35 @|RichDialogProcessEndIcon #fIcon
Cs0 f36 expr out #txt
Cs0 f36 1136 66 1136 102 #arcP
Cs0 f36 0 0.8611272901313846 0 0 #arcLabel
Cs0 f2 expr out #txt
Cs0 f2 120 156 59 354 #arcP
Cs0 f2 1 120 328 #addKink
Cs0 f2 0 0.6535956679232158 0 0 #arcLabel
Cs0 f4 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f4 actionTable 'out=in;
' #txt
Cs0 f4 actionCode panel.formArchiveDisplayListRDC.setCase(in.fCase); #txt
Cs0 f4 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh
form archives</name>
        <nameStyle>21,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f4 1278 252 36 24 20 -2 #rect
Cs0 f4 @|RichDialogProcessStepIcon #fIcon
Cs0 f34 expr out #txt
Cs0 f34 1296 276 628 351 #arcP
Cs0 f34 1 1296 320 #addKink
Cs0 f34 1 0.45743736384737727 0 0 #arcLabel
Cs0 f31 expr in #txt
Cs0 f31 outCond panel.caseDisplayTabbedPane.getSelectedComponent().equals(panel.formArchiveDisplayListRDC) #txt
Cs0 f31 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>form archives</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f31 629 153 1296 252 #arcP
Cs0 f31 1 1296 200 #addKink
Cs0 f31 1 0.0 0 0 #arcLabel
Cs0 f41 expr in #txt
Cs0 f41 630 152 628 351 #arcP
Cs0 f41 1 1480 176 #addKink
Cs0 f41 2 1480 344 #addKink
Cs0 f41 1 0.053641223136268755 0 0 #arcLabel
>Proto Cs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>397</swimlaneSize>
    <swimlaneSize>361</swimlaneSize>
    <swimlaneSize>748</swimlaneSize>
    <swimlaneColor>-6684724</swimlaneColor>
    <swimlaneColor>-16711732</swimlaneColor>
    <swimlaneColor>-6697729</swimlaneColor>
</elementInfo>
' #txt
>Proto Cs0 .type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f12 mainOut f11 tail #connect
Cs0 f11 head f9 mainIn #connect
Cs0 f8 mainOut f15 tail #connect
Cs0 f15 head f14 in #connect
Cs0 f14 out f13 tail #connect
Cs0 f13 head f12 mainIn #connect
Cs0 f20 mainOut f21 tail #connect
Cs0 f21 head f14 in #connect
Cs0 f22 mainOut f24 tail #connect
Cs0 f24 head f23 mainIn #connect
Cs0 f27 mainOut f19 tail #connect
Cs0 f19 head f9 mainIn #connect
Cs0 f28 head f27 mainIn #connect
Cs0 f37 head f26 mainIn #connect
Cs0 f26 mainOut f38 tail #connect
Cs0 f38 head f9 mainIn #connect
Cs0 f7 mainOut f40 tail #connect
Cs0 f40 head f39 mainIn #connect
Cs0 f17 head f16 mainIn #connect
Cs0 f16 mainOut f18 tail #connect
Cs0 f18 head f9 mainIn #connect
Cs0 f43 head f42 mainIn #connect
Cs0 f42 mainOut f33 tail #connect
Cs0 f33 head f9 mainIn #connect
Cs0 f45 mainOut f49 tail #connect
Cs0 f49 head f48 in #connect
Cs0 f48 out f50 tail #connect
Cs0 f50 head f42 mainIn #connect
Cs0 f48 out f47 tail #connect
Cs0 f47 head f46 mainIn #connect
Cs0 f0 mainOut f51 tail #connect
Cs0 f51 head f3 mainIn #connect
Cs0 f14 out f52 tail #connect
Cs0 f52 head f32 mainIn #connect
Cs0 f14 out f28 tail #connect
Cs0 f14 out f37 tail #connect
Cs0 f14 out f17 tail #connect
Cs0 f14 out f43 tail #connect
Cs0 f32 mainOut f30 tail #connect
Cs0 f30 head f9 mainIn #connect
Cs0 f5 mainOut f6 tail #connect
Cs0 f6 head f32 mainIn #connect
Cs0 f1 mainOut f29 tail #connect
Cs0 f29 head f10 mainIn #connect
Cs0 f25 mainOut f36 tail #connect
Cs0 f36 head f35 mainIn #connect
Cs0 f10 mainOut f2 tail #connect
Cs0 f2 head f3 mainIn #connect
Cs0 f4 mainOut f34 tail #connect
Cs0 f34 head f9 mainIn #connect
Cs0 f14 out f31 tail #connect
Cs0 f31 head f4 mainIn #connect
Cs0 f14 out f41 tail #connect
Cs0 f41 head f9 mainIn #connect
