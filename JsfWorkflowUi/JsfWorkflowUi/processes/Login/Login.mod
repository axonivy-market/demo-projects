[Ivy]
13FC3AE417DDEE27 7.5.0 #module
>Proto >Proto Collection #zClass
Ln0 Login Big #zClass
Ln0 B #cInfo
Ln0 #process
Ln0 @PushWFArc f8 '' #zField
Ln0 @TextInP .type .type #zField
Ln0 @TextInP .processKind .processKind #zField
Ln0 @AnnotationInP-0n ai ai #zField
Ln0 @TextInP .xml .xml #zField
Ln0 @TextInP .responsibility .responsibility #zField
Ln0 @StartRequest f0 '' #zField
Ln0 @UserDialog f1 '' #zField
Ln0 @Alternative f2 '' #zField
Ln0 @EndTask f4 '' #zField
Ln0 @EndRequest f3 '' #zField
Ln0 @PushWFArc f7 '' #zField
Ln0 @PushWFArc f6 '' #zField
Ln0 @PushWFArc f12 '' #zField
>Proto Ln0 Ln0 Login #zField
Ln0 f8 expr in #txt
Ln0 f8 352 80 401 128 #arcP
Ln0 f8 1 352 128 #addKink
Ln0 f8 1 0.2510580757222466 0 0 #arcLabel
Ln0 f0 outLink DefaultLoginPage.ivp #txt
Ln0 f0 inParamDecl '<String originalUrl> param;' #txt
Ln0 f0 inParamTable 'out.url=param.originalUrl;
' #txt
Ln0 f0 requestEnabled true #txt
Ln0 f0 triggerEnabled false #txt
Ln0 f0 callSignature DefaultLoginPage(String) #txt
Ln0 f0 persist false #txt
Ln0 f0 startName 'WF Login' #txt
Ln0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ln0 f0 showInStartList 0 #txt
Ln0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DefaultLoginPage.ivp</name>
        <nameStyle>20,5,7
</nameStyle>
        <desc>This start is used to overwrite the default login.
Use /ivy/wf/login to call it.
This process is called whenever a login is required.</desc>
    </language>
</elementInfo>
' #txt
Ln0 f0 @C|.responsibility Everybody #txt
Ln0 f0 81 49 30 30 -58 15 #rect
Ln0 f0 @|StartRequestIcon #fIcon
Ln0 f0 -1|-1|-9671572 #nodeStyle
Ln0 f1 dialogId ch.ivyteam.wf.login.DefaultLogin #txt
Ln0 f1 startMethod start() #txt
Ln0 f1 requestActionDecl '<> param;' #txt
Ln0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ln0 f1 responseMappingAction 'out=in;
' #txt
Ln0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>default login</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f1 168 42 112 44 -33 -8 #rect
Ln0 f1 @|UserDialogIcon #fIcon
Ln0 f1 -1|-1|-9671572 #nodeStyle
Ln0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startUrl given?</name>
        <nameStyle>15
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f2 336 48 32 32 -39 16 #rect
Ln0 f2 @|AlternativeIcon #fIcon
Ln0 f2 -1|-1|-9671572 #nodeStyle
Ln0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>default End</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f4 401 113 30 30 -31 15 #rect
Ln0 f4 @|EndIcon #fIcon
Ln0 f4 -1|-1|-9671572 #nodeStyle
Ln0 f3 template "redirect.jsp" #txt
Ln0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>redirect</name>
        <nameStyle>8
</nameStyle>
    </language>
</elementInfo>
' #txt
Ln0 f3 401 49 30 30 -20 15 #rect
Ln0 f3 @|EndRequestIcon #fIcon
Ln0 f3 -1|-1|-9671572 #nodeStyle
Ln0 f7 expr in #txt
Ln0 f7 outCond in.url.length()>0 #txt
Ln0 f7 368 64 401 64 #arcP
Ln0 f7 0 0.48381584529680427 0 0 #arcLabel
Ln0 f6 expr out #txt
Ln0 f6 280 64 336 64 #arcP
Ln0 f12 expr out #txt
Ln0 f12 111 64 168 64 #arcP
>Proto Ln0 .type ch.ivyteam.wf.Data #txt
>Proto Ln0 .processKind NORMAL #txt
>Proto Ln0 0 0 32 24 18 0 #rect
>Proto Ln0 @|BIcon #fIcon
Ln0 f2 out f7 tail #connect
Ln0 f7 head f3 mainIn #connect
Ln0 f2 out f8 tail #connect
Ln0 f8 head f4 mainIn #connect
Ln0 f1 mainOut f6 tail #connect
Ln0 f6 head f2 in #connect
Ln0 f0 mainOut f12 tail #connect
Ln0 f12 head f1 mainIn #connect
