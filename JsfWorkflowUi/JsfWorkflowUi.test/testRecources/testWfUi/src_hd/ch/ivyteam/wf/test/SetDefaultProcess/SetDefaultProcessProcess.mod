[Ivy]
[>Created: Fri Sep 06 16:40:09 CEST 2013]
13FCE1265A910E9F 3.17 #module
>Proto >Proto Collection #zClass
Ss0 SetDefaultProcessProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @GridStep f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogProcessStart f5 '' #zField
Ss0 @RichDialogEnd f8 '' #zField
Ss0 @PushWFArc f10 '' #zField
>Proto Ss0 Ss0 SetDefaultProcessProcess #zField
Ss0 f0 guid 13FCE1265B88CB91 #txt
Ss0 f0 type ch.ivyteam.wf.test.SetDefaultProcess.SetDefaultProcessData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<java.lang.String processName> result;
' #txt
Ss0 f0 outParameterMapAction 'result.processName=in.library;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 86 54 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.ivyteam.wf.test.SetDefaultProcess.SetDefaultProcessData #txt
Ss0 f1 86 182 20 20 13 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 actionDecl 'ch.ivyteam.wf.test.SetDefaultProcess.SetDefaultProcessData out;
' #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 actionCode 'import java.util.LinkedHashSet;
import java.util.Set;
import java.util.ArrayList;
import ch.ivyteam.ivy.workflow.StandardProcessType;
import ch.ivyteam.ivy.workflow.IWorkflowContext;
import ch.ivyteam.ivy.workflow.WorkflowNavigationUtil;

Set libraries = new LinkedHashSet();
for (StandardProcessType processType : StandardProcessType.DEFAULT_PAGES_PROCESS_TYPES)
{
	libraries.addAll(ivy.wf.getAvailableStandardProcessImplementations(processType));
}
out.libraries.addAll(libraries);' #txt
Ss0 f3 type ch.ivyteam.wf.test.SetDefaultProcess.SetDefaultProcessData #txt
Ss0 f3 78 116 36 24 20 -2 #rect
Ss0 f3 @|StepIcon #fIcon
Ss0 f4 expr out #txt
Ss0 f4 96 74 96 116 #arcP
Ss0 f2 expr out #txt
Ss0 f2 96 140 96 182 #arcP
Ss0 f5 guid 13FCE17F262958BD #txt
Ss0 f5 type ch.ivyteam.wf.test.SetDefaultProcess.SetDefaultProcessData #txt
Ss0 f5 actionDecl 'ch.ivyteam.wf.test.SetDefaultProcess.SetDefaultProcessData out;
' #txt
Ss0 f5 actionTable 'out=in;
' #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selectDefaultProcess</name>
        <nameStyle>20,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 182 54 20 20 13 0 #rect
Ss0 f5 @|RichDialogProcessStartIcon #fIcon
Ss0 f8 type ch.ivyteam.wf.test.SetDefaultProcess.SetDefaultProcessData #txt
Ss0 f8 guid 13FCE1819332FCFE #txt
Ss0 f8 182 182 20 20 13 0 #rect
Ss0 f8 @|RichDialogEndIcon #fIcon
Ss0 f10 expr out #txt
Ss0 f10 192 74 192 182 #arcP
>Proto Ss0 .type ch.ivyteam.wf.test.SetDefaultProcess.SetDefaultProcessData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f0 mainOut f4 tail #connect
Ss0 f4 head f3 mainIn #connect
Ss0 f3 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f5 mainOut f10 tail #connect
Ss0 f10 head f8 mainIn #connect
