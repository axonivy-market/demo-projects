[Ivy]
127AF01D1868F1B6 7.5.0 #module
>Proto >Proto Collection #zClass
Le0 LoginSequence Big #zClass
Le0 B #cInfo
Le0 #process
Le0 @TextInP .xml .xml #zField
Le0 @TextInP .responsibility .responsibility #zField
Le0 @AnnotationInP-0n ai ai #zField
Le0 @TextInP .type .type #zField
Le0 @TextInP .processKind .processKind #zField
Le0 @MessageFlowInP-0n messageIn messageIn #zField
Le0 @MessageFlowOutP-0n messageOut messageOut #zField
Le0 @StartSub f0 '' #zField
Le0 @EndSub f1 '' #zField
Le0 @GridStep f21 '' #zField
Le0 @Alternative f14 '' #zField
Le0 @EndTask f19 '' #zField
Le0 @Page f16 '' #zField
Le0 @PushWFArc f20 '' #zField
Le0 @PushWFArc f22 '' #zField
Le0 @PushWFArc f18 '' #zField
Le0 @PushWFArc f3 '' #zField
Le0 @GridStep f4 '' #zField
Le0 @PushWFArc f5 '' #zField
Le0 @PushWFArc f2 '' #zField
Le0 @PushWFArc f6 '' #zField
>Proto Le0 Le0 LoginSequence #zField
Le0 f0 inParamDecl '<htmlwfui.Data in> param;' #txt
Le0 f0 inParamTable 'out=param.in;
' #txt
Le0 f0 outParamDecl '<htmlwfui.Data out> result;' #txt
Le0 f0 outParamTable 'result.out=in;
' #txt
Le0 f0 callSignature check_Login(htmlwfui.Data) #txt
Le0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>check Login</name>
        <nameStyle>11,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Le0 f0 219 35 26 26 14 0 #rect
Le0 f0 @|StartSubIcon #fIcon
Le0 f1 219 347 26 26 14 0 #rect
Le0 f1 @|EndSubIcon #fIcon
Le0 f21 actionTable 'out=in.clone();
' #txt
Le0 f21 actionCode 'ivy.session.loginSessionUser(in.username, in.password);' #txt
Le0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call login</name>
        <nameStyle>10,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Le0 f21 134 244 36 24 -22 15 #rect
Le0 f21 @|StepIcon #fIcon
Le0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
Le0 f14 218 194 28 28 14 0 #rect
Le0 f14 @|AlternativeIcon #fIcon
Le0 f19 51 283 26 26 14 0 #rect
Le0 f19 @|EndIcon #fIcon
Le0 f16 outTypes "htmlwfui.Data","htmlwfui.Data" #txt
Le0 f16 outLinks "LinkA.ivp","LinkB.ivp" #txt
Le0 f16 template "/ProcessPages/LoginSequence/Login_Dialog.ivc" #txt
Le0 f16 type htmlwfui.Data #txt
Le0 f16 skipLink skip.ivp #txt
Le0 f16 sortLink sort.ivp #txt
Le0 f16 templateWizard '#
#Thu Jun 24 14:52:10 CEST 2010
' #txt
Le0 f16 pageArchivingActivated false #txt
Le0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login Dialog</name>
        <nameStyle>12,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Le0 f16 @C|.responsibility Everybody #txt
Le0 f16 46 196 36 24 -19 -36 #rect
Le0 f16 @|PageIcon #fIcon
Le0 f20 expr data #txt
Le0 f20 outCond ivp=="LinkB.ivp" #txt
Le0 f20 64 220 64 283 #arcP
Le0 f22 expr data #txt
Le0 f22 outCond ivp=="LinkA.ivp" #txt
Le0 f22 82 218 134 246 #arcP
Le0 f18 expr out #txt
Le0 f18 170 245 223 213 #arcP
Le0 f3 expr in #txt
Le0 f3 outCond '! ivy.session.isSessionUserUnknown()' #txt
Le0 f3 232 222 232 347 #arcP
Le0 f4 actionTable 'out=in;
out.appname=ivy.wf.getApplication().getName();
out.request=ivy.request;
out.username=ivy.session.isSessionUserUnknown() ? "" : ivy.session.getSessionUserName();
out.wfSession=ivy.session;
' #txt
Le0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>inits</name>
        <nameStyle>5,7,9
</nameStyle>
    </language>
</elementInfo>
' #txt
Le0 f4 214 84 36 24 22 -16 #rect
Le0 f4 @|StepIcon #fIcon
Le0 f5 expr out #txt
Le0 f5 232 61 232 84 #arcP
Le0 f2 expr out #txt
Le0 f2 232 108 232 194 #arcP
Le0 f6 expr in #txt
Le0 f6 218 208 82 208 #arcP
>Proto Le0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Le0 .type htmlwfui.Data #txt
>Proto Le0 .processKind CALLABLE_SUB #txt
>Proto Le0 0 0 32 24 18 0 #rect
>Proto Le0 @|BIcon #fIcon
Le0 f20 head f19 mainIn #connect
Le0 f16 out f22 tail #connect
Le0 f22 head f21 mainIn #connect
Le0 f16 out f20 tail #connect
Le0 f21 mainOut f18 tail #connect
Le0 f18 head f14 in #connect
Le0 f14 out f3 tail #connect
Le0 f3 head f1 mainIn #connect
Le0 f0 mainOut f5 tail #connect
Le0 f5 head f4 mainIn #connect
Le0 f4 mainOut f2 tail #connect
Le0 f2 head f14 in #connect
Le0 f14 out f6 tail #connect
Le0 f6 head f16 mainIn #connect
