[Ivy]
[>Created: Mon Apr 27 18:34:09 CEST 2009]
11A9B7CC5D63A2D6 3.11 #module
>Proto >Proto Collection #zClass
Cs0 CaseHierarchyLayoutSelectProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @RichDialogInitStart f3 '' #zField
Cs0 @RichDialogProcessStep f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @PushWFArc f6 '' #zField
Cs0 @RichDialogProcessStart f7 '' #zField
Cs0 @RichDialogProcessEnd f8 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @RichDialogProcessEnd f14 '' #zField
Cs0 @RichDialogProcessStart f13 '' #zField
Cs0 @Alternative f17 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @RichDialogFireEvent f19 '' #zField
Cs0 @PushWFArc f20 '' #zField
Cs0 @PushWFArc f16 '' #zField
Cs0 @PushWFArc f21 '' #zField
Cs0 @RichDialogMethodStart f10 '' #zField
Cs0 @RichDialogMethodStart f11 '' #zField
Cs0 @PushWFArc f12 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @RichDialogMethodStart f22 '' #zField
Cs0 @RichDialogMethodStart f23 '' #zField
Cs0 @PushWFArc f25 '' #zField
Cs0 @PushWFArc f24 '' #zField
>Proto Cs0 Cs0 CaseHierarchyLayoutSelectProcess #zField
Cs0 f0 guid 11A9B7CC6A11CFEF #txt
Cs0 f0 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f0 method start() #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inActionCode 'out.caseHierarchyLayoutPrefferedIndex = -1;' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '* ' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 90 40 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f1 91 315 26 26 14 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f3 guid 11AA691970EB2FFD #txt
Cs0 f3 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f3 method start(Number) #txt
Cs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number aCaseHierarchyLayoutPrefferedIndex> param = methodEvent.getInputArguments();
' #txt
Cs0 f3 inParameterMapAction 'out.caseHierarchyLayoutPrefferedIndex=param.aCaseHierarchyLayoutPrefferedIndex;
' #txt
Cs0 f3 outParameterDecl '<> result;
' #txt
Cs0 f3 embeddedRdInitializations '* ' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Number)</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 190 38 20 20 13 0 #rect
Cs0 f3 @|RichDialogInitStartIcon #fIcon
Cs0 f4 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData out;
' #txt
Cs0 f4 actionTable 'out=in;
' #txt
Cs0 f4 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.common.HierarchyLayout;
import ch.ivyteam.ivy.workflow.IPropertyFilter;



// task hierarchies 

HierarchyLayout layout1 = new HierarchyLayout();
layout1.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout1ShortDesc").toString();
layout1.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout1LongDesc").toString();

HierarchyLayout layout2 = new HierarchyLayout();
layout2.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout2ShortDesc").toString();
layout2.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout2LongDesc").toString();

HierarchyLayout layout3 = new HierarchyLayout();
layout3.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout3ShortDesc").toString();
layout3.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout3LongDesc").toString();

HierarchyLayout layout4 = new HierarchyLayout();
layout4.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout4ShortDesc").toString();
layout4.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout4LongDesc").toString();

HierarchyLayout layout5 = new HierarchyLayout();
layout5.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout5ShortDesc").toString();
layout5.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout5LongDesc").toString();

HierarchyLayout layout6 = new HierarchyLayout();
layout6.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout6ShortDesc").toString();
layout6.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout6LongDesc").toString();

HierarchyLayout layout7 = new HierarchyLayout();
layout7.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout7ShortDesc").toString();
layout7.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseHierarchyLayout7LongDesc").toString();


out.caseHierarchyLayoutsList.clear();
out.caseHierarchyLayoutsList.addAll([layout1, layout2, layout3, layout4, layout5, layout6, layout7]);


out.selectionEnabled = true;' #txt
Cs0 f4 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the 
case hierarchy layouts,
by default selectionEnabled to true</name>
        <nameStyle>70,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f4 86 172 36 24 20 -2 #rect
Cs0 f4 @|RichDialogProcessStepIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 100 59 104 172 #arcP
Cs0 f2 expr out #txt
Cs0 f2 104 196 104 315 #arcP
Cs0 f6 expr out #txt
Cs0 f6 194 56 112 172 #arcP
Cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f7 guid 11AA691BC7824B17 #txt
Cs0 f7 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f7 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData out;
' #txt
Cs0 f7 actionTable 'out=in;
' #txt
Cs0 f7 actionCode 'if (!out.caseHierarchyLayoutsList.isEmpty())
{
	panel.caseHierarchyLayoutComboBox.setSelectedIndex(in.caseHierarchyLayoutPrefferedIndex);	
}' #txt
Cs0 f7 326 46 20 20 13 0 #rect
Cs0 f7 @|RichDialogProcessStartIcon #fIcon
Cs0 f8 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f8 323 315 26 26 14 0 #rect
Cs0 f8 @|RichDialogProcessEndIcon #fIcon
Cs0 f9 expr out #txt
Cs0 f9 336 66 336 315 #arcP
Cs0 f14 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f14 483 315 26 26 14 0 #rect
Cs0 f14 @|RichDialogProcessEndIcon #fIcon
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>caseHierarchySelected</name>
        <nameStyle>21,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 guid 11AA69642AC7EA84 #txt
Cs0 f13 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData out;
' #txt
Cs0 f13 actionTable 'out=in;
' #txt
Cs0 f13 486 46 20 20 13 0 #rect
Cs0 f13 @|RichDialogProcessStartIcon #fIcon
Cs0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f17 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f17 482 114 28 28 14 0 #rect
Cs0 f17 @|AlternativeIcon #fIcon
Cs0 f18 expr out #txt
Cs0 f18 496 66 496 114 #arcP
Cs0 f19 actionCode panel.fireCaseHierarchyLayoutSelected(); #txt
Cs0 f19 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f19 fireEvent caseHierarchyLayoutSelected() #txt
Cs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fire the RD Event
caseHierarchySelected</name>
        <nameStyle>39,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f19 478 228 36 24 20 -2 #rect
Cs0 f19 @|RichDialogFireEventIcon #fIcon
Cs0 f20 expr in #txt
Cs0 f20 outCond 'panel.caseHierarchyLayoutComboBox.getSelectedListEntry() != null' #txt
Cs0 f20 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selected list entry
!= null</name>
        <nameStyle>27,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f20 496 142 496 228 #arcP
Cs0 f16 expr out #txt
Cs0 f16 496 252 496 315 #arcP
Cs0 f21 expr in #txt
Cs0 f21 510 128 509 328 #arcP
Cs0 f21 1 584 128 #addKink
Cs0 f21 2 584 328 #addKink
Cs0 f21 1 0.4380226947074322 0 0 #arcLabel
Cs0 f10 guid 11AA69986AC80FE9 #txt
Cs0 f10 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f10 method getSelectedCaseHierarchyLayoutIndex() #txt
Cs0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f10 outParameterDecl '<java.lang.Number selectedIndex> result;
' #txt
Cs0 f10 outParameterMapAction 'result.selectedIndex=panel.caseHierarchyLayoutComboBox.getSelectedIndex();
' #txt
Cs0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getSelectedCaseHierarchyLayoutIndex()</name>
        <nameStyle>37,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f10 654 46 20 20 13 0 #rect
Cs0 f10 @|RichDialogMethodStartIcon #fIcon
Cs0 f11 guid 11AA6998D3414B19 #txt
Cs0 f11 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f11 method setSelectedCaseHierarchyLayoutIndex(Number) #txt
Cs0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number index> param = methodEvent.getInputArguments();
' #txt
Cs0 f11 inParameterMapAction 'out.caseHierarchyLayoutPrefferedIndex=param.index;
' #txt
Cs0 f11 outParameterDecl '<> result;
' #txt
Cs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setSelectedCaseHierarchyLayoutIndex(Number)</name>
        <nameStyle>43,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f11 694 86 20 20 13 0 #rect
Cs0 f11 @|RichDialogMethodStartIcon #fIcon
Cs0 f12 expr out #txt
Cs0 f12 664 66 509 328 #arcP
Cs0 f12 1 664 328 #addKink
Cs0 f12 0 0.6982009587363495 0 0 #arcLabel
Cs0 f15 expr out #txt
Cs0 f15 704 106 509 328 #arcP
Cs0 f15 1 704 328 #addKink
Cs0 f15 0 0.8350241758926275 0 0 #arcLabel
Cs0 f22 guid 11E3F54B270522FD #txt
Cs0 f22 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f22 method getSelectionEnabled() #txt
Cs0 f22 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f22 outParameterDecl '<java.lang.Boolean enabled> result;
' #txt
Cs0 f22 outParameterMapAction 'result.enabled=in.selectionEnabled;
' #txt
Cs0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getSelectionEnabled()</name>
        <nameStyle>21,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f22 982 78 20 20 13 0 #rect
Cs0 f22 @|RichDialogMethodStartIcon #fIcon
Cs0 f23 guid 11E3F54BA50DA970 #txt
Cs0 f23 type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
Cs0 f23 method setSelectionEnabled(Boolean) #txt
Cs0 f23 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Boolean enabled> param = methodEvent.getInputArguments();
' #txt
Cs0 f23 inParameterMapAction 'out.selectionEnabled=param.enabled;
' #txt
Cs0 f23 outParameterDecl '<> result;
' #txt
Cs0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setSelectionEnabled(Boolean)</name>
        <nameStyle>28,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f23 942 46 20 20 13 0 #rect
Cs0 f23 @|RichDialogMethodStartIcon #fIcon
Cs0 f25 expr out #txt
Cs0 f25 992 98 509 328 #arcP
Cs0 f25 1 992 328 #addKink
Cs0 f25 1 0.2352084772863538 0 0 #arcLabel
Cs0 f24 expr out #txt
Cs0 f24 952 66 509 328 #arcP
Cs0 f24 1 952 328 #addKink
Cs0 f24 1 0.31461942432474527 0 0 #arcLabel
>Proto Cs0 .type ch.ivyteam.ivy.workflow.ui.cases.CaseHierarchyLayoutSelect.CaseHierarchyLayoutSelectData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 .ui2RdDataAction 'out.caseHierarchyLayoutPrefferedIndex=panel.caseHierarchyLayoutComboBox.selectedIndex;
out.selectionEnabled=panel.caseHierarchyLayoutComboBox.enabled;
' #txt
>Proto Cs0 .rdData2UIAction 'panel.caseHierarchyLayoutComboBox.listData=in.caseHierarchyLayoutsList;
panel.caseHierarchyLayoutComboBox.selectedIndex=in.caseHierarchyLayoutPrefferedIndex;
panel.caseHierarchyLayoutComboBox.enabled=in.selectionEnabled;
' #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f0 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f4 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f6 tail #connect
Cs0 f6 head f4 mainIn #connect
Cs0 f7 mainOut f9 tail #connect
Cs0 f9 head f8 mainIn #connect
Cs0 f13 mainOut f18 tail #connect
Cs0 f18 head f17 in #connect
Cs0 f17 out f20 tail #connect
Cs0 f20 head f19 mainIn #connect
Cs0 f19 mainOut f16 tail #connect
Cs0 f16 head f14 mainIn #connect
Cs0 f17 out f21 tail #connect
Cs0 f21 head f14 mainIn #connect
Cs0 f10 mainOut f12 tail #connect
Cs0 f12 head f14 mainIn #connect
Cs0 f11 mainOut f15 tail #connect
Cs0 f15 head f14 mainIn #connect
Cs0 f22 mainOut f25 tail #connect
Cs0 f25 head f14 mainIn #connect
Cs0 f23 mainOut f24 tail #connect
Cs0 f24 head f14 mainIn #connect
