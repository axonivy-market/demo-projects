[Ivy]
[>Created: Fri May 09 11:27:01 CEST 2014]
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
As0 @PushWFArc f23 '' #zField
As0 @PushWFArc f19 '' #zField
As0 @PushWFArc f17 '' #zField
As0 @PushWFArc f7 '' #zField
As0 @RichDialogProcessEnd f2 '' #zField
As0 @PushWFArc f21 '' #zField
As0 @RichDialogProcessEnd f13 '' #zField
As0 @PushWFArc f22 '' #zField
As0 @RichDialogProcessEnd f16 '' #zField
As0 @PushWFArc f24 '' #zField
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
As0 f0 83 51 26 26 -16 12 #rect
As0 f0 @|RichDialogInitStartIcon #fIcon
As0 f0 -1|-1|-9671572 #nodeStyle
As0 f1 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f1 211 51 26 26 0 12 #rect
As0 f1 @|RichDialogProcessEndIcon #fIcon
As0 f1 -1|-1|-9671572 #nodeStyle
As0 f3 actionDecl 'ch.ivyteam.wf.settings.Absence.AbsenceData out;
' #txt
As0 f3 actionTable 'out=in;
out.absences=ivy.session.getSessionUser().getAbsences();
' #txt
As0 f3 actionCode 'import ch.ivyteam.ivy.security.IUserAbsence;

List<IUserAbsence> absences = ivy.session.getSessionUser().getAbsences();
out.absences.clear();
for (IUserAbsence absence : absences)
{
	out.absences.add(absence);
}

out.absenceEndDate = null;
out.absenceEndTime = null;
out.absenceStartDate = null;
out.absenceStartTime = null;

if(in.option == "add")
{
	out.absenceDescription = null;
}

if(in.option == "edit")
{
	out.absenceStartDate = in.startDateTime.getDate();
	out.absenceStartTime = in.startDateTime.getTime();
	
	
	if(in.endDateTime is initialized)
	{
		out.absenceEndDate = in.endDateTime.getDate();
		out.absenceEndTime = in.endDateTime.getTime();
	}
}' #txt
As0 f3 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>get absences</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f3 168 138 112 44 -37 -8 #rect
As0 f3 @|StepIcon #fIcon
As0 f3 -1|-1|-9671572 #nodeStyle
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
As0 f5 83 211 26 26 -71 12 #rect
As0 f5 @|RichDialogMethodStartIcon #fIcon
As0 f5 -1|-1|-9671572 #nodeStyle
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
As0 f8 83 275 26 26 -34 12 #rect
As0 f8 @|RichDialogProcessStartIcon #fIcon
As0 f8 -1|-1|-9671572 #nodeStyle
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
As0 f11 83 339 26 26 -34 12 #rect
As0 f11 @|RichDialogProcessStartIcon #fIcon
As0 f11 -1|-1|-9671572 #nodeStyle
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
        <name>delete absence</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f14 168 202 112 44 -42 -8 #rect
As0 f14 @|StepIcon #fIcon
As0 f14 -1|-1|-9671572 #nodeStyle
As0 f15 expr out #txt
As0 f15 109 224 168 224 #arcP
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
        <name>add absence</name>
        <nameStyle>11,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f6 168 266 112 44 -36 -8 #rect
As0 f6 @|StepIcon #fIcon
As0 f6 -1|-1|-9671572 #nodeStyle
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
        <name>delete absence</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
As0 f9 168 330 112 44 -42 -8 #rect
As0 f9 @|StepIcon #fIcon
As0 f9 -1|-1|-9671572 #nodeStyle
As0 f10 expr out #txt
As0 f10 109 352 168 352 #arcP
As0 f18 expr out #txt
As0 f18 224 330 224 310 #arcP
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
As0 f12 83 147 26 26 -23 12 #rect
As0 f12 @|RichDialogMethodStartIcon #fIcon
As0 f12 -1|-1|-9671572 #nodeStyle
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
As0 f4 328 138 112 44 -33 -8 #rect
As0 f4 @|StepIcon #fIcon
As0 f4 -1|-1|-9671572 #nodeStyle
As0 f23 expr out #txt
As0 f23 109 288 168 288 #arcP
As0 f19 expr out #txt
As0 f19 109 160 168 160 #arcP
As0 f17 expr out #txt
As0 f17 280 160 328 160 #arcP
As0 f17 0 0.6427504852252198 0 0 #arcLabel
As0 f7 expr out #txt
As0 f7 109 64 211 64 #arcP
As0 f2 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f2 339 211 26 26 0 12 #rect
As0 f2 @|RichDialogProcessEndIcon #fIcon
As0 f2 -1|-1|-9671572 #nodeStyle
As0 f21 expr out #txt
As0 f21 280 224 339 224 #arcP
As0 f21 0 0.7016230235795403 0 0 #arcLabel
As0 f13 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f13 499 147 26 26 0 12 #rect
As0 f13 @|RichDialogProcessEndIcon #fIcon
As0 f13 -1|-1|-9671572 #nodeStyle
As0 f22 expr out #txt
As0 f22 440 160 499 160 #arcP
As0 f22 0 0.6726540205625997 0 0 #arcLabel
As0 f16 type ch.ivyteam.wf.settings.Absence.AbsenceData #txt
As0 f16 339 275 26 26 0 12 #rect
As0 f16 @|RichDialogProcessEndIcon #fIcon
As0 f16 -1|-1|-9671572 #nodeStyle
As0 f24 expr out #txt
As0 f24 280 288 339 288 #arcP
As0 f24 0 0.9121469277742105 0 0 #arcLabel
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
As0 f8 mainOut f23 tail #connect
As0 f23 head f6 mainIn #connect
As0 f3 mainOut f17 tail #connect
As0 f17 head f4 mainIn #connect
As0 f12 mainOut f19 tail #connect
As0 f19 head f3 mainIn #connect
As0 f0 mainOut f7 tail #connect
As0 f7 head f1 mainIn #connect
As0 f14 mainOut f21 tail #connect
As0 f21 head f2 mainIn #connect
As0 f4 mainOut f22 tail #connect
As0 f22 head f13 mainIn #connect
As0 f6 mainOut f24 tail #connect
As0 f24 head f16 mainIn #connect
