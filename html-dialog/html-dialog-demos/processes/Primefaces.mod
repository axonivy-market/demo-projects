[Ivy]
145D18869AFC8A9A 7.5.0 #module
>Proto >Proto Collection #zClass
Ps0 Primefaces Big #zClass
Ps0 B #cInfo
Ps0 #process
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @AnnotationInP-0n ai ai #zField
Ps0 @MessageFlowInP-0n messageIn messageIn #zField
Ps0 @MessageFlowOutP-0n messageOut messageOut #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @StartRequest f72 '' #zField
Ps0 @UserDialog f73 '' #zField
Ps0 @EndTask f74 '' #zField
Ps0 @PushWFArc f75 '' #zField
Ps0 @PushWFArc f76 '' #zField
>Proto Ps0 Ps0 Primefaces #zField
Ps0 f72 outLink Primefaces.ivp #txt
Ps0 f72 inParamDecl '<> param;' #txt
Ps0 f72 requestEnabled true #txt
Ps0 f72 triggerEnabled false #txt
Ps0 f72 callSignature Primefaces() #txt
Ps0 f72 persist false #txt
Ps0 f72 startName Primefaces #txt
Ps0 f72 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ps0 f72 showInStartList 1 #txt
Ps0 f72 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>primefaces.ivp</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ps0 f72 @C|.responsibility Everybody #txt
Ps0 f72 113 49 30 30 -40 15 #rect
Ps0 f72 @|StartRequestIcon #fIcon
Ps0 f72 -1|-1|-9671572 #nodeStyle
Ps0 f73 dialogId ch.ivyteam.htmldialog.primefaces.Primefaces #txt
Ps0 f73 startMethod start() #txt
Ps0 f73 requestActionDecl '<> param;' #txt
Ps0 f73 responseActionDecl 'htmlDialogDemos.Data out;
' #txt
Ps0 f73 responseMappingAction 'out=in;
' #txt
Ps0 f73 248 42 112 44 58 -2 #rect
Ps0 f73 @|UserDialogIcon #fIcon
Ps0 f73 -1|-1|-9671572 #nodeStyle
Ps0 f74 465 49 30 30 0 15 #rect
Ps0 f74 @|EndIcon #fIcon
Ps0 f74 -1|-1|-9671572 #nodeStyle
Ps0 f75 expr out #txt
Ps0 f75 143 64 248 64 #arcP
Ps0 f76 expr out #txt
Ps0 f76 360 64 465 64 #arcP
>Proto Ps0 .type htmlDialogDemos.Data #txt
>Proto Ps0 .processKind NORMAL #txt
>Proto Ps0 0 0 32 24 18 0 #rect
>Proto Ps0 @|BIcon #fIcon
Ps0 f72 mainOut f75 tail #connect
Ps0 f75 head f73 mainIn #connect
Ps0 f73 mainOut f76 tail #connect
Ps0 f76 head f74 mainIn #connect
