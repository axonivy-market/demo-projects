[Ivy]
144697C904B165C8 7.5.0 #module
>Proto >Proto Collection #zClass
Ss0 StatisticDetails Big #zClass
Ss0 B #cInfo
Ss0 #process
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @StartRequest f0 '' #zField
Ss0 @UserDialog f1 '' #zField
Ss0 @PushWFArc f2 '' #zField
Ss0 @StartRequest f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @StartRequest f5 '' #zField
Ss0 @PushWFArc f6 '' #zField
>Proto Ss0 Ss0 StatisticDetails #zField
Ss0 f0 outLink StatisticDetailsMin.ivp #txt
Ss0 f0 inParamDecl '<String category> param;' #txt
Ss0 f0 inParamTable 'out.category=param.category;
out.mode="min";
' #txt
Ss0 f0 requestEnabled true #txt
Ss0 f0 triggerEnabled false #txt
Ss0 f0 callSignature StatisticDetailsMin(String) #txt
Ss0 f0 persist false #txt
Ss0 f0 startName StatisticDetailsMin #txt
Ss0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ss0 f0 showInStartList 0 #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>StatisticDetailsMin.ivp</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 @C|.responsibility Everybody #txt
Ss0 f0 81 177 30 30 -59 15 #rect
Ss0 f0 @|StartRequestIcon #fIcon
Ss0 f0 -1|-1|-9671572 #nodeStyle
Ss0 f1 dialogId ch.ivyteam.wf.admin.StatisticDetails #txt
Ss0 f1 startMethod start(String,String,Number) #txt
Ss0 f1 requestActionDecl '<String category,String mode,Number caseId> param;' #txt
Ss0 f1 requestMappingAction 'param.category=in.category;
param.mode=in.mode;
param.caseId=in.caseId;
' #txt
Ss0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ss0 f1 responseMappingAction 'out=in;
' #txt
Ss0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Statistic details</name>
        <nameStyle>17,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f1 168 106 112 44 -41 -8 #rect
Ss0 f1 @|UserDialogIcon #fIcon
Ss0 f1 -1|-1|-9671572 #nodeStyle
Ss0 f2 expr out #txt
Ss0 f2 111 192 224 150 #arcP
Ss0 f2 1 224 192 #addKink
Ss0 f2 0 0.7017184678752515 0 0 #arcLabel
Ss0 f3 outLink StatisticDetailsMax.ivp #txt
Ss0 f3 inParamDecl '<String category> param;' #txt
Ss0 f3 inParamTable 'out.category=param.category;
out.mode="max";
' #txt
Ss0 f3 requestEnabled true #txt
Ss0 f3 triggerEnabled false #txt
Ss0 f3 callSignature StatisticDetailsMax(String) #txt
Ss0 f3 persist false #txt
Ss0 f3 startName StatisticDetailsMax #txt
Ss0 f3 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ss0 f3 showInStartList 0 #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>StatisticDetailsMax.ivp</name>
    </language>
</elementInfo>
' #txt
Ss0 f3 @C|.responsibility Everybody #txt
Ss0 f3 81 113 30 30 -60 15 #rect
Ss0 f3 @|StartRequestIcon #fIcon
Ss0 f3 -1|-1|-9671572 #nodeStyle
Ss0 f4 expr out #txt
Ss0 f4 111 128 168 128 #arcP
Ss0 f5 outLink StatisticDetailsAvg.ivp #txt
Ss0 f5 inParamDecl '<String caseId> param;' #txt
Ss0 f5 inParamTable 'out.caseId=param.caseId.toNumber();
out.mode="avg";
' #txt
Ss0 f5 requestEnabled true #txt
Ss0 f5 triggerEnabled false #txt
Ss0 f5 callSignature StatisticDetailsAvg(String) #txt
Ss0 f5 persist false #txt
Ss0 f5 startName StatisticDetailsAvg #txt
Ss0 f5 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ss0 f5 showInStartList 0 #txt
Ss0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>StatisticDetailsAvg.ivp</name>
        <nameStyle>23,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f5 @C|.responsibility Everybody #txt
Ss0 f5 81 49 30 30 -59 15 #rect
Ss0 f5 @|StartRequestIcon #fIcon
Ss0 f5 -1|-1|-9671572 #nodeStyle
Ss0 f6 expr out #txt
Ss0 f6 111 64 224 106 #arcP
Ss0 f6 1 224 64 #addKink
Ss0 f6 0 0.7017471009568155 0 0 #arcLabel
>Proto Ss0 .type ch.ivyteam.wf.Data #txt
>Proto Ss0 .processKind NORMAL #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f0 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
Ss0 f3 mainOut f4 tail #connect
Ss0 f4 head f1 mainIn #connect
Ss0 f5 mainOut f6 tail #connect
Ss0 f6 head f1 mainIn #connect
