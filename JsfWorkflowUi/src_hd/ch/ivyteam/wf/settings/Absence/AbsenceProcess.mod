[Ivy]
[>Created: Tue Jun 25 14:37:14 CEST 2013]
13F3C90C39342A39 3.17 #module
>Proto >Proto Collection #zClass
As0 AbsenceProcess Big #zClass
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
As0 @GridStep f3 '' #zField
As0 @RichDialogMethodStart f5 '' #zField
As0 @RichDialogProcessStart f8 '' #zField
As0 @RichDialogProcessStart f11 '' #zField
As0 @GridStep f14 '' #zField
As0 @PushWFArc f15 '' #zField
As0 @GridStep f6 '' #zField
As0 @GridStep f9 '' #zField
As0 @PushWFArc f10 '' #zField
As0 @PushWFArc f18 '' #zField
As0 @RichDialogMethodStart f12 '' #zField
As0 @GridStep f4 '' #zField
As0 @PushWFArc f16 '' #zField
As0 @PushWFArc f23 '' #zField
As0 @PushWFArc f13 '' #zField
As0 @PushWFArc f21 '' #zField
As0 @PushWFArc f19 '' #zField
As0 @PushWFArc f17 '' #zField
As0 @PushWFArc f7 '' #zField
>Proto As0 As0 AbsenceProcess #zField
As0 f0 guid 13F3C90C3B26C28B #txt
As0 f0 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f0 method start() #txt
As0 f0 disableUIEvents true #txt
As0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f0 outParameterDecl '<> result;
' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
As0 f0 86 54 20 20 13 0 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f1 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f1 86 246 20 20 13 0 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f3 actionDecl 'ch.ivyteam.wf.settings.Absence.AbsenceData out;
' #txt
As0 f3 actionTable 'out=in;
out.absenceDescription=null;
out.absenceEndDate=null;
out.absenceEndTime=null;
out.absenceStartDate=null;
out.absenceStartTime=null;
out.absences=ivy.session.getSessionUser().getAbsences();
' #txt
As0 f3 actionCode 'import ch.ivyteam.ivy.security.IUserAbsence;

List<IUserAbsence> absences = ivy.session.getSessionUser().getAbsences();
out.absences.clear();
for (IUserAbsence absence : absences)
{
	out.absences.add(absence);
}' #txt
As0 f3 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Absences</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f3 174 116 36 24 20 -2 #rect
As0 f3 @|StepIcon #fIcon
As0 f5 guid 13F3D753903E7383 #txt
As0 f5 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f5 method removeAbsence(Number) #txt
As0 f5 disableUIEvents false #txt
As0 f5 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.Number absenceId> param = methodEvent.getInputArguments();
' #txt
As0 f5 inParameterMapAction 'out.deleteId=param.absenceId;
' #txt
As0 f5 outParameterDecl '<> result;
' #txt
As0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>removeAbsence(Number)</name>
        <nameStyle>21,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f5 310 54 20 20 13 0 #rect
As0 f5 @|RichDialogMethodStartIcon #fIcon
As0 f8 guid 13F41BB0F9A91044 #txt
As0 f8 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f8 actionDecl 'ch.ivyteam.wf.settings.Absence.AbsenceData out;
' #txt
As0 f8 actionTable 'out=in;
' #txt
As0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addAbsence</name>
    </language>
</elementInfo>
' #txt
As0 f8 502 54 20 20 13 0 #rect
As0 f8 @|RichDialogProcessStartIcon #fIcon
As0 f11 guid 13F41BC795391160 #txt
As0 f11 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f11 actionDecl 'ch.ivyteam.wf.settings.Absence.AbsenceData out;
' #txt
As0 f11 actionTable 'out=in;
' #txt
As0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>editAbsence</name>
    </language>
</elementInfo>
' #txt
As0 f11 630 54 20 20 13 0 #rect
As0 f11 @|RichDialogProcessStartIcon #fIcon
As0 f14 actionDecl 'ch.ivyteam.wf.settings.Absence.AbsenceData out;
' #txt
As0 f14 actionTable 'out=in;
' #txt
As0 f14 actionCode 'import ch.ivyteam.ivy.security.IUserAbsence;
List absences = ivy.session.getSessionUser().getAbsences();
for(IUserAbsence absence:absences)
{
	if(absence.getId() == in.deleteId)
	{
			ivy.session.getSessionUser().deleteAbsence(absence);
			break;
	}	
}' #txt
As0 f14 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete</name>
        <nameStyle>6
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f14 302 116 36 24 20 -2 #rect
As0 f14 @|StepIcon #fIcon
As0 f15 expr out #txt
As0 f15 320 74 320 116 #arcP
As0 f6 actionDecl 'ch.ivyteam.wf.settings.Absence.AbsenceData out;
' #txt
As0 f6 actionTable 'out=in;
' #txt
As0 f6 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IUserAbsence;

DateTime from = null;
if(in.absenceStartDate is initialized)
{
	from = new DateTime(in.absenceStartDate.getYear(), in.absenceStartDate.getMonth(), in.absenceStartDate.getDay(), 
		in.absenceStartTime.getHours(), in.absenceStartTime.getMinutes(), 0);

	DateTime to = null;
	if(in.absenceEndDate is initialized)
	{
		 to = new DateTime(in.absenceEndDate.getYear(), in.absenceEndDate.getMonth(), in.absenceEndDate.getDay(), 
			in.absenceEndTime.getHours(), in.absenceEndTime.getMinutes(), 0);

		ivy.session.getSessionUser().createAbsence(from, to, 
		in.absenceDescription.trim().length() > 0 ? in.absenceDescription : "");
	}
	else
	{	
		ivy.session.getSessionUser().createAbsence(from, null, 
			in.absenceDescription.trim().length() > 0 ? in.absenceDescription : "");
	}
}' #txt
As0 f6 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add</name>
        <nameStyle>3
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 494 116 36 24 20 -2 #rect
As0 f6 @|StepIcon #fIcon
As0 f9 actionDecl 'ch.ivyteam.wf.settings.Absence.AbsenceData out;
' #txt
As0 f9 actionTable 'out=in;
' #txt
As0 f9 actionCode 'import ch.ivyteam.ivy.security.IUserAbsence;
List absences = ivy.session.getSessionUser().getAbsences();
for(IUserAbsence absence:absences)
{
	if(absence.getId() == in.deleteId)
	{
			ivy.session.getSessionUser().deleteAbsence(absence);
			break;
	}	
}' #txt
As0 f9 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>edit</name>
        <nameStyle>4
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f9 622 116 36 24 20 -2 #rect
As0 f9 @|StepIcon #fIcon
As0 f10 expr out #txt
As0 f10 640 74 640 116 #arcP
As0 f18 expr out #txt
As0 f18 622 128 530 128 #arcP
As0 f12 guid 13F75DCD140B871B #txt
As0 f12 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f12 method update() #txt
As0 f12 disableUIEvents false #txt
As0 f12 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
As0 f12 outParameterDecl '<> result;
' #txt
As0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>update()</name>
    </language>
</elementInfo>
' #txt
As0 f12 182 54 20 20 13 0 #rect
As0 f12 @|RichDialogMethodStartIcon #fIcon
As0 f4 actionDecl 'ch.ivyteam.wf.settings.Absence.AbsenceData out;
' #txt
As0 f4 actionTable 'out=in;
' #txt
As0 f4 actionCode 'import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;

Boolean message = FacesContext.getCurrentInstance().getMessageList().size() >= 1 ? true : false;

if(message)
{
	out.add = in.option == "add" ? true : false;
	out.edit = in.option == "edit" ? true : false;
}
else
{
	out.add = false;
	out.edit = false;
}
' #txt
As0 f4 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>show dialog</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f4 174 180 36 24 20 -2 #rect
As0 f4 @|StepIcon #fIcon
As0 f16 expr out #txt
As0 f16 192 204 106 256 #arcP
As0 f16 1 192 256 #addKink
As0 f16 1 0.3496726541843647 0 0 #arcLabel
As0 f23 expr out #txt
As0 f23 512 74 512 116 #arcP
As0 f13 expr out #txt
As0 f13 320 140 106 256 #arcP
As0 f13 1 320 256 #addKink
As0 f13 1 0.3565612141137027 0 0 #arcLabel
As0 f21 expr out #txt
As0 f21 512 140 106 256 #arcP
As0 f21 1 512 256 #addKink
As0 f21 1 0.44493192763195005 0 0 #arcLabel
As0 f19 expr out #txt
As0 f19 192 74 192 116 #arcP
As0 f17 expr out #txt
As0 f17 192 140 192 180 #arcP
As0 f17 0 0.6427504852252198 0 0 #arcLabel
As0 f7 expr out #txt
As0 f7 96 74 96 246 #arcP
>Proto As0 .type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
>Proto As0 '' #fIcon
As0 f5 mainOut f15 tail #connect
As0 f15 head f14 mainIn #connect
As0 f11 mainOut f10 tail #connect
As0 f10 head f9 mainIn #connect
As0 f9 mainOut f18 tail #connect
As0 f18 head f6 mainIn #connect
As0 f14 mainOut f13 tail #connect
As0 f13 head f1 mainIn #connect
As0 f4 mainOut f16 tail #connect
As0 f16 head f1 mainIn #connect
As0 f6 mainOut f21 tail #connect
As0 f21 head f1 mainIn #connect
As0 f8 mainOut f23 tail #connect
As0 f23 head f6 mainIn #connect
As0 f3 mainOut f17 tail #connect
As0 f17 head f4 mainIn #connect
As0 f12 mainOut f19 tail #connect
As0 f19 head f3 mainIn #connect
As0 f0 mainOut f7 tail #connect
As0 f7 head f1 mainIn #connect
