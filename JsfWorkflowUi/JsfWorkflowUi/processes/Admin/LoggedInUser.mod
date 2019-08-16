[Ivy]
1477BA1CD7421F55 3.28 #module
>Proto >Proto Collection #zClass
Lr0 LoggedInUser Big #zClass
Lr0 B #cInfo
Lr0 #process
Lr0 @TextInP .type .type #zField
Lr0 @TextInP .processKind .processKind #zField
Lr0 @AnnotationInP-0n ai ai #zField
Lr0 @MessageFlowInP-0n messageIn messageIn #zField
Lr0 @MessageFlowOutP-0n messageOut messageOut #zField
Lr0 @TextInP .xml .xml #zField
Lr0 @TextInP .responsibility .responsibility #zField
Lr0 @StartRequest f0 '' #zField
Lr0 @UserDialog f3 '' #zField
Lr0 @PushWFArc f4 '' #zField
>Proto Lr0 Lr0 LoggedInUser #zField
Lr0 f0 outLink LoggedInUser.ivp #txt
Lr0 f0 inParamDecl '<> param;' #txt
Lr0 f0 requestEnabled true #txt
Lr0 f0 triggerEnabled false #txt
Lr0 f0 callSignature LoggedInUser() #txt
Lr0 f0 persist false #txt
Lr0 f0 startName LoggedInUser #txt
Lr0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Lr0 f0 showInStartList 0 #txt
Lr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>LoggedInUser.ivp</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Lr0 f0 @C|.responsibility Everybody #txt
Lr0 f0 81 49 30 30 -48 17 #rect
Lr0 f0 @|StartRequestIcon #fIcon
Lr0 f3 dialogId ch.ivyteam.wf.admin.LoggedInUser #txt
Lr0 f3 startMethod start() #txt
Lr0 f3 requestActionDecl '<> param;' #txt
Lr0 f3 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Lr0 f3 responseMappingAction 'out=in;
' #txt
Lr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>LoggedInUser</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Lr0 f3 168 42 112 44 -39 -8 #rect
Lr0 f3 @|UserDialogIcon #fIcon
Lr0 f4 expr out #txt
Lr0 f4 111 64 168 64 #arcP
>Proto Lr0 .type ch.ivyteam.wf.Data #txt
>Proto Lr0 .processKind NORMAL #txt
>Proto Lr0 0 0 32 24 18 0 #rect
>Proto Lr0 @|BIcon #fIcon
Lr0 f0 mainOut f4 tail #connect
Lr0 f4 head f3 mainIn #connect
