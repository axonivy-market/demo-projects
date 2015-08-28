[Ivy]
[>Created: Wed Mar 30 16:33:48 CEST 2011]
12B80A4ACE6407BD 3.17 #module
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
Ts0 @RichDialogProcessStart f55 '' #zField
Ts0 @RichDialogProcessEnd f56 '' #zField
Ts0 @RichDialogMethodStart f114 '' #zField
Ts0 @RichDialogProcessStart f27 '' #zField
Ts0 @RichDialogEnd f210 '' #zField
Ts0 @PushWFArc f71 '' #zField
Ts0 @RichDialogProcessStep f63 '' #zField
Ts0 @RichDialogProcessStart f54 '' #zField
Ts0 @Alternative f106 '' #zField
Ts0 @RichDialogProcessStep f158 '' #zField
Ts0 @RichDialogProcessStep f159 '' #zField
Ts0 @RichDialogProcessStep f168 '' #zField
Ts0 @PushWFArc f170 '' #zField
Ts0 @PushWFArc f188 '' #zField
Ts0 @PushWFArc f189 '' #zField
Ts0 @RichDialogProcessStep f10 '' #zField
Ts0 @PushWFArc f15 '' #zField
Ts0 @RichDialogProcessStep f180 '' #zField
Ts0 @PushWFArc f134 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @PushWFArc f7 '' #zField
Ts0 @PushWFArc f5 '' #zField
Ts0 @RichDialogProcessEnd f13 '' #zField
Ts0 @PushWFArc f12 '' #zField
Ts0 @PushWFArc f3 '' #zField
Ts0 @PushWFArc f4 '' #zField
Ts0 @PushWFArc f6 '' #zField
Ts0 @PushWFArc f11 '' #zField
Ts0 @PushWFArc f16 '' #zField
Ts0 @PushWFArc f17 '' #zField
Ts0 @PushWFArc f9 '' #zField
>Proto Ts0 Ts0 TaskInformationDisplayProcess #zField
Ts0 f0 guid 116A9C07145A35CE #txt
Ts0 f0 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
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
Ts0 f1 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f1 123 187 26 26 14 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f14 guid 11850D8CF1E93548 #txt
Ts0 f14 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f14 method start(ch.ivyteam.ivy.workflow.ITask,Boolean) #txt
Ts0 f14 disableUIEvents true #txt
Ts0 f14 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ITask aTask,java.lang.Boolean hasWfAdministratorPermissions> param = methodEvent.getInputArguments();
' #txt
Ts0 f14 inActionCode 'out.task = param.aTask;
out.taskIdentifier = param.aTask.getId();
out.hasWfAdministratorPermissions = param.hasWfAdministratorPermissions;' #txt
Ts0 f14 outParameterDecl '<> result;
' #txt
Ts0 f14 embeddedRdInitializations '{/taskDetailsDisplayRDC {/fieldName "taskDetailsDisplayRDC"/startMethod "start()"/parameterMapping ""/initScript "// param.aTask = in.task;"/userContext * }/workflowEventsDisplayListRDC {/fieldName "workflowEventsDisplayListRDC"/startMethod "start()"/parameterMapping ""/initScript ""/userContext * }/caseDetailsDisplayRDC {/fieldName "caseDetailsDisplayRDC"/startMethod "start()"/parameterMapping ""/initScript ""/userContext * }/intermediateEventDisplayRDC {/fieldName "intermediateEventDisplayRDC"/startMethod "start()"/parameterMapping ""/initScript ""/userContext * }}' #txt
Ts0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ITask,Boolean)</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f14 126 46 20 20 13 0 #rect
Ts0 f14 @|RichDialogInitStartIcon #fIcon
Ts0 f55 guid 118C1E2505A9216C #txt
Ts0 f55 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f55 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData out;
' #txt
Ts0 f55 actionTable 'out=in;
' #txt
Ts0 f55 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh</name>
        <nameStyle>7,5,6,9
</nameStyle>
        <desc>Refresh the Rich Dialog in expanded task panes under the current selected tab</desc>
    </language>
</elementInfo>
' #txt
Ts0 f55 790 46 20 20 13 0 #rect
Ts0 f55 @|RichDialogProcessStartIcon #fIcon
Ts0 f56 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f56 867 307 26 26 14 0 #rect
Ts0 f56 @|RichDialogProcessEndIcon #fIcon
Ts0 f114 guid 118E5F311E7C94E5 #txt
Ts0 f114 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f114 method refresh() #txt
Ts0 f114 disableUIEvents false #txt
Ts0 f114 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Ts0 f114 510 46 20 20 13 0 #rect
Ts0 f114 @|RichDialogMethodStartIcon #fIcon
Ts0 f27 guid 11B7A82C0DBAE332 #txt
Ts0 f27 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f27 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData out;
' #txt
Ts0 f27 actionTable 'out=in;
' #txt
Ts0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f27 718 126 20 20 13 0 #rect
Ts0 f27 @|RichDialogProcessStartIcon #fIcon
Ts0 f210 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f210 guid 12927317941C4346 #txt
Ts0 f210 38 190 20 20 13 0 #rect
Ts0 f210 @|RichDialogEndIcon #fIcon
Ts0 f71 expr out #txt
Ts0 f71 48 66 48 190 #arcP
Ts0 f63 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData out;
' #txt
Ts0 f63 actionTable 'out=in;
' #txt
Ts0 f63 actionCode 'import ch.ivyteam.ivy.workflow.TaskState;


String rootValue = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/details");
out.detailTree = new Tree();
out.detailTree.info = "root";
out.detailTree.value = rootValue;


Tree taskDetail = new Tree();
taskDetail.info = "ITask";
taskDetail.value = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/task");
taskDetail.setMayHaveChildren(false);

out.detailTree.add(taskDetail);


if (in.hasWfAdministratorPermissions && in.task.getState().compareTo(TaskState.WAITING_FOR_INTERMEDIATE_EVENT) == 0)
{
	Tree intermediateEventDetail = new Tree();
	intermediateEventDetail.info = TaskState.WAITING_FOR_INTERMEDIATE_EVENT.name();
	intermediateEventDetail.value = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/intermediateEventInformation");
	intermediateEventDetail.setMayHaveChildren(false);
	
	out.detailTree.add(intermediateEventDetail);
}


Tree caseDetail = new Tree();
caseDetail.info = "ICase";
caseDetail.value = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/case");
caseDetail.setMayHaveChildren(false);

out.detailTree.add(caseDetail);



if (in.hasWfAdministratorPermissions)
{	
	Tree workflowEventDetail = new Tree();
	workflowEventDetail.info = "IWorkflowEvent";
	workflowEventDetail.value = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/case/plainStrings/caseWorkflowEvents");
	workflowEventDetail.setMayHaveChildren(false);
	
	out.detailTree.add(workflowEventDetail);		
}' #txt
Ts0 f63 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f63 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the detail tree 
with task, case, case history nodes</name>
        <nameStyle>58,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f63 118 116 36 24 20 -2 #rect
Ts0 f63 @|RichDialogProcessStepIcon #fIcon
Ts0 f54 guid 12AE7900826BD1EA #txt
Ts0 f54 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f54 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData out;
' #txt
Ts0 f54 actionTable 'out=in;
' #txt
Ts0 f54 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showDetail</name>
        <nameStyle>10,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f54 870 46 20 20 10 3 #rect
Ts0 f54 @|RichDialogProcessStartIcon #fIcon
Ts0 f106 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f106 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f106 866 90 28 28 14 0 #rect
Ts0 f106 @|AlternativeIcon #fIcon
Ts0 f158 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData out;
' #txt
Ts0 f158 actionTable 'out=in;
' #txt
Ts0 f158 actionCode '
panel.detailsCardPane.setSelectedComponent(panel.caseDetailsDisplayRDC);

panel.caseDetailsDisplayRDC.setCase(in.task.getCase());' #txt
Ts0 f158 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f158 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>caseDetails</name>
        <nameStyle>11,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f158 862 196 36 24 20 -2 #rect
Ts0 f158 @|RichDialogProcessStepIcon #fIcon
Ts0 f159 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData out;
' #txt
Ts0 f159 actionTable 'out=in;
' #txt
Ts0 f159 actionCode 'panel.detailsCardPane.setSelectedComponent(panel.taskDetailsDisplayRDC);

panel.taskDetailsDisplayRDC.setTask(in.task);' #txt
Ts0 f159 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f159 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>taskDetails</name>
        <nameStyle>11,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f159 982 196 36 24 20 -2 #rect
Ts0 f159 @|RichDialogProcessStepIcon #fIcon
Ts0 f168 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData out;
' #txt
Ts0 f168 actionTable 'out=in;
' #txt
Ts0 f168 actionCode 'panel.detailsCardPane.setSelectedComponent(panel.workflowEventsDisplayListRDC);

panel.workflowEventsDisplayListRDC.setCase(in.task.getCase());' #txt
Ts0 f168 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f168 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>caseWorkflowEvents</name>
        <nameStyle>18,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f168 1102 196 36 24 20 -2 #rect
Ts0 f168 @|RichDialogProcessStepIcon #fIcon
Ts0 f170 expr in #txt
Ts0 f170 outCond "ICase".equals(panel.detailTree.getSelectedTreeNode().info) #txt
Ts0 f170 880 118 880 196 #arcP
Ts0 f188 expr in #txt
Ts0 f188 outCond "ITask".equals(panel.detailTree.getSelectedTreeNode().info) #txt
Ts0 f188 890 108 1000 196 #arcP
Ts0 f188 1 1000 152 #addKink
Ts0 f188 0 0.6266903856549708 0 0 #arcLabel
Ts0 f189 expr in #txt
Ts0 f189 outCond "IWorkflowEvent".equals(panel.detailTree.getSelectedTreeNode().info) #txt
Ts0 f189 892 106 1120 196 #arcP
Ts0 f189 1 1120 144 #addKink
Ts0 f189 0 0.6047091700032827 0 0 #arcLabel
Ts0 f10 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData out;
' #txt
Ts0 f10 actionTable 'out=in;
' #txt
Ts0 f10 actionCode 'panel.detailsCardPane.setSelectedComponent(panel.intermediateEventDisplayRDC);

panel.intermediateEventDisplayRDC.setIntermediateEvent(in.task.getIntermediateEvent());' #txt
Ts0 f10 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>intermediateEvent</name>
        <nameStyle>17,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f10 1270 196 36 24 20 -2 #rect
Ts0 f10 @|RichDialogProcessStepIcon #fIcon
Ts0 f15 expr in #txt
Ts0 f15 outCond ch.ivyteam.ivy.workflow.TaskState.WAITING_FOR_INTERMEDIATE_EVENT.name().equals(panel.detailTree.getSelectedTreeNode().info) #txt
Ts0 f15 893 105 1288 196 #arcP
Ts0 f15 1 1288 120 #addKink
Ts0 f15 0 0.5814785386284027 0 0 #arcLabel
Ts0 f180 actionDecl 'ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData out;
' #txt
Ts0 f180 actionTable 'out=in;
' #txt
Ts0 f180 actionCode 'List<Tree> children = in.detailTree.getChildren();


// if nothing is selected, then select the task detail node
if (!panel.detailTree.#selectedTreeNode is initialized)
{
	for (Tree child: children)
	{
		if (child.info.equals("ITask"))
		{
			// select this node
			panel.detailTree.setSelectedTreeNode(child);
			break;	
		}	
	}
}' #txt
Ts0 f180 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f180 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>select  task node 
on task detail</name>
        <nameStyle>7,7,9
26,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f180 710 196 36 24 20 -2 #rect
Ts0 f180 @|RichDialogProcessStepIcon #fIcon
Ts0 f134 expr out #txt
Ts0 f134 880 66 880 90 #arcP
Ts0 f2 expr out #txt
Ts0 f2 728 146 728 196 #arcP
Ts0 f2 0 0.49632571624516497 0 0 #arcLabel
Ts0 f7 expr out #txt
Ts0 f7 136 140 136 187 #arcP
Ts0 f5 expr out #txt
Ts0 f5 136 66 136 116 #arcP
Ts0 f13 type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
Ts0 f13 718 270 20 20 13 0 #rect
Ts0 f13 @|RichDialogProcessEndIcon #fIcon
Ts0 f12 expr out #txt
Ts0 f12 728 220 728 270 #arcP
Ts0 f3 expr out #txt
Ts0 f3 1288 220 892 319 #arcP
Ts0 f3 1 1288 296 #addKink
Ts0 f3 1 0.2924802588445604 0 0 #arcLabel
Ts0 f4 expr in #txt
Ts0 f4 894 104 893 320 #arcP
Ts0 f4 1 1416 104 #addKink
Ts0 f4 2 1416 320 #addKink
Ts0 f4 0 0.751796185994187 0 0 #arcLabel
Ts0 f6 expr out #txt
Ts0 f6 880 220 880 307 #arcP
Ts0 f6 0 0.4500708113411254 0 0 #arcLabel
Ts0 f11 expr out #txt
Ts0 f11 1000 220 892 315 #arcP
Ts0 f11 1 1000 280 #addKink
Ts0 f11 1 0.0030597917202667808 0 0 #arcLabel
Ts0 f16 expr out #txt
Ts0 f16 1120 220 892 318 #arcP
Ts0 f16 1 1120 288 #addKink
Ts0 f16 1 0.748593142306622 0 0 #arcLabel
Ts0 f17 expr out #txt
Ts0 f17 800 66 866 104 #arcP
Ts0 f17 1 800 104 #addKink
Ts0 f17 1 0.4430720391722461 0 0 #arcLabel
Ts0 f9 expr out #txt
Ts0 f9 520 66 866 104 #arcP
Ts0 f9 1 520 104 #addKink
Ts0 f9 1 0.25049780092226975 0 0 #arcLabel
>Proto Ts0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>354</swimlaneSize>
    <swimlaneSize>339</swimlaneSize>
    <swimlaneSize>742</swimlaneSize>
    <swimlaneColor>-16711732</swimlaneColor>
    <swimlaneColor>-16737895</swimlaneColor>
    <swimlaneColor>-6684673</swimlaneColor>
</elementInfo>
' #txt
>Proto Ts0 .type ch.ivyteam.ivy.workflow.ui.task.DetailsWrapper.DetailsWrapperData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 .rdData2UIAction 'panel.detailTree.treeData=in.detailTree;
' #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f71 tail #connect
Ts0 f71 head f210 mainIn #connect
Ts0 f106 out f170 tail #connect
Ts0 f170 head f158 mainIn #connect
Ts0 f106 out f188 tail #connect
Ts0 f188 head f159 mainIn #connect
Ts0 f106 out f189 tail #connect
Ts0 f189 head f168 mainIn #connect
Ts0 f106 out f15 tail #connect
Ts0 f15 head f10 mainIn #connect
Ts0 f54 mainOut f134 tail #connect
Ts0 f134 head f106 in #connect
Ts0 f27 mainOut f2 tail #connect
Ts0 f2 head f180 mainIn #connect
Ts0 f63 mainOut f7 tail #connect
Ts0 f7 head f1 mainIn #connect
Ts0 f14 mainOut f5 tail #connect
Ts0 f5 head f63 mainIn #connect
Ts0 f180 mainOut f12 tail #connect
Ts0 f12 head f13 mainIn #connect
Ts0 f10 mainOut f3 tail #connect
Ts0 f3 head f56 mainIn #connect
Ts0 f106 out f4 tail #connect
Ts0 f4 head f56 mainIn #connect
Ts0 f158 mainOut f6 tail #connect
Ts0 f6 head f56 mainIn #connect
Ts0 f159 mainOut f11 tail #connect
Ts0 f11 head f56 mainIn #connect
Ts0 f168 mainOut f16 tail #connect
Ts0 f16 head f56 mainIn #connect
Ts0 f55 mainOut f17 tail #connect
Ts0 f17 head f106 in #connect
Ts0 f114 mainOut f9 tail #connect
Ts0 f9 head f106 in #connect
