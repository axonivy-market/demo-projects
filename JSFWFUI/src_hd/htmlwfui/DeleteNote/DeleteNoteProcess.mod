[Ivy]
[>Created: Fri Feb 22 11:42:37 CET 2013]
13D011BED20AB4E9 3.17 #module
>Proto >Proto Collection #zClass
Ds0 DeleteNoteProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ds0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ds0 @TextInP .resExport .resExport #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @RichDialogInitStart f0 '' #zField
Ds0 @RichDialogProcessEnd f1 '' #zField
Ds0 @Alternative f3 '' #zField
Ds0 @GridStep f5 '' #zField
Ds0 @GridStep f6 '' #zField
Ds0 @PushWFArc f7 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @RichDialogProcessStart f10 '' #zField
Ds0 @RichDialogProcessStart f13 '' #zField
Ds0 @PushWFArc f16 '' #zField
Ds0 @PushWFArc f8 '' #zField
Ds0 @RichDialogEnd f4 '' #zField
Ds0 @PushWFArc f17 '' #zField
Ds0 @PushWFArc f12 '' #zField
Ds0 @PushWFArc f9 '' #zField
Ds0 @GridStep f11 '' #zField
Ds0 @PushWFArc f14 '' #zField
Ds0 @PushWFArc f15 '' #zField
>Proto Ds0 Ds0 DeleteNoteProcess #zField
Ds0 f0 guid 13D011BED3F9F3BE #txt
Ds0 f0 type htmlwfui.DeleteNote.DeleteNoteData #txt
Ds0 f0 method start(htmlwfui.Data) #txt
Ds0 f0 disableUIEvents true #txt
Ds0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Data data> param = methodEvent.getInputArguments();
' #txt
Ds0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Ds0 f0 outParameterDecl '<> result;
' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init_Start1</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f0 118 54 20 20 13 0 #rect
Ds0 f0 @|RichDialogInitStartIcon #fIcon
Ds0 f1 type htmlwfui.DeleteNote.DeleteNoteData #txt
Ds0 f1 118 150 20 20 13 0 #rect
Ds0 f1 @|RichDialogProcessEndIcon #fIcon
Ds0 f3 type htmlwfui.DeleteNote.DeleteNoteData #txt
Ds0 f3 370 98 28 28 14 0 #rect
Ds0 f3 @|AlternativeIcon #fIcon
Ds0 f5 actionDecl 'htmlwfui.DeleteNote.DeleteNoteData out;
' #txt
Ds0 f5 actionTable 'out=in;
' #txt
Ds0 f5 actionCode 'import ch.ivyteam.ivy.workflow.INote;
import ch.ivyteam.ivy.workflow.ITask;
import htmlwfui.Notes;

ITask task = in.data.tmpTask;

List notes = task.getCase().getNotes();
int count = 0;
	
	for(INote note : notes)
	{
		if(note.getId() == in.data.temp.noteId)
		{
			in.data.tmpTask.getCase().deleteNote(note);
		}
		count++;
	}' #txt
Ds0 f5 type htmlwfui.DeleteNote.DeleteNoteData #txt
Ds0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>caseNote</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f5 366 148 36 24 20 -2 #rect
Ds0 f5 @|StepIcon #fIcon
Ds0 f6 actionDecl 'htmlwfui.DeleteNote.DeleteNoteData out;
' #txt
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 actionCode 'import ch.ivyteam.ivy.workflow.INote;
import ch.ivyteam.ivy.workflow.ITask;
import htmlwfui.Notes;

ITask task = in.data.tmpTask;

List notes = task.getNotes();
int count = 0;
	
	for(INote note : notes)
	{
		if(note.getId() == in.data.temp.noteId)
		{
			in.data.tmpTask.deleteNote(note);
		}
		count++;
	}' #txt
Ds0 f6 type htmlwfui.DeleteNote.DeleteNoteData #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>taskNote</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f6 254 148 36 24 20 -2 #rect
Ds0 f6 @|StepIcon #fIcon
Ds0 f7 expr in #txt
Ds0 f7 outCond 'in.data.temp.noteFor == "task"' #txt
Ds0 f7 374 116 290 152 #arcP
Ds0 f2 expr in #txt
Ds0 f2 outCond 'in.data.temp.noteFor == "case"' #txt
Ds0 f2 384 126 384 148 #arcP
Ds0 f10 guid 13D01235E019405D #txt
Ds0 f10 type htmlwfui.DeleteNote.DeleteNoteData #txt
Ds0 f10 actionDecl 'htmlwfui.DeleteNote.DeleteNoteData out;
' #txt
Ds0 f10 actionTable 'out=in;
' #txt
Ds0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteNote</name>
    </language>
</elementInfo>
' #txt
Ds0 f10 374 54 20 20 13 0 #rect
Ds0 f10 @|RichDialogProcessStartIcon #fIcon
Ds0 f13 guid 13D0123744EF230E #txt
Ds0 f13 type htmlwfui.DeleteNote.DeleteNoteData #txt
Ds0 f13 actionDecl 'htmlwfui.DeleteNote.DeleteNoteData out;
' #txt
Ds0 f13 actionTable 'out=in;
' #txt
Ds0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>back</name>
    </language>
</elementInfo>
' #txt
Ds0 f13 598 54 20 20 13 0 #rect
Ds0 f13 @|RichDialogProcessStartIcon #fIcon
Ds0 f16 expr out #txt
Ds0 f16 384 74 384 98 #arcP
Ds0 f8 expr out #txt
Ds0 f8 128 74 128 150 #arcP
Ds0 f4 type htmlwfui.DeleteNote.DeleteNoteData #txt
Ds0 f4 guid 13D012459CA74EB7 #txt
Ds0 f4 374 214 20 20 13 0 #rect
Ds0 f4 @|RichDialogEndIcon #fIcon
Ds0 f17 expr out #txt
Ds0 f17 384 172 384 214 #arcP
Ds0 f12 expr out #txt
Ds0 f12 290 170 375 219 #arcP
Ds0 f9 expr out #txt
Ds0 f9 608 74 394 224 #arcP
Ds0 f9 1 608 224 #addKink
Ds0 f9 1 0.14521451479479416 0 0 #arcLabel
Ds0 f11 actionDecl 'htmlwfui.DeleteNote.DeleteNoteData out;
' #txt
Ds0 f11 actionTable 'out=in;
' #txt
Ds0 f11 actionCode 'import ch.ivyteam.ivy.workflow.INote;
import ch.ivyteam.ivy.workflow.ICase;
import htmlwfui.Notes;

ICase case = in.data.tempCase;

List notes = case.getNotes();
int count = 0;
	
	for(INote note : notes)
	{
		if(note.getId() == in.data.temp.noteId)
		{
			in.data.tempCase.deleteNote(note);
		}
		count++;
	}' #txt
Ds0 f11 type htmlwfui.DeleteNote.DeleteNoteData #txt
Ds0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>caseNote</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f11 486 148 36 24 20 -2 #rect
Ds0 f11 @|StepIcon #fIcon
Ds0 f14 expr in #txt
Ds0 f14 394 116 486 153 #arcP
Ds0 f15 expr out #txt
Ds0 f15 486 170 392 219 #arcP
>Proto Ds0 .type htmlwfui.DeleteNote.DeleteNoteData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 out f7 tail #connect
Ds0 f7 head f6 mainIn #connect
Ds0 f3 out f2 tail #connect
Ds0 f2 head f5 mainIn #connect
Ds0 f10 mainOut f16 tail #connect
Ds0 f16 head f3 in #connect
Ds0 f0 mainOut f8 tail #connect
Ds0 f8 head f1 mainIn #connect
Ds0 f5 mainOut f17 tail #connect
Ds0 f17 head f4 mainIn #connect
Ds0 f6 mainOut f12 tail #connect
Ds0 f12 head f4 mainIn #connect
Ds0 f13 mainOut f9 tail #connect
Ds0 f9 head f4 mainIn #connect
Ds0 f3 out f14 tail #connect
Ds0 f14 head f11 mainIn #connect
Ds0 f11 mainOut f15 tail #connect
Ds0 f15 head f4 mainIn #connect
