[Ivy]
12CF4EBAA4A2F24C 3.28 #module
>Proto >Proto Collection #zClass
Ck0 CancelTask Big #zClass
Ck0 B #cInfo
Ck0 #process
Ck0 @TextInP .type .type #zField
Ck0 @TextInP .processKind .processKind #zField
Ck0 @AnnotationInP-0n ai ai #zField
Ck0 @TextInP .xml .xml #zField
Ck0 @TextInP .responsibility .responsibility #zField
Ck0 @StartRequest f0 '' #zField
Ck0 @EndRequest f1 '' #zField
Ck0 @GridStep f3 '' #zField
Ck0 @PushWFArc f4 '' #zField
Ck0 @PushWFArc f2 '' #zField
>Proto Ck0 Ck0 CancelTask #zField
Ck0 f0 outLink start.ivp #txt
Ck0 f0 inParamDecl '<java.lang.Number taskId> param;' #txt
Ck0 f0 inParamTable 'out.tmpTaskId=param.taskId;
' #txt
Ck0 f0 requestEnabled true #txt
Ck0 f0 triggerEnabled true #txt
Ck0 f0 callSignature start(Number) #txt
Ck0 f0 persist false #txt
Ck0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.NAM=HtmlWFUI SYSTEM resetTask
TaskTriggered.PRI=2
TaskTriggered.ROL=SYSTEM
TaskTriggered.TYPE=0' #txt
Ck0 f0 showInStartList 0 #txt
Ck0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CancelTask</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ck0 f0 @C|.responsibility Everybody #txt
Ck0 f0 59 51 26 26 17 -5 #rect
Ck0 f0 @|StartRequestIcon #fIcon
Ck0 f1 template "" #txt
Ck0 f1 59 179 26 26 14 0 #rect
Ck0 f1 @|EndRequestIcon #fIcon
Ck0 f3 actionTable 'out=in;
' #txt
Ck0 f3 actionCode 'if(in.tmpTaskId>0)
{
	ivy.wf.findTask(in.tmpTaskId).reset();
}	' #txt
Ck0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>resetTask</name>
        <nameStyle>9
</nameStyle>
    </language>
</elementInfo>
' #txt
Ck0 f3 54 116 36 24 24 -3 #rect
Ck0 f3 @|StepIcon #fIcon
Ck0 f4 expr out #txt
Ck0 f4 72 77 72 116 #arcP
Ck0 f2 expr out #txt
Ck0 f2 72 140 72 179 #arcP
>Proto Ck0 .type htmlwfui.Data #txt
>Proto Ck0 .processKind NORMAL #txt
>Proto Ck0 0 0 32 24 18 0 #rect
>Proto Ck0 @|BIcon #fIcon
Ck0 f0 mainOut f4 tail #connect
Ck0 f4 head f3 mainIn #connect
Ck0 f3 mainOut f2 tail #connect
Ck0 f2 head f1 mainIn #connect
