[Ivy]
[>Created: Tue Jan 22 19:18:38 CET 2013]
13C1950CD3BC4258 3.17 #module
>Proto >Proto Collection #zClass
Ss0 SubstitutionAddProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessStart f3 '' #zField
Ss0 @RichDialogProcessStart f6 '' #zField
Ss0 @RichDialogEnd f9 '' #zField
Ss0 @RichDialogEnd f4 '' #zField
Ss0 @GridStep f7 '' #zField
Ss0 @PushWFArc f10 '' #zField
Ss0 @PushWFArc f11 '' #zField
Ss0 @GridStep f5 '' #zField
Ss0 @PushWFArc f12 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @RichDialogProcessStart f13 '' #zField
Ss0 @RichDialogProcessEnd f14 '' #zField
Ss0 @PushWFArc f15 '' #zField
Ss0 @GridStep f16 '' #zField
Ss0 @PushWFArc f17 '' #zField
Ss0 @PushWFArc f8 '' #zField
>Proto Ss0 Ss0 SubstitutionAddProcess #zField
Ss0 f1 type htmlwfui.SubstitutionAdd.SubstitutionAddData #txt
Ss0 f1 86 150 20 20 13 0 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f0 guid 13C195260C2E2A76 #txt
Ss0 f0 type htmlwfui.SubstitutionAdd.SubstitutionAddData #txt
Ss0 f0 method start(htmlwfui.Substitute) #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<htmlwfui.Substitute substitute> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 inParameterMapAction 'out.substitute=param.substitute;
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 embeddedRdInitializations '* ' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Substitute)</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f0 86 54 20 20 13 0 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f3 guid 13C19588227CB5F6 #txt
Ss0 f3 type htmlwfui.SubstitutionAdd.SubstitutionAddData #txt
Ss0 f3 actionDecl 'htmlwfui.SubstitutionAdd.SubstitutionAddData out;
' #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>backToSubstitutesList</name>
    </language>
</elementInfo>
' #txt
Ss0 f3 246 54 20 20 13 0 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f6 guid 13C1958BF5731430 #txt
Ss0 f6 type htmlwfui.SubstitutionAdd.SubstitutionAddData #txt
Ss0 f6 actionDecl 'htmlwfui.SubstitutionAdd.SubstitutionAddData out;
' #txt
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveSubstitution</name>
    </language>
</elementInfo>
' #txt
Ss0 f6 438 54 20 20 13 0 #rect
Ss0 f6 @|RichDialogProcessStartIcon #fIcon
Ss0 f9 type htmlwfui.SubstitutionAdd.SubstitutionAddData #txt
Ss0 f9 guid 13C195B3616CE667 #txt
Ss0 f9 246 150 20 20 13 0 #rect
Ss0 f9 @|RichDialogEndIcon #fIcon
Ss0 f4 type htmlwfui.SubstitutionAdd.SubstitutionAddData #txt
Ss0 f4 guid 13C195B9FD15EE4C #txt
Ss0 f4 438 206 20 20 13 0 #rect
Ss0 f4 @|RichDialogEndIcon #fIcon
Ss0 f7 actionDecl 'htmlwfui.SubstitutionAdd.SubstitutionAddData out;
' #txt
Ss0 f7 actionTable 'out=in;
' #txt
Ss0 f7 actionCode 'import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IUserSubstitute;

/*
	// remove existing substitute settings
	List currentSubstitutes = ivy.session.getSessionUser().getSubstitutes();
	for(int i=0; i<currentSubstitutes.size(); i++)
	{
		IUserSubstitute us = currentSubstitutes.get(i) as IUserSubstitute;
		ivy.session.getSessionUser().deleteSubstitute(us);
	}
*/	

	// add new substitute if anything selected
	if(in.substitute.user.length()>1 )
	{
			IUser user = ivy.wf.getSecurityContext().findUser(in.substitute.user);
			if(user !=null)
			{
				if(in.substitute.personal)
				{
					ivy.session.getSessionUser().createSubstitute(user, null, 
						in.substitute.description.trim().length() > 0 ? (new Date()).format() +" "+in.substitute.description : "");
				}
				else
				{
					IRole role = ivy.wf.getSecurityContext().findRole(in.substitute.role);
					if(role != null)
					{
						ivy.session.getSessionUser().createSubstitute(user, role, 
							in.substitute.description.trim().length() > 0 ? (new Date()).format("short") +" "+in.substitute.description : "");
					}
			}		
	}	
}' #txt
Ss0 f7 type htmlwfui.SubstitutionAdd.SubstitutionAddData #txt
Ss0 f7 430 156 36 24 20 -2 #rect
Ss0 f7 @|StepIcon #fIcon
Ss0 f10 expr out #txt
Ss0 f10 448 180 448 206 #arcP
Ss0 f11 expr out #txt
Ss0 f11 256 74 256 150 #arcP
Ss0 f5 actionDecl 'htmlwfui.SubstitutionAdd.SubstitutionAddData out;
' #txt
Ss0 f5 actionTable 'out=in;
out.radioNr=1;
' #txt
Ss0 f5 type htmlwfui.SubstitutionAdd.SubstitutionAddData #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 78 100 36 24 20 -2 #rect
Ss0 f5 @|StepIcon #fIcon
Ss0 f12 expr out #txt
Ss0 f12 96 74 96 100 #arcP
Ss0 f2 expr out #txt
Ss0 f2 96 124 96 150 #arcP
Ss0 f13 guid 13C1A68EFFFC3CA4 #txt
Ss0 f13 type htmlwfui.SubstitutionAdd.SubstitutionAddData #txt
Ss0 f13 actionDecl 'htmlwfui.SubstitutionAdd.SubstitutionAddData out;
' #txt
Ss0 f13 actionTable 'out=in;
' #txt
Ss0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>changeRadio</name>
    </language>
</elementInfo>
' #txt
Ss0 f13 606 54 20 20 13 0 #rect
Ss0 f13 @|RichDialogProcessStartIcon #fIcon
Ss0 f14 type htmlwfui.SubstitutionAdd.SubstitutionAddData #txt
Ss0 f14 606 150 20 20 13 0 #rect
Ss0 f14 @|RichDialogProcessEndIcon #fIcon
Ss0 f15 616 74 616 150 #arcP
Ss0 f16 actionDecl 'htmlwfui.SubstitutionAdd.SubstitutionAddData out;
' #txt
Ss0 f16 actionTable 'out=in;
out.substitute.personal=IF(in.radioNr == 1, true, false);
' #txt
Ss0 f16 type htmlwfui.SubstitutionAdd.SubstitutionAddData #txt
Ss0 f16 430 100 36 24 20 -2 #rect
Ss0 f16 @|StepIcon #fIcon
Ss0 f17 expr out #txt
Ss0 f17 448 74 448 100 #arcP
Ss0 f8 expr out #txt
Ss0 f8 448 124 448 156 #arcP
>Proto Ss0 .type htmlwfui.SubstitutionAdd.SubstitutionAddData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f7 mainOut f10 tail #connect
Ss0 f10 head f4 mainIn #connect
Ss0 f3 mainOut f11 tail #connect
Ss0 f11 head f9 mainIn #connect
Ss0 f0 mainOut f12 tail #connect
Ss0 f12 head f5 mainIn #connect
Ss0 f5 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f13 mainOut f15 tail #connect
Ss0 f15 head f14 mainIn #connect
Ss0 f6 mainOut f17 tail #connect
Ss0 f17 head f16 mainIn #connect
Ss0 f16 mainOut f8 tail #connect
Ss0 f8 head f7 mainIn #connect
