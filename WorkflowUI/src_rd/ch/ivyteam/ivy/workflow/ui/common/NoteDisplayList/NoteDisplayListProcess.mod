[Ivy]
[>Created: Mon Mar 03 10:33:23 CET 2008]
116A48BC4EADC78E 3.10 #module
>Proto >Proto Collection #zClass
Ts0 NoteDisplayListProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 guid 116A4A93D3AD34C6 #txt
Ts0 f0 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f0 method start() #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 embeddedRdInitializations '* ' #txt
Ts0 f0 102 70 20 20 13 0 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 f1 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f1 99 283 26 26 14 0 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogMethodStart f3 '' #zField
Ts0 f3 guid 116A4A95BB38DF2F #txt
Ts0 f3 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f3 method setTask(ch.ivyteam.ivy.workflow.ITask) #txt
Ts0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ITask aTask> param = methodEvent.getInputArguments();
' #txt
Ts0 f3 inParameterMapAction 'out.task=param.aTask;
' #txt
Ts0 f3 outParameterDecl '<> result;
' #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setTask(ITask)</name>
        <nameStyle>14,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 286 70 20 20 13 0 #rect
Ts0 f3 @|RichDialogMethodStartIcon #fIcon
Ts0 @RichDialogProcessEnd f4 '' #zField
Ts0 f4 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f4 371 315 26 26 14 0 #rect
Ts0 f4 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStep f6 '' #zField
Ts0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>load the notes of 
the current task</name>
        <nameStyle>35,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f6 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData out;
' #txt
Ts0 f6 actionTable 'out=in;
' #txt
Ts0 f6 actionCode 'import ch.ivyteam.ivy.workflow.INote;

out.taskNotes = [];
out.caseNotes = [];

if (out.#task != null)
{
   java.util.List taskNotesListTmp = out.task.getNotes();
   out.taskNotes.clear();
   out.taskNotes.addAll(taskNotesListTmp);

   java.util.List caseNotesListTmp = out.task.getCase().getNotes();
   out.caseNotes.clear();
   out.caseNotes.addAll(caseNotesListTmp);
}


' #txt
Ts0 f6 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f6 278 172 36 24 20 -2 #rect
Ts0 f6 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f7 '' #zField
Ts0 f7 expr out #txt
Ts0 f7 296 90 296 172 #arcP
Ts0 @RichDialogProcessStart f8 '' #zField
Ts0 f8 guid 116A4C6379414C08 #txt
Ts0 f8 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f8 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData out;
' #txt
Ts0 f8 actionTable 'out=in;
' #txt
Ts0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>okAddNote</name>
        <nameStyle>9,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f8 750 62 20 20 13 0 #rect
Ts0 f8 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessStep f11 '' #zField
Ts0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build the note
acc. to the type (case/task) 
and message
show the corr. tab</name>
        <nameStyle>75,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f11 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData out;
' #txt
Ts0 f11 actionTable 'out=in;
' #txt
Ts0 f11 actionCode 'import ch.ivyteam.ivy.workflow.INote;

String message = panel.messageTextArea.text;

if (panel.taskNoteRadioButton.isSelected())
{
   out.task.createNote(ivy.session, message);
   java.util.List taskNotesListTmp = out.task.getNotes();
   out.taskNotes.clear();
   out.taskNotes.addAll(taskNotesListTmp);
}
else
{
   if (panel.caseNoteRadioButton.isSelected())
   {
      out.task.getCase().createNote(ivy.session, message);
      java.util.List caseNotesListTmp = out.task.getCase().getNotes();
      out.caseNotes.clear();
      out.caseNotes.addAll(caseNotesListTmp);
   }
}


panel.addNoteCollapsiblePane.collapsed = true;

if (out.#tabToShow != null)
{ 
   panel.notesTabbedPane.setSelectedComponent(out.tabToShow);
}


// delete the message value
panel.messageTextArea.text = "";' #txt
Ts0 f11 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f11 742 164 36 24 20 -2 #rect
Ts0 f11 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f12 '' #zField
Ts0 f12 expr out #txt
Ts0 f12 760 82 760 164 #arcP
Ts0 @RichDialogProcessStart f13 '' #zField
Ts0 f13 guid 116A4CE00BDB972F #txt
Ts0 f13 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f13 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData out;
' #txt
Ts0 f13 actionTable 'out=in;
' #txt
Ts0 f13 actionCode 'panel.caseNoteRadioButton.selected = true;
panel.messageTextArea.text = "";
panel.addNoteCollapsiblePane.collapsed = true;' #txt
Ts0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>cancelAddNote</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f13 1078 62 20 20 13 0 #rect
Ts0 f13 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f14 '' #zField
Ts0 f14 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f14 1075 275 26 26 14 0 #rect
Ts0 f14 @|RichDialogProcessEndIcon #fIcon
Ts0 @PushWFArc f15 '' #zField
Ts0 f15 expr out #txt
Ts0 f15 1088 82 1088 275 #arcP
Ts0 @RichDialogProcessStep f16 '' #zField
Ts0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f16 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData out;
' #txt
Ts0 f16 actionTable 'out=in;
out.taskNotes=[];
out.caseNotes=[];
' #txt
Ts0 f16 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f16 94 164 36 24 20 -2 #rect
Ts0 f16 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f17 '' #zField
Ts0 f17 expr out #txt
Ts0 f17 112 90 112 164 #arcP
Ts0 @PushWFArc f2 '' #zField
Ts0 f2 expr out #txt
Ts0 f2 112 188 112 283 #arcP
Ts0 @RichDialogProcessStart f18 '' #zField
Ts0 f18 guid 116A4F87215983F3 #txt
Ts0 f18 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f18 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData out;
' #txt
Ts0 f18 actionTable 'out=in;
' #txt
Ts0 f18 actionCode 'panel.addNoteCollapsiblePane.collapsed =!panel.addNoteCollapsiblePane.collapsed;' #txt
Ts0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toggleAddNote</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f18 110 366 20 20 13 0 #rect
Ts0 f18 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f19 '' #zField
Ts0 f19 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f19 107 579 26 26 14 0 #rect
Ts0 f19 @|RichDialogProcessEndIcon #fIcon
Ts0 @PushWFArc f20 '' #zField
Ts0 f20 expr out #txt
Ts0 f20 120 386 120 579 #arcP
Ts0 @RichDialogProcessStart f21 '' #zField
Ts0 f21 guid 116A4FAE8C1FFB8B #txt
Ts0 f21 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f21 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData out;
' #txt
Ts0 f21 actionTable 'out=in;
' #txt
Ts0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteNote</name>
        <nameStyle>10,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f21 958 62 20 20 13 0 #rect
Ts0 f21 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessStart f24 '' #zField
Ts0 f24 guid 116A52709D417978 #txt
Ts0 f24 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f24 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData out;
' #txt
Ts0 f24 actionTable 'out=in;
' #txt
Ts0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showNotesList</name>
        <nameStyle>13,5,6,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f24 1262 70 20 20 13 0 #rect
Ts0 f24 @|RichDialogProcessStartIcon #fIcon
Ts0 @RichDialogProcessEnd f25 '' #zField
Ts0 f25 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f25 1259 275 26 26 14 0 #rect
Ts0 f25 @|RichDialogProcessEndIcon #fIcon
Ts0 @RichDialogProcessStep f27 '' #zField
Ts0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f27 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData out;
' #txt
Ts0 f27 actionTable 'out=in;
' #txt
Ts0 f27 actionCode 'if (panel.taskNoteRadioButton.selected)
{
   //panel.notesTabbedPane.setSelectedComponent(panel.taskNotesScrollPane);
   out.tabToShow = panel.taskNotesScrollPane;

}
else
{
   if (panel.caseNoteRadioButton.selected)
   {
      //panel.notesTabbedPane.setSelectedComponent(panel.caseNotesScrollPane);
      out.tabToShow = panel.caseNotesScrollPane;
   }
   else
   {
      out.tabToShow = null;
   }
}
' #txt
Ts0 f27 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f27 1254 172 36 24 20 -2 #rect
Ts0 f27 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f28 '' #zField
Ts0 f28 expr out #txt
Ts0 f28 1272 90 1272 172 #arcP
Ts0 @PushWFArc f26 '' #zField
Ts0 f26 expr out #txt
Ts0 f26 1272 196 1272 275 #arcP
Ts0 @RichDialogProcessStep f29 '' #zField
Ts0 f29 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Ts0 f29 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData out;
' #txt
Ts0 f29 actionTable 'out=in;
' #txt
Ts0 f29 actionCode 'import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.workflow.INote;


// check if it is case notes or task notes
if (panel.notesTabbedPane.#selectedComponent != null && 
    panel.notesTabbedPane.selectedComponent instanceof RScrollPane)
{
   if (panel.notesTabbedPane.selectedIndex == 0 && panel.caseNotesTable.#selectedListEntry != null)
   {
      // selected case note to delete
      out.task.getCase().deleteNote(panel.caseNotesTable.selectedListEntry as INote);

      java.util.List caseNotes = out.task.getCase().getNotes();
      out.caseNotes.clear();
      out.caseNotes.addAll(caseNotes);
   }
   else
   {
      if (panel.notesTabbedPane.selectedIndex == 1 && panel.taskNotesTable.#selectedListEntry != null)
      {  
         // task note to delete
         out.task.deleteNote(panel.taskNotesTable.selectedListEntry as INote);

         java.util.List taskNotesList = out.task.getNotes();
         out.taskNotes.clear();
         out.taskNotes.addAll(taskNotesList);
      }
   }
}' #txt
Ts0 f29 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f29 950 156 36 24 20 -2 #rect
Ts0 f29 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f30 '' #zField
Ts0 f30 expr out #txt
Ts0 f30 968 82 968 156 #arcP
Ts0 @RichDialogMethodStart f31 '' #zField
Ts0 f31 guid 116C4AF766765B63 #txt
Ts0 f31 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f31 method clear() #txt
Ts0 f31 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ts0 f31 outParameterDecl '<> result;
' #txt
Ts0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>clear()</name>
    </language>
</elementInfo>
' #txt
Ts0 f31 486 70 20 20 13 0 #rect
Ts0 f31 @|RichDialogMethodStartIcon #fIcon
Ts0 @RichDialogProcessStep f34 '' #zField
Ts0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Set values to null</name>
        <nameStyle>18,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f34 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData out;
' #txt
Ts0 f34 actionTable 'out=in;
out.caseNotes=null;
out.currentNote=null;
out.task=null;
out.taskNotes=null;
' #txt
Ts0 f34 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f34 478 172 36 24 20 -2 #rect
Ts0 f34 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f35 '' #zField
Ts0 f35 expr out #txt
Ts0 f35 496 90 496 172 #arcP
Ts0 @RichDialogProcessStep f36 '' #zField
Ts0 f36 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Update the tabs texts 
with the number of notes</name>
        <nameStyle>47,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f36 actionDecl 'ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData out;
' #txt
Ts0 f36 actionTable 'out=in;
' #txt
Ts0 f36 actionCode 'panel.notesTabbedPane.setTitleAt(0, "Case notes " + (out.caseNotes.size()>0?" (" + out.caseNotes.size().toString() + ")":"") );

panel.notesTabbedPane.setTitleAt(1, "Task notes " + (out.taskNotes.size()>0?" (" + out.taskNotes.size().toString() + ")":"") );
' #txt
Ts0 f36 type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
Ts0 f36 366 268 36 24 20 -2 #rect
Ts0 f36 @|RichDialogProcessStepIcon #fIcon
Ts0 @PushWFArc f37 '' #zField
Ts0 f37 expr out #txt
Ts0 f37 307 196 373 268 #arcP
Ts0 @PushWFArc f5 '' #zField
Ts0 f5 expr out #txt
Ts0 f5 384 292 384 315 #arcP
Ts0 @PushWFArc f38 '' #zField
Ts0 f38 expr out #txt
Ts0 f38 482 196 398 268 #arcP
Ts0 @PushWFArc f32 '' #zField
Ts0 f32 expr out #txt
Ts0 f32 742 181 402 275 #arcP
Ts0 @PushWFArc f10 '' #zField
Ts0 f10 expr out #txt
Ts0 f10 968 180 402 279 #arcP
Ts0 f10 1 968 248 #addKink
Ts0 f10 1 0.43023646502564233 0 0 #arcLabel
Ts0 f3 mainOut f7 tail #connect
Ts0 f7 head f6 mainIn #connect
Ts0 f8 mainOut f12 tail #connect
Ts0 f12 head f11 mainIn #connect
Ts0 f13 mainOut f15 tail #connect
Ts0 f15 head f14 mainIn #connect
Ts0 f0 mainOut f17 tail #connect
Ts0 f17 head f16 mainIn #connect
Ts0 f16 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
Ts0 f18 mainOut f20 tail #connect
Ts0 f20 head f19 mainIn #connect
Ts0 f24 mainOut f28 tail #connect
Ts0 f28 head f27 mainIn #connect
Ts0 f27 mainOut f26 tail #connect
Ts0 f26 head f25 mainIn #connect
Ts0 f21 mainOut f30 tail #connect
Ts0 f30 head f29 mainIn #connect
Ts0 f31 mainOut f35 tail #connect
Ts0 f35 head f34 mainIn #connect
Ts0 f6 mainOut f37 tail #connect
Ts0 f37 head f36 mainIn #connect
Ts0 f36 mainOut f5 tail #connect
Ts0 f5 head f4 mainIn #connect
Ts0 f34 mainOut f38 tail #connect
Ts0 f38 head f36 mainIn #connect
Ts0 f11 mainOut f32 tail #connect
Ts0 f32 head f36 mainIn #connect
Ts0 f29 mainOut f10 tail #connect
Ts0 f10 head f36 mainIn #connect
>Proto Ts0 Ts0 NoteDisplayListProcess #zField
>Proto Ts0 .type ch.ivyteam.ivy.workflow.ui.common.NoteDisplayList.NoteDisplayListData #txt
>Proto Ts0 .processKind RICH_DIALOG #txt
>Proto Ts0 .rdData2UIAction 'panel.caseNotesTable.listData=in.caseNotes;
panel.taskNotesTable.listData=in.taskNotes;
' #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
