[Ivy]
[>Created: Wed Jan 27 10:15:07 CET 2016]
13F2E0370AA5B84E 3.18 #module
>Proto >Proto Collection #zClass
Ts0 TaskHistoryProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @RichDialogMethodStart f5 '' #zField
Ts0 @GridStep f8 '' #zField
Ts0 @PushWFArc f10 '' #zField
Ts0 @PushWFArc f9 '' #zField
Ts0 @GridStep f4 '' #zField
Ts0 @PushWFArc f6 '' #zField
Ts0 @RichDialogProcessEnd f11 '' #zField
Ts0 @PushWFArc f2 '' #zField
>Proto Ts0 Ts0 TaskHistoryProcess #zField
Ts0 f0 guid 13F2E0370C9B06E8 #txt
Ts0 f0 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f0 method start() #txt
Ts0 f0 disableUIEvents true #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ts0 f0 83 51 26 26 -16 15 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f0 -1|-1|-9671572 #nodeStyle
Ts0 f1 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f1 339 51 26 26 0 12 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f1 -1|-1|-9671572 #nodeStyle
Ts0 f5 guid 13F75DB798E48053 #txt
Ts0 f5 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f5 method update() #txt
Ts0 f5 disableUIEvents false #txt
Ts0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f5 outParameterDecl '<> result;
' #txt
Ts0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ts0 f5 83 147 26 26 -23 12 #rect
Ts0 f5 @|RichDialogMethodStartIcon #fIcon
Ts0 f5 -1|-1|-9671572 #nodeStyle
Ts0 f8 actionDecl 'ch.ivyteam.wf.history.TaskHistory.TaskHistoryData out;
' #txt
Ts0 f8 actionTable 'out=in;
' #txt
Ts0 f8 actionCode 'import ch.ivyteam.ivy.workflow.WorkflowPriority;

in.tasks.setDataTableId("taskHistoryForm:taskHistoryTable");
out.prios = WorkflowPriority.values();' #txt
Ts0 f8 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filter default</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f8 168 42 112 44 -31 -8 #rect
Ts0 f8 @|StepIcon #fIcon
Ts0 f8 -1|-1|-9671572 #nodeStyle
Ts0 f10 expr out #txt
Ts0 f10 109 64 168 64 #arcP
Ts0 f9 expr out #txt
Ts0 f9 280 64 339 64 #arcP
Ts0 f4 actionDecl 'ch.ivyteam.wf.history.TaskHistory.TaskHistoryData out;
' #txt
Ts0 f4 actionTable 'out=in;
' #txt
Ts0 f4 actionCode 'import ch.ivyteam.ivy.security.IRole;

out.roleList.clear();
List roles = ivy.session.getSessionUser().getAllRoles();
for(IRole role: roles)
{
	out.roleList.add(role);
}' #txt
Ts0 f4 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>role list</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f4 168 138 112 44 -20 -8 #rect
Ts0 f4 @|StepIcon #fIcon
Ts0 f4 -1|-1|-9671572 #nodeStyle
Ts0 f6 expr out #txt
Ts0 f6 109 160 168 160 #arcP
Ts0 f11 type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
Ts0 f11 339 147 26 26 0 12 #rect
Ts0 f11 @|RichDialogProcessEndIcon #fIcon
Ts0 f11 -1|-1|-9671572 #nodeStyle
Ts0 f2 expr out #txt
Ts0 f2 280 160 339 160 #arcP
>Proto Ts0 .type ch.ivyteam.wf.history.TaskHistory.TaskHistoryData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f10 tail #connect
Ts0 f10 head f8 mainIn #connect
Ts0 f8 mainOut f9 tail #connect
Ts0 f9 head f1 mainIn #connect
Ts0 f5 mainOut f6 tail #connect
Ts0 f6 head f4 mainIn #connect
Ts0 f4 mainOut f2 tail #connect
Ts0 f2 head f11 mainIn #connect
