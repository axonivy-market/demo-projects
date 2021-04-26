[Ivy]
156DB84CCE78254F 9.3.0 #module
>Proto >Proto Collection #zClass
Cn0 ConcurrentModification Big #zClass
Cn0 B #cInfo
Cn0 #process
Cn0 @TextInP .type .type #zField
Cn0 @TextInP .processKind .processKind #zField
Cn0 @AnnotationInP-0n ai ai #zField
Cn0 @MessageFlowInP-0n messageIn messageIn #zField
Cn0 @MessageFlowOutP-0n messageOut messageOut #zField
Cn0 @TextInP .xml .xml #zField
Cn0 @TextInP .responsibility .responsibility #zField
Cn0 @StartRequest f0 '' #zField
Cn0 @TaskSwitch f2 '' #zField
Cn0 @TaskSwitch f1 '' #zField
Cn0 @UserDialog f6 '' #zField
Cn0 @UserDialog f7 '' #zField
Cn0 @EndTask f8 '' #zField
Cn0 @UserDialog f9 '' #zField
Cn0 @PushWFArc f10 '' #zField
Cn0 @PushWFArc f11 '' #zField
Cn0 @TkArc f12 '' #zField
Cn0 @TkArc f13 '' #zField
Cn0 @PushWFArc f14 '' #zField
Cn0 @PushWFArc f15 '' #zField
Cn0 @InfoButton f16 '' #zField
Cn0 @UserDialog f18 '' #zField
Cn0 @PushWFArc f4 '' #zField
Cn0 @TkArc f5 '' #zField
Cn0 @InfoButton f3 '' #zField
Cn0 @InfoButton f19 '' #zField
Cn0 @AnnotationArc f20 '' #zField
Cn0 @InfoButton f21 '' #zField
Cn0 @AnnotationArc f22 '' #zField
>Proto Cn0 Cn0 ConcurrentModification #zField
Cn0 f0 outLink start.ivp #txt
Cn0 f0 inParamDecl '<> param;' #txt
Cn0 f0 requestEnabled true #txt
Cn0 f0 triggerEnabled false #txt
Cn0 f0 callSignature start() #txt
Cn0 f0 persist false #txt
Cn0 f0 startName '5.2: Concurrent Modification (Business Data)' #txt
Cn0 f0 startDescription 'This use case handles the problematic of concurrent modification
of the same business data values.' #txt
Cn0 f0 startCategory business/data #txt
Cn0 f0 startCustomFields 'cssIcon=fa fa-pencil-square-o' #txt
Cn0 f0 taskData 'TaskTriggered.CATEGORY=Input/Address
TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Cn0 f0 caseData case.category=Customer/Onboarding #txt
Cn0 f0 showInStartList 1 #txt
Cn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f0 @C|.responsibility Everybody #txt
Cn0 f0 81 369 30 30 -23 17 #rect
Cn0 f2 actionTable 'out=in1;
' #txt
Cn0 f2 outLinks "TaskA.ivp","TaskB.ivp" #txt
Cn0 f2 taskData 'TaskA.CATEGORY=Modification/Address
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Modify country of address
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0
TaskB.CATEGORY=Modification/Address
TaskB.EXPRI=2
TaskB.EXROL=Everybody
TaskB.EXTYPE=0
TaskB.NAM=Modify address
TaskB.PRI=2
TaskB.ROL=Everybody
TaskB.SKIP_TASK_LIST=false
TaskB.TYPE=0' #txt
Cn0 f2 template "" #txt
Cn0 f2 336 368 32 32 0 16 #rect
Cn0 f1 actionTable 'out=in1;
' #txt
Cn0 f1 outLinks "TaskA.ivp" #txt
Cn0 f1 taskData 'TaskA.CATEGORY=Review/Address
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=View merged address data
TaskA.PRI=2
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Cn0 f1 template "" #txt
Cn0 f1 560 368 32 32 0 16 #rect
Cn0 f6 dialogId workflow.businessdata.ModifyCountry #txt
Cn0 f6 startMethod start(String) #txt
Cn0 f6 requestActionDecl '<String id> param;' #txt
Cn0 f6 requestMappingAction 'param.id=in.id;
' #txt
Cn0 f6 responseActionDecl 'workflow.businessdata.Data out;
' #txt
Cn0 f6 responseMappingAction 'out=in;
' #txt
Cn0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Modify "country" 
of Address</name>
        <nameStyle>28
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f6 400 298 128 44 -41 -16 #rect
Cn0 f7 dialogId workflow.businessdata.ModifyAddress #txt
Cn0 f7 startMethod start(String) #txt
Cn0 f7 requestActionDecl '<String id> param;' #txt
Cn0 f7 requestMappingAction 'param.id=in.id;
' #txt
Cn0 f7 responseActionDecl 'workflow.businessdata.Data out;
' #txt
Cn0 f7 responseMappingAction 'out=in;
' #txt
Cn0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Modify
Address</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f7 408 426 112 44 -23 -16 #rect
Cn0 f8 785 369 30 30 0 15 #rect
Cn0 f9 dialogId workflow.businessdata.ViewAddress #txt
Cn0 f9 startMethod start(String) #txt
Cn0 f9 requestActionDecl '<String id> param;' #txt
Cn0 f9 requestMappingAction 'param.id=in.id;
' #txt
Cn0 f9 responseActionDecl 'workflow.businessdata.Data out;
' #txt
Cn0 f9 responseMappingAction 'out=in;
' #txt
Cn0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>View merged
Data</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f9 632 362 112 44 -36 -16 #rect
Cn0 f10 expr data #txt
Cn0 f10 outCond ivp=="TaskA.ivp" #txt
Cn0 f10 352 368 400 320 #arcP
Cn0 f10 1 352 320 #addKink
Cn0 f10 1 0.3322185605036241 0 0 #arcLabel
Cn0 f11 expr data #txt
Cn0 f11 outCond ivp=="TaskB.ivp" #txt
Cn0 f11 352 400 408 448 #arcP
Cn0 f11 1 352 448 #addKink
Cn0 f11 1 0.11881498793522999 0 0 #arcLabel
Cn0 f12 expr out #txt
Cn0 f12 type workflow.businessdata.Data #txt
Cn0 f12 var in1 #txt
Cn0 f12 520 448 576 400 #arcP
Cn0 f12 1 576 448 #addKink
Cn0 f12 0 0.8859746521921745 0 0 #arcLabel
Cn0 f13 expr out #txt
Cn0 f13 type workflow.businessdata.Data #txt
Cn0 f13 var in2 #txt
Cn0 f13 528 320 576 368 #arcP
Cn0 f13 1 576 320 #addKink
Cn0 f13 0 0.6714111344357544 0 0 #arcLabel
Cn0 f14 expr data #txt
Cn0 f14 outCond ivp=="TaskA.ivp" #txt
Cn0 f14 592 384 632 384 #arcP
Cn0 f15 expr out #txt
Cn0 f15 744 384 785 384 #arcP
Cn0 f16 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Instruction
Start both tasks in parallel. (Use two browser windows).
Finish the modify country task first.
Finish the modify address task and see the isUpToDate check.</name>
        <nameStyle>11,0
156
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f16 64 538 352 76 -171 -32 #rect
Cn0 f18 dialogId workflow.businessdata.CreateAddress #txt
Cn0 f18 startMethod start() #txt
Cn0 f18 requestActionDecl '<> param;' #txt
Cn0 f18 responseActionDecl 'workflow.businessdata.Data out;
' #txt
Cn0 f18 responseMappingAction 'out=in;
out.id=result.id;
' #txt
Cn0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Create Address</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f18 168 362 112 44 -43 -8 #rect
Cn0 f4 expr out #txt
Cn0 f4 111 384 168 384 #arcP
Cn0 f5 expr out #txt
Cn0 f5 type workflow.businessdata.Data #txt
Cn0 f5 var in1 #txt
Cn0 f5 280 384 336 384 #arcP
Cn0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Concurrent modification of Business Data values
This use case handles the problematic of concurrent modification
of the same business data, e.g. in parallel .
When multiple participants (users) work on the same business data,
the process designer has to think about handling concurrent modification,
otherwise one process will override changes of the other process. 
Therefore the ivy.repo.save(val) method uses optimistic locking and will throw an
exception if the data was modified since loading it. This is implemented by 
versioning the data on the repository.
If the local data is not up-to-date it is recommended to reload the data with reload(val)
and re-apply the modifications. Other use cases are documented in the Public API.
</name>
        <nameStyle>47,0
517
79
11,1
83
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f3 64 18 480 204 -232 -96 #rect
Cn0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>partial overwrite Business Data</name>
        <nameStyle>8
9,1
14
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f19 512 257 176 30 -85 -8 #rect
Cn0 f20 512 272 464 298 #arcP
Cn0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>reload Business Data when necessary</name>
        <nameStyle>21,1
14
</nameStyle>
    </language>
</elementInfo>
' #txt
Cn0 f21 496 489 224 30 -105 -8 #rect
Cn0 f22 496 504 464 470 #arcP
>Proto Cn0 .type workflow.businessdata.Data #txt
>Proto Cn0 .processKind NORMAL #txt
>Proto Cn0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language/>
</elementInfo>
' #txt
>Proto Cn0 0 0 32 24 18 0 #rect
>Proto Cn0 @|BIcon #fIcon
Cn0 f2 out f10 tail #connect
Cn0 f10 head f6 mainIn #connect
Cn0 f2 out f11 tail #connect
Cn0 f11 head f7 mainIn #connect
Cn0 f7 mainOut f12 tail #connect
Cn0 f12 head f1 in #connect
Cn0 f6 mainOut f13 tail #connect
Cn0 f13 head f1 in #connect
Cn0 f1 out f14 tail #connect
Cn0 f14 head f9 mainIn #connect
Cn0 f9 mainOut f15 tail #connect
Cn0 f15 head f8 mainIn #connect
Cn0 f0 mainOut f4 tail #connect
Cn0 f4 head f18 mainIn #connect
Cn0 f18 mainOut f5 tail #connect
Cn0 f5 head f2 in #connect
Cn0 f19 ao f20 tail #connect
Cn0 f20 head f6 @CG|ai #connect
Cn0 f21 ao f22 tail #connect
Cn0 f22 head f7 @CG|ai #connect
