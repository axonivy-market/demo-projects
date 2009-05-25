[Ivy]
[>Created: Mon Apr 27 18:53:25 CEST 2009]
1199E63AF7C91AD7 3.11 #module
>Proto >Proto Collection #zClass
Ts0 TaskHierarchyLayoutSelectProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @RichDialogProcessStep f3 '' #zField
Ts0 @PushWFArc f4 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @RichDialogProcessStart f5 '' #zField
Ts0 @RichDialogFireEvent f6 '' #zField
Ts0 @RichDialogProcessEnd f7 '' #zField
Ts0 @RichDialogMethodStart f8 '' #zField
Ts0 @PushWFArc f9 '' #zField
Ts0 @PushWFArc f11 '' #zField
Ts0 @Alternative f12 '' #zField
Ts0 @PushWFArc f13 '' #zField
Ts0 @PushWFArc f10 '' #zField
Ts0 @PushWFArc f14 '' #zField
Ts0 @RichDialogProcessStart f15 '' #zField
Ts0 @RichDialogProcessEnd f16 '' #zField
Ts0 @PushWFArc f17 '' #zField
Ts0 @RichDialogInitStart f18 '' #zField
Ts0 @PushWFArc f19 '' #zField
Ts0 @RichDialogMethodStart f20 '' #zField
Ts0 @PushWFArc f21 '' #zField
Ts0 @RichDialogMethodStart f22 '' #zField
Ts0 @RichDialogMethodStart f23 '' #zField
Ts0 @PushWFArc f24 '' #zField
Ts0 @PushWFArc f25 '' #zField
>Proto Ts0 Ts0 TaskHierarchyLayoutSelectProcess #zField
Ts0 f0 guid 1199E6D3A852A3DF #txt
Ts0 f0 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f0 method start() #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 inActionCode 'out.taskHierarchyLayoutPrefferedIndex = -1;' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 embeddedRdInitializations '* ' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 94 62 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f1 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f1 91 331 26 26 14 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f3 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData out;
' #txt
Ts0 f3 actionTable 'out=in;
' #txt
Ts0 f3 actionCode 'import ch.ivyteam.ivy.workflow.ui.data.common.HierarchyLayout;
import ch.ivyteam.ivy.workflow.IPropertyFilter;



// task hierarchies 

HierarchyLayout layout1 = new HierarchyLayout();
// "/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout1ShortDesc"
layout1.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout1ShortDesc").toString();
layout1.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout1LongDesc").toString();

HierarchyLayout layout2 = new HierarchyLayout();
layout2.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout2ShortDesc").toString();
layout2.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout2LongDesc").toString();

HierarchyLayout layout3 = new HierarchyLayout();
layout3.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout3ShortDesc").toString();
layout3.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout3LongDesc").toString();

HierarchyLayout layout4 = new HierarchyLayout();
layout4.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout4ShortDesc").toString();
layout4.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout4LongDesc").toString();

HierarchyLayout layout5 = new HierarchyLayout();
layout5.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout5ShortDesc").toString();
layout5.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout5LongDesc").toString();

HierarchyLayout layout6 = new HierarchyLayout();
layout6.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout6ShortDesc").toString();
layout6.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout6LongDesc").toString();

HierarchyLayout layout7 = new HierarchyLayout();
layout7.shortDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout7ShortDesc").toString();
layout7.longDescription = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/tasksHierarchyLayout7LongDesc").toString();


out.tasksHierarchyLayoutsList.clear();
out.tasksHierarchyLayoutsList.addAll([layout1, layout2, layout3, layout4, layout5, layout6, layout7]);

out.selectionEnabled = true;' #txt
Ts0 f3 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the 
task hierarchy layouts,
by default selectionEnabled to true</name>
        <nameStyle>70,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 86 204 36 24 20 -2 #rect
Ts0 f3 @|RichDialogProcessStepIcon #fIcon
Ts0 f4 expr out #txt
Ts0 f4 104 82 104 204 #arcP
Ts0 f2 expr out #txt
Ts0 f2 104 228 104 331 #arcP
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>taskHierarchyLayoutSelected</name>
        <nameStyle>27,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f5 guid 1199E75186BD4E53 #txt
Ts0 f5 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f5 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData out;
' #txt
Ts0 f5 actionTable 'out=in;
' #txt
Ts0 f5 366 62 20 20 13 0 #rect
Ts0 f5 @|RichDialogProcessStartIcon #fIcon
Ts0 f6 actionCode panel.fireTaskHierarchyLayoutSelected(); #txt
Ts0 f6 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f6 fireEvent taskHierarchyLayoutSelected() #txt
Ts0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fire the 
taskHierarchyLayoutSelected</name>
        <nameStyle>37,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f6 358 228 36 24 20 -2 #rect
Ts0 f6 @|RichDialogFireEventIcon #fIcon
Ts0 f7 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f7 363 339 26 26 14 0 #rect
Ts0 f7 @|RichDialogProcessEndIcon #fIcon
Ts0 f8 guid 1199E75343761531 #txt
Ts0 f8 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f8 method getSelectedTaskHierarchyLayoutIndex() #txt
Ts0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f8 outParameterDecl '<java.lang.Number selectedIndex> result;
' #txt
Ts0 f8 outParameterMapAction 'result.selectedIndex=panel.tasksHierarchyLayoutComboBox.getSelectedIndex();
' #txt
Ts0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getSelectedTaskHierarchyLayoutIndex()</name>
        <nameStyle>37,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f8 606 102 20 20 13 0 #rect
Ts0 f8 @|RichDialogMethodStartIcon #fIcon
Ts0 f9 expr out #txt
Ts0 f9 616 122 389 352 #arcP
Ts0 f9 1 616 352 #addKink
Ts0 f9 0 0.8132013879756662 0 0 #arcLabel
Ts0 f11 expr out #txt
Ts0 f11 376 252 376 339 #arcP
Ts0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f12 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f12 362 130 28 28 14 0 #rect
Ts0 f12 @|AlternativeIcon #fIcon
Ts0 f13 expr out #txt
Ts0 f13 376 82 376 130 #arcP
Ts0 f10 expr in #txt
Ts0 f10 outCond 'panel.tasksHierarchyLayoutComboBox.getSelectedListEntry() != null' #txt
Ts0 f10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selected 
list entry != null</name>
        <nameStyle>28,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f10 376 158 376 228 #arcP
Ts0 f14 expr in #txt
Ts0 f14 390 144 388 349 #arcP
Ts0 f14 1 448 144 #addKink
Ts0 f14 2 448 336 #addKink
Ts0 f14 1 0.4382782980934161 0 0 #arcLabel
Ts0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f15 guid 1199E903DDE48D57 #txt
Ts0 f15 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f15 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData out;
' #txt
Ts0 f15 actionTable 'out=in;
' #txt
Ts0 f15 actionCode '/*
if (!out.tasksHierarchyLayoutsList.isEmpty())
{
	panel.tasksHierarchyLayoutComboBox.setSelectedIndex(in.taskHierarchyLayoutPrefferedIndex);	
}
*/' #txt
Ts0 f15 238 62 20 20 13 0 #rect
Ts0 f15 @|RichDialogProcessStartIcon #fIcon
Ts0 f16 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f16 235 331 26 26 14 0 #rect
Ts0 f16 @|RichDialogProcessEndIcon #fIcon
Ts0 f17 expr out #txt
Ts0 f17 248 82 248 331 #arcP
Ts0 f18 guid 1199E9CFC35928CF #txt
Ts0 f18 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f18 method start(Number) #txt
Ts0 f18 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number aTaskHierarchyLayoutPrefferedIndex> param = methodEvent.getInputArguments();
' #txt
Ts0 f18 inParameterMapAction 'out.taskHierarchyLayoutPrefferedIndex=param.aTaskHierarchyLayoutPrefferedIndex;
' #txt
Ts0 f18 outParameterDecl '<> result;
' #txt
Ts0 f18 embeddedRdInitializations '* ' #txt
Ts0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Number)</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f18 158 62 20 20 13 0 #rect
Ts0 f18 @|RichDialogInitStartIcon #fIcon
Ts0 f19 expr out #txt
Ts0 f19 163 81 109 204 #arcP
Ts0 f20 guid 1199F7907B2A33F9 #txt
Ts0 f20 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f20 method setSelectedTaskHierarchyLayoutIndex(Number) #txt
Ts0 f20 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number index> param = methodEvent.getInputArguments();
' #txt
Ts0 f20 inActionCode 'out.taskHierarchyLayoutPrefferedIndex = -1;
if(param.index >= 0 && param.index <= 6){
	out.taskHierarchyLayoutPrefferedIndex = param.index;
}
	' #txt
Ts0 f20 outParameterDecl '<> result;
' #txt
Ts0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setSelectedTaskHierarchyLayoutIndex(Number)</name>
        <nameStyle>43,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f20 566 62 20 20 13 0 #rect
Ts0 f20 @|RichDialogMethodStartIcon #fIcon
Ts0 f21 expr out #txt
Ts0 f21 576 82 389 352 #arcP
Ts0 f21 1 576 352 #addKink
Ts0 f21 1 0.21125612831951765 0 0 #arcLabel
Ts0 f22 guid 11E3F5B142B4E733 #txt
Ts0 f22 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f22 method getSelectionEnabled() #txt
Ts0 f22 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f22 outParameterDecl '<java.lang.Boolean selectionEnabled> result;
' #txt
Ts0 f22 outParameterMapAction 'result.selectionEnabled=in.selectionEnabled;
' #txt
Ts0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getSelectionEnabled()</name>
        <nameStyle>21,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f22 854 102 20 20 13 0 #rect
Ts0 f22 @|RichDialogMethodStartIcon #fIcon
Ts0 f23 guid 11E3F5B1D1475EF1 #txt
Ts0 f23 type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
Ts0 f23 method setSelectionEnabled(Boolean) #txt
Ts0 f23 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Boolean selectionEnabled> param = methodEvent.getInputArguments();
' #txt
Ts0 f23 inParameterMapAction 'out.selectionEnabled=param.selectionEnabled;
' #txt
Ts0 f23 outParameterDecl '<> result;
' #txt
Ts0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setSelectionEnabled(Boolean)</name>
        <nameStyle>28,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f23 814 62 20 20 13 0 #rect
Ts0 f23 @|RichDialogMethodStartIcon #fIcon
Ts0 f24 expr out #txt
Ts0 f24 824 82 389 352 #arcP
Ts0 f24 1 824 352 #addKink
Ts0 f24 1 0.20669872963384547 0 0 #arcLabel
Ts0 f25 expr out #txt
Ts0 f25 864 122 389 352 #arcP
Ts0 f25 1 864 352 #addKink
Ts0 f25 1 0.26798098234377654 0 0 #arcLabel
>Proto Ts0 .type ch.ivyteam.ivy.workflow.ui.task.TaskHierarchyLayoutSelect.TaskHierarchyLayoutSelectData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 .ui2RdDataAction 'out.taskHierarchyLayoutPrefferedIndex=panel.tasksHierarchyLayoutComboBox.selectedIndex;
' #txt
>Proto Ts0 .rdData2UIAction 'panel.tasksHierarchyLayoutComboBox.enabled=in.selectionEnabled;
panel.tasksHierarchyLayoutComboBox.listData=in.tasksHierarchyLayoutsList;
panel.tasksHierarchyLayoutComboBox.selectedIndex=in.taskHierarchyLayoutPrefferedIndex;
' #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f4 tail #connect
Ts0 f4 head f3 mainIn #connect
Ts0 f3 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
Ts0 f8 mainOut f9 tail #connect
Ts0 f9 head f7 mainIn #connect
Ts0 f6 mainOut f11 tail #connect
Ts0 f11 head f7 mainIn #connect
Ts0 f5 mainOut f13 tail #connect
Ts0 f13 head f12 in #connect
Ts0 f12 out f10 tail #connect
Ts0 f10 head f6 mainIn #connect
Ts0 f12 out f14 tail #connect
Ts0 f14 head f7 mainIn #connect
Ts0 f15 mainOut f17 tail #connect
Ts0 f17 head f16 mainIn #connect
Ts0 f18 mainOut f19 tail #connect
Ts0 f19 head f3 mainIn #connect
Ts0 f20 mainOut f21 tail #connect
Ts0 f21 head f7 mainIn #connect
Ts0 f23 mainOut f24 tail #connect
Ts0 f24 head f7 mainIn #connect
Ts0 f22 mainOut f25 tail #connect
Ts0 f25 head f7 mainIn #connect
