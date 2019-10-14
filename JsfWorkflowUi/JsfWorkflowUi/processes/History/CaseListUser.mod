[Ivy]
13F1D890C62823FF 7.5.0 #module
>Proto >Proto Collection #zClass
Ct0 CaseListUser Big #zClass
Ct0 B #cInfo
Ct0 #process
Ct0 @TextInP .type .type #zField
Ct0 @TextInP .processKind .processKind #zField
Ct0 @AnnotationInP-0n ai ai #zField
Ct0 @TextInP .xml .xml #zField
Ct0 @TextInP .responsibility .responsibility #zField
Ct0 @StartRequest f0 '' #zField
Ct0 @UserDialog f2 '' #zField
Ct0 @PushWFArc f9 '' #zField
>Proto Ct0 Ct0 CaseListUser #zField
Ct0 f0 outLink CaseListUser.ivp #txt
Ct0 f0 inParamDecl '<> param;' #txt
Ct0 f0 requestEnabled true #txt
Ct0 f0 triggerEnabled false #txt
Ct0 f0 callSignature CaseListUser() #txt
Ct0 f0 persist false #txt
Ct0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ct0 f0 showInStartList 0 #txt
Ct0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CaseListUser.ivp</name>
    </language>
</elementInfo>
' #txt
Ct0 f0 @C|.responsibility Everybody #txt
Ct0 f0 81 73 30 30 -47 17 #rect
Ct0 f0 @|StartRequestIcon #fIcon
Ct0 f0 -1|-1|-9671572 #nodeStyle
Ct0 f2 dialogId ch.ivyteam.wf.history.CaseListUser #txt
Ct0 f2 startMethod start() #txt
Ct0 f2 requestActionDecl '<> param;' #txt
Ct0 f2 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ct0 f2 responseMappingAction 'out=in;
' #txt
Ct0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>case list user</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ct0 f2 168 66 112 44 -37 -8 #rect
Ct0 f2 @|UserDialogIcon #fIcon
Ct0 f2 -1|-1|-9671572 #nodeStyle
Ct0 f9 expr out #txt
Ct0 f9 111 88 168 88 #arcP
Ct0 f9 0 0.7651654434444887 0 0 #arcLabel
>Proto Ct0 .type ch.ivyteam.wf.Data #txt
>Proto Ct0 .processKind NORMAL #txt
>Proto Ct0 0 0 32 24 18 0 #rect
>Proto Ct0 @|BIcon #fIcon
Ct0 f0 mainOut f9 tail #connect
Ct0 f9 head f2 mainIn #connect
