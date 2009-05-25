[Ivy]
[>Created: Thu May 07 18:14:00 CEST 2009]
119C23018068C697 3.11 #module
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
Cs0 @RichDialogProcessStep f2 '' #zField
Cs0 @RichDialogProcessEnd f3 '' #zField
Cs0 @PushWFArc f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @PushWFArc f6 '' #zField
Cs0 @RichDialogMethodStart f7 '' #zField
Cs0 @RichDialogMethodStart f8 '' #zField
Cs0 @RichDialogProcessEnd f9 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @RichDialogProcessStep f12 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @Alternative f14 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @PushWFArc f13 '' #zField
Cs0 @RichDialogProcessStep f16 '' #zField
Cs0 @PushWFArc f17 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @RichDialogProcessStart f20 '' #zField
Cs0 @PushWFArc f21 '' #zField
Cs0 @RichDialogProcessStart f22 '' #zField
Cs0 @RichDialogEnd f23 '' #zField
Cs0 @PushWFArc f24 '' #zField
Cs0 @RichDialogProcessStart f25 '' #zField
Cs0 @PushWFArc f26 '' #zField
Cs0 @RichDialogProcessStep f27 '' #zField
Cs0 @PushWFArc f28 '' #zField
Cs0 @PushWFArc f19 '' #zField
Cs0 @PushWFArc f29 '' #zField
>Proto Cs0 Cs0 CaseDisplayProcess #zField
Cs0 f0 guid 119C2655307CB251 #txt
Cs0 f0 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f0 method start() #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '{/caseBusinessDetailsDisplayRDC {/fieldName "caseBusinessDetailsDisplayRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/caseNoteDisplayListRDC {/fieldName "caseNoteDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/caseCustomFieldsDisplayRDC {/fieldName "caseCustomFieldsDisplayRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/workflowEventsDisplayListRDC {/fieldName "workflowEventsDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""}/caseCategorizationDetailsDisplayRDC {/fieldName "caseCategorizationDetailsDisplayRDC"/startMethod "start()"/parameterMapping ""/initScript ""}}' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 166 70 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 guid 119C2655B7589E81 #txt
Cs0 f1 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f1 method start(ch.ivyteam.ivy.workflow.ICase,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay) #txt
Cs0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase aCase,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay aParentDisplay> param = methodEvent.getInputArguments();
' #txt
Cs0 f1 inParameterMapAction 'out.fCase=param.aCase;
' #txt
Cs0 f1 outParameterDecl '<> result;
' #txt
Cs0 f1 embeddedRdInitializations '{/caseBusinessDetailsDisplayRDC {/fieldName "caseBusinessDetailsDisplayRDC"/startMethod "start(ch.ivyteam.ivy.workflow.ICase)"/parameterMapping "param.aCase=callParam.aCase;\n"/initScript ""}/taskDisplayListRDC {/fieldName "taskDisplayListRDC"/startMethod "start(Boolean,ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay,ch.ivyteam.ivy.workflow.IPropertyFilter,Number,Boolean)"/parameterMapping "param.aRunningTaskMode=true;\nparam.aTaskDisplayListParentDisplay=callParam.aParentDisplay;\nparam.aTaskDisplayMode=-1;\nparam.aHasWfAdministratorPermissions=ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.ADMINISTRATE_WORKFLOW);\n"/initScript ""}/caseNoteDisplayListRDC {/fieldName "caseNoteDisplayListRDC"/startMethod "start(ch.ivyteam.ivy.workflow.ICase,Boolean)"/parameterMapping "param.aCase=callParam.aCase;\nparam.aLoadDataAtStart=false;\n"/initScript ""}/caseCustomFieldsDisplayRDC {/fieldName "caseCustomFieldsDisplayRDC"/startMethod "start(ch.ivyteam.ivy.workflow.ICase)"/parameterMapping "param.aCase=callParam.aCase;\n"/initScript ""}/workflowEventsDisplayListRDC {/fieldName "workflowEventsDisplayListRDC"/startMethod "start(ch.ivyteam.ivy.workflow.ICase,Boolean)"/parameterMapping "param.aCase=callParam.aCase;\nparam.aLoadDataAtStart=false;\n"/initScript ""}/caseCategorizationDetailsDisplayRDC {/fieldName "caseCategorizationDetailsDisplayRDC"/startMethod "start(ch.ivyteam.ivy.workflow.ICase)"/parameterMapping "param.aCase=callParam.aCase;\n"/initScript ""}}' #txt
Cs0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase, RTabbedDisplay)</name>
        <nameStyle>28,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f1 222 70 20 20 13 0 #rect
Cs0 f1 @|RichDialogInitStartIcon #fIcon
Cs0 f2 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f2 actionTable 'out=in;
' #txt
Cs0 f2 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f2 158 204 36 24 20 -2 #rect
Cs0 f2 @|RichDialogProcessStepIcon #fIcon
Cs0 f3 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f3 163 347 26 26 14 0 #rect
Cs0 f3 @|RichDialogProcessEndIcon #fIcon
Cs0 f4 expr out #txt
Cs0 f4 176 90 176 204 #arcP
Cs0 f5 expr out #txt
Cs0 f5 176 228 176 347 #arcP
Cs0 f6 expr out #txt
Cs0 f6 232 90 194 216 #arcP
Cs0 f6 1 232 216 #addKink
Cs0 f6 0 0.7886663441097366 0 0 #arcLabel
Cs0 f7 guid 119C2A4C0E28A78A #txt
Cs0 f7 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f7 method getCaseIdentifier() #txt
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
Cs0 f7 350 70 20 20 13 0 #rect
Cs0 f7 @|RichDialogMethodStartIcon #fIcon
Cs0 f8 guid 119C2A4C9C24DDD5 #txt
Cs0 f8 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f8 method refresh() #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Cs0 f8 470 70 20 20 13 0 #rect
Cs0 f8 @|RichDialogMethodStartIcon #fIcon
Cs0 f9 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f9 347 347 26 26 14 0 #rect
Cs0 f9 @|RichDialogProcessEndIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 360 90 360 347 #arcP
Cs0 f12 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f12 actionTable 'out=in;
' #txt
Cs0 f12 actionCode 'if (panel.caseGlobalInformationTaskPane.isExpanded())
{
	panel.caseCategorizationDetailsDisplayRDC.refresh();
}	

if (panel.caseBusinessInformationTaskPane.isExpanded())
{
	panel.caseBusinessDetailsDisplayRDC.refresh();	
}

if (panel.caseCustomFieldsTaskPane.isExpanded())
{
	panel.caseCustomFieldsDisplayRDC.refresh();	
}

if (panel.caseNotesTaskPane.isExpanded())
{
	panel.caseNoteDisplayListRDC.refresh();	
}' #txt
Cs0 f12 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh 
expanded section</name>
        <nameStyle>25,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f12 590 228 36 24 20 -2 #rect
Cs0 f12 @|RichDialogProcessStepIcon #fIcon
Cs0 f11 expr out #txt
Cs0 f11 608 252 373 360 #arcP
Cs0 f11 1 608 360 #addKink
Cs0 f11 0 0.9846459869712896 0 0 #arcLabel
Cs0 f14 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f14 466 146 28 28 14 0 #rect
Cs0 f14 @|AlternativeIcon #fIcon
Cs0 f15 expr out #txt
Cs0 f15 480 90 480 146 #arcP
Cs0 f13 expr in #txt
Cs0 f13 outCond panel.caseDisplayTabbedPane.getSelectedComponent().equals(panel.caseDetailsSplitPane) #txt
Cs0 f13 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>case details split pane</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 492 162 608 228 #arcP
Cs0 f13 1 608 176 #addKink
Cs0 f13 1 0.3921360679915151 11 -1 #arcLabel
Cs0 f16 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f16 actionTable 'out=in;
' #txt
Cs0 f16 actionCode panel.workflowEventsDisplayListRDC.refresh(); #txt
Cs0 f16 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh data</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f16 462 228 36 24 20 -2 #rect
Cs0 f16 @|RichDialogProcessStepIcon #fIcon
Cs0 f17 expr in #txt
Cs0 f17 outCond panel.caseDisplayTabbedPane.getSelectedComponent().equals(panel.workflowEventsDisplayListRDC) #txt
Cs0 f17 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>case workflow events</name>
        <nameStyle>20,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f17 480 174 480 228 #arcP
Cs0 f18 expr out #txt
Cs0 f18 480 252 373 360 #arcP
Cs0 f18 1 480 360 #addKink
Cs0 f18 1 0.07231812892046431 0 0 #arcLabel
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
Cs0 f20 550 70 20 20 13 0 #rect
Cs0 f20 @|RichDialogProcessStartIcon #fIcon
Cs0 f21 expr out #txt
Cs0 f21 560 90 492 158 #arcP
Cs0 f21 1 560 144 #addKink
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
Cs0 f22 918 78 20 20 13 0 #rect
Cs0 f22 @|RichDialogProcessStartIcon #fIcon
Cs0 f23 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f23 guid 119C38585D56E043 #txt
Cs0 f23 915 363 26 26 14 0 #rect
Cs0 f23 @|RichDialogEndIcon #fIcon
Cs0 f24 expr out #txt
Cs0 f24 928 98 928 363 #arcP
Cs0 f25 guid 11B07C6D87C9D076 #txt
Cs0 f25 type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
Cs0 f25 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData out;
' #txt
Cs0 f25 actionTable 'out=in;
' #txt
Cs0 f25 actionCode 'panel.caseDisplayTabbedPane.setTitleAt(0, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseDetails"));
panel.caseDisplayTabbedPane.setTitleAt(1, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseWorkflowEvents"));
panel.caseDisplayTabbedPane.setTitleAt(2, ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseTasks"));' #txt
Cs0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f25 294 118 20 20 13 0 #rect
Cs0 f25 @|RichDialogProcessStartIcon #fIcon
Cs0 f26 expr out #txt
Cs0 f26 304 138 189 360 #arcP
Cs0 f26 1 304 360 #addKink
Cs0 f26 0 0.7735674443908581 0 0 #arcLabel
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
    <language/>
</elementInfo>
' #txt
Cs0 f27 742 244 36 24 20 -2 #rect
Cs0 f27 @|RichDialogProcessStepIcon #fIcon
Cs0 f28 expr in #txt
Cs0 f28 outCond panel.caseDisplayTabbedPane.getSelectedComponent().equals(panel.taskDisplayListRDC) #txt
Cs0 f28 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>task display list</name>
        <nameStyle>17,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f28 494 160 760 244 #arcP
Cs0 f28 1 760 168 #addKink
Cs0 f28 1 0.12934732553397701 0 0 #arcLabel
Cs0 f19 expr out #txt
Cs0 f19 760 268 373 360 #arcP
Cs0 f19 1 760 360 #addKink
Cs0 f19 1 0.4015451849356501 0 0 #arcLabel
Cs0 f29 expr in #txt
Cs0 f29 494 160 373 360 #arcP
Cs0 f29 1 824 160 #addKink
Cs0 f29 2 824 360 #addKink
Cs0 f29 1 0.45467347492095256 0 0 #arcLabel
>Proto Cs0 .type ch.ivyteam.ivy.workflow.ui.cases.CaseDisplay.CaseDisplayData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f4 tail #connect
Cs0 f4 head f2 mainIn #connect
Cs0 f2 mainOut f5 tail #connect
Cs0 f5 head f3 mainIn #connect
Cs0 f1 mainOut f6 tail #connect
Cs0 f6 head f2 mainIn #connect
Cs0 f7 mainOut f10 tail #connect
Cs0 f10 head f9 mainIn #connect
Cs0 f12 mainOut f11 tail #connect
Cs0 f11 head f9 mainIn #connect
Cs0 f8 mainOut f15 tail #connect
Cs0 f15 head f14 in #connect
Cs0 f14 out f13 tail #connect
Cs0 f13 head f12 mainIn #connect
Cs0 f14 out f17 tail #connect
Cs0 f17 head f16 mainIn #connect
Cs0 f16 mainOut f18 tail #connect
Cs0 f18 head f9 mainIn #connect
Cs0 f20 mainOut f21 tail #connect
Cs0 f21 head f14 in #connect
Cs0 f22 mainOut f24 tail #connect
Cs0 f24 head f23 mainIn #connect
Cs0 f25 mainOut f26 tail #connect
Cs0 f26 head f3 mainIn #connect
Cs0 f14 out f28 tail #connect
Cs0 f28 head f27 mainIn #connect
Cs0 f27 mainOut f19 tail #connect
Cs0 f19 head f9 mainIn #connect
Cs0 f14 out f29 tail #connect
Cs0 f29 head f9 mainIn #connect
