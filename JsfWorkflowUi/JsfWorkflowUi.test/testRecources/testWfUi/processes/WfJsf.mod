[Ivy]
13F3D94E5C99F06F 3.26 #module
>Proto >Proto Collection #zClass
Wf0 WfJsf Big #zClass
Wf0 B #cInfo
Wf0 #process
Wf0 @TextInP .resExport .resExport #zField
Wf0 @TextInP .type .type #zField
Wf0 @TextInP .processKind .processKind #zField
Wf0 @AnnotationInP-0n ai ai #zField
Wf0 @TextInP .xml .xml #zField
Wf0 @TextInP .responsibility .responsibility #zField
Wf0 @StartRequest f0 '' #zField
Wf0 @TaskSwitchSimple f1 '' #zField
Wf0 @EndTask f2 '' #zField
Wf0 @RichDialog f3 '' #zField
Wf0 @RichDialog f4 '' #zField
Wf0 @PushWFArc f5 '' #zField
Wf0 @TkArc f6 '' #zField
Wf0 @PushWFArc f7 '' #zField
Wf0 @PushWFArc f8 '' #zField
>Proto Wf0 Wf0 WfJsf #zField
Wf0 f0 outLink WfJsf.ivp #txt
Wf0 f0 type ch.ivyteam.wf.test.Data #txt
Wf0 f0 inParamDecl '<> param;' #txt
Wf0 f0 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Wf0 f0 guid 13F3DB3121413AE2 #txt
Wf0 f0 requestEnabled true #txt
Wf0 f0 triggerEnabled false #txt
Wf0 f0 callSignature WfJsf() #txt
Wf0 f0 persist false #txt
Wf0 f0 startName 'Test Workflow Jsf' #txt
Wf0 f0 startDescription 'Sample WF using Html Dialogs' #txt
Wf0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.NAM=Test Workflow Jsf
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Wf0 f0 caseData 'case.name=Test Workflow Jsf' #txt
Wf0 f0 showInStartList 1 #txt
Wf0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>WfJsf.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Wf0 f0 @C|.responsibility Everybody #txt
Wf0 f0 81 49 30 30 -24 15 #rect
Wf0 f0 @|StartRequestIcon #fIcon
Wf0 f0 -1|-1|-9671572 #nodeStyle
Wf0 f1 actionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Wf0 f1 actionTable 'out=in1;
' #txt
Wf0 f1 outTypes "ch.ivyteam.wf.test.Data" #txt
Wf0 f1 outLinks "TaskA.ivp" #txt
Wf0 f1 caseData case.category=<%\=in1.category%> #txt
Wf0 f1 taskData 'TaskA.DESC=<%\=in1.description%>
TaskA.EXP=in1.expiryDate.getDurationFromNow()
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=JSF <%\=in1.caption%>
TaskA.PRI=in1.prio
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Wf0 f1 type ch.ivyteam.wf.test.Data #txt
Wf0 f1 template "" #txt
Wf0 f1 337 49 30 30 0 16 #rect
Wf0 f1 @|TaskSwitchSimpleIcon #fIcon
Wf0 f1 -1|-1|-9671572 #nodeStyle
Wf0 f2 type ch.ivyteam.wf.test.Data #txt
Wf0 f2 593 49 30 30 0 15 #rect
Wf0 f2 @|EndIcon #fIcon
Wf0 f2 -1|-1|-9671572 #nodeStyle
Wf0 f3 targetWindow NEW:card: #txt
Wf0 f3 targetDisplay TOP #txt
Wf0 f3 richDialogId ch.ivyteam.wf.test.RequestDialog #txt
Wf0 f3 startMethod start(ch.ivyteam.wf.test.Data) #txt
Wf0 f3 type ch.ivyteam.wf.test.Data #txt
Wf0 f3 requestActionDecl '<ch.ivyteam.wf.test.Data data> param;' #txt
Wf0 f3 requestMappingAction 'param.data=in;
' #txt
Wf0 f3 responseActionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Wf0 f3 responseMappingAction 'out=result.data;
' #txt
Wf0 f3 windowConfiguration '* ' #txt
Wf0 f3 isAsynch false #txt
Wf0 f3 isInnerRd false #txt
Wf0 f3 userContext '* ' #txt
Wf0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Request Dialog</name>
        <nameStyle>14
</nameStyle>
    </language>
</elementInfo>
' #txt
Wf0 f3 168 42 112 44 -43 -8 #rect
Wf0 f3 @|RichDialogIcon #fIcon
Wf0 f3 -1|-1|-9671572 #nodeStyle
Wf0 f4 targetWindow NEW:card: #txt
Wf0 f4 targetDisplay TOP #txt
Wf0 f4 richDialogId ch.ivyteam.wf.test.ConfirmationDialog #txt
Wf0 f4 startMethod start(ch.ivyteam.wf.test.Data) #txt
Wf0 f4 type ch.ivyteam.wf.test.Data #txt
Wf0 f4 requestActionDecl '<ch.ivyteam.wf.test.Data data> param;' #txt
Wf0 f4 requestMappingAction 'param.data=in;
' #txt
Wf0 f4 responseActionDecl 'ch.ivyteam.wf.test.Data out;
' #txt
Wf0 f4 responseMappingAction 'out=in;
' #txt
Wf0 f4 windowConfiguration '* ' #txt
Wf0 f4 isAsynch false #txt
Wf0 f4 isInnerRd false #txt
Wf0 f4 userContext '* ' #txt
Wf0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Confirmation Dialog</name>
        <nameStyle>19
</nameStyle>
    </language>
</elementInfo>
' #txt
Wf0 f4 416 42 128 44 -55 -8 #rect
Wf0 f4 @|RichDialogIcon #fIcon
Wf0 f4 -1|-1|-9671572 #nodeStyle
Wf0 f5 expr out #txt
Wf0 f5 111 64 168 64 #arcP
Wf0 f6 expr out #txt
Wf0 f6 type ch.ivyteam.wf.test.Data #txt
Wf0 f6 var in1 #txt
Wf0 f6 280 64 337 64 #arcP
Wf0 f7 expr data #txt
Wf0 f7 outCond ivp=="TaskA.ivp" #txt
Wf0 f7 367 64 416 64 #arcP
Wf0 f8 expr out #txt
Wf0 f8 544 64 593 64 #arcP
>Proto Wf0 .type ch.ivyteam.wf.test.Data #txt
>Proto Wf0 .processKind NORMAL #txt
>Proto Wf0 0 0 32 24 18 0 #rect
>Proto Wf0 @|BIcon #fIcon
Wf0 f0 mainOut f5 tail #connect
Wf0 f5 head f3 mainIn #connect
Wf0 f3 mainOut f6 tail #connect
Wf0 f6 head f1 in #connect
Wf0 f1 out f7 tail #connect
Wf0 f7 head f4 mainIn #connect
Wf0 f4 mainOut f8 tail #connect
Wf0 f8 head f2 mainIn #connect
