[Ivy]
13F51835BF0FECEF 7.5.0 #module
>Proto >Proto Collection #zClass
Mn0 MailNotification Big #zClass
Mn0 B #cInfo
Mn0 #process
Mn0 @TextInP .type .type #zField
Mn0 @TextInP .processKind .processKind #zField
Mn0 @AnnotationInP-0n ai ai #zField
Mn0 @TextInP .xml .xml #zField
Mn0 @TextInP .responsibility .responsibility #zField
Mn0 @StartRequest f0 '' #zField
Mn0 @UserDialog f1 '' #zField
Mn0 @PushWFArc f4 '' #zField
>Proto Mn0 Mn0 MailNotification #zField
Mn0 f0 outLink MailNotificationSettings.ivp #txt
Mn0 f0 inParamDecl '<> param;' #txt
Mn0 f0 requestEnabled true #txt
Mn0 f0 triggerEnabled false #txt
Mn0 f0 callSignature MailNotificationSettings() #txt
Mn0 f0 persist false #txt
Mn0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Mn0 f0 showInStartList 0 #txt
Mn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>MailNotificationSettings.ivp</name>
        <nameStyle>28,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Mn0 f0 @C|.responsibility Everybody #txt
Mn0 f0 81 49 30 30 -73 15 #rect
Mn0 f0 @|StartRequestIcon #fIcon
Mn0 f0 -1|-1|-9671572 #nodeStyle
Mn0 f1 dialogId ch.ivyteam.wf.settings.MailNotification #txt
Mn0 f1 startMethod start() #txt
Mn0 f1 requestActionDecl '<> param;' #txt
Mn0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Mn0 f1 responseMappingAction 'out=in;
' #txt
Mn0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>mail notification
settings</name>
        <nameStyle>26,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Mn0 f1 168 42 112 44 -41 -16 #rect
Mn0 f1 @|UserDialogIcon #fIcon
Mn0 f1 -1|-1|-9671572 #nodeStyle
Mn0 f4 expr out #txt
Mn0 f4 111 64 168 64 #arcP
>Proto Mn0 .type ch.ivyteam.wf.Data #txt
>Proto Mn0 .processKind NORMAL #txt
>Proto Mn0 0 0 32 24 18 0 #rect
>Proto Mn0 @|BIcon #fIcon
Mn0 f0 mainOut f4 tail #connect
Mn0 f4 head f1 mainIn #connect
