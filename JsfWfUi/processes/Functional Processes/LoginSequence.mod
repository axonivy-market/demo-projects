[Ivy]
[>Created: Fri Mar 08 14:52:50 CET 2013]
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
Le0 @Alternative f3 '' #zField
Le0 @PushWFArc f6 '' #zField
Le0 @PushWFArc f9 '' #zField
Le0 @PushWFArc f10 '' #zField
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
Le0 f0 211 51 26 26 14 0 #rect
Le0 f0 @|StartSubIcon #fIcon
Le0 f1 type htmlwfui.Data #txt
Le0 f1 243 243 26 26 14 0 #rect
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
Le0 f4 206 116 36 24 22 -16 #rect
Le0 f4 @|StepIcon #fIcon
Le0 f5 expr out #txt
Le0 f5 224 77 224 116 #arcP
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
Le0 f7 174 244 36 24 -15 13 #rect
Le0 f7 @|RichDialogIcon #fIcon
Le0 f3 type htmlwfui.Data #txt
Le0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Logged in?</name>
        <nameStyle>10
</nameStyle>
    </language>
</elementInfo>
' #txt
Le0 f3 210 178 28 28 14 0 #rect
Le0 f3 @|AlternativeIcon #fIcon
Le0 f6 expr in #txt
Le0 f6 219 201 198 244 #arcP
Le0 f9 expr in #txt
Le0 f9 outCond '! ivy.session.isSessionUserUnknown()' #txt
Le0 f9 229 201 250 244 #arcP
Le0 f9 0 0.5245242802206692 0 0 #arcLabel
Le0 f10 expr out #txt
Le0 f10 224 140 224 178 #arcP
Le0 f8 expr out #txt
Le0 f8 174 256 210 192 #arcP
Le0 f8 1 152 256 #addKink
Le0 f8 2 152 192 #addKink
Le0 f8 1 0.9805893763087523 0 0 #arcLabel
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
Le0 f6 head f7 mainIn #connect
Le0 f3 out f9 tail #connect
Le0 f9 head f1 mainIn #connect
Le0 f3 out f6 tail #connect
Le0 f4 mainOut f10 tail #connect
Le0 f10 head f3 in #connect
Le0 f7 mainOut f8 tail #connect
Le0 f8 head f3 in #connect
