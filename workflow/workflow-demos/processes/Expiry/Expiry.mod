[Ivy]
171E51B493DDB838 9.2.0 #module
>Proto >Proto Collection #zClass
Ey0 Expiry Big #zClass
Ey0 B #cInfo
Ey0 #process
Ey0 @TextInP .type .type #zField
Ey0 @TextInP .processKind .processKind #zField
Ey0 @TextInP .xml .xml #zField
Ey0 @TextInP .responsibility .responsibility #zField
Ey0 @StartRequest f0 '' #zField
Ey0 @EndTask f1 '' #zField
Ey0 @TaskSwitchSimple f2 '' #zField
Ey0 @TkArc f3 '' #zField
Ey0 @PushWFArc f4 '' #zField
Ey0 @ProcessException f5 '' #zField
Ey0 @PushWFArc f6 '' #zField
Ey0 @StartRequest f8 '' #zField
Ey0 @EndTask f9 '' #zField
Ey0 @TaskSwitchSimple f10 '' #zField
Ey0 @PushWFArc f11 '' #zField
Ey0 @TkArc f13 '' #zField
Ey0 @TaskSwitchSimple f7 '' #zField
Ey0 @EndTask f12 '' #zField
Ey0 @StartRequest f14 '' #zField
Ey0 @PushWFArc f15 '' #zField
Ey0 @TkArc f16 '' #zField
Ey0 @InfoButton f17 '' #zField
Ey0 @InfoButton f18 '' #zField
Ey0 @InfoButton f19 '' #zField
>Proto Ey0 Ey0 Expiry #zField
Ey0 f0 outLink createExpriyErrorTask.ivp #txt
Ey0 f0 inParamDecl '<> param;' #txt
Ey0 f0 requestEnabled true #txt
Ey0 f0 triggerEnabled false #txt
Ey0 f0 callSignature createExpriyErrorTask() #txt
Ey0 f0 startName '7.3 Create an exception task on expiry' #txt
Ey0 f0 startCategory expiry #txt
Ey0 f0 startCustomFields 'cssIcon=fa fa-calendar-times-o' #txt
Ey0 f0 caseData businessCase.attach=true #txt
Ey0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createExpriyErrorTask.ivp</name>
    </language>
</elementInfo>
' #txt
Ey0 f0 @C|.responsibility Everybody #txt
Ey0 f0 81 369 30 30 -77 20 #rect
Ey0 f0 @|StartRequestIcon #fIcon
Ey0 f1 337 369 30 30 0 15 #rect
Ey0 f1 @|EndIcon #fIcon
Ey0 f2 actionTable 'out=in1;
' #txt
Ey0 f2 taskData 'TaskA.EXC=171E51B493DDB838-f5-buffer
TaskA.EXP=''1m''
TaskA.EXPRI=2
TaskA.EXTYPE=-1' #txt
Ey0 f2 209 369 30 30 0 16 #rect
Ey0 f2 @|TaskSwitchSimpleIcon #fIcon
Ey0 f3 111 384 209 384 #arcP
Ey0 f4 239 384 337 384 #arcP
Ey0 f5 actionTable 'out=in;
' #txt
Ey0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>taskExpired</name>
    </language>
</elementInfo>
' #txt
Ey0 f5 209 449 30 30 -25 20 #rect
Ey0 f5 @|ExceptionIcon #fIcon
Ey0 f6 236 456 339 391 #arcP
Ey0 f8 outLink createExpiryTaskOtherRole.ivp #txt
Ey0 f8 inParamDecl '<> param;' #txt
Ey0 f8 requestEnabled true #txt
Ey0 f8 triggerEnabled false #txt
Ey0 f8 callSignature createExpiryTaskOtherRole() #txt
Ey0 f8 startName '7.2 Assign task to another role on expiry' #txt
Ey0 f8 startCategory expiry #txt
Ey0 f8 startCustomFields 'cssIcon=fa fa-calendar' #txt
Ey0 f8 caseData businessCase.attach=true #txt
Ey0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createExpiryTaskOtherRole.ivp</name>
    </language>
</elementInfo>
' #txt
Ey0 f8 @C|.responsibility Everybody #txt
Ey0 f8 81 209 30 30 -86 24 #rect
Ey0 f8 @|StartRequestIcon #fIcon
Ey0 f9 337 209 30 30 0 15 #rect
Ey0 f9 @|EndIcon #fIcon
Ey0 f10 actionTable 'out=in1;
' #txt
Ey0 f10 taskData 'TaskA.EXP=''1m''
TaskA.EXPRI=2
TaskA.EXROL=Manager
TaskA.EXTYPE=0' #txt
Ey0 f10 209 209 30 30 0 16 #rect
Ey0 f10 @|TaskSwitchSimpleIcon #fIcon
Ey0 f11 239 224 337 224 #arcP
Ey0 f13 111 224 209 224 #arcP
Ey0 f7 actionTable 'out=in1;
' #txt
Ey0 f7 taskData 'TaskA.EXP=''1m''
TaskA.EXPRI=1
TaskA.EXROL=Everybody
TaskA.EXTYPE=0' #txt
Ey0 f7 209 49 30 30 0 16 #rect
Ey0 f7 @|TaskSwitchSimpleIcon #fIcon
Ey0 f12 337 49 30 30 0 15 #rect
Ey0 f12 @|EndIcon #fIcon
Ey0 f14 outLink createExpriyTaskHigherPrio.ivp #txt
Ey0 f14 inParamDecl '<> param;' #txt
Ey0 f14 requestEnabled true #txt
Ey0 f14 triggerEnabled false #txt
Ey0 f14 callSignature createExpriyTaskHigherPrio() #txt
Ey0 f14 startName '7.1 Set higher task priority on expiry' #txt
Ey0 f14 startCategory expiry #txt
Ey0 f14 startCustomFields 'cssIcon=fa fa-clock-o' #txt
Ey0 f14 caseData businessCase.attach=true #txt
Ey0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createExpriyTaskHigherPrio.ivp</name>
    </language>
</elementInfo>
' #txt
Ey0 f14 @C|.responsibility Everybody #txt
Ey0 f14 81 49 30 30 -85 32 #rect
Ey0 f14 @|StartRequestIcon #fIcon
Ey0 f15 239 64 337 64 #arcP
Ey0 f16 111 64 209 64 #arcP
Ey0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This example shows how you can set an expiry on a task.
After the expire the task has a higher priority.</name>
        <nameStyle>104,5
</nameStyle>
    </language>
</elementInfo>
' #txt
Ey0 f17 424 42 368 44 -178 -15 #rect
Ey0 f17 @|IBIcon #fIcon
Ey0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This example shows how you can set an expiry on a task.
After the expiry the task is reassigned to the role "Manager".</name>
        <nameStyle>118,5
</nameStyle>
    </language>
</elementInfo>
' #txt
Ey0 f18 424 202 400 44 -191 -15 #rect
Ey0 f18 @|IBIcon #fIcon
Ey0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This example shows how you can set an expiry on a task.
After the expiry the task is destroyed. 
Instead a new system task is created starting at the error start ''taskExpired''.</name>
        <nameStyle>176,5
</nameStyle>
    </language>
</elementInfo>
' #txt
Ey0 f19 424 354 496 60 -242 -22 #rect
Ey0 f19 @|IBIcon #fIcon
>Proto Ey0 .type workflow.humantask.Data #txt
>Proto Ey0 .processKind NORMAL #txt
>Proto Ey0 0 0 32 24 18 0 #rect
>Proto Ey0 @|BIcon #fIcon
Ey0 f0 mainOut f3 tail #connect
Ey0 f3 head f2 in #connect
Ey0 f2 out f4 tail #connect
Ey0 f4 head f1 mainIn #connect
Ey0 f5 mainOut f6 tail #connect
Ey0 f6 head f1 mainIn #connect
Ey0 f8 mainOut f13 tail #connect
Ey0 f13 head f10 in #connect
Ey0 f10 out f11 tail #connect
Ey0 f11 head f9 mainIn #connect
Ey0 f14 mainOut f16 tail #connect
Ey0 f16 head f7 in #connect
Ey0 f7 out f15 tail #connect
Ey0 f15 head f12 mainIn #connect
