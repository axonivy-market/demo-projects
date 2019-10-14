[Ivy]
13F2E007FE178DD4 7.5.0 #module
>Proto >Proto Collection #zClass
Ty0 TaskHistory Big #zClass
Ty0 B #cInfo
Ty0 #process
Ty0 @TextInP .type .type #zField
Ty0 @TextInP .processKind .processKind #zField
Ty0 @AnnotationInP-0n ai ai #zField
Ty0 @TextInP .xml .xml #zField
Ty0 @TextInP .responsibility .responsibility #zField
Ty0 @StartRequest f0 '' #zField
Ty0 @UserDialog f1 '' #zField
Ty0 @PushWFArc f2 '' #zField
>Proto Ty0 Ty0 TaskHistory #zField
Ty0 f0 outLink TaskHistory.ivp #txt
Ty0 f0 inParamDecl '<> param;' #txt
Ty0 f0 requestEnabled true #txt
Ty0 f0 triggerEnabled false #txt
Ty0 f0 callSignature TaskHistory() #txt
Ty0 f0 persist false #txt
Ty0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ty0 f0 showInStartList 0 #txt
Ty0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TaskHistory.ivp</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ty0 f0 @C|.responsibility Everybody #txt
Ty0 f0 81 49 30 30 -41 15 #rect
Ty0 f0 @|StartRequestIcon #fIcon
Ty0 f0 -1|-1|-9671572 #nodeStyle
Ty0 f1 dialogId ch.ivyteam.wf.history.TaskHistory #txt
Ty0 f1 startMethod start() #txt
Ty0 f1 requestActionDecl '<> param;' #txt
Ty0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ty0 f1 responseMappingAction 'out=in;
' #txt
Ty0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>task history</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ty0 f1 168 42 112 44 -31 -8 #rect
Ty0 f1 @|UserDialogIcon #fIcon
Ty0 f1 -1|-1|-9671572 #nodeStyle
Ty0 f2 expr out #txt
Ty0 f2 111 64 168 64 #arcP
>Proto Ty0 .type ch.ivyteam.wf.Data #txt
>Proto Ty0 .processKind NORMAL #txt
>Proto Ty0 0 0 32 24 18 0 #rect
>Proto Ty0 @|BIcon #fIcon
Ty0 f0 mainOut f2 tail #connect
Ty0 f2 head f1 mainIn #connect
