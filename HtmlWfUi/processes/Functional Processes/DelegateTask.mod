[Ivy]
12CBB189CAE5A324 7.5.0 #module
>Proto >Proto Collection #zClass
Dk0 DelegateTask Big #zClass
Dk0 B #cInfo
Dk0 #process
Dk0 @TextInP .type .type #zField
Dk0 @TextInP .processKind .processKind #zField
Dk0 @AnnotationInP-0n ai ai #zField
Dk0 @TextInP .xml .xml #zField
Dk0 @TextInP .responsibility .responsibility #zField
Dk0 @StartSub f0 '' #zField
Dk0 @EndSub f1 '' #zField
Dk0 @Alternative f18 '' #zField
Dk0 @Page f4 '' #zField
Dk0 @GridStep f8 '' #zField
Dk0 @PushWFArc f9 '' #zField
Dk0 @PushWFArc f19 '' #zField
Dk0 @PushWFArc f21 '' #zField
Dk0 @PushWFArc f2 '' #zField
Dk0 @PushWFArc f3 '' #zField
>Proto Dk0 Dk0 DelegateTask #zField
Dk0 f0 inParamDecl '<htmlwfui.Data in> param;' #txt
Dk0 f0 inParamTable 'out=param.in;
' #txt
Dk0 f0 outParamDecl '<htmlwfui.Data out> result;' #txt
Dk0 f0 outParamTable 'result.out=in;
' #txt
Dk0 f0 callSignature call(htmlwfui.Data) #txt
Dk0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(Data)</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dk0 f0 99 35 26 26 14 0 #rect
Dk0 f0 @|StartSubIcon #fIcon
Dk0 f1 99 291 26 26 14 0 #rect
Dk0 f1 @|EndSubIcon #fIcon
Dk0 f18 98 226 28 28 14 0 #rect
Dk0 f18 @|AlternativeIcon #fIcon
Dk0 f4 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Dk0 f4 outLinks "LinkA.ivp","LinkB.ivp" #txt
Dk0 f4 template "/ProcessPages/DelegateTask/taskDelegate.ivc" #txt
Dk0 f4 type htmlwfui.Data #txt
Dk0 f4 skipLink skip.ivp #txt
Dk0 f4 sortLink sort.ivp #txt
Dk0 f4 templateWizard '#
#Wed Apr 07 12:24:46 CEST 2010
' #txt
Dk0 f4 pageArchivingActivated false #txt
Dk0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Activator
setzen</name>
        <nameStyle>16,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Dk0 f4 @C|.responsibility Everybody #txt
Dk0 f4 94 100 36 24 18 19 #rect
Dk0 f4 @|PageIcon #fIcon
Dk0 f8 actionTable 'out=in.clone();
' #txt
Dk0 f8 actionCode 'import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IRole;
if(in.delegateType.equals("role")){
	IRole role = ivy.wf.getSecurityContext().findRole(in.delegateRole);
	out.tmpTask.setActivator(role);
}else{
	IUser user = ivy.wf.getSecurityContext().findUser(in.delegateUser);
	out.tmpTask.setActivator(user);
}' #txt
Dk0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Dk0 f8 94 172 36 24 20 -2 #rect
Dk0 f8 @|StepIcon #fIcon
Dk0 f9 expr data #txt
Dk0 f9 outCond ivp=="LinkA.ivp" #txt
Dk0 f9 112 124 112 172 #arcP
Dk0 f19 expr out #txt
Dk0 f19 112 196 112 226 #arcP
Dk0 f21 expr data #txt
Dk0 f21 outCond ivp=="LinkB.ivp" #txt
Dk0 f21 102 124 105 233 #arcP
Dk0 f21 1 56 176 #addKink
Dk0 f21 0 0.991189498348317 0 0 #arcLabel
Dk0 f2 expr out #txt
Dk0 f2 112 61 112 100 #arcP
Dk0 f3 expr in #txt
Dk0 f3 112 254 112 291 #arcP
>Proto Dk0 .type htmlwfui.Data #txt
>Proto Dk0 .processKind CALLABLE_SUB #txt
>Proto Dk0 0 0 32 24 18 0 #rect
>Proto Dk0 @|BIcon #fIcon
Dk0 f4 out f9 tail #connect
Dk0 f9 head f8 mainIn #connect
Dk0 f8 mainOut f19 tail #connect
Dk0 f19 head f18 in #connect
Dk0 f4 out f21 tail #connect
Dk0 f21 head f18 in #connect
Dk0 f0 mainOut f2 tail #connect
Dk0 f2 head f4 mainIn #connect
Dk0 f18 out f3 tail #connect
Dk0 f3 head f1 mainIn #connect
