[Ivy]
1367E046117353D3 7.5.0 #module
>Proto >Proto Collection #zClass
Ae0 Absence Big #zClass
Ae0 B #cInfo
Ae0 #process
Ae0 @TextInP .type .type #zField
Ae0 @TextInP .processKind .processKind #zField
Ae0 @AnnotationInP-0n ai ai #zField
Ae0 @TextInP .xml .xml #zField
Ae0 @TextInP .responsibility .responsibility #zField
Ae0 @StartRequest f0 '' #zField
Ae0 @CallSub f8 '' #zField
Ae0 @EndTask f5 '' #zField
Ae0 @GridStep f20 '' #zField
Ae0 @Page f1 '' #zField
Ae0 @PushWFArc f10 '' #zField
Ae0 @PushWFArc f2 '' #zField
Ae0 @PushWFArc f36 '' #zField
Ae0 @PushWFArc f3 '' #zField
Ae0 @Page f11 '' #zField
Ae0 @GridStep f4 '' #zField
Ae0 @PushWFArc f6 '' #zField
Ae0 @PushWFArc f7 '' #zField
Ae0 @PushWFArc f9 '' #zField
Ae0 @GridStep f13 '' #zField
Ae0 @PushWFArc f14 '' #zField
Ae0 @PushWFArc f16 '' #zField
Ae0 @PushWFArc f12 '' #zField
>Proto Ae0 Ae0 Absence #zField
Ae0 f0 outLink start.ivp #txt
Ae0 f0 inParamDecl '<> param;' #txt
Ae0 f0 requestEnabled true #txt
Ae0 f0 triggerEnabled false #txt
Ae0 f0 callSignature start() #txt
Ae0 f0 persist false #txt
Ae0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ae0 f0 showInStartList 0 #txt
Ae0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f0 @C|.responsibility Everybody #txt
Ae0 f0 147 51 26 26 14 0 #rect
Ae0 f0 @|StartRequestIcon #fIcon
Ae0 f8 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Ae0 f8 requestActionDecl '<htmlwfui.Data in> param;' #txt
Ae0 f8 requestMappingAction 'param.in=in;
' #txt
Ae0 f8 responseActionDecl 'htmlwfui.Data out;
' #txt
Ae0 f8 responseMappingAction 'out=result.out;
' #txt
Ae0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f8 142 108 36 24 20 -2 #rect
Ae0 f8 @|CallSubIcon #fIcon
Ae0 f5 51 243 26 26 14 0 #rect
Ae0 f5 @|EndIcon #fIcon
Ae0 f20 actionTable 'out=in;
out.absence.absences=ivy.session.getSessionUser().getAbsences();
out.temp.msg=ivy.session.getSessionUser().isAbsent() ? ivy.cms.co("/labels/currentlyAbsent") : "";
' #txt
Ae0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>collect current absences</name>
        <nameStyle>24,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f20 142 180 36 24 23 -18 #rect
Ae0 f20 @|StepIcon #fIcon
Ae0 f1 outTypes "htmlwfui.Data","htmlwfui.Data","htmlwfui.Data" #txt
Ae0 f1 outLinks "LinkE.ivp","LinkA.ivp","LinkB.ivp" #txt
Ae0 f1 template "/ProcessPages/Absence/Absences.ivc" #txt
Ae0 f1 type htmlwfui.Data #txt
Ae0 f1 skipLink skip.ivp #txt
Ae0 f1 sortLink sort.ivp #txt
Ae0 f1 templateWizard '#
#Thu Apr 26 16:16:40 CEST 2012
' #txt
Ae0 f1 pageArchivingActivated false #txt
Ae0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Absences</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f1 @C|.responsibility Everybody #txt
Ae0 f1 142 244 36 24 26 -23 #rect
Ae0 f1 @|PageIcon #fIcon
Ae0 f10 expr out #txt
Ae0 f10 160 132 160 180 #arcP
Ae0 f2 expr out #txt
Ae0 f2 160 204 160 244 #arcP
Ae0 f36 expr data #txt
Ae0 f36 outCond ivp=="LinkE.ivp" #txt
Ae0 f36 142 256 77 256 #arcP
Ae0 f3 expr out #txt
Ae0 f3 160 77 160 108 #arcP
Ae0 f11 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Ae0 f11 outLinks "LinkA.ivp","LinkB.ivp" #txt
Ae0 f11 template "/ProcessPages/Absence/AddAbsence.ivc" #txt
Ae0 f11 type htmlwfui.Data #txt
Ae0 f11 skipLink skip.ivp #txt
Ae0 f11 sortLink sort.ivp #txt
Ae0 f11 templateWizard '#
#Thu Apr 05 13:43:57 CEST 2012
' #txt
Ae0 f11 pageArchivingActivated false #txt
Ae0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Add Absence</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f11 @C|.responsibility Everybody #txt
Ae0 f11 238 324 36 24 21 1 #rect
Ae0 f11 @|PageIcon #fIcon
Ae0 f4 actionTable 'out=in;
' #txt
Ae0 f4 actionCode 'import ch.ivyteam.ivy.security.IUser;
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
Ae0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>save Absence</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f4 238 404 36 24 21 0 #rect
Ae0 f4 @|StepIcon #fIcon
Ae0 f6 expr data #txt
Ae0 f6 outCond ivp=="LinkA.ivp" #txt
Ae0 f6 256 348 256 404 #arcP
Ae0 f7 expr data #txt
Ae0 f7 outCond ivp=="LinkA.ivp" #txt
Ae0 f7 174 268 242 324 #arcP
Ae0 f7 0 0.48330731105912267 0 0 #arcLabel
Ae0 f9 expr data #txt
Ae0 f9 outCond ivp=="LinkB.ivp" #txt
Ae0 f9 274 336 178 256 #arcP
Ae0 f9 1 384 336 #addKink
Ae0 f9 2 384 256 #addKink
Ae0 f9 2 0.1202617719219589 0 0 #arcLabel
Ae0 f13 actionTable 'out=in;
' #txt
Ae0 f13 actionCode 'import ch.ivyteam.ivy.security.IUserAbsence;
List absences = ivy.session.getSessionUser().getAbsences();
for(IUserAbsence absence:absences)
{
	if(absence.getId() == in.temp.n)
	{
			ivy.session.getSessionUser().deleteAbsence(absence);
			break;
	}	
}

' #txt
Ae0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Remove Absence</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f13 70 332 36 24 16 9 #rect
Ae0 f13 @|StepIcon #fIcon
Ae0 f14 expr data #txt
Ae0 f14 outCond ivp=="LinkB.ivp" #txt
Ae0 f14 150 268 98 332 #arcP
Ae0 f14 0 0.4788521089940313 0 0 #arcLabel
Ae0 f16 expr out #txt
Ae0 f16 274 416 178 192 #arcP
Ae0 f16 1 464 416 #addKink
Ae0 f16 2 464 192 #addKink
Ae0 f16 1 0.5 0 0 #arcLabel
Ae0 f12 expr out #txt
Ae0 f12 88 356 178 192 #arcP
Ae0 f12 1 88 448 #addKink
Ae0 f12 2 480 448 #addKink
Ae0 f12 3 480 192 #addKink
Ae0 f12 1 0.10155497856686872 0 0 #arcLabel
>Proto Ae0 .type htmlwfui.Data #txt
>Proto Ae0 .processKind NORMAL #txt
>Proto Ae0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ae0 0 0 32 24 18 0 #rect
>Proto Ae0 @|BIcon #fIcon
Ae0 f8 mainOut f10 tail #connect
Ae0 f10 head f20 mainIn #connect
Ae0 f20 mainOut f2 tail #connect
Ae0 f2 head f1 mainIn #connect
Ae0 f36 head f5 mainIn #connect
Ae0 f1 out f36 tail #connect
Ae0 f0 mainOut f3 tail #connect
Ae0 f3 head f8 mainIn #connect
Ae0 f11 out f6 tail #connect
Ae0 f6 head f4 mainIn #connect
Ae0 f1 out f7 tail #connect
Ae0 f7 head f11 mainIn #connect
Ae0 f11 out f9 tail #connect
Ae0 f9 head f1 mainIn #connect
Ae0 f1 out f14 tail #connect
Ae0 f14 head f13 mainIn #connect
Ae0 f4 mainOut f16 tail #connect
Ae0 f16 head f20 mainIn #connect
Ae0 f13 mainOut f12 tail #connect
Ae0 f12 head f20 mainIn #connect
