[Ivy]
[>Created: Fri Dec 05 15:22:05 CET 2014]
13ED18A804435D54 3.17 #module
>Proto >Proto Collection #zClass
Ps0 ProcessListProcess Big #zClass
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
Ps0 @RichDialogInitStart f0 '' #zField
Ps0 @RichDialogProcessEnd f1 '' #zField
Ps0 @GridStep f3 '' #zField
Ps0 @PushWFArc f4 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @RichDialogProcessStart f5 '' #zField
Ps0 @RichDialogProcessEnd f6 '' #zField
Ps0 @GridStep f8 '' #zField
Ps0 @PushWFArc f7 '' #zField
Ps0 @RichDialogMethodStart f10 '' #zField
Ps0 @RichDialogProcessEnd f11 '' #zField
Ps0 @PushWFArc f9 '' #zField
Ps0 @PushWFArc f13 '' #zField
>Proto Ps0 Ps0 ProcessListProcess #zField
Ps0 f0 guid 13ED18A805A7471B #txt
Ps0 f0 type ch.ivyteam.wf.workflow.ProcessList.ProcessListData #txt
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
Ps0 f0 83 51 26 26 -16 12 #rect
Ps0 f0 @|RichDialogInitStartIcon #fIcon
Ps0 f0 -1|-1|-9671572 #nodeStyle
Ps0 f1 type ch.ivyteam.wf.workflow.ProcessList.ProcessListData #txt
Ps0 f1 339 51 26 26 0 12 #rect
Ps0 f1 @|RichDialogProcessEndIcon #fIcon
Ps0 f1 -1|-1|-9671572 #nodeStyle
Ps0 f3 actionDecl 'ch.ivyteam.wf.workflow.ProcessList.ProcessListData out;
' #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 actionCode 'import ch.ivyteam.ivy.workflow.IProcessStart;

for(IProcessStart processStart : ivy.session.getStartableProcessStarts())
{
	if(processStart.getName() != "Workflow Home")
	{
		out.starts.add(processStart);
		out.myStarts.add(processStart);
	}
}

ch.ivyteam.ivy.request.impl.HttpProcessRequest r = ivy.request as ch.ivyteam.ivy.request.impl.HttpProcessRequest;
r.getHttpServletRequest().getSession().setAttribute("ch.ivy.wfui.returnUrl", "ivy.html.DefaultProcessStartListPage");' #txt
Ps0 f3 type ch.ivyteam.wf.workflow.ProcessList.ProcessListData #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect processstarts
set returnUrl</name>
        <nameStyle>35
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f3 152 42 144 44 -52 -16 #rect
Ps0 f3 @|StepIcon #fIcon
Ps0 f3 -1|-1|-9671572 #nodeStyle
Ps0 f4 expr out #txt
Ps0 f4 109 64 152 64 #arcP
Ps0 f2 expr out #txt
Ps0 f2 296 64 339 64 #arcP
Ps0 f5 guid 14A065B438814648 #txt
Ps0 f5 type ch.ivyteam.wf.workflow.ProcessList.ProcessListData #txt
Ps0 f5 actionDecl 'ch.ivyteam.wf.workflow.ProcessList.ProcessListData out;
' #txt
Ps0 f5 actionTable 'out=in;
' #txt
Ps0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filter</name>
    </language>
</elementInfo>
' #txt
Ps0 f5 83 147 26 26 -11 12 #rect
Ps0 f5 @|RichDialogProcessStartIcon #fIcon
Ps0 f6 type ch.ivyteam.wf.workflow.ProcessList.ProcessListData #txt
Ps0 f6 339 243 26 26 0 12 #rect
Ps0 f6 @|RichDialogProcessEndIcon #fIcon
Ps0 f8 actionDecl 'ch.ivyteam.wf.workflow.ProcessList.ProcessListData out;
' #txt
Ps0 f8 actionTable 'out=in;
' #txt
Ps0 f8 actionCode 'import ch.ivyteam.ivy.workflow.IProcessStart;

out.myStarts.clear();
if(in.filterTxt.length()==0)
{
	out.myStarts = in.starts.clone();	
}
else
{
	for(IProcessStart processStart : in.starts)
	{
			if(processStart.getName().indexOf(in.filterTxt) >= 0 
				|| processStart.getDescription().indexOf(in.filterTxt) >= 0)
			{
				out.myStarts.add(processStart);
			}
	}
}' #txt
Ps0 f8 type ch.ivyteam.wf.workflow.ProcessList.ProcessListData #txt
Ps0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>filter processstarts
</name>
        <nameStyle>21
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f8 168 234 128 44 -45 -16 #rect
Ps0 f8 @|StepIcon #fIcon
Ps0 f8 -1|-1|-9671572 #nodeStyle
Ps0 f7 expr out #txt
Ps0 f7 296 256 339 256 #arcP
Ps0 f10 guid 14A0696FEF010E01 #txt
Ps0 f10 type ch.ivyteam.wf.workflow.ProcessList.ProcessListData #txt
Ps0 f10 method update() #txt
Ps0 f10 disableUIEvents false #txt
Ps0 f10 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ps0 f10 outParameterDecl '<> result;
' #txt
Ps0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
Ps0 f10 83 243 26 26 -23 12 #rect
Ps0 f10 @|RichDialogMethodStartIcon #fIcon
Ps0 f11 type ch.ivyteam.wf.workflow.ProcessList.ProcessListData #txt
Ps0 f11 339 147 26 26 0 12 #rect
Ps0 f11 @|RichDialogProcessEndIcon #fIcon
Ps0 f9 expr out #txt
Ps0 f9 109 256 168 256 #arcP
Ps0 f13 expr out #txt
Ps0 f13 109 160 339 160 #arcP
>Proto Ps0 .type ch.ivyteam.wf.workflow.ProcessList.ProcessListData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f0 mainOut f4 tail #connect
Ps0 f4 head f3 mainIn #connect
Ps0 f3 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f8 mainOut f7 tail #connect
Ps0 f7 head f6 mainIn #connect
Ps0 f10 mainOut f9 tail #connect
Ps0 f9 head f8 mainIn #connect
Ps0 f5 mainOut f13 tail #connect
Ps0 f13 head f11 mainIn #connect
