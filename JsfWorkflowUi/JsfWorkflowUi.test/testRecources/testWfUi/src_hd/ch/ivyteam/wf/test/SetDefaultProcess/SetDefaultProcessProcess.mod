[Ivy]
13FCE1265A910E9F 3.28 #module
>Proto >Proto Collection #zClass
Ss0 SetDefaultProcessProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @UdInit f0 '' #zField
Ss0 @UdProcessEnd f1 '' #zField
Ss0 @GridStep f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @UdEvent f5 '' #zField
Ss0 @UdExitEnd f8 '' #zField
Ss0 @PushWFArc f10 '' #zField
>Proto Ss0 Ss0 SetDefaultProcessProcess #zField
Ss0 f0 guid 13FCE1265B88CB91 #txt
Ss0 f0 method start() #txt
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
Ss0 f0 83 51 26 26 -16 12 #rect
Ss0 f0 @|UdInitIcon #fIcon
Ss0 f0 -1|-1|-9671572 #nodeStyle
Ss0 f1 339 51 26 26 0 12 #rect
Ss0 f1 @|UdProcessEndIcon #fIcon
Ss0 f1 -1|-1|-9671572 #nodeStyle
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
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get libraries</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 168 42 112 44 -32 -8 #rect
Ss0 f3 @|StepIcon #fIcon
Ss0 f3 -1|-1|-9671572 #nodeStyle
Ss0 f4 expr out #txt
Ss0 f4 109 64 168 64 #arcP
Ss0 f2 expr out #txt
Ss0 f2 280 64 339 64 #arcP
Ss0 f5 guid 13FCE17F262958BD #txt
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
Ss0 f5 83 115 26 26 -59 12 #rect
Ss0 f5 @|UdEventIcon #fIcon
Ss0 f5 -1|-1|-9671572 #nodeStyle
Ss0 f8 211 115 26 26 0 12 #rect
Ss0 f8 @|UdExitEndIcon #fIcon
Ss0 f8 -1|-1|-9671572 #nodeStyle
Ss0 f10 expr out #txt
Ss0 f10 109 128 211 128 #arcP
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
