[Ivy]
[>Created: Tue Jan 22 19:18:38 CET 2013]
13BFF70D9DBA6AA5 3.17 #module
>Proto >Proto Collection #zClass
As0 AbsenceAddProcess Big #zClass
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
As0 @RichDialogInitStart f0 '' #zField
As0 @RichDialogProcessEnd f1 '' #zField
As0 @RichDialogProcessStart f3 '' #zField
As0 @RichDialogProcessStart f6 '' #zField
As0 @RichDialogEnd f9 '' #zField
As0 @RichDialogEnd f7 '' #zField
As0 @RichDialogProcessStep f5 '' #zField
As0 @PushWFArc f8 '' #zField
As0 @PushWFArc f10 '' #zField
As0 @RichDialogProcessStep f11 '' #zField
As0 @PushWFArc f4 '' #zField
As0 @PushWFArc f13 '' #zField
As0 @RichDialogProcessStep f2 '' #zField
As0 @PushWFArc f14 '' #zField
As0 @PushWFArc f15 '' #zField
>Proto As0 As0 AbsenceAddProcess #zField
As0 f0 guid 13BFF70D9EAD5D2C #txt
As0 f0 type htmlwfui.AbsenceAdd.AbsenceAddData #txt
As0 f0 method start(htmlwfui.Absence) #txt
As0 f0 disableUIEvents true #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Absence absence> param = methodEvent.getInputArguments();
' #txt
As0 f0 inParameterMapAction 'out.absence=param.absence;
' #txt
As0 f0 outParameterDecl '<java.lang.String option> result;
' #txt
As0 f0 outParameterMapAction 'result.option=in.option;
' #txt
As0 f0 embeddedRdInitializations '* ' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f0 86 54 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type htmlwfui.AbsenceAdd.AbsenceAddData #txt
As0 f1 86 150 20 20 13 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f3 guid 13BFFFA84A3A4195 #txt
As0 f3 type htmlwfui.AbsenceAdd.AbsenceAddData #txt
As0 f3 actionDecl 'htmlwfui.AbsenceAdd.AbsenceAddData out;
' #txt
As0 f3 actionTable 'out=in;
out.absence=in.absence;
out.option=in.option;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveAbsence</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f3 214 54 20 20 13 0 #rect
As0 f3 @|RichDialogProcessStartIcon #fIcon
As0 f6 guid 13C00089415CD12D #txt
As0 f6 type htmlwfui.AbsenceAdd.AbsenceAddData #txt
As0 f6 actionDecl 'htmlwfui.AbsenceAdd.AbsenceAddData out;
' #txt
As0 f6 actionTable 'out=in;
out.option=in.option;
' #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>backToAbsenceList</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 342 54 20 20 13 0 #rect
As0 f6 @|RichDialogProcessStartIcon #fIcon
As0 f9 type htmlwfui.AbsenceAdd.AbsenceAddData #txt
As0 f9 guid 13C005D4837D1D3C #txt
As0 f9 342 150 20 20 13 0 #rect
As0 f9 @|RichDialogEndIcon #fIcon
As0 f7 type htmlwfui.AbsenceAdd.AbsenceAddData #txt
As0 f7 guid 13C005D83EF6D5D6 #txt
As0 f7 214 198 20 20 13 0 #rect
As0 f7 @|RichDialogEndIcon #fIcon
As0 f5 actionDecl 'htmlwfui.AbsenceAdd.AbsenceAddData out;
' #txt
As0 f5 actionTable 'out=in;
out.option="return";
' #txt
As0 f5 type htmlwfui.AbsenceAdd.AbsenceAddData #txt
As0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f5 334 100 36 24 20 -2 #rect
As0 f5 @|RichDialogProcessStepIcon #fIcon
As0 f8 expr out #txt
As0 f8 352 74 352 100 #arcP
As0 f10 expr out #txt
As0 f10 352 124 352 150 #arcP
As0 f11 actionDecl 'htmlwfui.AbsenceAdd.AbsenceAddData out;
' #txt
As0 f11 actionTable 'out=in;
out.option="save";
' #txt
As0 f11 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IUserAbsence;

DateTime from = null;
if(in.absence.start is initialized)
{
	from = new DateTime(in.absence.start.getYear(), in.absence.start.getMonth(), in.absence.start.getDay(), 
		in.absence.startTimeHH.toNumber(), in.absence.startTimeMM.toNumber(), 0);

	DateTime to = null;
	if(in.absence.end is initialized)
	{
		 to = new DateTime(in.absence.end.getYear(), in.absence.end.getMonth(), in.absence.end.getDay(), 
			in.absence.endTimeHH.toNumber(), in.absence.endTimeMM.toNumber(), 0);

		ivy.session.getSessionUser().createAbsence(from, to, 
		in.absence.descr.trim().length() > 0 ? (new Date()).format("short") +" "+in.absence.descr : "");
	}
	else
	{	
		ivy.session.getSessionUser().createAbsence(from, null, 
			in.absence.descr.trim().length() > 0 ? (new Date()).format("short") +" "+in.absence.descr : "");
	}
}' #txt
As0 f11 type htmlwfui.AbsenceAdd.AbsenceAddData #txt
As0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f11 206 148 36 24 20 -2 #rect
As0 f11 @|RichDialogProcessStepIcon #fIcon
As0 f4 expr out #txt
As0 f4 224 172 224 198 #arcP
As0 f13 expr out #txt
As0 f13 96 74 96 150 #arcP
As0 f2 actionDecl 'htmlwfui.AbsenceAdd.AbsenceAddData out;
' #txt
As0 f2 actionTable 'out=in;
out.absence.end=in.end.toIvyDate();
' #txt
As0 f2 type htmlwfui.AbsenceAdd.AbsenceAddData #txt
As0 f2 246 100 36 24 20 -2 #rect
As0 f2 @|RichDialogProcessStepIcon #fIcon
As0 f14 expr out #txt
As0 f14 254 124 234 148 #arcP
As0 f15 expr out #txt
As0 f15 224 74 224 148 #arcP
>Proto As0 .type htmlwfui.AbsenceAdd.AbsenceAddData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f6 mainOut f8 tail #connect
As0 f8 head f5 mainIn #connect
As0 f5 mainOut f10 tail #connect
As0 f10 head f9 mainIn #connect
As0 f11 mainOut f4 tail #connect
As0 f4 head f7 mainIn #connect
As0 f0 mainOut f13 tail #connect
As0 f13 head f1 mainIn #connect
As0 f2 mainOut f14 tail #connect
As0 f14 head f11 mainIn #connect
As0 f3 mainOut f15 tail #connect
As0 f15 head f11 mainIn #connect
