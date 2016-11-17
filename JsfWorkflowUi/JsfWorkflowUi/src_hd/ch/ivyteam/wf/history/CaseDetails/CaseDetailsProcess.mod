[Ivy]
[>Created: Thu Nov 17 13:21:08 CET 2016]
13FE666253A103EF 3.18 #module
>Proto >Proto Collection #zClass
Cs0 CaseDetailsProcess Big #zClass
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
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @GridStep f3 '' #zField
Cs0 @GridStep f7 '' #zField
Cs0 @GridStep f9 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @RichDialogProcessEnd f15 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @GridStep f5 '' #zField
Cs0 @RichDialogMethodStart f12 '' #zField
Cs0 @PushWFArc f17 '' #zField
Cs0 @RichDialogProcessStart f4 '' #zField
Cs0 @GridStep f18 '' #zField
Cs0 @PushWFArc f19 '' #zField
Cs0 @PushWFArc f20 '' #zField
Cs0 @GridStep f13 '' #zField
Cs0 @PushWFArc f21 '' #zField
Cs0 @PushWFArc f16 '' #zField
Cs0 @RichDialogProcessStart f22 '' #zField
Cs0 @GridStep f23 '' #zField
Cs0 @PushWFArc f24 '' #zField
Cs0 @GridStep f26 '' #zField
Cs0 @PushWFArc f27 '' #zField
Cs0 @RichDialogProcessEnd f28 '' #zField
Cs0 @PushWFArc f29 '' #zField
Cs0 @RichDialogProcessEnd f2 '' #zField
Cs0 @PushWFArc f30 '' #zField
Cs0 @RichDialogProcessEnd f25 '' #zField
Cs0 @PushWFArc f38 '' #zField
Cs0 @RichDialogProcessStart f8 '' #zField
Cs0 @PushWFArc f31 '' #zField
>Proto Cs0 Cs0 CaseDetailsProcess #zField
Cs0 f0 guid 13FE66625592A530 #txt
Cs0 f0 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f0 method start(Number) #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number caseId> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.caseId=param.caseId;
out.cases=new ch.ivyteam.wf.history.CasesOfBusinessCaseLazyDataModel(param.caseId);
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Number)</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 51 26 26 -38 15 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f0 -1|-1|-9671572 #nodeStyle
Cs0 f1 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f1 339 51 26 26 0 12 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f1 -1|-1|-9671572 #nodeStyle
Cs0 f3 actionDecl 'ch.ivyteam.wf.history.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f3 actionTable 'out=in;
out.noteDescription="";
out.noteFor=null;
' #txt
Cs0 f3 actionCode 'import ch.ivyteam.wf.history.CasesOfBusinessCaseLazyDataModel;
import ch.ivyteam.wf.history.CaseDetailUtil;
import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;

out.wfCase = null;
out.tasks.clear();
if(ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.CASE_READ))
{
	out.wfCase = ivy.wf.findCase(in.caseId);
	out.tasks = CaseDetailUtil.filterTasksOfCase(out.wfCase.getTasks(), in.showSystemTasks);
}
else
{
	IPropertyFilter caseFilter = ivy.wf.createCasePropertyFilter(CaseProperty.ID, RelationalOperator.EQUAL, in.caseId);
	IQueryResult queryResult = ivy.session.findInvolvedCases(caseFilter, PropertyOrder.create(CaseProperty.ID, OrderDirection.DESCENDING),
		0, 1 ,true);
	if(queryResult.getResultCount()>0)
	{
		out.wfCase = queryResult.get(0) as ICase;
		out.tasks = CaseDetailUtil.filterTasksOfCase(out.wfCase.getTasks(), in.showSystemTasks);
	}
}' #txt
Cs0 f3 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get case and tasks</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 168 138 112 44 -52 -8 #rect
Cs0 f3 @|StepIcon #fIcon
Cs0 f3 -1|-1|-9671572 #nodeStyle
Cs0 f7 actionDecl 'ch.ivyteam.wf.history.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f7 actionTable 'out=in;
' #txt
Cs0 f7 actionCode 'import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.IWorkflowSession;

	IWorkflowSession ivySession = ivy.session;	
	boolean hasPageArchivePermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_PAGE_ARCHIVE_READ_ALL);
	boolean hasCaseDestroyPermission = ivySession.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.CASE_DESTROY);
	
		if (in.wfCase!=null && in.wfCase.getState()==CaseState.RUNNING && hasCaseDestroyPermission)	
		{ 
			in.deleteCaseLink = false;
		} else { 
			in.deleteCaseLink = true;
		}
		if (in.wfCase.getState()==CaseState.RUNNING)	
		{ 
			in.addNoteLink = false;
		} else { 
			in.addNoteLink = true;
		}
		if (hasPageArchivePermission && in.wfCase!=null && in.wfCase.getPageArchives().size()>0)	
		{ 
			in.archiveLink = false;
		} else { 
			in.archiveLink = true;
		}' #txt
Cs0 f7 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enable/disable
links</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f7 328 138 112 44 -40 -16 #rect
Cs0 f7 @|StepIcon #fIcon
Cs0 f7 -1|-1|-9671572 #nodeStyle
Cs0 f9 actionDecl 'ch.ivyteam.wf.history.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f9 actionTable 'out=in;
' #txt
Cs0 f9 actionCode 'import ch.ivyteam.ivy.workflow.INote;
import ch.ivyteam.ivy.workflow.ICase;

if(in.wfCase!=null && in.wfCase.hasNotes()){
	out.notes = in.wfCase.getNotes();
}' #txt
Cs0 f9 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get notes</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f9 488 138 112 44 -25 -8 #rect
Cs0 f9 @|StepIcon #fIcon
Cs0 f9 -1|-1|-9671572 #nodeStyle
Cs0 f10 expr out #txt
Cs0 f10 440 160 488 160 #arcP
Cs0 f15 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f15 339 275 26 26 0 12 #rect
Cs0 f15 @|RichDialogProcessEndIcon #fIcon
Cs0 f15 -1|-1|-9671572 #nodeStyle
Cs0 f11 expr out #txt
Cs0 f11 280 160 328 160 #arcP
Cs0 f5 actionDecl 'ch.ivyteam.wf.history.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f5 actionTable 'out=in;
' #txt
Cs0 f5 actionCode in.wfCase.deleteNote(in.note); #txt
Cs0 f5 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete note</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f5 168 330 112 44 -30 -8 #rect
Cs0 f5 @|StepIcon #fIcon
Cs0 f5 -1|-1|-9671572 #nodeStyle
Cs0 f12 guid 13FF05ADA3C442A3 #txt
Cs0 f12 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f12 method update() #txt
Cs0 f12 disableUIEvents false #txt
Cs0 f12 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f12 outParameterDecl '<> result;
' #txt
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Cs0 f12 83 147 26 26 -23 12 #rect
Cs0 f12 @|RichDialogMethodStartIcon #fIcon
Cs0 f12 -1|-1|-9671572 #nodeStyle
Cs0 f17 expr out #txt
Cs0 f17 109 160 168 160 #arcP
Cs0 f4 guid 13FF07A3BF7D12B4 #txt
Cs0 f4 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f4 actionDecl 'ch.ivyteam.wf.history.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f4 actionTable 'out=in;
' #txt
Cs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addNote</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f4 83 275 26 26 -23 12 #rect
Cs0 f4 @|RichDialogProcessStartIcon #fIcon
Cs0 f4 -1|-1|-9671572 #nodeStyle
Cs0 f18 actionDecl 'ch.ivyteam.wf.history.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f18 actionTable 'out=in;
' #txt
Cs0 f18 actionCode 'if(in.noteDescription.trim().length()>0)
{
		in.wfCase.createNote(ivy.session, in.noteDescription);
}' #txt
Cs0 f18 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add note</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f18 168 266 112 44 -24 -8 #rect
Cs0 f18 @|StepIcon #fIcon
Cs0 f18 -1|-1|-9671572 #nodeStyle
Cs0 f19 expr out #txt
Cs0 f19 280 288 339 288 #arcP
Cs0 f19 0 0.47750611241354257 0 0 #arcLabel
Cs0 f20 expr out #txt
Cs0 f20 109 288 168 288 #arcP
Cs0 f20 0 0.8922639160053057 0 0 #arcLabel
Cs0 f13 actionDecl 'ch.ivyteam.wf.history.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f13 actionTable 'out=in;
out.showNoteSelection=false;
' #txt
Cs0 f13 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>disable note option</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 168 42 112 44 -52 -8 #rect
Cs0 f13 @|StepIcon #fIcon
Cs0 f13 -1|-1|-9671572 #nodeStyle
Cs0 f21 expr out #txt
Cs0 f21 109 64 168 64 #arcP
Cs0 f16 expr out #txt
Cs0 f16 280 64 339 64 #arcP
Cs0 f22 guid 13FF5A5B4E12C9B7 #txt
Cs0 f22 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f22 actionDecl 'ch.ivyteam.wf.history.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f22 actionTable 'out=in;
' #txt
Cs0 f22 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>confirmAction</name>
        <nameStyle>13,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f22 83 211 26 26 -37 12 #rect
Cs0 f22 @|RichDialogProcessStartIcon #fIcon
Cs0 f22 -1|-1|-9671572 #nodeStyle
Cs0 f23 actionDecl 'ch.ivyteam.wf.history.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f23 actionTable 'out=in;
' #txt
Cs0 f23 actionCode 'import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.ICase;

ICase case =in.wfCase.destroy();
' #txt
Cs0 f23 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>destroy workflow</name>
        <nameStyle>16,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f23 168 202 112 44 -52 -7 #rect
Cs0 f23 @|StepIcon #fIcon
Cs0 f23 -1|-1|-9671572 #nodeStyle
Cs0 f24 expr out #txt
Cs0 f24 109 224 168 224 #arcP
Cs0 f26 actionDecl 'ch.ivyteam.wf.history.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f26 actionTable 'out=in;
' #txt
Cs0 f26 actionCode 'import ch.ivyteam.ivy.workflow.IPageArchive;
import ch.ivyteam.ivy.workflow.ITask;

List<ITask> tasks = new List<ITask>();
in.pageArchives.clear();
if(in.#wfCase!=null)
{
	tasks.addAll(in.wfCase.getTasks());
}

boolean hasPageArchivePermission = ivy.session.hasPermission(ivy.request.getApplication().getSecurityDescriptor(),ch.ivyteam.ivy.security.IPermission.TASK_PAGE_ARCHIVE_READ_ALL);
if(hasPageArchivePermission)	
{
	for(int i = 0; i < tasks.size(); i++)
	{
		List pageArchives = tasks.get(i).getPageArchives();
		for(int j = 0 ; j < pageArchives.size(); j++)
		{
			IPageArchive pageArchive = tasks.get(i).getPageArchives().get(j) as IPageArchive;
			out.pageArchives.add(pageArchive);
		}	
	}
}
' #txt
Cs0 f26 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get page archives</name>
        <nameStyle>17
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f26 648 138 112 44 -48 -8 #rect
Cs0 f26 @|StepIcon #fIcon
Cs0 f26 -1|-1|-9671572 #nodeStyle
Cs0 f27 expr out #txt
Cs0 f27 600 160 648 160 #arcP
Cs0 f27 0 0.18806928460277236 0 0 #arcLabel
Cs0 f28 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f28 819 147 26 26 0 12 #rect
Cs0 f28 @|RichDialogProcessEndIcon #fIcon
Cs0 f28 -1|-1|-9671572 #nodeStyle
Cs0 f29 expr out #txt
Cs0 f29 760 160 819 160 #arcP
Cs0 f29 0 0.08304032259233607 0 0 #arcLabel
Cs0 f2 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f2 339 211 26 26 0 12 #rect
Cs0 f2 @|RichDialogProcessEndIcon #fIcon
Cs0 f2 -1|-1|-9671572 #nodeStyle
Cs0 f30 expr out #txt
Cs0 f30 280 224 339 224 #arcP
Cs0 f30 0 0.7461382242081771 0 0 #arcLabel
Cs0 f25 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f25 339 339 26 26 0 12 #rect
Cs0 f25 @|RichDialogProcessEndIcon #fIcon
Cs0 f25 -1|-1|-9671572 #nodeStyle
Cs0 f38 expr out #txt
Cs0 f38 280 352 339 352 #arcP
Cs0 f38 0 0.5053612370219435 0 0 #arcLabel
Cs0 f8 guid 147D3806D8237F2B #txt
Cs0 f8 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f8 actionDecl 'ch.ivyteam.wf.history.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteNote</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f8 83 339 26 26 -30 15 #rect
Cs0 f8 @|RichDialogProcessStartIcon #fIcon
Cs0 f31 expr out #txt
Cs0 f31 109 352 168 352 #arcP
>Proto Cs0 .type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f7 mainOut f10 tail #connect
Cs0 f10 head f9 mainIn #connect
Cs0 f3 mainOut f11 tail #connect
Cs0 f11 head f7 mainIn #connect
Cs0 f12 mainOut f17 tail #connect
Cs0 f17 head f3 mainIn #connect
Cs0 f18 mainOut f19 tail #connect
Cs0 f19 head f15 mainIn #connect
Cs0 f4 mainOut f20 tail #connect
Cs0 f20 head f18 mainIn #connect
Cs0 f0 mainOut f21 tail #connect
Cs0 f21 head f13 mainIn #connect
Cs0 f13 mainOut f16 tail #connect
Cs0 f16 head f1 mainIn #connect
Cs0 f22 mainOut f24 tail #connect
Cs0 f24 head f23 mainIn #connect
Cs0 f9 mainOut f27 tail #connect
Cs0 f27 head f26 mainIn #connect
Cs0 f26 mainOut f29 tail #connect
Cs0 f29 head f28 mainIn #connect
Cs0 f23 mainOut f30 tail #connect
Cs0 f30 head f2 mainIn #connect
Cs0 f5 mainOut f38 tail #connect
Cs0 f38 head f25 mainIn #connect
Cs0 f8 mainOut f31 tail #connect
Cs0 f31 head f5 mainIn #connect
