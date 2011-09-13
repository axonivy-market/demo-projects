[Ivy]
[>Created: Tue Sep 13 14:33:21 CEST 2011]
118AD9895BF10199 3.17 #module
>Proto >Proto Collection #zClass
Cs0 CaseNoteDisplayListProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogInitStart f1 '' #zField
Cs0 @RichDialogMethodStart f3 '' #zField
Cs0 @RichDialogMethodStart f4 '' #zField
Cs0 @RichDialogProcessEnd f6 '' #zField
Cs0 @Alternative f11 '' #zField
Cs0 @PushWFArc f12 '' #zField
Cs0 @RichDialogProcessStep f13 '' #zField
Cs0 @PushWFArc f15 '' #zField
Cs0 @Alternative f17 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @PushWFArc f14 '' #zField
Cs0 @PushWFArc f19 '' #zField
Cs0 @RichDialogProcessStart f31 '' #zField
Cs0 @RichDialogProcessStep f40 '' #zField
Cs0 @RichDialogProcessStep f34 '' #zField
Cs0 @Alternative f43 '' #zField
Cs0 @RichDialogProcessStep f24 '' #zField
Cs0 @RichDialogProcessStep f35 '' #zField
Cs0 @RichDialogProcessStart f26 '' #zField
Cs0 @RichDialogProcessStart f27 '' #zField
Cs0 @RichDialogProcessStep f28 '' #zField
Cs0 @RichDialogProcessStart f21 '' #zField
Cs0 @RichDialogProcessStart f36 '' #zField
Cs0 @RichDialogProcessEnd f22 '' #zField
Cs0 @RichDialogProcessStep f32 '' #zField
Cs0 @Alternative f38 '' #zField
Cs0 @PushWFArc f39 '' #zField
Cs0 @PushWFArc f41 '' #zField
Cs0 @PushWFArc f45 '' #zField
Cs0 @PushWFArc f46 '' #zField
Cs0 @PushWFArc f47 '' #zField
Cs0 @PushWFArc f25 '' #zField
Cs0 @PushWFArc f37 '' #zField
Cs0 @PushWFArc f23 '' #zField
Cs0 @PushWFArc f48 '' #zField
Cs0 @PushWFArc f50 '' #zField
Cs0 @RichDialogProcessStep f33 '' #zField
Cs0 @PushWFArc f51 '' #zField
Cs0 @PushWFArc f42 '' #zField
Cs0 @Alternative f52 '' #zField
Cs0 @PushWFArc f53 '' #zField
Cs0 @PushWFArc f29 '' #zField
Cs0 @RichDialogProcessStep f55 '' #zField
Cs0 @PushWFArc f56 '' #zField
Cs0 @PushWFArc f54 '' #zField
Cs0 @RichDialogFireEvent f57 '' #zField
Cs0 @PushWFArc f58 '' #zField
Cs0 @PushWFArc f49 '' #zField
Cs0 @PushWFArc f59 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @RichDialogMethodStart f8 '' #zField
Cs0 @RichDialogProcessStart f16 '' #zField
Cs0 @RichDialogProcessStep f20 '' #zField
Cs0 @PushWFArc f30 '' #zField
Cs0 @PushWFArc f63 '' #zField
Cs0 @RichDialogProcessEnd f44 '' #zField
Cs0 @PushWFArc f61 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @RichDialogProcessEnd f9 '' #zField
Cs0 @PushWFArc f62 '' #zField
>Proto Cs0 Cs0 CaseNoteDisplayListProcess #zField
Cs0 f0 guid 118AD9B8366C0E79 #txt
Cs0 f0 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.caseNotes=[];
out.fCase=null;
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '* ' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 46 110 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f1 guid 118AD9B8B2A8C76C #txt
Cs0 f1 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f1 method start(ch.ivyteam.ivy.workflow.ICase,Boolean) #txt
Cs0 f1 disableUIEvents false #txt
Cs0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase aCase,java.lang.Boolean aLoadDataAtStart> param = methodEvent.getInputArguments();
' #txt
Cs0 f1 inParameterMapAction 'out.fCase=param.aCase;
out.loadDataAtStart=param.aLoadDataAtStart;
' #txt
Cs0 f1 outParameterDecl '<> result;
' #txt
Cs0 f1 embeddedRdInitializations '* ' #txt
Cs0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase,Boolean)</name>
        <nameStyle>20,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f1 134 110 20 20 13 0 #rect
Cs0 f1 @|RichDialogInitStartIcon #fIcon
Cs0 f3 guid 118AD9B9DD93683E #txt
Cs0 f3 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f3 method refresh() #txt
Cs0 f3 disableUIEvents false #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>refresh()</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 326 110 20 20 13 0 #rect
Cs0 f3 @|RichDialogMethodStartIcon #fIcon
Cs0 f4 guid 118AD9BA3DA39ED3 #txt
Cs0 f4 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f4 method setCase(ch.ivyteam.ivy.workflow.ICase) #txt
Cs0 f4 disableUIEvents false #txt
Cs0 f4 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase aCase> param = methodEvent.getInputArguments();
' #txt
Cs0 f4 inParameterMapAction 'out.fCase=param.aCase;
' #txt
Cs0 f4 outParameterDecl '<> result;
' #txt
Cs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setCase(ICase)</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f4 406 110 20 20 13 0 #rect
Cs0 f4 @|RichDialogMethodStartIcon #fIcon
Cs0 f6 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f6 43 363 26 26 14 0 #rect
Cs0 f6 @|RichDialogProcessEndIcon #fIcon
Cs0 f11 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f11 322 226 28 28 14 0 #rect
Cs0 f11 @|AlternativeIcon #fIcon
Cs0 f12 expr out #txt
Cs0 f12 336 130 336 226 #arcP
Cs0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f13 actionTable 'out=in;
' #txt
Cs0 f13 actionCode 'out.caseNotes.clear();

if (in.#fCase != null)
{	
	java.util.List notesList = in.fCase.getNotes();

	out.caseNotes.addAll(notesList);
}' #txt
Cs0 f13 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load the 
case annotations</name>
        <nameStyle>26,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 126 276 36 24 20 -2 #rect
Cs0 f13 @|RichDialogProcessStepIcon #fIcon
Cs0 f15 expr in #txt
Cs0 f15 outCond 'in.#fCase != null' #txt
Cs0 f15 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>case != null</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f15 322 240 162 278 #arcP
Cs0 f15 1 232 240 #addKink
Cs0 f15 0 0.6712393931780533 0 0 #arcLabel
Cs0 f17 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f17 130 154 28 28 14 0 #rect
Cs0 f17 @|AlternativeIcon #fIcon
Cs0 f18 expr out #txt
Cs0 f18 144 130 144 154 #arcP
Cs0 f14 expr in #txt
Cs0 f14 outCond in.loadDataAtStart #txt
Cs0 f14 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load data
at start</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f14 144 182 144 276 #arcP
Cs0 f14 0 0.26595744680851063 -1 0 #arcLabel
Cs0 f19 expr in #txt
Cs0 f19 130 168 57 363 #arcP
Cs0 f19 1 88 168 #addKink
Cs0 f19 1 0.4315249048602644 0 0 #arcLabel
Cs0 f31 guid 118EA5959AC17B75 #txt
Cs0 f31 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f31 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f31 actionTable 'out=in;
' #txt
Cs0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>displayNoteDetails</name>
        <nameStyle>18,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f31 1654 118 20 20 13 0 #rect
Cs0 f31 @|RichDialogProcessStartIcon #fIcon
Cs0 f40 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f40 actionTable 'out=in;
' #txt
Cs0 f40 actionCode 'import ch.ivyteam.ivy.workflow.INote;

out.currentNote = panel.caseNotesTable.getSelectedListEntry() as INote;
panel.footerLabel.text = "Note with id" + out.currentNote.getIdentifier().toString() + " deleted.";
out.fCase.deleteNote(out.currentNote);

// 
out.setCurrentNote(null);

panel.refresh();

' #txt
Cs0 f40 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f40 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete 
the current
selected note</name>
        <nameStyle>33,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f40 1374 253 36 23 20 -2 #rect
Cs0 f40 @|RichDialogProcessStepIcon #fIcon
Cs0 f34 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f34 actionTable 'out=in;
' #txt
Cs0 f34 actionCode 'panel.addNoteCollapsiblePane.collapsed = true;' #txt
Cs0 f34 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collapse the container</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f34 1038 364 36 24 20 -2 #rect
Cs0 f34 @|RichDialogProcessStepIcon #fIcon
Cs0 f43 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f43 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f43 1650 210 28 28 14 0 #rect
Cs0 f43 @|AlternativeIcon #fIcon
Cs0 f24 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f24 actionTable 'out=in;
' #txt
Cs0 f24 actionCode 'panel.addNoteCollapsiblePane.collapsed = false;

' #txt
Cs0 f24 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set the collapsible to false
property collapsed</name>
        <nameStyle>47,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f24 814 268 36 24 20 -2 #rect
Cs0 f24 @|RichDialogProcessStepIcon #fIcon
Cs0 f35 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f35 actionTable 'out=in;
' #txt
Cs0 f35 actionCode 'import ch.ivyteam.ivy.workflow.INote;


out.currentNote = panel.caseNotesTable.getSelectedListEntry() as INote;

/*
panel.noteDetailsIdWritterCreationTimestampGridBagLayoutPane.visible = true;


panel.noteIdTextField.text = out.currentNote.getIdentifier().toString();


panel.noteWritterTextField.text = out.currentNote.getWritterName();


panel.noteCreationTimestampTextField.text = out.currentNote.getCreationTimestamp().toString();


panel.noteTextArea.text = out.currentNote.getMessage();
panel.noteTextArea.editable = false;


panel.addNoteFlowLayoutPane.visible = false;

panel.addNoteCollapsiblePane.collapsed = false;
*/

panel.footerLabel.text = "";' #txt
Cs0 f35 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get the 
selected note</name>
        <nameStyle>22,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f35 1646 308 36 24 20 -2 #rect
Cs0 f35 @|RichDialogProcessStepIcon #fIcon
Cs0 f26 guid 118EA5959CB129E6 #txt
Cs0 f26 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f26 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f26 actionTable 'out=in;
' #txt
Cs0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>okAddNote</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f26 1046 118 20 20 13 0 #rect
Cs0 f26 @|RichDialogProcessStartIcon #fIcon
Cs0 f27 guid 118EA5959BC39612 #txt
Cs0 f27 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f27 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f27 actionTable 'out=in;
' #txt
Cs0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancelAddNote</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f27 1286 126 20 20 13 0 #rect
Cs0 f27 @|RichDialogProcessStartIcon #fIcon
Cs0 f28 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f28 actionTable 'out=in;
' #txt
Cs0 f28 actionCode 'import ch.ivyteam.ivy.workflow.INote;
java.util.List caseNotesListTmp;


String message = panel.noteTextArea.text;

in.fCase.createNote(ivy.session, message);


caseNotesListTmp = in.fCase.getNotes();

out.caseNotes.clear();

out.caseNotes.addAll(caseNotesListTmp);


panel.footerLabel.text = "Note created.";' #txt
Cs0 f28 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create 
the note</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f28 1038 260 36 24 20 -2 #rect
Cs0 f28 @|RichDialogProcessStepIcon #fIcon
Cs0 f21 guid 118EA5959BCFA811 #txt
Cs0 f21 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f21 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f21 actionTable 'out=in;
' #txt
Cs0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showNoteDetailsEditArea</name>
        <nameStyle>23,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f21 822 110 20 20 13 0 #rect
Cs0 f21 @|RichDialogProcessStartIcon #fIcon
Cs0 f36 guid 118EA5959BCDB457 #txt
Cs0 f36 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f36 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f36 actionTable 'out=in;
' #txt
Cs0 f36 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteNote</name>
        <nameStyle>10,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f36 1382 126 20 20 13 0 #rect
Cs0 f36 @|RichDialogProcessStartIcon #fIcon
Cs0 f22 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f22 819 451 26 26 14 0 #rect
Cs0 f22 @|RichDialogProcessEndIcon #fIcon
Cs0 f32 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f32 actionTable 'out=in;
' #txt
Cs0 f32 actionCode '// text to empty

panel.noteDetailsIdWritterCreationTimestampGridBagLayoutPane.visible = false;


panel.noteIdTextField.text = "";

panel.noteWritterTextField.text = "";

panel.noteCreationTimestampTextField.text = "";

panel.noteTextArea.text = "";
panel.noteTextArea.editable = true;
panel.noteTextArea.requestFocus();


panel.addNoteFlowLayoutPane.visible = true;' #txt
Cs0 f32 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>clear the 
note information</name>
        <nameStyle>27,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f32 814 404 36 24 20 -2 #rect
Cs0 f32 @|RichDialogProcessStepIcon #fIcon
Cs0 f38 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f38 1378 186 28 28 14 0 #rect
Cs0 f38 @|AlternativeIcon #fIcon
Cs0 f39 expr out #txt
Cs0 f39 1392 146 1392 186 #arcP
Cs0 f41 expr in #txt
Cs0 f41 outCond 'panel.caseNotesTable.getSelectedListEntry() != null' #txt
Cs0 f41 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selectedListEntry != null</name>
        <nameStyle>25,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f41 1392 214 1392 252 #arcP
Cs0 f45 expr in #txt
Cs0 f45 outCond 'panel.caseNotesTable.getSelectedListEntry() != null && panel.caseNotesTable.getSelectedListEntry() instanceof ch.ivyteam.ivy.workflow.INote' #txt
Cs0 f45 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>selected list entry != null,
instanceof INote</name>
        <nameStyle>45,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f45 1664 238 1664 308 #arcP
Cs0 f46 expr out #txt
Cs0 f46 1664 332 844 463 #arcP
Cs0 f46 1 1664 448 #addKink
Cs0 f46 1 0.4400847638584886 0 0 #arcLabel
Cs0 f47 expr in #txt
Cs0 f47 1678 224 845 464 #arcP
Cs0 f47 1 1768 224 #addKink
Cs0 f47 2 1768 464 #addKink
Cs0 f47 2 0.29464831112957873 0 0 #arcLabel
Cs0 f25 expr out #txt
Cs0 f25 832 130 832 268 #arcP
Cs0 f37 expr out #txt
Cs0 f37 832 428 832 451 #arcP
Cs0 f23 expr out #txt
Cs0 f23 1296 146 1074 376 #arcP
Cs0 f23 1 1296 376 #addKink
Cs0 f23 1 0.07275407181481597 0 0 #arcLabel
Cs0 f48 expr out #txt
Cs0 f48 1056 388 850 415 #arcP
Cs0 f48 1 1056 408 #addKink
Cs0 f48 1 0.3687546692219806 0 0 #arcLabel
Cs0 f50 expr out #txt
Cs0 f50 832 292 832 404 #arcP
Cs0 f33 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f33 actionTable 'out=in;
' #txt
Cs0 f33 actionCode 'panel.footerLabel.text = "Invalid note selection to delete";' #txt
Cs0 f33 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>inform 
the user</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f33 1478 220 36 24 20 -2 #rect
Cs0 f33 @|RichDialogProcessStepIcon #fIcon
Cs0 f51 expr in #txt
Cs0 f51 1406 200 1496 220 #arcP
Cs0 f51 1 1496 200 #addKink
Cs0 f51 1 0.07781452615802763 0 0 #arcLabel
Cs0 f42 expr out #txt
Cs0 f42 1496 244 844 463 #arcP
Cs0 f42 1 1496 432 #addKink
Cs0 f42 1 0.3959600409821321 0 0 #arcLabel
Cs0 f52 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f52 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f52 1042 186 28 28 14 0 #rect
Cs0 f52 @|AlternativeIcon #fIcon
Cs0 f53 expr out #txt
Cs0 f53 1056 138 1056 186 #arcP
Cs0 f29 expr in #txt
Cs0 f29 outCond 'panel.noteTextArea.text.length() > 0' #txt
Cs0 f29 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>note text 
is not empty</name>
        <nameStyle>23,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f29 1056 214 1056 260 #arcP
Cs0 f55 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f55 actionTable 'out=in;
' #txt
Cs0 f55 actionCode 'panel.footerLabel.text = "It is not possible to create an empty note.";' #txt
Cs0 f55 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f55 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>inform 
the user</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f55 1150 228 36 24 20 -2 #rect
Cs0 f55 @|RichDialogProcessStepIcon #fIcon
Cs0 f56 expr in #txt
Cs0 f56 1070 200 1168 228 #arcP
Cs0 f56 1 1168 200 #addKink
Cs0 f56 0 0.6629097529152405 0 0 #arcLabel
Cs0 f54 expr out #txt
Cs0 f54 1168 252 844 462 #arcP
Cs0 f54 1 1168 432 #addKink
Cs0 f54 1 0.255855254857005 0 0 #arcLabel
Cs0 f57 actionDecl 'Number aCaseIdentifier;
' #txt
Cs0 f57 actionTable 'aCaseIdentifier=in.fCase.getIdentifier();
' #txt
Cs0 f57 actionCode panel.fireXivyCaseNotesChanged(aCaseIdentifier); #txt
Cs0 f57 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f57 fireEvent xivyCaseNotesChanged(Number) #txt
Cs0 f57 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fire the rd event
&quot;xivyCaseNotesChanged&quot;</name>
        <nameStyle>40,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f57 1038 308 36 24 20 -2 #rect
Cs0 f57 @|RichDialogFireEventIcon #fIcon
Cs0 f58 expr out #txt
Cs0 f58 1056 284 1056 308 #arcP
Cs0 f49 expr out #txt
Cs0 f49 1056 332 1056 364 #arcP
Cs0 f59 expr out #txt
Cs0 f59 1392 275 1074 320 #arcP
Cs0 f59 1 1392 320 #addKink
Cs0 f59 1 0.37833751078482775 0 0 #arcLabel
Cs0 f7 expr out #txt
Cs0 f7 144 300 68 374 #arcP
Cs0 f7 1 144 368 #addKink
Cs0 f7 0 0.672952778975819 0 0 #arcLabel
Cs0 f10 expr out #txt
Cs0 f10 56 130 56 363 #arcP
Cs0 f5 expr out #txt
Cs0 f5 416 130 350 240 #arcP
Cs0 f5 1 416 240 #addKink
Cs0 f5 0 0.9671538165019362 0 0 #arcLabel
Cs0 f8 guid 11A012BE2C6670D3 #txt
Cs0 f8 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f8 method caseIsInitialized() #txt
Cs0 f8 disableUIEvents false #txt
Cs0 f8 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f8 outParameterDecl '<java.lang.Boolean isInitialized> result;
' #txt
Cs0 f8 outParameterMapAction 'result.isInitialized=(in.#fCase != null);
' #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>caseIsInitialized()</name>
        <nameStyle>19,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f8 510 110 20 20 13 0 #rect
Cs0 f8 @|RichDialogMethodStartIcon #fIcon
Cs0 f16 guid 11B45C26EC7B74DB #txt
Cs0 f16 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f16 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f16 actionTable 'out=in;
' #txt
Cs0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f16 654 118 20 20 13 0 #rect
Cs0 f16 @|RichDialogProcessStartIcon #fIcon
Cs0 f20 actionDecl 'ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData out;
' #txt
Cs0 f20 actionTable 'out=in;
' #txt
Cs0 f20 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;


(panel.noteDetailsEditGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteDetails"));' #txt
Cs0 f20 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the border''s titles
with cms entries</name>
        <nameStyle>42,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f20 646 204 36 24 20 -2 #rect
Cs0 f20 @|RichDialogProcessStepIcon #fIcon
Cs0 f30 expr out #txt
Cs0 f30 664 138 664 204 #arcP
Cs0 f63 expr out #txt
Cs0 f63 1664 138 1664 210 #arcP
Cs0 f44 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f44 326 374 20 20 13 0 #rect
Cs0 f44 @|RichDialogProcessEndIcon #fIcon
Cs0 f61 expr in #txt
Cs0 f61 336 254 336 374 #arcP
Cs0 f61 0 0.35877360991394486 0 0 #arcLabel
Cs0 f2 expr out #txt
Cs0 f2 520 130 346 384 #arcP
Cs0 f2 1 520 384 #addKink
Cs0 f2 1 0.19749371354585749 0 0 #arcLabel
Cs0 f9 type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
Cs0 f9 654 374 20 20 13 0 #rect
Cs0 f9 @|RichDialogProcessEndIcon #fIcon
Cs0 f62 expr out #txt
Cs0 f62 664 228 664 374 #arcP
Cs0 f62 0 0.9732168712432814 0 0 #arcLabel
>Proto Cs0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>303</swimlaneSize>
    <swimlaneSize>320</swimlaneSize>
    <swimlaneSize>1204</swimlaneSize>
    <swimlaneColor>-16711783</swimlaneColor>
    <swimlaneColor>-16724788</swimlaneColor>
    <swimlaneColor>-3355393</swimlaneColor>
</elementInfo>
' #txt
>Proto Cs0 .type ch.ivyteam.ivy.workflow.ui.cases.CaseNoteDisplayList.CaseNoteDisplayListData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 .rdData2UIAction 'panel.addNoteButton.enabled=in.#fCase is initialized && 
(in.fCase.getState().compareTo(ch.ivyteam.ivy.workflow.CaseState.DONE)!=0);
panel.caseNotesTable.listData=in.caseNotes;
panel.deleteNoteButton.enabled=in.#currentNote is initialized && 
in.currentNote.getWritter().getName().equals(ivy.session.getSessionUserName()) &&
(in.fCase.getState().compareTo(ch.ivyteam.ivy.workflow.CaseState.DONE)!=0);
panel.footerLabel.text=(!in.#caseNotes is initialized? 
	"": 
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/found") + " " + in.caseNotes.size() + " " + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/note"));
' #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f3 mainOut f12 tail #connect
Cs0 f12 head f11 in #connect
Cs0 f11 out f15 tail #connect
Cs0 f15 head f13 mainIn #connect
Cs0 f1 mainOut f18 tail #connect
Cs0 f18 head f17 in #connect
Cs0 f17 out f14 tail #connect
Cs0 f14 head f13 mainIn #connect
Cs0 f17 out f19 tail #connect
Cs0 f19 head f6 mainIn #connect
Cs0 f36 mainOut f39 tail #connect
Cs0 f39 head f38 in #connect
Cs0 f38 out f41 tail #connect
Cs0 f41 head f40 mainIn #connect
Cs0 f43 out f45 tail #connect
Cs0 f45 head f35 mainIn #connect
Cs0 f35 mainOut f46 tail #connect
Cs0 f46 head f22 mainIn #connect
Cs0 f43 out f47 tail #connect
Cs0 f47 head f22 mainIn #connect
Cs0 f21 mainOut f25 tail #connect
Cs0 f25 head f24 mainIn #connect
Cs0 f32 mainOut f37 tail #connect
Cs0 f37 head f22 mainIn #connect
Cs0 f27 mainOut f23 tail #connect
Cs0 f23 head f34 mainIn #connect
Cs0 f34 mainOut f48 tail #connect
Cs0 f48 head f32 mainIn #connect
Cs0 f24 mainOut f50 tail #connect
Cs0 f50 head f32 mainIn #connect
Cs0 f38 out f51 tail #connect
Cs0 f51 head f33 mainIn #connect
Cs0 f33 mainOut f42 tail #connect
Cs0 f42 head f22 mainIn #connect
Cs0 f26 mainOut f53 tail #connect
Cs0 f53 head f52 in #connect
Cs0 f52 out f29 tail #connect
Cs0 f29 head f28 mainIn #connect
Cs0 f52 out f56 tail #connect
Cs0 f56 head f55 mainIn #connect
Cs0 f55 mainOut f54 tail #connect
Cs0 f54 head f22 mainIn #connect
Cs0 f28 mainOut f58 tail #connect
Cs0 f58 head f57 mainIn #connect
Cs0 f57 mainOut f49 tail #connect
Cs0 f49 head f34 mainIn #connect
Cs0 f40 mainOut f59 tail #connect
Cs0 f59 head f57 mainIn #connect
Cs0 f13 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
Cs0 f0 mainOut f10 tail #connect
Cs0 f10 head f6 mainIn #connect
Cs0 f4 mainOut f5 tail #connect
Cs0 f5 head f11 in #connect
Cs0 f16 mainOut f30 tail #connect
Cs0 f30 head f20 mainIn #connect
Cs0 f31 mainOut f63 tail #connect
Cs0 f63 head f43 in #connect
Cs0 f11 out f61 tail #connect
Cs0 f61 head f44 mainIn #connect
Cs0 f8 mainOut f2 tail #connect
Cs0 f2 head f44 mainIn #connect
Cs0 f20 mainOut f62 tail #connect
Cs0 f62 head f9 mainIn #connect
