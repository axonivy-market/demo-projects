[Ivy]
[>Created: Mon Feb 11 10:43:45 CET 2013]
13CAFAD8E49EF04B 3.17 #module
>Proto >Proto Collection #zClass
Cs0 ChangeExpiryProcess Big #zClass
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
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @RichDialogInitStart f0 '' #zField
Cs0 @RichDialogProcessStart f3 '' #zField
Cs0 @RichDialogProcessStart f6 '' #zField
Cs0 @RichDialogEnd f9 '' #zField
Cs0 @PushWFArc f10 '' #zField
Cs0 @GridStep f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @PushWFArc f7 '' #zField
Cs0 @GridStep f8 '' #zField
Cs0 @PushWFArc f11 '' #zField
Cs0 @PushWFArc f2 '' #zField
>Proto Cs0 Cs0 ChangeExpiryProcess #zField
Cs0 f1 type htmlwfui.ChangeExpiry.ChangeExpiryData #txt
Cs0 f1 86 150 20 20 13 0 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f0 guid 13CAFB1FB29DE917 #txt
Cs0 f0 type htmlwfui.ChangeExpiry.ChangeExpiryData #txt
Cs0 f0 method start(htmlwfui.Data) #txt
Cs0 f0 disableUIEvents true #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Data data> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 inParameterMapAction 'out.data=param.data;
' #txt
Cs0 f0 outParameterDecl '<> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init_Start1</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 86 54 20 20 13 0 #rect
Cs0 f0 @|RichDialogInitStartIcon #fIcon
Cs0 f3 guid 13CAFC3EE26A5612 #txt
Cs0 f3 type htmlwfui.ChangeExpiry.ChangeExpiryData #txt
Cs0 f3 actionDecl 'htmlwfui.ChangeExpiry.ChangeExpiryData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveExpiry</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 214 54 20 20 13 0 #rect
Cs0 f3 @|RichDialogProcessStartIcon #fIcon
Cs0 f6 guid 13CAFC3FC59EA6E1 #txt
Cs0 f6 type htmlwfui.ChangeExpiry.ChangeExpiryData #txt
Cs0 f6 actionDecl 'htmlwfui.ChangeExpiry.ChangeExpiryData out;
' #txt
Cs0 f6 actionTable 'out=in;
' #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>back</name>
    </language>
</elementInfo>
' #txt
Cs0 f6 342 54 20 20 13 0 #rect
Cs0 f6 @|RichDialogProcessStartIcon #fIcon
Cs0 f9 type htmlwfui.ChangeExpiry.ChangeExpiryData #txt
Cs0 f9 guid 13CAFD6B1D88C7EE #txt
Cs0 f9 278 150 20 20 13 0 #rect
Cs0 f9 @|RichDialogEndIcon #fIcon
Cs0 f10 expr out #txt
Cs0 f10 352 74 298 160 #arcP
Cs0 f10 1 352 160 #addKink
Cs0 f10 0 0.8458474762523029 0 0 #arcLabel
Cs0 f4 actionDecl 'htmlwfui.ChangeExpiry.ChangeExpiryData out;
' #txt
Cs0 f4 actionTable 'out=in.clone();
' #txt
Cs0 f4 actionCode 'import ch.ivyteam.ivy.workflow.WorkflowPriority;

if(in.data.tmpTaskDetail.prio == 0)
{
	out.data.tmpTask.setOriginalPriority(WorkflowPriority.EXCEPTION);
}	
else if(in.data.tmpTaskDetail.prio == 1)
{
	out.data.tmpTask.setOriginalPriority(WorkflowPriority.HIGH);
}	
else if(in.data.tmpTaskDetail.prio == 2)
{
	out.data.tmpTask.setOriginalPriority(WorkflowPriority.NORMAL);
}	
else if(in.data.tmpTaskDetail.prio == 3)
{
	out.data.tmpTask.setOriginalPriority(WorkflowPriority.LOW);
}	

if(in.data.tmpTaskDetail.delay.toNumber()>0)
{
	out.data.tmpTask.setDelayTimestamp(in.data.tmpTaskDetail.delay);
}
if(in.data.tmpTaskDetail.exp.toNumber()>0)
{
	out.data.tmpTask.setExpiryTimestamp(in.data.tmpTaskDetail.exp);
}' #txt
Cs0 f4 type htmlwfui.ChangeExpiry.ChangeExpiryData #txt
Cs0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f4 206 108 36 24 20 -2 #rect
Cs0 f4 @|StepIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 224 74 224 108 #arcP
Cs0 f5 0 0.5153618032992408 0 0 #arcLabel
Cs0 f7 expr out #txt
Cs0 f7 224 132 278 160 #arcP
Cs0 f7 1 224 160 #addKink
Cs0 f7 1 0.1915382613128324 0 0 #arcLabel
Cs0 f8 actionDecl 'htmlwfui.ChangeExpiry.ChangeExpiryData out;
' #txt
Cs0 f8 actionTable 'out=in;
out.data.temp.description=ivy.cms.co("/explainTexts/ChangeExpiryDescription") + "[" + in.data.tmpTask.getId() + "]" + " " + in.data.tmpTask.getName();
out.data.tmpTaskDetail.delay=new DateTime();
out.data.tmpTaskDetail.exp=new DateTime();
' #txt
Cs0 f8 type htmlwfui.ChangeExpiry.ChangeExpiryData #txt
Cs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>description</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f8 78 100 36 24 20 -2 #rect
Cs0 f8 @|StepIcon #fIcon
Cs0 f11 expr out #txt
Cs0 f11 96 74 96 100 #arcP
Cs0 f2 expr out #txt
Cs0 f2 96 124 96 150 #arcP
>Proto Cs0 .type htmlwfui.ChangeExpiry.ChangeExpiryData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f6 mainOut f10 tail #connect
Cs0 f10 head f9 mainIn #connect
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f4 mainOut f7 tail #connect
Cs0 f7 head f9 mainIn #connect
Cs0 f0 mainOut f11 tail #connect
Cs0 f11 head f8 mainIn #connect
Cs0 f8 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
