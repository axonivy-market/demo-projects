[Ivy]
[>Created: Thu Feb 07 10:12:38 CET 2013]
127AF01D1868F1B6 3.17 #module
>Proto >Proto Collection #zClass
Le0 LoginSequence Big #zClass
Le0 B #cInfo
Le0 #process
Le0 @TextInP .xml .xml #zField
Le0 @TextInP .responsibility .responsibility #zField
Le0 @AnnotationInP-0n ai ai #zField
Le0 @TextInP .resExport .resExport #zField
Le0 @TextInP .type .type #zField
Le0 @TextInP .processKind .processKind #zField
Le0 @MessageFlowInP-0n messageIn messageIn #zField
Le0 @MessageFlowOutP-0n messageOut messageOut #zField
Le0 @StartSub f0 '' #zField
Le0 @EndSub f1 '' #zField
Le0 @GridStep f4 '' #zField
Le0 @PushWFArc f5 '' #zField
Le0 @RichDialog f7 '' #zField
Le0 @PushWFArc f2 '' #zField
Le0 @PushWFArc f8 '' #zField
>Proto Le0 Le0 LoginSequence #zField
Le0 f0 inParamDecl '<htmlwfui.Data in> param;' #txt
Le0 f0 inParamTable 'out=param.in;
' #txt
Le0 f0 outParamDecl '<htmlwfui.Data out> result;
' #txt
Le0 f0 outParamTable 'result.out=in;
' #txt
Le0 f0 actionDecl 'htmlwfui.Data out;
' #txt
Le0 f0 callSignature check_Login(htmlwfui.Data) #txt
Le0 f0 type htmlwfui.Data #txt
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
Le0 f1 type htmlwfui.Data #txt
Le0 f1 219 347 26 26 14 0 #rect
Le0 f1 @|EndSubIcon #fIcon
Le0 f4 actionDecl 'htmlwfui.Data out;
' #txt
Le0 f4 actionTable 'out=in;
out.appname=ivy.wf.getApplication().getName();
out.request=ivy.request;
out.username=ivy.session.isSessionUserUnknown() ? "" : ivy.session.getSessionUserName();
out.wfSession=ivy.session;
' #txt
Le0 f4 type htmlwfui.Data #txt
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
Le0 f7 targetWindow NEW:card: #txt
Le0 f7 targetDisplay TOP #txt
Le0 f7 richDialogId htmlwfui.LoginSequence #txt
Le0 f7 startMethod start() #txt
Le0 f7 type htmlwfui.Data #txt
Le0 f7 requestActionDecl '<> param;' #txt
Le0 f7 responseActionDecl 'htmlwfui.Data out;
' #txt
Le0 f7 responseMappingAction 'out=in;
' #txt
Le0 f7 windowConfiguration '* ' #txt
Le0 f7 isAsynch false #txt
Le0 f7 isInnerRd false #txt
Le0 f7 userContext '* ' #txt
Le0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Login</name>
        <nameStyle>5
</nameStyle>
    </language>
</elementInfo>
' #txt
Le0 f7 214 196 36 24 20 -2 #rect
Le0 f7 @|RichDialogIcon #fIcon
Le0 f2 expr out #txt
Le0 f2 232 220 232 347 #arcP
Le0 f8 expr out #txt
Le0 f8 232 108 232 196 #arcP
>Proto Le0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Le0 .type htmlwfui.Data #txt
>Proto Le0 .processKind CALLABLE_SUB #txt
>Proto Le0 0 0 32 24 18 0 #rect
>Proto Le0 @|BIcon #fIcon
Le0 f0 mainOut f5 tail #connect
Le0 f5 head f4 mainIn #connect
Le0 f7 mainOut f2 tail #connect
Le0 f2 head f1 mainIn #connect
Le0 f4 mainOut f8 tail #connect
Le0 f8 head f7 mainIn #connect
