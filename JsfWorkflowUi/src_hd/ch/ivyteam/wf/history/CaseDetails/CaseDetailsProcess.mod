[Ivy]
[>Created: Thu Jul 18 14:24:13 CEST 2013]
13FE666253A103EF 3.17 #module
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
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogMethodStart f14 '' #zField
Cs0 @RichDialogProcessEnd f15 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @GridStep f5 '' #zField
Cs0 @PushWFArc f6 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @RichDialogMethodStart f12 '' #zField
Cs0 @PushWFArc f17 '' #zField
Cs0 @RichDialogProcessStart f4 '' #zField
Cs0 @GridStep f18 '' #zField
Cs0 @PushWFArc f19 '' #zField
Cs0 @PushWFArc f20 '' #zField
Cs0 @GridStep f13 '' #zField
Cs0 @PushWFArc f21 '' #zField
Cs0 @PushWFArc f16 '' #zField
>Proto Cs0 Cs0 CaseDetailsProcess #zField
Cs0 f0 guid 13FE66625592A530 #txt
Cs0 f0 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f0 method start(Number) #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number caseId> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.caseId=param.caseId;
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 86 54 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f1 86 310 20 20 13 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f3 actionDecl 'ch.ivyteam.wf.history.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f3 actionTable 'out=in;
out.noteDescription="";
out.noteFor=null;
' #txt
Cs0 f3 actionCode 'import ch.ivyteam.logicalexpression.RelationalOperator;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.CaseProperty;
import ch.ivyteam.ivy.workflow.CaseState;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ICase;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.persistence.IQueryResult;

IPropertyFilter caseFilter = ivy.wf.createCasePropertyFilter(CaseProperty.ID, RelationalOperator.EQUAL, in.caseId);
IQueryResult queryResult = ivy.session.findStartedCases(caseFilter, PropertyOrder.create(CaseProperty.ID, OrderDirection.DESCENDING),
	0, 1 ,true);

out.wfCase = queryResult.get(0) as ICase;
out.tasks = out.wfCase.getTasks();' #txt
Cs0 f3 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get case and tasks</name>
        <nameStyle>18
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f3 206 116 36 24 20 -2 #rect
Cs0 f3 @|StepIcon #fIcon
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
	
		if (in.wfCase.getState()==CaseState.RUNNING && hasCaseDestroyPermission)	
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
		if (hasPageArchivePermission)	
		{ 
			in.archiveLink = false;
		} else { 
			in.archiveLink = true;
		}' #txt
Cs0 f7 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>enable/disable links</name>
        <nameStyle>20
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f7 206 180 36 24 20 -2 #rect
Cs0 f7 @|StepIcon #fIcon
Cs0 f9 actionDecl 'ch.ivyteam.wf.history.CaseDetails.CaseDetailsData out;
' #txt
Cs0 f9 actionTable 'out=in;
' #txt
Cs0 f9 actionCode 'import ch.ivyteam.ivy.workflow.INote;
import ch.ivyteam.ivy.workflow.ICase;

if(in.wfCase.hasNotes()){
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
Cs0 f9 206 244 36 24 20 -2 #rect
Cs0 f9 @|StepIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 224 204 224 244 #arcP
Cs0 f2 expr out #txt
Cs0 f2 224 268 106 320 #arcP
Cs0 f2 1 224 320 #addKink
Cs0 f2 1 0.18806928460277236 0 0 #arcLabel
Cs0 f14 guid 13FE69F18C9593C5 #txt
Cs0 f14 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f14 method deleteNote(ch.ivyteam.ivy.workflow.INote) #txt
Cs0 f14 disableUIEvents false #txt
Cs0 f14 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.INote note> param = methodEvent.getInputArguments();
' #txt
Cs0 f14 inParameterMapAction 'out.note=param.note;
' #txt
Cs0 f14 outParameterDecl '<> result;
' #txt
Cs0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteNote(INote)</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f14 374 54 20 20 13 0 #rect
Cs0 f14 @|RichDialogMethodStartIcon #fIcon
Cs0 f15 type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
Cs0 f15 374 182 20 20 13 0 #rect
Cs0 f15 @|RichDialogProcessEndIcon #fIcon
Cs0 f11 expr out #txt
Cs0 f11 224 140 224 180 #arcP
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
Cs0 f5 366 116 36 24 20 -2 #rect
Cs0 f5 @|StepIcon #fIcon
Cs0 f6 expr out #txt
Cs0 f6 384 74 384 116 #arcP
Cs0 f8 expr out #txt
Cs0 f8 384 140 384 182 #arcP
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
Cs0 f12 214 54 20 20 13 0 #rect
Cs0 f12 @|RichDialogMethodStartIcon #fIcon
Cs0 f17 expr out #txt
Cs0 f17 224 74 224 116 #arcP
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
Cs0 f4 534 54 20 20 13 0 #rect
Cs0 f4 @|RichDialogProcessStartIcon #fIcon
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
Cs0 f18 526 116 36 24 20 -2 #rect
Cs0 f18 @|StepIcon #fIcon
Cs0 f19 expr out #txt
Cs0 f19 544 140 394 192 #arcP
Cs0 f19 1 544 192 #addKink
Cs0 f19 1 0.3021403478442946 0 0 #arcLabel
Cs0 f20 expr out #txt
Cs0 f20 544 74 544 116 #arcP
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
        <name>disable not option</name>
        <nameStyle>18
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 78 148 36 24 20 -2 #rect
Cs0 f13 @|StepIcon #fIcon
Cs0 f21 expr out #txt
Cs0 f21 96 74 96 148 #arcP
Cs0 f16 expr out #txt
Cs0 f16 96 172 96 310 #arcP
>Proto Cs0 .type ch.ivyteam.wf.history.CaseDetails.CaseDetailsData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f7 mainOut f10 tail #connect
Cs0 f10 head f9 mainIn #connect
Cs0 f9 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f3 mainOut f11 tail #connect
Cs0 f11 head f7 mainIn #connect
Cs0 f14 mainOut f6 tail #connect
Cs0 f6 head f5 mainIn #connect
Cs0 f5 mainOut f8 tail #connect
Cs0 f8 head f15 mainIn #connect
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
