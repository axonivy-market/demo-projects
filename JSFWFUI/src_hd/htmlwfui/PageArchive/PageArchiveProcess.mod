[Ivy]
[>Created: Wed Feb 06 15:40:20 CET 2013]
13C5C426ACC9F0A7 3.17 #module
>Proto >Proto Collection #zClass
Ps0 PageArchiveProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ps0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ps0 @TextInP .resExport .resExport #zField
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @RichDialogInitStart f3 '' #zField
Ps0 @RichDialogProcessStep f0 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @RichDialogProcessStart f5 '' #zField
Ps0 @RichDialogProcessStart f8 '' #zField
Ps0 @RichDialogProcessStep f11 '' #zField
Ps0 @PushWFArc f12 '' #zField
Ps0 @RichDialogEnd f13 '' #zField
Ps0 @PushWFArc f14 '' #zField
Ps0 @PushWFArc f10 '' #zField
Ps0 @RichDialogProcessStep f6 '' #zField
Ps0 @PushWFArc f7 '' #zField
Ps0 @PushWFArc f4 '' #zField
>Proto Ps0 Ps0 PageArchiveProcess #zField
Ps0 f1 type htmlwfui.PageArchive.PageArchiveData #txt
Ps0 f1 86 182 20 20 13 0 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f3 guid 13C5C48A3139E96E #txt
Ps0 f3 type htmlwfui.PageArchive.PageArchiveData #txt
Ps0 f3 method start(htmlwfui.Data) #txt
Ps0 f3 disableUIEvents true #txt
Ps0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Data data> param = methodEvent.getInputArguments();
' #txt
Ps0 f3 inParameterMapAction 'out.data=param.data;
' #txt
Ps0 f3 outParameterDecl '<> result;
' #txt
Ps0 f3 embeddedRdInitializations '* ' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Data)</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 86 54 20 20 13 0 #rect
Ps0 f3 @|RichDialogInitStartIcon #fIcon
Ps0 f0 actionDecl 'htmlwfui.PageArchive.PageArchiveData out;
' #txt
Ps0 f0 actionTable 'out=in;
' #txt
Ps0 f0 actionCode 'import htmlwfui.ArchivePageDetail;
import ch.ivyteam.ivy.workflow.IPageArchive;
import ch.ivyteam.ivy.workflow.ITask;

List<ITask> tasks = new List<ITask>();

if(in.data.#tmpTask!=null)
{
	tasks.add(in.data.tmpTask);
}	
else if(in.data.#tempCase!=null)
{
	tasks.addAll(in.data.tempCase.getTasks());
}

for(int i = 0; i < tasks.size(); i++)
{
	List pas = tasks.get(i).getPageArchives();
	for(int j = 0 ; j < pas.size(); j++)
	{
		IPageArchive pa = tasks.get(i).getPageArchives().get(j) as IPageArchive;
		ArchivePageDetail apd = new ArchivePageDetail();
		apd.setRef(ivy.html.pageArchiveRef(pa));
		apd.setName(pa.getName());
		apd.setId(pa.getIdentifier());
		out.data.pageArchives.add(apd);
	}	
}	

' #txt
Ps0 f0 type htmlwfui.PageArchive.PageArchiveData #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get archived pages</name>
        <nameStyle>18,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f0 78 100 36 24 20 -2 #rect
Ps0 f0 @|RichDialogProcessStepIcon #fIcon
Ps0 f2 expr out #txt
Ps0 f2 96 74 96 100 #arcP
Ps0 f5 guid 13C5C4D6D889CFA5 #txt
Ps0 f5 type htmlwfui.PageArchive.PageArchiveData #txt
Ps0 f5 actionDecl 'htmlwfui.PageArchive.PageArchiveData out;
' #txt
Ps0 f5 actionTable 'out=in;
' #txt
Ps0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>back</name>
    </language>
</elementInfo>
' #txt
Ps0 f5 246 54 20 20 13 0 #rect
Ps0 f5 @|RichDialogProcessStartIcon #fIcon
Ps0 f8 guid 13C5C4DC10480BA2 #txt
Ps0 f8 type htmlwfui.PageArchive.PageArchiveData #txt
Ps0 f8 actionDecl 'htmlwfui.PageArchive.PageArchiveData out;
' #txt
Ps0 f8 actionTable 'out=in;
' #txt
Ps0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>toArchive</name>
    </language>
</elementInfo>
' #txt
Ps0 f8 342 54 20 20 13 0 #rect
Ps0 f8 @|RichDialogProcessStartIcon #fIcon
Ps0 f11 actionDecl 'htmlwfui.PageArchive.PageArchiveData out;
' #txt
Ps0 f11 actionTable 'out=in.clone();
' #txt
Ps0 f11 actionCode 'import ch.ivyteam.ivy.workflow.WorkflowPriority;
out.data.tmpTask.setOriginalPriority(WorkflowPriority.valueOf(WorkflowPriority.class, in.data.tmpTaskDetail.prioName) as WorkflowPriority);

if(in.data.tmpTaskDetail.delay.toNumber()>0)
{
	out.data.tmpTask.setDelayTimestamp(in.data.tmpTaskDetail.delay);
}
if(in.data.tmpTaskDetail.exp.toNumber()>0)
{
	out.data.tmpTask.setExpiryTimestamp(in.data.tmpTaskDetail.exp);
}' #txt
Ps0 f11 type htmlwfui.PageArchive.PageArchiveData #txt
Ps0 f11 334 100 36 24 20 -2 #rect
Ps0 f11 @|RichDialogProcessStepIcon #fIcon
Ps0 f12 expr out #txt
Ps0 f12 352 74 352 100 #arcP
Ps0 f13 type htmlwfui.PageArchive.PageArchiveData #txt
Ps0 f13 guid 13C5C4E5048699A8 #txt
Ps0 f13 294 150 20 20 13 0 #rect
Ps0 f13 @|RichDialogEndIcon #fIcon
Ps0 f14 expr out #txt
Ps0 f14 352 124 314 160 #arcP
Ps0 f14 1 352 160 #addKink
Ps0 f14 1 0.045793301537321245 0 0 #arcLabel
Ps0 f10 expr out #txt
Ps0 f10 256 74 294 160 #arcP
Ps0 f10 1 256 160 #addKink
Ps0 f10 0 0.7549866498826562 0 0 #arcLabel
Ps0 f6 actionDecl 'htmlwfui.PageArchive.PageArchiveData out;
' #txt
Ps0 f6 actionTable 'out=in;
out.data.temp.description=IF(in.data.tmpTask != null, ivy.cms.co("/messages/captionTaskPageArchive") + in.data.tmpTask.getId() + "] " + in.data.tmpTask.getName(), ivy.cms.co("/messages/captionCasePageArchive") + in.data.tempCase.getId() + "] " + in.data.tempCase.getName() + " -");
' #txt
Ps0 f6 type htmlwfui.PageArchive.PageArchiveData #txt
Ps0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>description</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f6 78 140 36 24 20 -2 #rect
Ps0 f6 @|RichDialogProcessStepIcon #fIcon
Ps0 f7 expr out #txt
Ps0 f7 96 124 96 140 #arcP
Ps0 f4 expr out #txt
Ps0 f4 96 164 96 182 #arcP
>Proto Ps0 .type htmlwfui.PageArchive.PageArchiveData #txt
>Proto Ps0 .processKind RICH_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f3 mainOut f2 tail #connect
Ps0 f2 head f0 mainIn #connect
Ps0 f8 mainOut f12 tail #connect
Ps0 f12 head f11 mainIn #connect
Ps0 f11 mainOut f14 tail #connect
Ps0 f14 head f13 mainIn #connect
Ps0 f5 mainOut f10 tail #connect
Ps0 f10 head f13 mainIn #connect
Ps0 f0 mainOut f7 tail #connect
Ps0 f7 head f6 mainIn #connect
Ps0 f6 mainOut f4 tail #connect
Ps0 f4 head f1 mainIn #connect
