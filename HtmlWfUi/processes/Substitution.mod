[Ivy]
[>Created: Fri May 04 14:43:32 CEST 2012]
1367DCC9EAB32A2E 3.17 #module
>Proto >Proto Collection #zClass
Sn0 Substitution Big #zClass
Sn0 B #cInfo
Sn0 #process
Sn0 @TextInP .resExport .resExport #zField
Sn0 @TextInP .type .type #zField
Sn0 @TextInP .processKind .processKind #zField
Sn0 @AnnotationInP-0n ai ai #zField
Sn0 @TextInP .xml .xml #zField
Sn0 @TextInP .responsibility .responsibility #zField
Sn0 @StartRequest f0 '' #zField
Sn0 @Page f1 '' #zField
Sn0 @GridStep f3 '' #zField
Sn0 @EndTask f5 '' #zField
Sn0 @CallSub f8 '' #zField
Sn0 @PushWFArc f9 '' #zField
Sn0 @GridStep f20 '' #zField
Sn0 @PushWFArc f2 '' #zField
Sn0 @Page f11 '' #zField
Sn0 @PushWFArc f12 '' #zField
Sn0 @PushWFArc f4 '' #zField
Sn0 @PushWFArc f36 '' #zField
Sn0 @GridStep f6 '' #zField
Sn0 @PushWFArc f14 '' #zField
Sn0 @GridStep f16 '' #zField
Sn0 @PushWFArc f17 '' #zField
Sn0 @PushWFArc f10 '' #zField
Sn0 @PushWFArc f18 '' #zField
Sn0 @PushWFArc f13 '' #zField
Sn0 @PushWFArc f7 '' #zField
Sn0 @Page f15 '' #zField
Sn0 @PushWFArc f19 '' #zField
Sn0 @PushWFArc f21 '' #zField
>Proto Sn0 Sn0 Substitution #zField
Sn0 f0 outLink start.ivp #txt
Sn0 f0 type htmlwfui.Data #txt
Sn0 f0 inParamDecl '<> param;' #txt
Sn0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Sn0 f0 guid 1324E06E5DC9CAF4 #txt
Sn0 f0 requestEnabled true #txt
Sn0 f0 triggerEnabled false #txt
Sn0 f0 callSignature start() #txt
Sn0 f0 persist false #txt
Sn0 f0 taskData '#
#Fri Apr 27 14:44:52 CEST 2012
TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
' #txt
Sn0 f0 caseData '#
#Fri Apr 27 14:44:52 CEST 2012
businessCalendarName=
businessCreator.user=
businessMilestone.timestamp=
businessObject.code=
businessObject.docDb.code=
businessObject.folder.id=
businessObject.name=
businessPriority=
businessStart.timestamp=
case.description=
case.name=
correspondent.id=
mainContact.docDb.code=
mainContact.folder.id=
mainContact.id=
mainContact.name=
mainContact.type=
process.code=
process.name=
processCategory.code=
processCategory.name=
subType.code=
subType.name=
type.code=
type.name=
' #txt
Sn0 f0 showInStartList 0 #txt
Sn0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Sn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f0 @C|.responsibility Everybody #txt
Sn0 f0 291 43 26 26 14 0 #rect
Sn0 f0 @|StartRequestIcon #fIcon
Sn0 f1 outTypes "htmlwfui.Data","htmlwfui.Data","htmlwfui.Data","htmlwfui.Data" #txt
Sn0 f1 outLinks "LinkA.ivp","LinkE.ivp","LinkB.ivp","LinkC.ivp" #txt
Sn0 f1 template "/ProcessPages/Substitution/substitute.ivc" #txt
Sn0 f1 type htmlwfui.Data #txt
Sn0 f1 skipLink skip.ivp #txt
Sn0 f1 sortLink sort.ivp #txt
Sn0 f1 templateWizard '#
#Fri May 04 14:36:57 CEST 2012
' #txt
Sn0 f1 pageArchivingActivated false #txt
Sn0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Substitutes</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f1 @C|.responsibility Everybody #txt
Sn0 f1 286 260 36 24 26 -23 #rect
Sn0 f1 @|PageIcon #fIcon
Sn0 f3 actionDecl 'htmlwfui.Data out;
' #txt
Sn0 f3 actionTable 'out=in;
' #txt
Sn0 f3 actionCode 'import ch.ivyteam.ivy.security.IRole;
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
Sn0 f3 type htmlwfui.Data #txt
Sn0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>set Substitute</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f3 398 412 36 24 8 16 #rect
Sn0 f3 @|StepIcon #fIcon
Sn0 f5 type htmlwfui.Data #txt
Sn0 f5 51 259 26 26 14 0 #rect
Sn0 f5 @|EndIcon #fIcon
Sn0 f8 type htmlwfui.Data #txt
Sn0 f8 processCall 'Functional Processes/LoginSequence:check_Login(htmlwfui.Data)' #txt
Sn0 f8 doCall true #txt
Sn0 f8 requestActionDecl '<htmlwfui.Data in> param;
' #txt
Sn0 f8 requestMappingAction 'param.in=in;
' #txt
Sn0 f8 responseActionDecl 'htmlwfui.Data out;
' #txt
Sn0 f8 responseMappingAction 'out=result.out;
' #txt
Sn0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f8 286 100 36 24 20 -2 #rect
Sn0 f8 @|CallSubIcon #fIcon
Sn0 f9 expr out #txt
Sn0 f9 304 69 304 100 #arcP
Sn0 f20 actionDecl 'htmlwfui.Data out;
' #txt
Sn0 f20 actionTable 'out=in;
' #txt
Sn0 f20 actionCode 'out.substitute.substitutes = ivy.session.getSessionUser().getSubstitutes();

out.substitute.substiutions = ivy.session.getSessionUser().getSubstitutions();
' #txt
Sn0 f20 type htmlwfui.Data #txt
Sn0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>actual settings</name>
        <nameStyle>15,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f20 286 196 36 24 24 -1 #rect
Sn0 f20 @|StepIcon #fIcon
Sn0 f2 expr out #txt
Sn0 f2 304 220 304 260 #arcP
Sn0 f11 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Sn0 f11 outLinks "LinkA.ivp","LinkB.ivp" #txt
Sn0 f11 template "/ProcessPages/Substitution/addSubstitute.ivc" #txt
Sn0 f11 type htmlwfui.Data #txt
Sn0 f11 skipLink skip.ivp #txt
Sn0 f11 sortLink sort.ivp #txt
Sn0 f11 templateWizard '#
#Thu Apr 26 14:52:04 CEST 2012
' #txt
Sn0 f11 pageArchivingActivated false #txt
Sn0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add Substitution</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f11 @C|.responsibility Everybody #txt
Sn0 f11 398 332 36 24 6 15 #rect
Sn0 f11 @|PageIcon #fIcon
Sn0 f12 expr data #txt
Sn0 f12 outCond ivp=="LinkA.ivp" #txt
Sn0 f12 322 284 398 332 #arcP
Sn0 f4 expr data #txt
Sn0 f4 outCond ivp=="LinkA.ivp" #txt
Sn0 f4 416 356 416 412 #arcP
Sn0 f36 expr data #txt
Sn0 f36 outCond ivp=="LinkE.ivp" #txt
Sn0 f36 286 272 77 272 #arcP
Sn0 f6 actionDecl 'htmlwfui.Data out;
' #txt
Sn0 f6 actionTable 'out=in;
' #txt
Sn0 f6 actionCode 'import ch.ivyteam.ivy.security.IUserSubstitute;

List substitutes = ivy.session.getSessionUser().getSubstitutes();
for(IUserSubstitute substitute:substitutes)
{
	if(substitute.getIdentifier() == in.temp.n)
	{
			ivy.session.getSessionUser().deleteSubstitute(substitute);
			break;
	}	
}
' #txt
Sn0 f6 type htmlwfui.Data #txt
Sn0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>remove Substitution</name>
        <nameStyle>19
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f6 238 332 36 24 9 19 #rect
Sn0 f6 @|StepIcon #fIcon
Sn0 f14 expr data #txt
Sn0 f14 outCond ivp=="LinkB.ivp" #txt
Sn0 f14 296 284 264 332 #arcP
Sn0 f16 actionDecl 'htmlwfui.Data out;
' #txt
Sn0 f16 actionTable 'out=in;
' #txt
Sn0 f16 actionCode 'import ch.ivyteam.ivy.security.IRole;
import ch.ivyteam.ivy.security.IUser;

List users = ivy.wf.getSecurityContext().getUsers();
out.substitute.userList = [""];
for(IUser user : users)
{
	out.substitute.userList.add(user.getName());
}	

List roles = ivy.session.getSessionUser().getAllRoles();
out.substitute.roleList = [""];
for(IRole role: roles)
{
	out.substitute.roleList.add(role.getName());
}	' #txt
Sn0 f16 type htmlwfui.Data #txt
Sn0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>init</name>
        <nameStyle>4,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f16 286 148 36 24 22 -9 #rect
Sn0 f16 @|StepIcon #fIcon
Sn0 f17 expr out #txt
Sn0 f17 304 124 304 148 #arcP
Sn0 f10 expr out #txt
Sn0 f10 304 172 304 196 #arcP
Sn0 f18 expr out #txt
Sn0 f18 256 356 322 208 #arcP
Sn0 f18 1 256 480 #addKink
Sn0 f18 2 552 480 #addKink
Sn0 f18 3 552 208 #addKink
Sn0 f18 1 0.5105360994093243 0 0 #arcLabel
Sn0 f13 expr out #txt
Sn0 f13 434 424 322 208 #arcP
Sn0 f13 1 536 424 #addKink
Sn0 f13 2 536 208 #addKink
Sn0 f13 2 0.7767742217873069 0 0 #arcLabel
Sn0 f7 expr data #txt
Sn0 f7 outCond ivp=="LinkB.ivp" #txt
Sn0 f7 416 332 322 272 #arcP
Sn0 f7 1 416 272 #addKink
Sn0 f7 1 0.6644892287059583 0 0 #arcLabel
Sn0 f15 outTypes "htmlwfui.Data" #txt
Sn0 f15 outLinks "LinkA.ivp" #txt
Sn0 f15 template "/ProcessPages/Substitution/substitutions.ivc" #txt
Sn0 f15 type htmlwfui.Data #txt
Sn0 f15 skipLink skip.ivp #txt
Sn0 f15 sortLink sort.ivp #txt
Sn0 f15 templateWizard '#
#Fri May 04 14:40:54 CEST 2012
' #txt
Sn0 f15 pageArchivingActivated false #txt
Sn0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Substitution</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f15 @C|.responsibility Everybody #txt
Sn0 f15 110 324 36 24 27 -7 #rect
Sn0 f15 @|PageIcon #fIcon
Sn0 f19 expr data #txt
Sn0 f19 outCond ivp=="LinkC.ivp" #txt
Sn0 f19 286 279 146 329 #arcP
Sn0 f21 expr data #txt
Sn0 f21 outCond ivp=="LinkA.ivp" #txt
Sn0 f21 146 333 286 283 #arcP
Sn0 f21 1 224 320 #addKink
Sn0 f21 0 0.9733360748352806 0 0 #arcLabel
>Proto Sn0 .type htmlwfui.Data #txt
>Proto Sn0 .processKind NORMAL #txt
>Proto Sn0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Sn0 0 0 32 24 18 0 #rect
>Proto Sn0 @|BIcon #fIcon
Sn0 f0 mainOut f9 tail #connect
Sn0 f9 head f8 mainIn #connect
Sn0 f20 mainOut f2 tail #connect
Sn0 f2 head f1 mainIn #connect
Sn0 f1 out f12 tail #connect
Sn0 f12 head f11 mainIn #connect
Sn0 f11 out f4 tail #connect
Sn0 f4 head f3 mainIn #connect
Sn0 f36 head f5 mainIn #connect
Sn0 f1 out f36 tail #connect
Sn0 f1 out f14 tail #connect
Sn0 f14 head f6 mainIn #connect
Sn0 f8 mainOut f17 tail #connect
Sn0 f17 head f16 mainIn #connect
Sn0 f16 mainOut f10 tail #connect
Sn0 f10 head f20 mainIn #connect
Sn0 f6 mainOut f18 tail #connect
Sn0 f18 head f20 mainIn #connect
Sn0 f3 mainOut f13 tail #connect
Sn0 f13 head f20 mainIn #connect
Sn0 f11 out f7 tail #connect
Sn0 f7 head f1 mainIn #connect
Sn0 f1 out f19 tail #connect
Sn0 f19 head f15 mainIn #connect
Sn0 f15 out f21 tail #connect
Sn0 f21 head f1 mainIn #connect
