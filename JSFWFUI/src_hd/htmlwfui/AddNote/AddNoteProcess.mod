[Ivy]
[>Created: Fri Feb 08 14:42:10 CET 2013]
13C4E1E51297CBD2 3.17 #module
>Proto >Proto Collection #zClass
As0 AddNoteProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
As0 @TextInP .rdData2UIAction .rdData2UIAction #zField
As0 @TextInP .resExport .resExport #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @AnnotationInP-0n ai ai #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @RichDialogProcessStart f3 '' #zField
As0 @RichDialogProcessStart f6 '' #zField
As0 @RichDialogInitStart f9 '' #zField
As0 @RichDialogProcessStep f0 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @RichDialogEnd f11 '' #zField
As0 @PushWFArc f12 '' #zField
As0 @PushWFArc f8 '' #zField
As0 @RichDialogProcessStep f4 '' #zField
As0 @PushWFArc f5 '' #zField
As0 @PushWFArc f7 '' #zField
>Proto As0 As0 AddNoteProcess #zField
As0 f1 type htmlwfui.AddNote.AddNoteData #txt
As0 f1 86 150 20 20 13 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f3 guid 13C4E253250FBD72 #txt
As0 f3 type htmlwfui.AddNote.AddNoteData #txt
As0 f3 actionDecl 'htmlwfui.AddNote.AddNoteData out;
' #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>back</name>
    </language>
</elementInfo>
' #txt
As0 f3 214 54 20 20 13 0 #rect
As0 f3 @|RichDialogProcessStartIcon #fIcon
As0 f6 guid 13C4E254380938D6 #txt
As0 f6 type htmlwfui.AddNote.AddNoteData #txt
As0 f6 actionDecl 'htmlwfui.AddNote.AddNoteData out;
' #txt
As0 f6 actionTable 'out=in;
' #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveNote</name>
    </language>
</elementInfo>
' #txt
As0 f6 310 54 20 20 13 0 #rect
As0 f6 @|RichDialogProcessStartIcon #fIcon
As0 f9 guid 13C4E269375667FA #txt
As0 f9 type htmlwfui.AddNote.AddNoteData #txt
As0 f9 method start(htmlwfui.Data) #txt
As0 f9 disableUIEvents true #txt
As0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Data data> param = methodEvent.getInputArguments();
' #txt
As0 f9 inParameterMapAction 'out.data=param.data;
' #txt
As0 f9 outParameterDecl '<> result;
' #txt
As0 f9 embeddedRdInitializations '* ' #txt
As0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f9 86 54 20 20 13 0 #rect
As0 f9 @|RichDialogInitStartIcon #fIcon
As0 f0 actionDecl 'htmlwfui.AddNote.AddNoteData out;
' #txt
As0 f0 actionTable 'out=in.clone();
' #txt
As0 f0 actionCode 'if(in.data.note.trim().length()>0)
{
	if(in.data.noteFor.equals("task")){
		in.data.tmpTask.createNote(in.data.wfSession,in.data.note);
	}else{
		in.data.tempCase.createNote(in.data.wfSession,in.data.note);
	}
}' #txt
As0 f0 type htmlwfui.AddNote.AddNoteData #txt
As0 f0 302 100 36 24 20 -2 #rect
As0 f0 @|RichDialogProcessStepIcon #fIcon
As0 f2 expr out #txt
As0 f2 320 74 320 100 #arcP
As0 f11 type htmlwfui.AddNote.AddNoteData #txt
As0 f11 guid 13C4E28D23E28AE2 #txt
As0 f11 262 150 20 20 13 0 #rect
As0 f11 @|RichDialogEndIcon #fIcon
As0 f12 expr out #txt
As0 f12 320 124 282 160 #arcP
As0 f12 1 320 160 #addKink
As0 f12 1 0.045793301537321245 0 0 #arcLabel
As0 f8 expr out #txt
As0 f8 224 74 262 160 #arcP
As0 f8 1 224 160 #addKink
As0 f8 0 0.7549866498826562 0 0 #arcLabel
As0 f4 actionDecl 'htmlwfui.AddNote.AddNoteData out;
' #txt
As0 f4 actionTable 'out=in;
out.data.note="";
' #txt
As0 f4 type htmlwfui.AddNote.AddNoteData #txt
As0 f4 78 100 36 24 20 -2 #rect
As0 f4 @|RichDialogProcessStepIcon #fIcon
As0 f5 expr out #txt
As0 f5 96 74 96 100 #arcP
As0 f7 expr out #txt
As0 f7 96 124 96 150 #arcP
>Proto As0 .type htmlwfui.AddNote.AddNoteData #txt
>Proto As0 .processKind RICH_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f6 mainOut f2 tail #connect
As0 f2 head f0 mainIn #connect
As0 f0 mainOut f12 tail #connect
As0 f12 head f11 mainIn #connect
As0 f3 mainOut f8 tail #connect
As0 f8 head f11 mainIn #connect
As0 f9 mainOut f5 tail #connect
As0 f5 head f4 mainIn #connect
As0 f4 mainOut f7 tail #connect
As0 f7 head f1 mainIn #connect
