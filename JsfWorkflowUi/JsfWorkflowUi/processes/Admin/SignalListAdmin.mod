[Ivy]
1533BAFD7EB49EC6 3.28 #module
>Proto >Proto Collection #zClass
Tn0 SignalListAdmin Big #zClass
Tn0 B #cInfo
Tn0 #process
Tn0 @TextInP .type .type #zField
Tn0 @TextInP .processKind .processKind #zField
Tn0 @AnnotationInP-0n ai ai #zField
Tn0 @MessageFlowInP-0n messageIn messageIn #zField
Tn0 @MessageFlowOutP-0n messageOut messageOut #zField
Tn0 @TextInP .xml .xml #zField
Tn0 @TextInP .responsibility .responsibility #zField
Tn0 @StartRequest f0 '' #zField
Tn0 @EndTask f1 '' #zField
Tn0 @UserDialog f3 '' #zField
Tn0 @PushWFArc f4 '' #zField
Tn0 @PushWFArc f2 '' #zField
>Proto Tn0 Tn0 SignalListAdmin #zField
Tn0 f0 outLink SignalListAdmin.ivp #txt
Tn0 f0 inParamDecl '<> param;' #txt
Tn0 f0 requestEnabled true #txt
Tn0 f0 triggerEnabled false #txt
Tn0 f0 callSignature SignalListAdmin() #txt
Tn0 f0 persist false #txt
Tn0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Tn0 f0 showInStartList 0 #txt
Tn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SignalListAdmin.ivp</name>
        <nameStyle>19,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tn0 f0 @C|.responsibility Everybody #txt
Tn0 f0 81 49 30 30 -54 17 #rect
Tn0 f0 @|StartRequestIcon #fIcon
Tn0 f1 369 49 30 30 0 15 #rect
Tn0 f1 @|EndIcon #fIcon
Tn0 f3 dialogId ch.ivyteam.wf.admin.SignalListAdmin #txt
Tn0 f3 startMethod start() #txt
Tn0 f3 requestActionDecl '<> param;' #txt
Tn0 f3 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Tn0 f3 responseMappingAction 'out=in;
' #txt
Tn0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Signal List Admin</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tn0 f3 200 42 112 44 -48 -8 #rect
Tn0 f3 @|UserDialogIcon #fIcon
Tn0 f4 expr out #txt
Tn0 f4 111 64 200 64 #arcP
Tn0 f2 expr out #txt
Tn0 f2 312 64 369 64 #arcP
>Proto Tn0 .type ch.ivyteam.wf.Data #txt
>Proto Tn0 .processKind NORMAL #txt
>Proto Tn0 0 0 32 24 18 0 #rect
>Proto Tn0 @|BIcon #fIcon
Tn0 f0 mainOut f4 tail #connect
Tn0 f4 head f3 mainIn #connect
Tn0 f3 mainOut f2 tail #connect
Tn0 f2 head f1 mainIn #connect
