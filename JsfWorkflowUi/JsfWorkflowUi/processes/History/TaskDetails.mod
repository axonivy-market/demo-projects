[Ivy]
13FE81AF3A82F57F 7.5.0 #module
>Proto >Proto Collection #zClass
Ts0 TaskDetails Big #zClass
Ts0 B #cInfo
Ts0 #process
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @StartRequest f0 '' #zField
Ts0 @UserDialog f1 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @StartRequest f3 '' #zField
Ts0 @PushWFArc f4 '' #zField
>Proto Ts0 Ts0 TaskDetails #zField
Ts0 f0 outLink TaskDetails.ivp #txt
Ts0 f0 inParamDecl '<Number detailTaskId> param;' #txt
Ts0 f0 inParamTable 'out.isHistory=false;
out.taskId=param.detailTaskId;
' #txt
Ts0 f0 requestEnabled true #txt
Ts0 f0 triggerEnabled false #txt
Ts0 f0 callSignature TaskDetails(Number) #txt
Ts0 f0 persist false #txt
Ts0 f0 startName TaskDetails #txt
Ts0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ts0 f0 showInStartList 0 #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TaskDetails.ivp</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 @C|.responsibility Everybody #txt
Ts0 f0 81 177 30 30 -42 15 #rect
Ts0 f0 @|StartRequestIcon #fIcon
Ts0 f0 -1|-1|-9671572 #nodeStyle
Ts0 f1 dialogId ch.ivyteam.wf.history.TaskDetails #txt
Ts0 f1 startMethod start(Number,Boolean) #txt
Ts0 f1 requestActionDecl '<Number taskId,Boolean isHistory> param;' #txt
Ts0 f1 requestMappingAction 'param.taskId=in.taskId;
param.isHistory=in.isHistory;
' #txt
Ts0 f1 responseActionDecl 'ch.ivyteam.wf.TaskDetails out;
' #txt
Ts0 f1 responseMappingAction 'out=in;
' #txt
Ts0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>task details</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f1 168 106 112 44 -31 -8 #rect
Ts0 f1 @|UserDialogIcon #fIcon
Ts0 f1 -1|-1|-9671572 #nodeStyle
Ts0 f2 expr out #txt
Ts0 f2 111 192 224 150 #arcP
Ts0 f2 1 224 192 #addKink
Ts0 f2 0 0.9518306578755212 0 0 #arcLabel
Ts0 f3 outLink TaskHistoryDetails.ivp #txt
Ts0 f3 inParamDecl '<Number detailTaskId> param;' #txt
Ts0 f3 inParamTable 'out.isHistory=true;
out.taskId=param.detailTaskId;
' #txt
Ts0 f3 requestEnabled true #txt
Ts0 f3 triggerEnabled false #txt
Ts0 f3 callSignature TaskHistoryDetails(Number) #txt
Ts0 f3 persist false #txt
Ts0 f3 startName TaskHistoryDetails #txt
Ts0 f3 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ts0 f3 showInStartList 0 #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TaskHistoryDetails.ivp</name>
        <nameStyle>22,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 @C|.responsibility Everybody #txt
Ts0 f3 81 49 30 30 -61 15 #rect
Ts0 f3 @|StartRequestIcon #fIcon
Ts0 f3 -1|-1|-9671572 #nodeStyle
Ts0 f4 expr out #txt
Ts0 f4 111 64 224 106 #arcP
Ts0 f4 1 224 64 #addKink
Ts0 f4 0 0.952943016069174 0 0 #arcLabel
>Proto Ts0 .type ch.ivyteam.wf.TaskDetails #txt
>Proto Ts0 .processKind NORMAL #txt
>Proto Ts0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Ts0 0 0 32 24 18 0 #rect
>Proto Ts0 @|BIcon #fIcon
Ts0 f0 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
Ts0 f3 mainOut f4 tail #connect
Ts0 f4 head f1 mainIn #connect
