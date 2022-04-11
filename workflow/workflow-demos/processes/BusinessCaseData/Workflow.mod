[Ivy]
16EF567002B146F2 9.4.6 #module
>Proto >Proto Collection #zClass
Ww0 Workflow Big #zClass
Ww0 B #cInfo
Ww0 #process
Ww0 @TextInP .colors .colors #zField
Ww0 @TextInP color color #zField
Ww0 @TextInP .type .type #zField
Ww0 @TextInP .processKind .processKind #zField
Ww0 @TextInP .xml .xml #zField
Ww0 @TextInP .responsibility .responsibility #zField
Ww0 @UserDialog f3 '' #zField
Ww0 @StartRequest f0 '' #zField
Ww0 @EndTask f1 '' #zField
Ww0 @UserDialog f7 '' #zField
Ww0 @TaskSwitchSimple f5 '' #zField
Ww0 @PushWFArc f8 '' #zField
Ww0 @PushWFArc f2 '' #zField
Ww0 @TkArc f6 '' #zField
Ww0 @PushWFArc f4 '' #zField
Ww0 @StartRequest f9 '' #zField
Ww0 @EndTask f10 '' #zField
Ww0 @UserDialog f11 '' #zField
Ww0 @PushWFArc f12 '' #zField
Ww0 @PushWFArc f13 '' #zField
Ww0 @InfoButton f14 '' #zField
>Proto Ww0 Ww0 Workflow #zField
Ww0 f3 dialogId workflow.businesscasedata.InterviewForm #txt
Ww0 f3 startMethod start() #txt
Ww0 f3 requestActionDecl '<> param;' #txt
Ww0 f3 responseMappingAction 'out=in;
' #txt
Ww0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>InterviewForm</name>
    </language>
</elementInfo>
' #txt
Ww0 f3 168 74 112 44 -43 -7 #rect
Ww0 f0 outLink create.ivp #txt
Ww0 f0 inParamDecl '<> param;' #txt
Ww0 f0 requestEnabled true #txt
Ww0 f0 triggerEnabled false #txt
Ww0 f0 callSignature create() #txt
Ww0 f0 persist true #txt
Ww0 f0 startName '6.1: Save BusinessCaseData When Park Task ' #txt
Ww0 f0 startDescription 'BusinessCaseData Worlflow Demo. Use BusinessCaseData in workflow with save and park task.' #txt
Ww0 f0 startCategory business/data/case #txt
Ww0 f0 startCustomFields 'cssIcon=fa fa-id-badge' #txt
Ww0 f0 caseData businessCase.attach=true #txt
Ww0 f0 wfuser 1 #txt
Ww0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create.ivp</name>
        <desc>Creates an Interview</desc>
    </language>
</elementInfo>
' #txt
Ww0 f0 @C|.responsibility Everybody #txt
Ww0 f0 81 81 30 30 -25 17 #rect
Ww0 f1 593 81 30 30 0 15 #rect
Ww0 f7 dialogId workflow.businesscasedata.InterviewForm #txt
Ww0 f7 startMethod start() #txt
Ww0 f7 requestActionDecl '<> param;' #txt
Ww0 f7 responseMappingAction 'out=in;
' #txt
Ww0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>InterviewForm</name>
    </language>
</elementInfo>
' #txt
Ww0 f7 424 74 112 44 -43 -7 #rect
Ww0 f5 actionTable 'out=in1;
' #txt
Ww0 f5 taskData 'TaskA.DESC=Review the data which was filled in by the first Html Dialog task.
TaskA.NAM=Review Interview' #txt
Ww0 f5 337 81 30 30 0 16 #rect
Ww0 f8 367 96 424 96 #arcP
Ww0 f2 536 96 593 96 #arcP
Ww0 f6 280 96 337 96 #arcP
Ww0 f4 111 96 168 96 #arcP
Ww0 f9 outLink browse.ivp #txt
Ww0 f9 inParamDecl '<> param;' #txt
Ww0 f9 requestEnabled true #txt
Ww0 f9 triggerEnabled false #txt
Ww0 f9 callSignature browse() #txt
Ww0 f9 startName '6.2: Browse BusinessCaseData Created By 6.1' #txt
Ww0 f9 startDescription 'BusinessCaseData Worlflow Demo. Browse Interviews created by BusinessCaseData/Workflow/create.ivp' #txt
Ww0 f9 startCategory business/data/case #txt
Ww0 f9 startCustomFields 'cssIcon=fa fa-newspaper-o' #txt
Ww0 f9 caseData businessCase.attach=true #txt
Ww0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>browse.ivp</name>
    </language>
</elementInfo>
' #txt
Ww0 f9 @C|.responsibility Everybody #txt
Ww0 f9 81 177 30 30 -25 17 #rect
Ww0 f10 593 177 30 30 0 15 #rect
Ww0 f11 dialogId workflow.businesscasedata.InterviewLazyBrowser #txt
Ww0 f11 startMethod start() #txt
Ww0 f11 requestActionDecl '<> param;' #txt
Ww0 f11 responseMappingAction 'out=in;
' #txt
Ww0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>InterviewLazyBrowser</name>
    </language>
</elementInfo>
' #txt
Ww0 f11 280 170 144 44 -65 -7 #rect
Ww0 f12 111 192 280 192 #arcP
Ww0 f13 424 192 593 192 #arcP
Ww0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>BusinessCaseData Workflow Demo
This demo shows how to work with BusinessCaseData workflow.
You can create a new interview. If you want to stop your progress simply click on save and park.
This will save your input to the businessdata repository and reserves the task for you. Later you can pick it up and finish your work.

Overall you have the benefits of businessdata:
 - fast search
 - modification of past data (can be done like in the business data demo)
 - business data is saved automatically to your business case

Hints:
 - Your task needs to be persistent to store businessdata
</name>
    </language>
</elementInfo>
' #txt
Ww0 f14 112 242 832 204 -410 -97 #rect
>Proto Ww0 .type workflow.businesscasedata.Data #txt
>Proto Ww0 .processKind NORMAL #txt
>Proto Ww0 0 0 32 24 18 0 #rect
>Proto Ww0 @|BIcon #fIcon
Ww0 f0 mainOut f4 tail #connect
Ww0 f4 head f3 mainIn #connect
Ww0 f3 mainOut f6 tail #connect
Ww0 f6 head f5 in #connect
Ww0 f5 out f8 tail #connect
Ww0 f8 head f7 mainIn #connect
Ww0 f7 mainOut f2 tail #connect
Ww0 f2 head f1 mainIn #connect
Ww0 f9 mainOut f12 tail #connect
Ww0 f12 head f11 mainIn #connect
Ww0 f11 mainOut f13 tail #connect
Ww0 f13 head f10 mainIn #connect
