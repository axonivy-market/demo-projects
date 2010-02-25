[Ivy]
[>Created: Thu Feb 25 10:30:29 CET 2010]
126DC1957928F6DB 3.14 #module
>Proto >Proto Collection #zClass
Ps0 PageArchiveListProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @MessageFlowInP-0n messageIn messageIn #zField
Ps0 @MessageFlowOutP-0n messageOut messageOut #zField
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @RichDialogInitStart f3 '' #zField
Ps0 @RichDialogInitStart f4 '' #zField
Ps0 @RichDialogProcessEnd f5 '' #zField
Ps0 @RichDialogProcessEnd f6 '' #zField
Ps0 @RichDialogMethodStart f9 '' #zField
Ps0 @RichDialogMethodStart f10 '' #zField
Ps0 @RichDialogMethodStart f11 '' #zField
Ps0 @RichDialogMethodStart f12 '' #zField
Ps0 @RichDialogProcessEnd f13 '' #zField
Ps0 @RichDialogProcessEnd f14 '' #zField
Ps0 @RichDialogProcessEnd f15 '' #zField
Ps0 @RichDialogProcessEnd f16 '' #zField
Ps0 @PushWFArc f18 '' #zField
Ps0 @PushWFArc f19 '' #zField
Ps0 @PushWFArc f20 '' #zField
Ps0 @PushWFArc f21 '' #zField
Ps0 @RichDialogProcessStep f17 '' #zField
Ps0 @PushWFArc f22 '' #zField
Ps0 @PushWFArc f8 '' #zField
Ps0 @RichDialogProcessStep f23 '' #zField
Ps0 @PushWFArc f24 '' #zField
Ps0 @PushWFArc f7 '' #zField
Ps0 @RichDialogMethodStart f25 '' #zField
Ps0 @RichDialogProcessEnd f26 '' #zField
Ps0 @RichDialogProcessStep f28 '' #zField
Ps0 @PushWFArc f27 '' #zField
Ps0 @RichDialogProcessStart f30 '' #zField
Ps0 @PushWFArc f31 '' #zField
Ps0 @RichDialogProcessStep f32 '' #zField
Ps0 @PushWFArc f33 '' #zField
Ps0 @PushWFArc f29 '' #zField
Ps0 @RichDialogProcessStart f34 '' #zField
Ps0 @RichDialogProcessStep f35 '' #zField
Ps0 @PushWFArc f36 '' #zField
Ps0 @RichDialogProcessEnd f37 '' #zField
Ps0 @PushWFArc f38 '' #zField
Ps0 @RichDialogProcessStart f39 '' #zField
Ps0 @RichDialogProcessStep f40 '' #zField
Ps0 @PushWFArc f41 '' #zField
Ps0 @RichDialogProcessEnd f42 '' #zField
Ps0 @PushWFArc f43 '' #zField
Ps0 @RichDialogProcessStart f44 '' #zField
Ps0 @PushWFArc f45 '' #zField
>Proto Ps0 Ps0 PageArchiveListProcess #zField
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 guid 126DC19580F7932B #txt
Ps0 f0 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f0 method start() #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 90 40 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f1 90 140 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f2 expr out #txt
Ps0 f2 100 60 100 140 #arcP
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase)</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 guid 126DC1FDA0C28DBA #txt
Ps0 f3 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f3 method start(ch.ivyteam.ivy.workflow.ICase) #txt
Ps0 f3 disableUIEvents true #txt
Ps0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase case> param = methodEvent.getInputArguments();
' #txt
Ps0 f3 inParameterMapAction 'out.hideTaskFilter=false;
out.initCase=param.case;
' #txt
Ps0 f3 outParameterDecl '<> result;
' #txt
Ps0 f3 embeddedRdInitializations '* ' #txt
Ps0 f3 206 38 20 20 13 0 #rect
Ps0 f3 @|RichDialogInitStartIcon #fIcon
Ps0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ITask)</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f4 guid 126DC1FE75A4700D #txt
Ps0 f4 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f4 method start(ch.ivyteam.ivy.workflow.ITask) #txt
Ps0 f4 disableUIEvents true #txt
Ps0 f4 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ITask task> param = methodEvent.getInputArguments();
' #txt
Ps0 f4 inParameterMapAction 'out.hideTaskFilter=true;
out.selectedTask=param.task;
' #txt
Ps0 f4 outParameterDecl '<> result;
' #txt
Ps0 f4 embeddedRdInitializations '* ' #txt
Ps0 f4 326 38 20 20 13 0 #rect
Ps0 f4 @|RichDialogInitStartIcon #fIcon
Ps0 f5 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f5 206 142 20 20 13 0 #rect
Ps0 f5 @|RichDialogProcessEndIcon #fIcon
Ps0 f6 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f6 326 142 20 20 13 0 #rect
Ps0 f6 @|RichDialogProcessEndIcon #fIcon
Ps0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getCase()</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f9 guid 126DC215234C407F #txt
Ps0 f9 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f9 method getCase() #txt
Ps0 f9 disableUIEvents false #txt
Ps0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f9 outParameterDecl '<ch.ivyteam.ivy.workflow.ICase case> result;
' #txt
Ps0 f9 outParameterMapAction 'result.case=in.initCase;
' #txt
Ps0 f9 94 214 20 20 13 0 #rect
Ps0 f9 @|RichDialogMethodStartIcon #fIcon
Ps0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getTask()</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f10 guid 126DC21562BFA0E1 #txt
Ps0 f10 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f10 method getTask() #txt
Ps0 f10 disableUIEvents false #txt
Ps0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f10 outParameterDecl '<ch.ivyteam.ivy.workflow.ITask task> result;
' #txt
Ps0 f10 outParameterMapAction 'result.task=in.selectedTask;
' #txt
Ps0 f10 214 214 20 20 13 0 #rect
Ps0 f10 @|RichDialogMethodStartIcon #fIcon
Ps0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setCase(ICase)</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f11 guid 126DC2159D5442FD #txt
Ps0 f11 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f11 method setCase(ch.ivyteam.ivy.workflow.ICase) #txt
Ps0 f11 disableUIEvents false #txt
Ps0 f11 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ICase case> param = methodEvent.getInputArguments();
' #txt
Ps0 f11 inParameterMapAction 'out.hideTaskFilter=true;
out.initCase=param.case;
' #txt
Ps0 f11 inActionCode panel.reload(); #txt
Ps0 f11 outParameterDecl '<> result;
' #txt
Ps0 f11 94 318 20 20 13 0 #rect
Ps0 f11 @|RichDialogMethodStartIcon #fIcon
Ps0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setTask(ITask)</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f12 guid 126DC215D8E8514C #txt
Ps0 f12 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f12 method setTask(ch.ivyteam.ivy.workflow.ITask) #txt
Ps0 f12 disableUIEvents false #txt
Ps0 f12 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.workflow.ITask task> param = methodEvent.getInputArguments();
' #txt
Ps0 f12 inParameterMapAction 'out.selectedTask=param.task;
' #txt
Ps0 f12 inActionCode panel.reload(); #txt
Ps0 f12 outParameterDecl '<> result;
' #txt
Ps0 f12 214 318 20 20 13 0 #rect
Ps0 f12 @|RichDialogMethodStartIcon #fIcon
Ps0 f13 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f13 94 270 20 20 13 0 #rect
Ps0 f13 @|RichDialogProcessEndIcon #fIcon
Ps0 f14 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f14 214 270 20 20 13 0 #rect
Ps0 f14 @|RichDialogProcessEndIcon #fIcon
Ps0 f15 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f15 94 374 20 20 13 0 #rect
Ps0 f15 @|RichDialogProcessEndIcon #fIcon
Ps0 f16 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f16 214 374 20 20 13 0 #rect
Ps0 f16 @|RichDialogProcessEndIcon #fIcon
Ps0 f18 expr out #txt
Ps0 f18 224 338 224 374 #arcP
Ps0 f19 expr out #txt
Ps0 f19 104 338 104 374 #arcP
Ps0 f20 expr out #txt
Ps0 f20 224 234 224 270 #arcP
Ps0 f21 expr out #txt
Ps0 f21 104 234 104 270 #arcP
Ps0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reload panel</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData out;
' #txt
Ps0 f17 actionTable 'out=in;
' #txt
Ps0 f17 actionCode panel.reload(); #txt
Ps0 f17 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f17 198 84 36 24 20 -2 #rect
Ps0 f17 @|RichDialogProcessStepIcon #fIcon
Ps0 f22 expr out #txt
Ps0 f22 216 58 216 84 #arcP
Ps0 f8 expr out #txt
Ps0 f8 216 108 216 142 #arcP
Ps0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reload panel</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f23 actionDecl 'ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData out;
' #txt
Ps0 f23 actionTable 'out=in;
' #txt
Ps0 f23 actionCode panel.reload(); #txt
Ps0 f23 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f23 318 84 36 24 20 -2 #rect
Ps0 f23 @|RichDialogProcessStepIcon #fIcon
Ps0 f24 expr out #txt
Ps0 f24 336 58 336 84 #arcP
Ps0 f7 expr out #txt
Ps0 f7 336 108 336 142 #arcP
Ps0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reload()</name>
    </language>
</elementInfo>
' #txt
Ps0 f25 guid 126DC292292A4A61 #txt
Ps0 f25 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f25 method reload() #txt
Ps0 f25 disableUIEvents false #txt
Ps0 f25 350 214 20 20 13 0 #rect
Ps0 f25 @|RichDialogMethodStartIcon #fIcon
Ps0 f26 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f26 350 374 20 20 13 0 #rect
Ps0 f26 @|RichDialogProcessEndIcon #fIcon
Ps0 f28 actionDecl 'ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData out;
' #txt
Ps0 f28 actionTable 'out=in;
' #txt
Ps0 f28 actionCode '// clear error messagae
in.err = "";
try
{
	if (in.#selectedTask != null)
	{
		in.pageArchives = in.selectedTask.getPageArchives();
	}
	else if (in.#initCase != null)
	{
		in.pageArchives = in.initCase.getPageArchives();
	}
	else
	{
		// there are no entries
		in.pageArchives = null;
	}
} catch(Exception e)  {
	// maybe there was an access restriction (missing permissions)
	in.err = "Error: " + e.getMessage();
  ivy.log.error(in.err);
}' #txt
Ps0 f28 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f28 342 316 36 24 20 -2 #rect
Ps0 f28 @|RichDialogProcessStepIcon #fIcon
Ps0 f27 expr out #txt
Ps0 f27 360 340 360 374 #arcP
Ps0 f30 guid 126DC3B7619FAFC5 #txt
Ps0 f30 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f30 actionDecl 'ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData out;
' #txt
Ps0 f30 actionTable 'out=in;
' #txt
Ps0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onTaskSelectionChange</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f30 526 214 20 20 13 0 #rect
Ps0 f30 @|RichDialogProcessStartIcon #fIcon
Ps0 f31 expr out #txt
Ps0 f31 536 234 378 328 #arcP
Ps0 f31 1 536 328 #addKink
Ps0 f31 1 0.007012472916168823 0 0 #arcLabel
Ps0 f32 actionDecl 'ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData out;
' #txt
Ps0 f32 actionTable 'out=in;
' #txt
Ps0 f32 actionCode 'in.tasks = in.initCase.getTasks();' #txt
Ps0 f32 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f32 342 268 36 24 20 -2 #rect
Ps0 f32 @|RichDialogProcessStepIcon #fIcon
Ps0 f33 expr out #txt
Ps0 f33 360 234 360 268 #arcP
Ps0 f29 expr out #txt
Ps0 f29 360 292 360 316 #arcP
Ps0 f34 guid 126DC6D734BC4DE6 #txt
Ps0 f34 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f34 actionDecl 'ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData out;
' #txt
Ps0 f34 actionTable 'out=in;
' #txt
Ps0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>openPageArchive</name>
        <nameStyle>15,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f34 718 214 20 20 13 0 #rect
Ps0 f34 @|RichDialogProcessStartIcon #fIcon
Ps0 f35 actionDecl 'ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData out;
' #txt
Ps0 f35 actionTable 'out=in;
' #txt
Ps0 f35 actionCode 'import com.ulcjava.base.application.ClientContext;

String link = ivy.html.pageArchiveRef(in.selectedPageArchive, ivy.session);

ivy.log.debug("opened page archive link: " + link);
ClientContext.showDocument(link, "_blank");
' #txt
Ps0 f35 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f35 710 284 36 24 20 -2 #rect
Ps0 f35 @|RichDialogProcessStepIcon #fIcon
Ps0 f36 expr out #txt
Ps0 f36 728 234 728 284 #arcP
Ps0 f37 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f37 718 374 20 20 13 0 #rect
Ps0 f37 @|RichDialogProcessEndIcon #fIcon
Ps0 f38 expr out #txt
Ps0 f38 728 308 728 374 #arcP
Ps0 f39 guid 126F65F202F64226 #txt
Ps0 f39 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f39 actionDecl 'ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData out;
' #txt
Ps0 f39 actionTable 'out=in;
' #txt
Ps0 f39 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>onLoad</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f39 446 38 20 20 13 0 #rect
Ps0 f39 @|RichDialogProcessStartIcon #fIcon
Ps0 f40 actionDecl 'ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData out;
' #txt
Ps0 f40 actionTable 'out=in;
' #txt
Ps0 f40 actionCode 'panel.refreshMenuItem.setText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/archive/plainStrings/refreshPageArchiveListShortDesc"));
panel.refreshMenuItem.setToolTipText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/archive/plainStrings/refreshPageArchiveListLongDesc"));
panel.refreshMenuItem.setIconUri("/ch/ivyteam/ivy/workflow/ui/common/images/refresh16");


panel.openExternalBlankMenuItem.setText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/archive/plainStrings/openArchivePageShortDesc"));
panel.openExternalBlankMenuItem.setToolTipText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/archive/plainStrings/openArchivePageLongDesc"));
panel.openExternalBlankMenuItem.setIconUri("/ch/ivyteam/ivy/workflow/ui/archive/images/showPageArchive16");
' #txt
Ps0 f40 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f40 438 84 36 24 20 -2 #rect
Ps0 f40 @|RichDialogProcessStepIcon #fIcon
Ps0 f41 expr out #txt
Ps0 f41 456 58 456 84 #arcP
Ps0 f42 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f42 446 142 20 20 13 0 #rect
Ps0 f42 @|RichDialogProcessEndIcon #fIcon
Ps0 f43 expr out #txt
Ps0 f43 456 108 456 142 #arcP
Ps0 f44 guid 126F691A60722D55 #txt
Ps0 f44 type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
Ps0 f44 actionDecl 'ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData out;
' #txt
Ps0 f44 actionTable 'out=in;
' #txt
Ps0 f44 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reload</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f44 446 214 20 20 13 0 #rect
Ps0 f44 @|RichDialogProcessStartIcon #fIcon
Ps0 f45 expr out #txt
Ps0 f45 456 234 378 280 #arcP
Ps0 f45 1 456 280 #addKink
Ps0 f45 1 0.17072053258899741 0 0 #arcLabel
>Proto Ps0 .type ch.ivyteam.ivy.workflow.ui.archive.PageArchiveList.PageArchiveListData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 .ui2RdDataAction 'out.selectedPageArchive=panel.pageArchiveTable.#selectedListEntry as ch.ivyteam.ivy.workflow.IPageArchive;
out.selectedTask=panel.taskFilterComboBox.#selectedListEntry as ch.ivyteam.ivy.workflow.ITask;
' #txt
>Proto Ps0 .rdData2UIAction 'panel.pageArchiveTable.listData=in.pageArchives;
panel.taskFilterComboBox.listData=in.tasks;
panel.taskFilterComboBox.selectedListEntry=in.selectedTask;
panel.filterPane.visible=false;
' #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f12 mainOut f18 tail #connect
Ps0 f18 head f16 mainIn #connect
Ps0 f11 mainOut f19 tail #connect
Ps0 f19 head f15 mainIn #connect
Ps0 f10 mainOut f20 tail #connect
Ps0 f20 head f14 mainIn #connect
Ps0 f9 mainOut f21 tail #connect
Ps0 f21 head f13 mainIn #connect
Ps0 f3 mainOut f22 tail #connect
Ps0 f22 head f17 mainIn #connect
Ps0 f17 mainOut f8 tail #connect
Ps0 f8 head f5 mainIn #connect
Ps0 f4 mainOut f24 tail #connect
Ps0 f24 head f23 mainIn #connect
Ps0 f23 mainOut f7 tail #connect
Ps0 f7 head f6 mainIn #connect
Ps0 f28 mainOut f27 tail #connect
Ps0 f27 head f26 mainIn #connect
Ps0 f30 mainOut f31 tail #connect
Ps0 f31 head f28 mainIn #connect
Ps0 f25 mainOut f33 tail #connect
Ps0 f33 head f32 mainIn #connect
Ps0 f32 mainOut f29 tail #connect
Ps0 f29 head f28 mainIn #connect
Ps0 f34 mainOut f36 tail #connect
Ps0 f36 head f35 mainIn #connect
Ps0 f35 mainOut f38 tail #connect
Ps0 f38 head f37 mainIn #connect
Ps0 f39 mainOut f41 tail #connect
Ps0 f41 head f40 mainIn #connect
Ps0 f40 mainOut f43 tail #connect
Ps0 f43 head f42 mainIn #connect
Ps0 f44 mainOut f45 tail #connect
Ps0 f45 head f32 mainIn #connect
