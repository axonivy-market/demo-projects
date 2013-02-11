[Ivy]
[>Created: Mon Feb 11 10:34:55 CET 2013]
13C6127AB9912FE5 3.17 #module
>Proto >Proto Collection #zClass
Ts0 TaskDetailsProcess Big #zClass
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
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @RichDialogInitStart f3 '' #zField
Ts0 @RichDialogProcessStart f0 '' #zField
Ts0 @RichDialogProcessStart f6 '' #zField
Ts0 @RichDialogProcessStart f9 '' #zField
Ts0 @RichDialogProcessStart f12 '' #zField
Ts0 @RichDialogProcessStart f18 '' #zField
Ts0 @RichDialogProcessStep f21 '' #zField
Ts0 @PushWFArc f22 '' #zField
Ts0 @RichDialogProcessStep f23 '' #zField
Ts0 @PushWFArc f24 '' #zField
Ts0 @RichDialogProcessStep f25 '' #zField
Ts0 @RichDialogProcessStep f26 '' #zField
Ts0 @RichDialogProcessStep f27 '' #zField
Ts0 @PushWFArc f28 '' #zField
Ts0 @RichDialogProcessStep f29 '' #zField
Ts0 @RichDialogProcessStep f31 '' #zField
Ts0 @PushWFArc f32 '' #zField
Ts0 @PushWFArc f33 '' #zField
Ts0 @PushWFArc f34 '' #zField
Ts0 @RichDialogEnd f35 '' #zField
Ts0 @PushWFArc f36 '' #zField
Ts0 @PushWFArc f5 '' #zField
Ts0 @PushWFArc f8 '' #zField
Ts0 @PushWFArc f11 '' #zField
Ts0 @PushWFArc f14 '' #zField
Ts0 @RichDialogProcessStart f7 '' #zField
Ts0 @PushWFArc f15 '' #zField
Ts0 @RichDialogProcessStep f10 '' #zField
Ts0 @PushWFArc f13 '' #zField
Ts0 @PushWFArc f4 '' #zField
Ts0 @PushWFArc f16 '' #zField
>Proto Ts0 Ts0 TaskDetailsProcess #zField
Ts0 f1 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f1 86 214 20 20 13 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f3 guid 13C61288A73C1485 #txt
Ts0 f3 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f3 method start(htmlwfui.Data) #txt
Ts0 f3 disableUIEvents true #txt
Ts0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Data data> param = methodEvent.getInputArguments();
' #txt
Ts0 f3 inParameterMapAction 'out.data=param.data;
' #txt
Ts0 f3 outParameterDecl '<> result;
' #txt
Ts0 f3 embeddedRdInitializations '* ' #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 86 54 20 20 13 0 #rect
Ts0 f3 @|RichDialogInitStartIcon #fIcon
Ts0 f0 guid 13C613A4504BF6FA #txt
Ts0 f0 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f0 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f0 actionTable 'out=in;
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>back</name>
    </language>
</elementInfo>
' #txt
Ts0 f0 854 54 20 20 13 0 #rect
Ts0 f0 @|RichDialogProcessStartIcon #fIcon
Ts0 f6 guid 13C613ACA792C512 #txt
Ts0 f6 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f6 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f6 actionTable 'out=in;
' #txt
Ts0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showFormArchive</name>
    </language>
</elementInfo>
' #txt
Ts0 f6 726 54 20 20 13 0 #rect
Ts0 f6 @|RichDialogProcessStartIcon #fIcon
Ts0 f9 guid 13C613ADCB1E385F #txt
Ts0 f9 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f9 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f9 actionTable 'out=in;
' #txt
Ts0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addNote</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f9 598 54 20 20 13 0 #rect
Ts0 f9 @|RichDialogProcessStartIcon #fIcon
Ts0 f12 guid 13C613AED256F624 #txt
Ts0 f12 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f12 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f12 actionTable 'out=in;
' #txt
Ts0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>changeExpiry</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f12 470 54 20 20 13 0 #rect
Ts0 f12 @|RichDialogProcessStartIcon #fIcon
Ts0 f18 guid 13C613B0D5296F62 #txt
Ts0 f18 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f18 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f18 actionTable 'out=in;
' #txt
Ts0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteCase</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f18 214 54 20 20 13 0 #rect
Ts0 f18 @|RichDialogProcessStartIcon #fIcon
Ts0 f21 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f21 actionTable 'out=in;
out.data.temp.description=ivy.cms.co("/explainTexts/TaskDetailsDescription") + "[" + in.data.tmpTask.getId() + "]" + " " + in.data.tmpTask.getName();
' #txt
Ts0 f21 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>description</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f21 78 100 36 24 20 -2 #rect
Ts0 f21 @|RichDialogProcessStepIcon #fIcon
Ts0 f22 expr out #txt
Ts0 f22 96 74 96 100 #arcP
Ts0 f23 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f23 actionTable 'out=in;
out.data.option="back";
' #txt
Ts0 f23 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>option</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f23 846 100 36 24 20 -2 #rect
Ts0 f23 @|RichDialogProcessStepIcon #fIcon
Ts0 f24 expr out #txt
Ts0 f24 864 74 864 100 #arcP
Ts0 f25 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f25 actionTable 'out=in;
out.data.option="showFormArchive";
' #txt
Ts0 f25 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>option</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f25 718 100 36 24 20 -2 #rect
Ts0 f25 @|RichDialogProcessStepIcon #fIcon
Ts0 f26 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f26 actionTable 'out=in;
out.data.option="addNote";
' #txt
Ts0 f26 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>option</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f26 590 100 36 24 20 -2 #rect
Ts0 f26 @|RichDialogProcessStepIcon #fIcon
Ts0 f27 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f27 actionTable 'out=in;
out.data.option="changeExpiry";
' #txt
Ts0 f27 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>option</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f27 462 100 36 24 20 -2 #rect
Ts0 f27 @|RichDialogProcessStepIcon #fIcon
Ts0 f28 expr out #txt
Ts0 f28 480 74 480 100 #arcP
Ts0 f29 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f29 actionTable 'out=in;
out.data.option="delegateCase";
' #txt
Ts0 f29 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>option</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f29 334 100 36 24 20 -2 #rect
Ts0 f29 @|RichDialogProcessStepIcon #fIcon
Ts0 f31 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f31 actionTable 'out=in;
' #txt
Ts0 f31 actionCode 'import ch.ivyteam.ivy.workflow.TaskState;
if(in.data.#tmpTask!=null && in.data.tmpTask.getState()==TaskState.RESUMED)
{
	in.data.tmpTask.reset();
}	' #txt
Ts0 f31 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Resumed task 
reset</name>
        <nameStyle>19
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f31 206 100 36 24 20 -2 #rect
Ts0 f31 @|RichDialogProcessStepIcon #fIcon
Ts0 f32 expr out #txt
Ts0 f32 224 74 224 100 #arcP
Ts0 f33 expr out #txt
Ts0 f33 608 74 608 100 #arcP
Ts0 f34 expr out #txt
Ts0 f34 736 74 736 100 #arcP
Ts0 f35 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f35 guid 13CAED9FE0C4DD0A #txt
Ts0 f35 598 150 20 20 13 0 #rect
Ts0 f35 @|RichDialogEndIcon #fIcon
Ts0 f36 expr out #txt
Ts0 f36 864 124 618 160 #arcP
Ts0 f36 1 864 160 #addKink
Ts0 f36 1 0.4218298796322715 0 0 #arcLabel
Ts0 f5 expr out #txt
Ts0 f5 736 124 618 160 #arcP
Ts0 f5 1 736 160 #addKink
Ts0 f5 1 0.37195297659995497 0 0 #arcLabel
Ts0 f8 expr out #txt
Ts0 f8 608 124 608 150 #arcP
Ts0 f8 0 0.1231499429749864 0 0 #arcLabel
Ts0 f11 expr out #txt
Ts0 f11 480 124 598 160 #arcP
Ts0 f11 1 480 160 #addKink
Ts0 f11 0 0.8177973212926728 0 0 #arcLabel
Ts0 f14 expr out #txt
Ts0 f14 352 124 598 160 #arcP
Ts0 f14 1 352 160 #addKink
Ts0 f14 1 0.37265249860086086 0 0 #arcLabel
Ts0 f7 guid 13CB001901D35738 #txt
Ts0 f7 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f7 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f7 actionTable 'out=in;
' #txt
Ts0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delegateCase</name>
    </language>
</elementInfo>
' #txt
Ts0 f7 342 54 20 20 13 0 #rect
Ts0 f7 @|RichDialogProcessStartIcon #fIcon
Ts0 f15 expr out #txt
Ts0 f15 352 74 352 100 #arcP
Ts0 f10 actionDecl 'htmlwfui.TaskDetails.TaskDetailsData out;
' #txt
Ts0 f10 actionTable 'out=in;
' #txt
Ts0 f10 actionCode 'import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.IWorkflowSession;

ITask task = in.data.tmpTask;
TaskState state =null;

	IWorkflowSession ivySession = in.data.wfSession;	
	boolean hasPageArchivePermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_PAGE_ARCHIVE_READ_ALL);
	boolean hasResetPermission =  ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_RESET);
	boolean hasDelegatePermission =  ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.DELEGATE_TASKS);
	boolean hasTaskWriteExpiryPermission =  ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_WRITE_EXPIRY_ACTIVATOR);


state = task.getState();

if(state==TaskState.RESUMED && hasResetPermission) 
		{
			in.resetLink = false;
		} else {
			in.resetLink = true;
		} 
		if (state==TaskState.DONE || state==TaskState.DESTROYED || state==TaskState.RESUMED || state==TaskState.FAILED || !hasDelegatePermission)	
		{ 
			in.delegateLink = true;
		} else { 
			in.delegateLink = false;
		}
		if (state==TaskState.DONE || state==TaskState.DESTROYED || state==TaskState.RESUMED || state==TaskState.FAILED || !hasTaskWriteExpiryPermission)	
		{ 
			in.changeExpiryLink = true;
		} else { 
			in.changeExpiryLink = false;
		}
		if (state==TaskState.DONE || state==TaskState.DESTROYED || state==TaskState.RESUMED || state==TaskState.FAILED)	
		{ 
			in.addNoteLink = true;
		} else { 
			in.addNoteLink = false;
		}
		if (hasPageArchivePermission)	
		{ 
			in.archiveLink = false;
		} else { 
			in.archiveLink = true;
		}' #txt
Ts0 f10 type htmlwfui.TaskDetails.TaskDetailsData #txt
Ts0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enable/disable links</name>
        <nameStyle>20
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f10 78 156 36 24 20 -2 #rect
Ts0 f10 @|RichDialogProcessStepIcon #fIcon
Ts0 f13 expr out #txt
Ts0 f13 96 124 96 156 #arcP
Ts0 f4 expr out #txt
Ts0 f4 96 180 96 214 #arcP
Ts0 f16 expr out #txt
Ts0 f16 224 124 114 168 #arcP
Ts0 f16 1 224 168 #addKink
Ts0 f16 1 0.4220812200904034 0 0 #arcLabel
>Proto Ts0 .type htmlwfui.TaskDetails.TaskDetailsData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f3 mainOut f22 tail #connect
Ts0 f22 head f21 mainIn #connect
Ts0 f0 mainOut f24 tail #connect
Ts0 f24 head f23 mainIn #connect
Ts0 f12 mainOut f28 tail #connect
Ts0 f28 head f27 mainIn #connect
Ts0 f18 mainOut f32 tail #connect
Ts0 f32 head f31 mainIn #connect
Ts0 f9 mainOut f33 tail #connect
Ts0 f33 head f26 mainIn #connect
Ts0 f6 mainOut f34 tail #connect
Ts0 f34 head f25 mainIn #connect
Ts0 f23 mainOut f36 tail #connect
Ts0 f36 head f35 mainIn #connect
Ts0 f25 mainOut f5 tail #connect
Ts0 f5 head f35 mainIn #connect
Ts0 f26 mainOut f8 tail #connect
Ts0 f8 head f35 mainIn #connect
Ts0 f27 mainOut f11 tail #connect
Ts0 f11 head f35 mainIn #connect
Ts0 f29 mainOut f14 tail #connect
Ts0 f14 head f35 mainIn #connect
Ts0 f7 mainOut f15 tail #connect
Ts0 f15 head f29 mainIn #connect
Ts0 f21 mainOut f13 tail #connect
Ts0 f13 head f10 mainIn #connect
Ts0 f10 mainOut f4 tail #connect
Ts0 f4 head f1 mainIn #connect
Ts0 f31 mainOut f16 tail #connect
Ts0 f16 head f10 mainIn #connect
