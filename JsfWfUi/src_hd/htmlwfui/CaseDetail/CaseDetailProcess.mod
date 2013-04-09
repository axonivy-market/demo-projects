[Ivy]
[>Created: Tue Apr 09 16:22:54 CEST 2013]
13CB4B91160DDDB1 3.17 #module
>Proto >Proto Collection #zClass
Cs0 CaseDetailProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @GridStep f33 '' #zField
Cs0 @GridStep f34 '' #zField
Cs0 @GridStep f4 '' #zField
Cs0 @RichDialogEnd f11 '' #zField
Cs0 @GridStep f29 '' #zField
Cs0 @GridStep f35 '' #zField
Cs0 @PushWFArc f23 '' #zField
Cs0 @PushWFArc f37 '' #zField
Cs0 @PushWFArc f38 '' #zField
Cs0 @PushWFArc f39 '' #zField
Cs0 @PushWFArc f40 '' #zField
Cs0 @RichDialogMethodStart f3 '' #zField
Cs0 @PushWFArc f6 '' #zField
Cs0 @Alternative f12 '' #zField
Cs0 @GridStep f31 '' #zField
Cs0 @RichDialogProcessEnd f5 '' #zField
Cs0 @GridStep f7 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @RichDialogProcessStart f1 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @RichDialogProcessStart f2 '' #zField
Cs0 @RichDialogProcessStart f19 '' #zField
Cs0 @PushWFArc f25 '' #zField
Cs0 @PushWFArc f16 '' #zField
Cs0 @RichDialogProcessStart f13 '' #zField
Cs0 @PushWFArc f22 '' #zField
Cs0 @GridStep f8 '' #zField
Cs0 @PushWFArc f9 '' #zField
Cs0 @PushWFArc f14 '' #zField
Cs0 @PushWFArc f21 '' #zField
Cs0 @GridStep f15 '' #zField
Cs0 @PushWFArc f17 '' #zField
Cs0 @PushWFArc f20 '' #zField
Cs0 @PushWFArc f26 '' #zField
Cs0 @RichDialogMethodStart f24 '' #zField
Cs0 @GridStep f27 '' #zField
Cs0 @PushWFArc f28 '' #zField
Cs0 @PushWFArc f30 '' #zField
>Proto Cs0 Cs0 CaseDetailProcess #zField
Cs0 f0 guid 13CB4B9119EF02D8 #txt
Cs0 f0 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f0 method start(htmlwfui.Data) #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Data data> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init_Start1</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 86 54 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f33 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f33 actionTable 'out=in;
out.data.option="taskDetail";
' #txt
Cs0 f33 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>option</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f33 494 100 36 24 20 -2 #rect
Cs0 f33 @|StepIcon #fIcon
Cs0 f34 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f34 actionTable 'out=in;
out.data.option="showFormArchive";
' #txt
Cs0 f34 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>option</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f34 590 100 36 24 20 -2 #rect
Cs0 f34 @|StepIcon #fIcon
Cs0 f4 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f4 actionTable 'out=in;
out.data.option="deleteCase";
' #txt
Cs0 f4 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>option</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f4 302 100 36 24 20 -2 #rect
Cs0 f4 @|StepIcon #fIcon
Cs0 f11 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f11 guid 13C3EB2458B52AA8 #txt
Cs0 f11 502 150 20 20 13 0 #rect
Cs0 f11 @|RichDialogEndIcon #fIcon
Cs0 f29 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f29 actionTable 'out=in;
out.data.option="addNote";
' #txt
Cs0 f29 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>option</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f29 398 100 36 24 20 -2 #rect
Cs0 f29 @|StepIcon #fIcon
Cs0 f35 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f35 actionTable 'out=in;
out.data.option="backToCaseList";
' #txt
Cs0 f35 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>option</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f35 686 100 36 24 20 -2 #rect
Cs0 f35 @|StepIcon #fIcon
Cs0 f23 expr out #txt
Cs0 f23 512 124 512 150 #arcP
Cs0 f37 expr out #txt
Cs0 f37 320 124 502 160 #arcP
Cs0 f37 1 320 160 #addKink
Cs0 f37 1 0.35143977130227677 0 0 #arcLabel
Cs0 f38 expr out #txt
Cs0 f38 416 124 502 160 #arcP
Cs0 f38 1 416 160 #addKink
Cs0 f38 1 0.22211704818171615 0 0 #arcLabel
Cs0 f39 expr out #txt
Cs0 f39 608 124 522 160 #arcP
Cs0 f39 1 608 160 #addKink
Cs0 f39 1 0.22526011366860438 0 0 #arcLabel
Cs0 f40 expr out #txt
Cs0 f40 704 124 522 160 #arcP
Cs0 f40 1 704 160 #addKink
Cs0 f40 1 0.35225135712187844 0 0 #arcLabel
Cs0 f3 guid 13CB4BB6F43CDF73 #txt
Cs0 f3 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f3 method taskDetail(Number) #txt
Cs0 f3 disableUIEvents false #txt
Cs0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number indx> param = methodEvent.getInputArguments();
' #txt
Cs0 f3 inParameterMapAction 'out.data.temp.n=param.indx;
' #txt
Cs0 f3 outParameterDecl '<> result;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Method_Start1</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 502 54 20 20 -37 -31 #rect
Cs0 f3 @|RichDialogMethodStartIcon #fIcon
Cs0 f6 expr out #txt
Cs0 f6 512 74 512 100 #arcP
Cs0 f12 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f12 82 98 28 28 14 0 #rect
Cs0 f12 @|AlternativeIcon #fIcon
Cs0 f31 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f31 actionTable 'out=in;
out.data.temp.description=ivy.cms.co("/explainTexts/CaseDetailsDescription") + "[" + in.data.tempCase.getId() + "]" + " " + in.data.tempCase.getName();
' #txt
Cs0 f31 actionCode 'import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.IWorkflowSession;

ICase icase = in.data.tempCase;

	IWorkflowSession ivySession = in.data.wfSession;	
	boolean hasPageArchivePermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_PAGE_ARCHIVE_READ_ALL);
	boolean hasCaseDestroyPermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.CASE_DESTROY);
	
		if (icase.getState()==CaseState.RUNNING && hasCaseDestroyPermission)	
		{ 
			in.deleteCaseLink = false;
		} else { 
			in.deleteCaseLink = true;
		}
		if (icase.getState()==CaseState.RUNNING)	
		{ 
			in.addNoteLink = false;
		} else { 
			in.addNoteLink = true;
		}
		if (hasPageArchivePermission)	
		{ 
			in.archiveLink = false;
		} else { 
			in.archiveLink = true;
		}' #txt
Cs0 f31 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>description
enable/disable links</name>
        <nameStyle>32
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f31 78 276 36 24 23 -10 #rect
Cs0 f31 @|StepIcon #fIcon
Cs0 f5 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f5 86 382 20 20 13 0 #rect
Cs0 f5 @|RichDialogProcessEndIcon #fIcon
Cs0 f7 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f7 actionTable 'out=in;
' #txt
Cs0 f7 actionCode 'import ch.ivyteam.ivy.workflow.ICase;

import ch.ivyteam.ivy.workflow.ICase;

List<ICase> cases = in.data.cases;

for (int t=0; t<cases.size(); t++)
{
	ICase case = cases.get(t);
	if(case.getId() == in.data.temp.n)
	{
		out.data.tempCase = in.data.cases.get(t);
	}
}

out.data.tasks = out.data.tempCase.getTasks();' #txt
Cs0 f7 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get Details</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f7 78 164 36 24 20 -2 #rect
Cs0 f7 @|StepIcon #fIcon
Cs0 f10 expr in #txt
Cs0 f10 outCond 'in.data.option == ""' #txt
Cs0 f10 96 126 96 164 #arcP
Cs0 f10 0 0.19636843121335743 0 0 #arcLabel
Cs0 f1 guid 13CB4C06234F3DA0 #txt
Cs0 f1 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f1 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f1 actionTable 'out=in;
' #txt
Cs0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteCase</name>
    </language>
</elementInfo>
' #txt
Cs0 f1 310 54 20 20 -29 -26 #rect
Cs0 f1 @|RichDialogProcessStartIcon #fIcon
Cs0 f18 expr out #txt
Cs0 f18 320 74 320 100 #arcP
Cs0 f2 guid 13CB4C0D2E1B5B43 #txt
Cs0 f2 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f2 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f2 actionTable 'out=in;
' #txt
Cs0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addNote</name>
    </language>
</elementInfo>
' #txt
Cs0 f2 406 54 20 20 -22 -30 #rect
Cs0 f2 @|RichDialogProcessStartIcon #fIcon
Cs0 f19 guid 13CB4C0E76AEC51B #txt
Cs0 f19 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f19 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f19 actionTable 'out=in;
' #txt
Cs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showFormArchive</name>
    </language>
</elementInfo>
' #txt
Cs0 f19 598 54 20 20 -38 -32 #rect
Cs0 f19 @|RichDialogProcessStartIcon #fIcon
Cs0 f25 expr out #txt
Cs0 f25 416 74 416 100 #arcP
Cs0 f16 expr out #txt
Cs0 f16 608 74 608 100 #arcP
Cs0 f13 guid 13CB4C1801062641 #txt
Cs0 f13 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f13 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f13 actionTable 'out=in;
' #txt
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>backToCaseList</name>
    </language>
</elementInfo>
' #txt
Cs0 f13 694 54 20 20 13 0 #rect
Cs0 f13 @|RichDialogProcessStartIcon #fIcon
Cs0 f22 expr out #txt
Cs0 f22 704 74 704 100 #arcP
Cs0 f8 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 actionCode 'import ch.ivyteam.ivy.workflow.INote;
import ch.ivyteam.ivy.workflow.ICase;
import htmlwfui.Notes;

ICase icase = in.data.tempCase;
out.stateImage = "/images/casestate/"+icase.getState().intValue();
out.data.temp.msg = "";
out.notesTitel = "";

if(icase!=null && icase.hasNotes()){
	List notes = icase.getNotes();
	out.data.substitute.userList = [""];
	out.notesTitel = ivy.cms.co("/labels/caseNotes");
	
	for(INote note : notes)
	{
		Notes noteDetail = new Notes();
		noteDetail.description = "<b>" + note.getCreationTimestamp().format() + " " + note.getWritterName() + ":" + "</b>" + "<br>" + note.getMessage();
		noteDetail.id = note.getId();
		noteDetail.delete = note.getWritterName() != ivy.session.getSessionUserName();
		out.caseNotesList.add(noteDetail);
	}
}' #txt
Cs0 f8 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show notes</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f8 78 332 36 24 20 -2 #rect
Cs0 f8 @|StepIcon #fIcon
Cs0 f9 expr out #txt
Cs0 f9 96 300 96 332 #arcP
Cs0 f14 expr out #txt
Cs0 f14 96 356 96 382 #arcP
Cs0 f21 expr out #txt
Cs0 f21 96 74 96 98 #arcP
Cs0 f15 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f15 actionTable 'out=in;
' #txt
Cs0 f15 actionCode 'import ch.ivyteam.ivy.security.ISecurityMember;
import htmlwfui.TaskDetail;
import java.util.EnumSet;
import ch.ivyteam.ivy.workflow.ITask;

/*
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;
import javax.servlet.http.HttpServletRequest;
IQueryResult queryResult  = ivy.session.findWorkTasks(null, PropertyOrder.create(TaskProperty.ID, OrderDirection.DESCENDING), 
          0, 25, true, EnumSet.of(TaskState.SUSPENDED, TaskState.RESUMED, TaskState.PARKED));
List<ITask> tasks = queryResult.getResultList();
out.data.tasks = tasks;
*/

out.data.taskList.clear();
for (int t=0; t<out.data.tasks.size(); t++)
{
				ITask task = out.data.tasks.get(t);
				TaskDetail taskDetail = new TaskDetail();

				ISecurityMember taskActivator = task.getActivator();
				taskDetail.activator = taskActivator != null ? taskActivator.getMemberName() :  "";
				taskDetail.activatorIsUser = (taskActivator != null && taskActivator.isUser());
				taskDetail.delay = task.getDelayTimestamp();
				taskDetail.desc = task.getDescription() != null ? task.getDescription() : "";
				taskDetail.exp = task.getExpiryTimestamp();
				taskDetail.id = task.getId();
				taskDetail.hasNotes = task.hasNotes();
				taskDetail.name = task.getName();
				taskDetail.prio = task.getPriority().intValue();
				taskDetail.prioName = task.getPriority().toString();
				taskDetail.isIvy4Task = true;
				taskDetail.start = task.getStartTimestamp();
				taskDetail.state = task.getState().intValue();
				taskDetail.stateName=task.getState().toString();
				taskDetail.url = "/ivy/pro/"+task.getFullRequestPath()+"?taskId="+task.getId();
				taskDetail.user = task.getWorkerUserName();
				taskDetail.end = task.getEndTimestamp();
		
				out.data.taskList.add(taskDetail);
}' #txt
Cs0 f15 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getTasks</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f15 78 220 36 24 20 -2 #rect
Cs0 f15 @|StepIcon #fIcon
Cs0 f17 expr out #txt
Cs0 f17 96 188 96 220 #arcP
Cs0 f20 expr out #txt
Cs0 f20 96 244 96 276 #arcP
Cs0 f26 expr in #txt
Cs0 f26 82 112 78 232 #arcP
Cs0 f26 1 48 112 #addKink
Cs0 f26 2 48 232 #addKink
Cs0 f26 1 0.7456685775790461 0 0 #arcLabel
Cs0 f24 guid 13D013B3FD0B8E82 #txt
Cs0 f24 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f24 method deleteNote(Number,String) #txt
Cs0 f24 disableUIEvents false #txt
Cs0 f24 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number noteId,java.lang.String noteFor> param = methodEvent.getInputArguments();
' #txt
Cs0 f24 inParameterMapAction 'out.data.temp.noteFor=param.noteFor;
out.data.temp.noteId=param.noteId;
' #txt
Cs0 f24 outParameterDecl '<> result;
' #txt
Cs0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Method_Start2</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f24 822 54 20 20 13 0 #rect
Cs0 f24 @|RichDialogMethodStartIcon #fIcon
Cs0 f27 actionDecl 'htmlwfui.CaseDetail.CaseDetailData out;
' #txt
Cs0 f27 actionTable 'out=in;
out.data.option="deleteNote";
' #txt
Cs0 f27 type htmlwfui.CaseDetail.CaseDetailData #txt
Cs0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>option</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f27 814 108 36 24 20 -2 #rect
Cs0 f27 @|StepIcon #fIcon
Cs0 f28 expr out #txt
Cs0 f28 832 74 832 108 #arcP
Cs0 f28 0 0.4909228019083591 0 0 #arcLabel
Cs0 f30 expr out #txt
Cs0 f30 832 132 522 160 #arcP
Cs0 f30 1 832 160 #addKink
Cs0 f30 1 0.4387071759413811 0 0 #arcLabel
>Proto Cs0 .type htmlwfui.CaseDetail.CaseDetailData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f33 mainOut f23 tail #connect
Cs0 f23 head f11 mainIn #connect
Cs0 f4 mainOut f37 tail #connect
Cs0 f37 head f11 mainIn #connect
Cs0 f29 mainOut f38 tail #connect
Cs0 f38 head f11 mainIn #connect
Cs0 f34 mainOut f39 tail #connect
Cs0 f39 head f11 mainIn #connect
Cs0 f35 mainOut f40 tail #connect
Cs0 f40 head f11 mainIn #connect
Cs0 f3 mainOut f6 tail #connect
Cs0 f6 head f33 mainIn #connect
Cs0 f12 out f10 tail #connect
Cs0 f10 head f7 mainIn #connect
Cs0 f1 mainOut f18 tail #connect
Cs0 f18 head f4 mainIn #connect
Cs0 f2 mainOut f25 tail #connect
Cs0 f25 head f29 mainIn #connect
Cs0 f19 mainOut f16 tail #connect
Cs0 f16 head f34 mainIn #connect
Cs0 f13 mainOut f22 tail #connect
Cs0 f22 head f35 mainIn #connect
Cs0 f31 mainOut f9 tail #connect
Cs0 f9 head f8 mainIn #connect
Cs0 f8 mainOut f14 tail #connect
Cs0 f14 head f5 mainIn #connect
Cs0 f0 mainOut f21 tail #connect
Cs0 f21 head f12 in #connect
Cs0 f7 mainOut f17 tail #connect
Cs0 f17 head f15 mainIn #connect
Cs0 f15 mainOut f20 tail #connect
Cs0 f20 head f31 mainIn #connect
Cs0 f12 out f26 tail #connect
Cs0 f26 head f15 mainIn #connect
Cs0 f24 mainOut f28 tail #connect
Cs0 f28 head f27 mainIn #connect
Cs0 f27 mainOut f30 tail #connect
Cs0 f30 head f11 mainIn #connect
