[Ivy]
[>Created: Tue Jan 22 19:18:38 CET 2013]
13BFF6A6F69C657B 3.17 #module
>Proto >Proto Collection #zClass
As0 AbsenceViewProcess Big #zClass
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
As0 @RichDialogEnd f6 '' #zField
As0 @GridStep f4 '' #zField
As0 @PushWFArc f5 '' #zField
As0 @PushWFArc f7 '' #zField
As0 @GridStep f11 '' #zField
As0 @GridStep f9 '' #zField
As0 @PushWFArc f10 '' #zField
As0 @RichDialogMethodStart f15 '' #zField
As0 @PushWFArc f16 '' #zField
As0 @GridStep f20 '' #zField
As0 @PushWFArc f14 '' #zField
As0 @PushWFArc f12 '' #zField
As0 @PushWFArc f17 '' #zField
>Proto As0 As0 AbsenceViewProcess #zField
As0 f0 guid 13BFF6A6F79DCDAE #txt
As0 f0 type htmlwfui.AbsenceView.AbsenceViewData #txt
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
As0 f1 type htmlwfui.AbsenceView.AbsenceViewData #txt
As0 f1 86 222 20 20 13 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f3 guid 13BFF80A6FFD001F #txt
As0 f3 type htmlwfui.AbsenceView.AbsenceViewData #txt
As0 f3 actionDecl 'htmlwfui.AbsenceView.AbsenceViewData out;
' #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addAbsence</name>
    </language>
</elementInfo>
' #txt
As0 f3 406 54 20 20 13 0 #rect
As0 f3 @|RichDialogProcessStartIcon #fIcon
As0 f6 type htmlwfui.AbsenceView.AbsenceViewData #txt
As0 f6 guid 13BFF80F29044452 #txt
As0 f6 406 150 20 20 13 0 #rect
As0 f6 @|RichDialogEndIcon #fIcon
As0 f4 actionDecl 'htmlwfui.AbsenceView.AbsenceViewData out;
' #txt
As0 f4 actionTable 'out=in;
out.option="add";
' #txt
As0 f4 type htmlwfui.AbsenceView.AbsenceViewData #txt
As0 f4 398 100 36 24 20 -2 #rect
As0 f4 @|StepIcon #fIcon
As0 f5 expr out #txt
As0 f5 416 74 416 100 #arcP
As0 f7 expr out #txt
As0 f7 416 124 416 150 #arcP
As0 f11 actionDecl 'htmlwfui.AbsenceView.AbsenceViewData out;
' #txt
As0 f11 actionTable 'out=in;
out.option="remove";
' #txt
As0 f11 actionCode 'import ch.ivyteam.ivy.security.IUserAbsence;
List absences = ivy.session.getSessionUser().getAbsences();
for(IUserAbsence absence:absences)
{
	if(absence.getIdentifier() == in.deleteNr)
	{
			ivy.session.getSessionUser().deleteAbsence(absence);
			break;
	}	
}

' #txt
As0 f11 type htmlwfui.AbsenceView.AbsenceViewData #txt
As0 f11 270 100 36 24 20 -2 #rect
As0 f11 @|StepIcon #fIcon
As0 f9 actionDecl 'htmlwfui.AbsenceView.AbsenceViewData out;
' #txt
As0 f9 actionTable 'out=in;
out.msg=ivy.session.getSessionUser().isAbsent() ? ivy.cms.co("/labels/currentlyAbsent") : "";
' #txt
As0 f9 type htmlwfui.AbsenceView.AbsenceViewData #txt
As0 f9 78 172 36 24 20 -2 #rect
As0 f9 @|StepIcon #fIcon
As0 f10 expr out #txt
As0 f10 96 196 96 222 #arcP
As0 f15 guid 13C05DAE97285AFB #txt
As0 f15 type htmlwfui.AbsenceView.AbsenceViewData #txt
As0 f15 method removeAbs(Number) #txt
As0 f15 disableUIEvents false #txt
As0 f15 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number idx> param = methodEvent.getInputArguments();
' #txt
As0 f15 inParameterMapAction 'out.deleteNr=param.idx;
' #txt
As0 f15 outParameterDecl '<> result;
' #txt
As0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removeAbs()</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f15 278 54 20 20 13 0 #rect
As0 f15 @|RichDialogMethodStartIcon #fIcon
As0 f16 expr out #txt
As0 f16 288 74 288 100 #arcP
As0 f20 actionDecl 'htmlwfui.AbsenceView.AbsenceViewData out;
' #txt
As0 f20 actionTable 'out=in;
out.absence.absences=ivy.session.getSessionUser().getAbsences();
' #txt
As0 f20 type htmlwfui.AbsenceView.AbsenceViewData #txt
As0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect current absences</name>
        <nameStyle>24,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f20 78 124 36 24 23 -18 #rect
As0 f20 @|StepIcon #fIcon
As0 f14 expr out #txt
As0 f14 96 74 96 124 #arcP
As0 f12 expr out #txt
As0 f12 96 148 96 172 #arcP
As0 f17 expr out #txt
As0 f17 288 124 114 136 #arcP
As0 f17 1 288 136 #addKink
As0 f17 1 0.0018394491469347636 0 0 #arcLabel
>Proto As0 .type htmlwfui.AbsenceView.AbsenceViewData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f3 mainOut f5 tail #connect
As0 f5 head f4 mainIn #connect
As0 f4 mainOut f7 tail #connect
As0 f7 head f6 mainIn #connect
As0 f9 mainOut f10 tail #connect
As0 f10 head f1 mainIn #connect
As0 f15 mainOut f16 tail #connect
As0 f16 head f11 mainIn #connect
As0 f0 mainOut f14 tail #connect
As0 f14 head f20 mainIn #connect
As0 f20 mainOut f12 tail #connect
As0 f12 head f9 mainIn #connect
As0 f11 mainOut f17 tail #connect
As0 f17 head f20 mainIn #connect
