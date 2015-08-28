[Ivy]
[>Created: Wed Jan 12 12:42:38 CET 2011]
12D795CC38BAB0B5 3.15 #module
>Proto >Proto Collection #zClass
Ps0 FormArchiveDisplayListProcess Big #zClass
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
Ps0 @RichDialogProcessEnd f37 '' #zField
Ps0 @PushWFArc f38 '' #zField
Ps0 @RichDialogProcessStart f39 '' #zField
Ps0 @RichDialogProcessStep f40 '' #zField
Ps0 @PushWFArc f41 '' #zField
Ps0 @RichDialogProcessEnd f42 '' #zField
Ps0 @PushWFArc f43 '' #zField
Ps0 @RichDialogProcessStart f44 '' #zField
Ps0 @PushWFArc f45 '' #zField
Ps0 @Alternative f46 '' #zField
Ps0 @PushWFArc f47 '' #zField
Ps0 @PushWFArc f36 '' #zField
Ps0 @RichDialog f49 '' #zField
Ps0 @PushWFArc f50 '' #zField
Ps0 @PushWFArc f48 '' #zField
>Proto Ps0 Ps0 FormArchiveDisplayListProcess #zField
Ps0 f0 guid 126DC19580F7932B #txt
Ps0 f0 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f0 method start() #txt
Ps0 f0 disableUIEvents true #txt
Ps0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f0 outParameterDecl '<> result;
' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 30 46 20 20 13 0 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f1 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f1 30 150 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f2 expr out #txt
Ps0 f2 40 66 40 150 #arcP
Ps0 f3 guid 126DC1FDA0C28DBA #txt
Ps0 f3 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
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
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ICase)</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 142 46 20 20 13 0 #rect
Ps0 f3 @|RichDialogInitStartIcon #fIcon
Ps0 f4 guid 126DC1FE75A4700D #txt
Ps0 f4 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
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
Ps0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(ITask)</name>
        <nameStyle>12,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f4 262 46 20 20 13 0 #rect
Ps0 f4 @|RichDialogInitStartIcon #fIcon
Ps0 f5 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f5 142 150 20 20 13 0 #rect
Ps0 f5 @|RichDialogProcessEndIcon #fIcon
Ps0 f6 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f6 262 150 20 20 13 0 #rect
Ps0 f6 @|RichDialogProcessEndIcon #fIcon
Ps0 f9 guid 126DC215234C407F #txt
Ps0 f9 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f9 method getCase() #txt
Ps0 f9 disableUIEvents false #txt
Ps0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f9 outParameterDecl '<ch.ivyteam.ivy.workflow.ICase case> result;
' #txt
Ps0 f9 outParameterMapAction 'result.case=in.initCase;
' #txt
Ps0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getCase()</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f9 398 46 20 20 13 0 #rect
Ps0 f9 @|RichDialogMethodStartIcon #fIcon
Ps0 f10 guid 126DC21562BFA0E1 #txt
Ps0 f10 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f10 method getTask() #txt
Ps0 f10 disableUIEvents false #txt
Ps0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f10 outParameterDecl '<ch.ivyteam.ivy.workflow.ITask task> result;
' #txt
Ps0 f10 outParameterMapAction 'result.task=in.selectedTask;
' #txt
Ps0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>getTask()</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f10 518 46 20 20 13 0 #rect
Ps0 f10 @|RichDialogMethodStartIcon #fIcon
Ps0 f11 guid 126DC2159D5442FD #txt
Ps0 f11 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
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
Ps0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setCase(ICase)</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f11 398 150 20 20 13 0 #rect
Ps0 f11 @|RichDialogMethodStartIcon #fIcon
Ps0 f12 guid 126DC215D8E8514C #txt
Ps0 f12 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
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
Ps0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setTask(ITask)</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f12 518 150 20 20 13 0 #rect
Ps0 f12 @|RichDialogMethodStartIcon #fIcon
Ps0 f13 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f13 398 102 20 20 13 0 #rect
Ps0 f13 @|RichDialogProcessEndIcon #fIcon
Ps0 f14 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f14 518 102 20 20 13 0 #rect
Ps0 f14 @|RichDialogProcessEndIcon #fIcon
Ps0 f15 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f15 398 206 20 20 13 0 #rect
Ps0 f15 @|RichDialogProcessEndIcon #fIcon
Ps0 f16 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f16 518 206 20 20 13 0 #rect
Ps0 f16 @|RichDialogProcessEndIcon #fIcon
Ps0 f18 expr out #txt
Ps0 f18 528 170 528 206 #arcP
Ps0 f19 expr out #txt
Ps0 f19 408 170 408 206 #arcP
Ps0 f20 expr out #txt
Ps0 f20 528 66 528 102 #arcP
Ps0 f21 expr out #txt
Ps0 f21 408 66 408 102 #arcP
Ps0 f17 actionDecl 'ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData out;
' #txt
Ps0 f17 actionTable 'out=in;
' #txt
Ps0 f17 actionCode panel.reload(); #txt
Ps0 f17 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reload panel</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f17 134 92 36 24 20 -2 #rect
Ps0 f17 @|RichDialogProcessStepIcon #fIcon
Ps0 f22 expr out #txt
Ps0 f22 152 66 152 92 #arcP
Ps0 f8 expr out #txt
Ps0 f8 152 116 152 150 #arcP
Ps0 f23 actionDecl 'ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData out;
' #txt
Ps0 f23 actionTable 'out=in;
' #txt
Ps0 f23 actionCode panel.reload(); #txt
Ps0 f23 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reload panel</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f23 254 92 36 24 20 -2 #rect
Ps0 f23 @|RichDialogProcessStepIcon #fIcon
Ps0 f24 expr out #txt
Ps0 f24 272 66 272 92 #arcP
Ps0 f7 expr out #txt
Ps0 f7 272 116 272 150 #arcP
Ps0 f25 guid 126DC292292A4A61 #txt
Ps0 f25 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f25 method reload() #txt
Ps0 f25 disableUIEvents false #txt
Ps0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reload()</name>
    </language>
</elementInfo>
' #txt
Ps0 f25 678 46 20 20 13 0 #rect
Ps0 f25 @|RichDialogMethodStartIcon #fIcon
Ps0 f26 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f26 678 206 20 20 13 0 #rect
Ps0 f26 @|RichDialogProcessEndIcon #fIcon
Ps0 f28 actionDecl 'ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData out;
' #txt
Ps0 f28 actionTable 'out=in;
' #txt
Ps0 f28 actionCode 'import ch.ivyteam.ivy.workflow.ui.utils.WorkflowUIAccessPermissionHandler;
// clear error messagae
in.err = "";
try
{
	if (in.#selectedTask != null)
	{
		ivy.log.debug("Get page archives from task {0}-{1}.", in.selectedTask.getId(), in.selectedTask.getName());
		in.pageArchives = WorkflowUIAccessPermissionHandler.getTaskPageArchivesAsSystemUser(in.selectedTask);
		// in.pageArchives = in.selectedTask.getPageArchives();

	}
	else if (in.#initCase != null)
	{
		ivy.log.debug("Get page archives from case {0}-{1}.", in.initCase.getId(), in.initCase.getName());		
		in.pageArchives = WorkflowUIAccessPermissionHandler.getCasePageArchivesAsSystemUser(in.initCase);
		// in.pageArchives = in.initCase.getPageArchives();
	}
	else
	{
		// there are no entries
		in.pageArchives = null;
	}
} catch(Exception e)  {
	in.err = "Error: " + e.getMessage();
  ivy.log.error(in.err);
}' #txt
Ps0 f28 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get page 
archives</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f28 670 148 36 24 20 -2 #rect
Ps0 f28 @|RichDialogProcessStepIcon #fIcon
Ps0 f27 expr out #txt
Ps0 f27 688 172 688 206 #arcP
Ps0 f30 guid 126DC3B7619FAFC5 #txt
Ps0 f30 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f30 actionDecl 'ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData out;
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
Ps0 f30 886 46 20 20 13 0 #rect
Ps0 f30 @|RichDialogProcessStartIcon #fIcon
Ps0 f31 expr out #txt
Ps0 f31 896 66 706 160 #arcP
Ps0 f31 1 896 160 #addKink
Ps0 f31 1 0.007012472916168823 0 0 #arcLabel
Ps0 f32 actionDecl 'ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData out;
' #txt
Ps0 f32 actionTable 'out=in;
' #txt
Ps0 f32 actionCode 'in.tasks = in.initCase.getTasks();' #txt
Ps0 f32 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f32 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get tasks 
of the case</name>
        <nameStyle>22,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f32 670 100 36 24 20 -2 #rect
Ps0 f32 @|RichDialogProcessStepIcon #fIcon
Ps0 f33 expr out #txt
Ps0 f33 688 66 688 100 #arcP
Ps0 f29 expr out #txt
Ps0 f29 688 124 688 148 #arcP
Ps0 f34 guid 126DC6D734BC4DE6 #txt
Ps0 f34 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f34 actionDecl 'ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData out;
' #txt
Ps0 f34 actionTable 'out=in;
' #txt
Ps0 f34 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>openFormArchive</name>
        <nameStyle>15,5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f34 798 238 20 20 13 0 #rect
Ps0 f34 @|RichDialogProcessStartIcon #fIcon
Ps0 f35 actionDecl 'ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData out;
' #txt
Ps0 f35 actionTable 'out=in;
' #txt
Ps0 f35 actionCode 'import com.ulcjava.base.application.ClientContext;

String link = ivy.html.pageArchiveRef(in.selectedPageArchive, ivy.session);
	
ivy.log.debug("Opened page archive link: " + link);
ClientContext.showDocument(link, "_blank");
' #txt
Ps0 f35 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show
form archive</name>
        <nameStyle>5,7
12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f35 790 340 36 24 20 -2 #rect
Ps0 f35 @|RichDialogProcessStepIcon #fIcon
Ps0 f37 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f37 798 390 20 20 13 0 #rect
Ps0 f37 @|RichDialogProcessEndIcon #fIcon
Ps0 f38 expr out #txt
Ps0 f38 808 364 808 390 #arcP
Ps0 f39 guid 126F65F202F64226 #txt
Ps0 f39 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f39 actionDecl 'ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData out;
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
Ps0 f39 950 238 20 20 13 0 #rect
Ps0 f39 @|RichDialogProcessStartIcon #fIcon
Ps0 f40 actionDecl 'ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData out;
' #txt
Ps0 f40 actionTable 'out=in;
' #txt
Ps0 f40 actionCode 'panel.refreshMenuItem.setText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/formArchive/plainStrings/refreshPageArchiveListShortDesc"));
// panel.refreshMenuItem.setToolTipText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/formArchive/plainStrings/refreshPageArchiveListLongDesc"));
// panel.refreshMenuItem.setIconUri("/ch/ivyteam/ivy/workflow/ui/common/images/refresh16");


panel.openExternalBlankMenuItem.setText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/formArchive/plainStrings/openArchivePageShortDesc"));
// panel.openExternalBlankMenuItem.setToolTipText(ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/formArchive/plainStrings/openArchivePageLongDesc"));
// panel.openExternalBlankMenuItem.setIconUri("/ch/ivyteam/ivy/workflow/ui/archive/images/showPageArchive16");
' #txt
Ps0 f40 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f40 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>define menu item 
texts and tooltips</name>
        <nameStyle>36,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f40 942 292 36 24 20 -2 #rect
Ps0 f40 @|RichDialogProcessStepIcon #fIcon
Ps0 f41 expr out #txt
Ps0 f41 960 258 960 292 #arcP
Ps0 f42 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f42 950 390 20 20 13 0 #rect
Ps0 f42 @|RichDialogProcessEndIcon #fIcon
Ps0 f43 expr out #txt
Ps0 f43 960 316 960 390 #arcP
Ps0 f44 guid 126F691A60722D55 #txt
Ps0 f44 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f44 actionDecl 'ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData out;
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
Ps0 f44 806 46 20 20 13 0 #rect
Ps0 f44 @|RichDialogProcessStartIcon #fIcon
Ps0 f45 expr out #txt
Ps0 f45 816 66 706 112 #arcP
Ps0 f45 1 816 112 #addKink
Ps0 f45 1 0.17072053258899741 0 0 #arcLabel
Ps0 f46 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f46 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>has TaskRead 
permission?</name>
        <nameStyle>25,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f46 794 282 28 28 14 0 #rect
Ps0 f46 @|AlternativeIcon #fIcon
Ps0 f47 expr out #txt
Ps0 f47 808 258 808 282 #arcP
Ps0 f36 expr in #txt
Ps0 f36 outCond 'ivy.session.getSecurityContext().hasPermission(ivy.request.getApplication().getSecurityDescriptor(), ch.ivyteam.ivy.security.IPermission.TASK_READ)' #txt
Ps0 f36 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f36 808 310 808 340 #arcP
Ps0 f49 targetWindow NEW:card: #txt
Ps0 f49 targetDisplay TOP #txt
Ps0 f49 richDialogId ch.ivyteam.ivy.addons.commondialogs.MessageDialog #txt
Ps0 f49 startMethod showMessage(String) #txt
Ps0 f49 type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
Ps0 f49 requestActionDecl '<String message> param;' #txt
Ps0 f49 requestActionCode 'import ch.ivyteam.ivy.security.IPermission;

param.message = ivy.cms.co("/ch/ivyteam/ivy/workflow/ui/common/plainStrings/permissionDeniedTextWithPlaceHolder", [IPermission.TASK_READ.toString()]);' #txt
Ps0 f49 responseActionDecl 'ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData out;
' #txt
Ps0 f49 responseMappingAction 'out=in;
' #txt
Ps0 f49 windowConfiguration '{/title "<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/permissionDeniedTitle\")%>"/width 0 /height 0 /centered true /resizable true /maximized false /close_after_last_rd true }' #txt
Ps0 f49 isAsynch false #txt
Ps0 f49 isInnerRd true #txt
Ps0 f49 userContext '* ' #txt
Ps0 f49 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show permission 
denied message</name>
        <nameStyle>31,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f49 894 332 36 24 20 -2 #rect
Ps0 f49 @|RichDialogIcon #fIcon
Ps0 f50 expr in #txt
Ps0 f50 822 296 912 332 #arcP
Ps0 f50 1 912 296 #addKink
Ps0 f50 0 0.867508365465178 0 0 #arcLabel
Ps0 f48 expr out #txt
Ps0 f48 912 356 817 398 #arcP
Ps0 f48 1 912 384 #addKink
Ps0 f48 1 0.318967297866583 0 0 #arcLabel
>Proto Ps0 .type ch.ivyteam.ivy.workflow.ui.formarchive.FormArchiveDisplayList.FormArchiveDisplayListData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 .ui2RdDataAction 'out.selectedPageArchive=panel.pageArchiveTable.#selectedListEntry as ch.ivyteam.ivy.workflow.IPageArchive;
out.selectedTask=panel.taskFilterComboBox.#selectedListEntry as ch.ivyteam.ivy.workflow.ITask;
' #txt
>Proto Ps0 .rdData2UIAction 'panel.pageArchiveTable.listData=in.pageArchives;
panel.taskFilterComboBox.listData=in.tasks;
panel.taskFilterComboBox.selectedListEntry=in.selectedTask;
panel.filterPane.visible=false;
' #txt
>Proto Ps0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel>Start methods</swimlaneLabel>
        <swimlaneLabel>Get and set methods</swimlaneLabel>
        <swimlaneLabel>Methods</swimlaneLabel>
        <swimlaneLabel>Events</swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneSize>374</swimlaneSize>
    <swimlaneSize>262</swimlaneSize>
    <swimlaneSize>123</swimlaneSize>
    <swimlaneSize>338</swimlaneSize>
    <swimlaneColor>-16724890</swimlaneColor>
    <swimlaneColor>-16750849</swimlaneColor>
    <swimlaneColor>-16750951</swimlaneColor>
    <swimlaneColor>-6710785</swimlaneColor>
</elementInfo>
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
Ps0 f35 mainOut f38 tail #connect
Ps0 f38 head f37 mainIn #connect
Ps0 f39 mainOut f41 tail #connect
Ps0 f41 head f40 mainIn #connect
Ps0 f40 mainOut f43 tail #connect
Ps0 f43 head f42 mainIn #connect
Ps0 f44 mainOut f45 tail #connect
Ps0 f45 head f32 mainIn #connect
Ps0 f34 mainOut f47 tail #connect
Ps0 f47 head f46 in #connect
Ps0 f46 out f36 tail #connect
Ps0 f36 head f35 mainIn #connect
Ps0 f46 out f50 tail #connect
Ps0 f50 head f49 mainIn #connect
Ps0 f49 mainOut f48 tail #connect
Ps0 f48 head f37 mainIn #connect
