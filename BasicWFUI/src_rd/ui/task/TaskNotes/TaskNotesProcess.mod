[Ivy]
[>Created: Thu Dec 31 12:08:37 CET 2009]
125DF5E2D6A7041C 3.13 #module
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
Cs0 @RichDialogProcessEnd f6 '' #zField
Cs0 @RichDialogProcessStep f13 '' #zField
Cs0 @Alternative f17 '' #zField
Cs0 @PushWFArc f14 '' #zField
Cs0 @PushWFArc f19 '' #zField
Cs0 @RichDialogProcessStart f21 '' #zField
Cs0 @RichDialogProcessEnd f22 '' #zField
Cs0 @RichDialogProcessStep f24 '' #zField
Cs0 @RichDialogProcessStart f26 '' #zField
Cs0 @RichDialogProcessStart f27 '' #zField
Cs0 @RichDialogProcessStep f28 '' #zField
Cs0 @RichDialogProcessStep f32 '' #zField
Cs0 @RichDialogProcessStart f31 '' #zField
Cs0 @RichDialogProcessStart f36 '' #zField
Cs0 @Alternative f38 '' #zField
Cs0 @PushWFArc f39 '' #zField
Cs0 @RichDialogProcessStep f40 '' #zField
Cs0 @PushWFArc f41 '' #zField
Cs0 @Alternative f43 '' #zField
Cs0 @PushWFArc f44 '' #zField
Cs0 @RichDialogProcessStep f35 '' #zField
Cs0 @PushWFArc f45 '' #zField
Cs0 @PushWFArc f46 '' #zField
Cs0 @PushWFArc f47 '' #zField
Cs0 @PushWFArc f25 '' #zField
Cs0 @PushWFArc f37 '' #zField
Cs0 @RichDialogProcessStep f34 '' #zField
Cs0 @PushWFArc f23 '' #zField
Cs0 @PushWFArc f48 '' #zField
Cs0 @PushWFArc f50 '' #zField
Cs0 @RichDialogProcessStep f33 '' #zField
Cs0 @PushWFArc f51 '' #zField
Cs0 @PushWFArc f42 '' #zField
Cs0 @RichDialogProcessStep f55 '' #zField
Cs0 @Alternative f52 '' #zField
Cs0 @PushWFArc f53 '' #zField
Cs0 @PushWFArc f29 '' #zField
Cs0 @PushWFArc f54 '' #zField
Cs0 @PushWFArc f56 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @RichDialogInitStart f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @PushWFArc f16 '' #zField
Cs0 @RichDialogProcessStart f18 '' #zField
Cs0 @RichDialogProcessStep f20 '' #zField
Cs0 @PushWFArc f49 '' #zField
Cs0 @PushWFArc f60 '' #zField
Cs0 @PushWFArc f3 '' #zField
Cs0 @PushWFArc f4 '' #zField
Cs0 @RichDialogEnd f5 '' #zField
Cs0 @RichDialogProcessStart f8 '' #zField
Cs0 @PushWFArc f9 '' #zField
>Proto Cs0 Cs0 CaseNoteDisplayListProcess #zField
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 guid 118AD9B8366C0E79 #txt
Cs0 f0 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f0 method start() #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.task=null;
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 embeddedRdInitializations '* ' #txt
Cs0 f0 110 118 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f6 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f6 107 347 26 26 14 0 #rect
Cs0 f6 @|RichDialogProcessEndIcon #fIcon
Cs0 f13 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f13 actionTable 'out=in;
' #txt
Cs0 f13 actionCode 'import ch.ivyteam.ivy.workflow.INote;

if (out.#task != null)
{
	java.util.List notesList = out.task.getNotes();
	java.util.List caseNotesList = out.task.getCase().getNotes();
	out.taskNotes.clear();
	for(int i =0; i<notesList.size(); i++)
	{
		out.taskNotes.add(new Tree(notesList.get(i),"task"));	
	}
	for(int i =0; i<caseNotesList.size(); i++)
	{
		for(int j =0; j<=notesList.size(); j++)
		{
			if(j== notesList.size() 
				||(caseNotesList.get(i) as INote).getIdentifier() < (notesList.get(j) as INote).getIdentifier())
			{
				out.taskNotes.add(j+i,new Tree(caseNotesList.get(i),"case"));	
				break;
			}
		}
	}
}' #txt
Cs0 f13 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load the 
task and case notes</name>
        <nameStyle>29,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f13 190 276 36 24 25 -15 #rect
Cs0 f13 @|RichDialogProcessStepIcon #fIcon
Cs0 f17 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f17 194 170 28 28 14 0 #rect
Cs0 f17 @|AlternativeIcon #fIcon
Cs0 f14 expr in #txt
Cs0 f14 outCond in.loadDataAtStart #txt
Cs0 f14 208 198 208 276 #arcP
Cs0 f14 0 0.5130137554051627 0 0 #arcLabel
Cs0 f19 expr in #txt
Cs0 f19 194 184 121 347 #arcP
Cs0 f19 1 144 184 #addKink
Cs0 f19 1 0.4315249048602644 0 0 #arcLabel
Cs0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showNoteDetailsEditArea</name>
        <nameStyle>23,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f21 guid 118ADB53D66C046C #txt
Cs0 f21 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f21 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f21 actionTable 'out=in;
' #txt
Cs0 f21 110 430 20 20 13 0 #rect
Cs0 f21 @|RichDialogProcessStartIcon #fIcon
Cs0 f22 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f22 107 763 26 26 14 0 #rect
Cs0 f22 @|RichDialogProcessEndIcon #fIcon
Cs0 f24 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f24 actionTable 'out=in;
' #txt
Cs0 f24 actionCode 'panel.addNoteCollapsiblePane.collapsed = false;
panel.radioBoxPane.visible = true;

' #txt
Cs0 f24 type ui.task.TaskNotes.TaskNotesData #txt
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
Cs0 f24 102 588 36 24 20 -2 #rect
Cs0 f24 @|RichDialogProcessStepIcon #fIcon
Cs0 f26 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>okAddNote</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f26 guid 118ADB9107AACAF7 #txt
Cs0 f26 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f26 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f26 actionTable 'out=in;
' #txt
Cs0 f26 350 438 20 20 13 0 #rect
Cs0 f26 @|RichDialogProcessStartIcon #fIcon
Cs0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancelAddNote</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f27 guid 118ADB919AC68901 #txt
Cs0 f27 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f27 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f27 actionTable 'out=in;
' #txt
Cs0 f27 542 438 20 20 13 0 #rect
Cs0 f27 @|RichDialogProcessStartIcon #fIcon
Cs0 f28 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f28 actionTable 'out=in;
' #txt
Cs0 f28 actionCode 'import ch.ivyteam.ivy.workflow.INote;
INote theNote;

String message = panel.noteTextArea.text;

if(panel.taskNoteRadioButton.isSelected())
{
	theNote = in.task.createNote(ivy.session, message);
	out.taskNotes.add(new Tree(theNote,"task"));
}
else
{
	theNote = in.task.getCase().createNote(ivy.session, message);		
	out.taskNotes.add(new Tree(theNote,"case"));
}



panel.footerLabel.text = "Note created.";' #txt
Cs0 f28 type ui.task.TaskNotes.TaskNotesData #txt
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
Cs0 f28 342 548 36 24 20 -2 #rect
Cs0 f28 @|RichDialogProcessStepIcon #fIcon
Cs0 f32 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
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
Cs0 f32 type ui.task.TaskNotes.TaskNotesData #txt
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
Cs0 f32 102 716 36 24 20 -2 #rect
Cs0 f32 @|RichDialogProcessStepIcon #fIcon
Cs0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>displayNoteDetails</name>
        <nameStyle>18,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f31 guid 118E691FC3D42FFF #txt
Cs0 f31 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f31 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f31 actionTable 'out=in;
' #txt
Cs0 f31 942 438 20 20 13 0 #rect
Cs0 f31 @|RichDialogProcessStartIcon #fIcon
Cs0 f36 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteNote</name>
        <nameStyle>10,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f36 guid 118E6A74F859323B #txt
Cs0 f36 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f36 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f36 actionTable 'out=in;
' #txt
Cs0 f36 662 438 20 20 13 0 #rect
Cs0 f36 @|RichDialogProcessStartIcon #fIcon
Cs0 f38 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f38 658 482 28 28 14 0 #rect
Cs0 f38 @|AlternativeIcon #fIcon
Cs0 f39 expr out #txt
Cs0 f39 672 458 672 482 #arcP
Cs0 f39 0 0.723598101685658 0 0 #arcLabel
Cs0 f40 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f40 actionTable 'out=in;
' #txt
Cs0 f40 actionCode 'import ch.ivyteam.ivy.workflow.INote;

out.currentNote = (panel.taskNotesTable.getSelectedListEntry() as Tree).value as INote;
panel.footerLabel.text = "Note with id" + out.currentNote.getIdentifier().toString() + " deleted.";
if(in.task.getNotes().contains(out.currentNote))
{
	out.task.deleteNote(out.currentNote);
}
else
{
	out.task.getCase().deleteNote(out.currentNote);
}
out.taskNotes.removeAt(panel.taskNotesTable.getSelectedRow());

' #txt
Cs0 f40 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f40 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete the 
current
selected note</name>
        <nameStyle>33,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f40 654 565 36 23 20 -2 #rect
Cs0 f40 @|RichDialogProcessStepIcon #fIcon
Cs0 f41 expr in #txt
Cs0 f41 outCond 'panel.taskNotesTable.getSelectedListEntry() != null' #txt
Cs0 f41 672 510 672 564 #arcP
Cs0 f41 0 0.8846092272187099 0 0 #arcLabel
Cs0 f43 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f43 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f43 938 546 28 28 14 0 #rect
Cs0 f43 @|AlternativeIcon #fIcon
Cs0 f44 expr out #txt
Cs0 f44 952 458 952 546 #arcP
Cs0 f44 0 0.48490258970574446 0 0 #arcLabel
Cs0 f35 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f35 actionTable 'out=in;
' #txt
Cs0 f35 actionCode 'import ch.ivyteam.ivy.workflow.INote;


out.currentNote = (panel.taskNotesTable.getSelectedListEntry() as Tree).value as INote;


panel.noteDetailsIdWritterCreationTimestampGridBagLayoutPane.visible = true;
panel.radioBoxPane.visible = false;


panel.noteIdTextField.text = out.currentNote.getIdentifier().toString();
panel.visibilityTextField.text = in.task.getCase().getNotes().contains(out.currentNote) ? "Case" : "Task";
panel.noteWritterTextField.text = out.currentNote.getWritterName();
panel.noteCreationTimestampTextField.text = out.currentNote.getCreationTimestamp().toString();
panel.noteTextArea.text = out.currentNote.getMessage();
panel.noteTextArea.editable = false;


panel.addNoteFlowLayoutPane.visible = false;

panel.addNoteCollapsiblePane.collapsed = false;

panel.footerLabel.text = "";' #txt
Cs0 f35 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get the 
selected note</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f35 934 628 36 24 20 -2 #rect
Cs0 f35 @|RichDialogProcessStepIcon #fIcon
Cs0 f45 expr in #txt
Cs0 f45 outCond 'panel.taskNotesTable.getSelectedListEntry() != null && panel.taskNotesTable.getSelectedListEntry() instanceof ch.ivyteam.ivy.workflow.INote' #txt
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
Cs0 f45 952 574 952 628 #arcP
Cs0 f46 expr out #txt
Cs0 f46 952 652 132 775 #arcP
Cs0 f46 1 952 760 #addKink
Cs0 f46 1 0.4241208457839823 0 0 #arcLabel
Cs0 f47 expr in #txt
Cs0 f47 966 560 133 776 #arcP
Cs0 f47 1 1064 560 #addKink
Cs0 f47 2 1064 776 #addKink
Cs0 f47 2 0.38841056492840004 0 0 #arcLabel
Cs0 f25 expr out #txt
Cs0 f25 120 450 120 588 #arcP
Cs0 f37 expr out #txt
Cs0 f37 120 740 120 763 #arcP
Cs0 f37 0 0.46686485242491615 0 0 #arcLabel
Cs0 f34 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f34 actionTable 'out=in;
' #txt
Cs0 f34 actionCode 'panel.addNoteCollapsiblePane.collapsed = true;' #txt
Cs0 f34 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collapse the container</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f34 342 668 36 24 20 -2 #rect
Cs0 f34 @|RichDialogProcessStepIcon #fIcon
Cs0 f23 expr out #txt
Cs0 f23 552 458 378 680 #arcP
Cs0 f23 1 552 680 #addKink
Cs0 f23 0 0.9865600422072262 0 0 #arcLabel
Cs0 f48 expr out #txt
Cs0 f48 360 692 138 728 #arcP
Cs0 f48 1 360 728 #addKink
Cs0 f48 1 0.3687546692219806 0 0 #arcLabel
Cs0 f50 expr out #txt
Cs0 f50 120 612 120 716 #arcP
Cs0 f33 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f33 actionTable 'out=in;
' #txt
Cs0 f33 actionCode 'panel.footerLabel.text = "Invalid note selection to delete";' #txt
Cs0 f33 type ui.task.TaskNotes.TaskNotesData #txt
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
Cs0 f33 774 556 36 24 20 -2 #rect
Cs0 f33 @|RichDialogProcessStepIcon #fIcon
Cs0 f51 expr in #txt
Cs0 f51 686 496 792 556 #arcP
Cs0 f51 1 792 496 #addKink
Cs0 f51 1 0.7776022163375874 0 0 #arcLabel
Cs0 f42 expr out #txt
Cs0 f42 792 580 132 775 #arcP
Cs0 f42 1 792 744 #addKink
Cs0 f42 1 0.45747378339512 0 0 #arcLabel
Cs0 f55 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f55 actionTable 'out=in;
' #txt
Cs0 f55 actionCode 'panel.footerLabel.text = "It is not possible to create an empty note.";' #txt
Cs0 f55 type ui.task.TaskNotes.TaskNotesData #txt
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
Cs0 f55 454 556 36 24 20 -2 #rect
Cs0 f55 @|RichDialogProcessStepIcon #fIcon
Cs0 f52 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f52 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Cs0 f52 346 482 28 28 14 0 #rect
Cs0 f52 @|AlternativeIcon #fIcon
Cs0 f53 expr out #txt
Cs0 f53 360 458 360 482 #arcP
Cs0 f29 expr in #txt
Cs0 f29 outCond 'panel.noteTextArea.text.length() > 0' #txt
Cs0 f29 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>note text
is not empty</name>
        <nameStyle>22,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f29 360 510 360 548 #arcP
Cs0 f54 expr in #txt
Cs0 f54 374 496 472 556 #arcP
Cs0 f54 1 472 496 #addKink
Cs0 f54 0 0.6972142049218332 0 0 #arcLabel
Cs0 f56 expr out #txt
Cs0 f56 472 580 132 774 #arcP
Cs0 f56 1 472 744 #addKink
Cs0 f56 1 0.313898984769318 0 0 #arcLabel
Cs0 f7 expr out #txt
Cs0 f7 208 300 132 357 #arcP
Cs0 f7 1 208 344 #addKink
Cs0 f7 0 0.686927388582642 0 0 #arcLabel
Cs0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ITask,Boolean)</name>
        <nameStyle>20,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f1 guid 1194BF80C6BD7E9C #txt
Cs0 f1 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f1 method start(ch.ivyteam.ivy.workflow.ITask) #txt
Cs0 f1 disableUIEvents false #txt
Cs0 f1 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ITask aTask> param = methodEvent.getInputArguments();
' #txt
Cs0 f1 inParameterMapAction 'out.loadDataAtStart=true;
out.task=param.aTask;
' #txt
Cs0 f1 outParameterDecl '<> result;
' #txt
Cs0 f1 embeddedRdInitializations '* ' #txt
Cs0 f1 198 118 20 20 13 0 #rect
Cs0 f1 @|RichDialogInitStartIcon #fIcon
Cs0 f2 expr out #txt
Cs0 f2 208 138 208 170 #arcP
Cs0 f16 expr out #txt
Cs0 f16 120 138 120 347 #arcP
Cs0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f18 guid 11B45C6915FFBE65 #txt
Cs0 f18 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f18 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f18 actionTable 'out=in;
' #txt
Cs0 f18 358 238 20 20 13 0 #rect
Cs0 f18 @|RichDialogProcessStartIcon #fIcon
Cs0 f20 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f20 actionTable 'out=in;
' #txt
Cs0 f20 actionCode 'import com.ulcjava.base.application.border.ULCTitledBorder;


(panel.noteDetailsEditGridBagLayoutPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/noteDetails"));
	
(panel.taskNotesScrollPane.getBorder() as ULCTitledBorder).setTitle(
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/task/plainStrings/taskNotes"));' #txt
Cs0 f20 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set titles on borders 
with cms entries</name>
        <nameStyle>39,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f20 350 292 36 24 20 -2 #rect
Cs0 f20 @|RichDialogProcessStepIcon #fIcon
Cs0 f49 expr out #txt
Cs0 f49 368 316 133 360 #arcP
Cs0 f49 1 368 360 #addKink
Cs0 f49 1 0.4278705357231431 0 0 #arcLabel
Cs0 f60 expr out #txt
Cs0 f60 368 258 368 292 #arcP
Cs0 f3 expr out #txt
Cs0 f3 672 587 360 668 #arcP
Cs0 f3 1 672 624 #addKink
Cs0 f3 2 360 624 #addKink
Cs0 f3 1 0.5478396615204615 0 0 #arcLabel
Cs0 f4 expr out #txt
Cs0 f4 360 572 360 668 #arcP
Cs0 f5 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f5 guid 125E46BED57978AB #txt
Cs0 f5 526 230 20 20 13 0 #rect
Cs0 f5 @|RichDialogEndIcon #fIcon
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RD_Event_Exit</name>
        <nameStyle>13,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f8 guid 125E46BFE493CCCC #txt
Cs0 f8 type ui.task.TaskNotes.TaskNotesData #txt
Cs0 f8 actionDecl 'ui.task.TaskNotes.TaskNotesData out;
' #txt
Cs0 f8 actionTable 'out=in;
' #txt
Cs0 f8 526 118 20 20 13 0 #rect
Cs0 f8 @|RichDialogProcessStartIcon #fIcon
Cs0 f9 expr out #txt
Cs0 f9 536 138 536 230 #arcP
>Proto Cs0 .type ui.task.TaskNotes.TaskNotesData #txt
>Proto Cs0 .processKind RICH_DIALOG #txt
>Proto Cs0 .rdData2UIAction 'panel.footerLabel.text=(in.#taskNotes == null? 
	"": 
	ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/found") + " " + in.taskNotes.size() + " " + ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/note/plainStrings/note"));
panel.taskNotesTable.listData=in.taskNotes;
' #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f17 out f14 tail #connect
Cs0 f14 head f13 mainIn #connect
Cs0 f17 out f19 tail #connect
Cs0 f19 head f6 mainIn #connect
Cs0 f36 mainOut f39 tail #connect
Cs0 f39 head f38 in #connect
Cs0 f38 out f41 tail #connect
Cs0 f41 head f40 mainIn #connect
Cs0 f31 mainOut f44 tail #connect
Cs0 f44 head f43 in #connect
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
Cs0 f52 out f54 tail #connect
Cs0 f54 head f55 mainIn #connect
Cs0 f55 mainOut f56 tail #connect
Cs0 f56 head f22 mainIn #connect
Cs0 f13 mainOut f7 tail #connect
Cs0 f7 head f6 mainIn #connect
Cs0 f1 mainOut f2 tail #connect
Cs0 f2 head f17 in #connect
Cs0 f0 mainOut f16 tail #connect
Cs0 f16 head f6 mainIn #connect
Cs0 f20 mainOut f49 tail #connect
Cs0 f49 head f6 mainIn #connect
Cs0 f18 mainOut f60 tail #connect
Cs0 f60 head f20 mainIn #connect
Cs0 f40 mainOut f3 tail #connect
Cs0 f3 head f34 mainIn #connect
Cs0 f28 mainOut f4 tail #connect
Cs0 f4 head f34 mainIn #connect
Cs0 f8 mainOut f9 tail #connect
Cs0 f9 head f5 mainIn #connect
