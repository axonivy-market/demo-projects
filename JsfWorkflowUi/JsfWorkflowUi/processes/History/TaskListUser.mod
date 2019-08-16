[Ivy]
1518CA28D86B5794 3.28 #module
>Proto >Proto Collection #zClass
Tr0 TaskListUser Big #zClass
Tr0 B #cInfo
Tr0 #process
Tr0 @TextInP .type .type #zField
Tr0 @TextInP .processKind .processKind #zField
Tr0 @AnnotationInP-0n ai ai #zField
Tr0 @MessageFlowInP-0n messageIn messageIn #zField
Tr0 @MessageFlowOutP-0n messageOut messageOut #zField
Tr0 @TextInP .xml .xml #zField
Tr0 @TextInP .responsibility .responsibility #zField
Tr0 @StartRequest f0 '' #zField
Tr0 @EndTask f1 '' #zField
Tr0 @UserDialog f3 '' #zField
Tr0 @PushWFArc f4 '' #zField
Tr0 @PushWFArc f2 '' #zField
>Proto Tr0 Tr0 TaskListUser #zField
Tr0 f0 outLink TaskListUser.ivp #txt
Tr0 f0 inParamDecl '<> param;' #txt
Tr0 f0 requestEnabled true #txt
Tr0 f0 triggerEnabled false #txt
Tr0 f0 callSignature TaskListUser() #txt
Tr0 f0 persist false #txt
Tr0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Tr0 f0 showInStartList 0 #txt
Tr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TaskListUser.ivp</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f0 @C|.responsibility Everybody #txt
Tr0 f0 81 49 30 30 -46 17 #rect
Tr0 f0 @|StartRequestIcon #fIcon
Tr0 f1 337 49 30 30 0 15 #rect
Tr0 f1 @|EndIcon #fIcon
Tr0 f3 dialogId ch.ivyteam.wf.workflow.TaskListUser #txt
Tr0 f3 startMethod start() #txt
Tr0 f3 requestActionDecl '<> param;' #txt
Tr0 f3 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Tr0 f3 responseMappingAction 'out=in;
' #txt
Tr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Task List User</name>
        <nameStyle>14,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f3 168 42 112 44 -40 -8 #rect
Tr0 f3 @|UserDialogIcon #fIcon
Tr0 f4 expr out #txt
Tr0 f4 111 64 168 64 #arcP
Tr0 f2 expr out #txt
Tr0 f2 280 64 337 64 #arcP
>Proto Tr0 .type ch.ivyteam.wf.Data #txt
>Proto Tr0 .processKind NORMAL #txt
>Proto Tr0 0 0 32 24 18 0 #rect
>Proto Tr0 @|BIcon #fIcon
Tr0 f0 mainOut f4 tail #connect
Tr0 f4 head f3 mainIn #connect
Tr0 f3 mainOut f2 tail #connect
Tr0 f2 head f1 mainIn #connect
