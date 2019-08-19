[Ivy]
13F3D94AF2F236BF 3.28 #module
>Proto >Proto Collection #zClass
Wl0 WfHtml Big #zClass
Wl0 B #cInfo
Wl0 #process
Wl0 @TextInP .type .type #zField
Wl0 @TextInP .processKind .processKind #zField
Wl0 @AnnotationInP-0n ai ai #zField
Wl0 @TextInP .xml .xml #zField
Wl0 @TextInP .responsibility .responsibility #zField
Wl0 @StartRequest f0 '' #zField
Wl0 @Page f1 '' #zField
Wl0 @Page f2 '' #zField
Wl0 @EndTask f3 '' #zField
Wl0 @TaskSwitchSimple f4 '' #zField
Wl0 @PushWFArc f7 '' #zField
Wl0 @PushWFArc f8 '' #zField
Wl0 @GridStep f9 '' #zField
Wl0 @PushWFArc f10 '' #zField
Wl0 @PushWFArc f5 '' #zField
Wl0 @TkArc f6 '' #zField
>Proto Wl0 Wl0 WfHtml #zField
Wl0 f0 outLink WfHtml.ivp #txt
Wl0 f0 inParamDecl '<> param;' #txt
Wl0 f0 requestEnabled true #txt
Wl0 f0 triggerEnabled false #txt
Wl0 f0 callSignature WfHtml() #txt
Wl0 f0 persist false #txt
Wl0 f0 startName 'Test Workflow Html' #txt
Wl0 f0 startDescription 'Sample WF using Web Pages' #txt
Wl0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.NAM=Start Task
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Wl0 f0 caseData 'case.name=A Html Case' #txt
Wl0 f0 showInStartList 1 #txt
Wl0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>WfHtml.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Wl0 f0 @C|.responsibility Everybody #txt
Wl0 f0 81 49 30 30 -29 15 #rect
Wl0 f0 @|StartRequestIcon #fIcon
Wl0 f0 -1|-1|-9671572 #nodeStyle
Wl0 f1 outTypes "ch.ivyteam.wf.test.Data" #txt
Wl0 f1 outLinks "LinkA.ivp" #txt
Wl0 f1 template "/ProcessPages/WfHtml/Page1.ivc" #txt
Wl0 f1 type ch.ivyteam.wf.test.Data #txt
Wl0 f1 skipLink skip.ivp #txt
Wl0 f1 sortLink sort.ivp #txt
Wl0 f1 templateWizard '#
#Fri Jul 19 16:46:04 CEST 2013
' #txt
Wl0 f1 pageArchivingActivated true #txt
Wl0 f1 pageArchiveName Page1 #txt
Wl0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>RequestForm</name>
        <nameStyle>11
</nameStyle>
    </language>
</elementInfo>
' #txt
Wl0 f1 @C|.responsibility Everybody #txt
Wl0 f1 328 42 112 44 -38 -8 #rect
Wl0 f1 @|PageIcon #fIcon
Wl0 f1 -1|-1|-9671572 #nodeStyle
Wl0 f2 outTypes "ch.ivyteam.wf.test.Data" #txt
Wl0 f2 outLinks "LinkA.ivp" #txt
Wl0 f2 template "/ProcessPages/WfHtml/Page2.ivc" #txt
Wl0 f2 type ch.ivyteam.wf.test.Data #txt
Wl0 f2 skipLink skip.ivp #txt
Wl0 f2 sortLink sort.ivp #txt
Wl0 f2 templateWizard '#
#Fri Jul 19 16:46:17 CEST 2013
' #txt
Wl0 f2 pageArchivingActivated true #txt
Wl0 f2 pageArchiveName Page2 #txt
Wl0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ConfirmationPage</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Wl0 f2 @C|.responsibility Everybody #txt
Wl0 f2 584 42 112 44 -50 -8 #rect
Wl0 f2 @|PageIcon #fIcon
Wl0 f2 -1|-1|-9671572 #nodeStyle
Wl0 f3 753 49 30 30 0 15 #rect
Wl0 f3 @|EndIcon #fIcon
Wl0 f3 -1|-1|-9671572 #nodeStyle
Wl0 f4 actionTable 'out=in1;
' #txt
Wl0 f4 outLinks "TaskA.ivp" #txt
Wl0 f4 taskData 'TaskA.DESC=<%\=in1.description%>
TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=Html <%\=in1.caption%>
TaskA.PRI=in1.prio
TaskA.ROL=Everybody
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
Wl0 f4 template "" #txt
Wl0 f4 497 49 30 30 0 16 #rect
Wl0 f4 @|TaskSwitchSimpleIcon #fIcon
Wl0 f4 -1|-1|-9671572 #nodeStyle
Wl0 f7 expr data #txt
Wl0 f7 outCond ivp=="TaskA.ivp" #txt
Wl0 f7 527 64 584 64 #arcP
Wl0 f8 expr data #txt
Wl0 f8 outCond ivp=="LinkA.ivp" #txt
Wl0 f8 696 64 753 64 #arcP
Wl0 f9 actionTable 'out=in;
out.prio=2;
' #txt
Wl0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>default</name>
        <nameStyle>7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Wl0 f9 168 42 112 44 -18 -8 #rect
Wl0 f9 @|StepIcon #fIcon
Wl0 f9 -1|-1|-9671572 #nodeStyle
Wl0 f10 expr out #txt
Wl0 f10 111 64 168 64 #arcP
Wl0 f5 expr out #txt
Wl0 f5 280 64 328 64 #arcP
Wl0 f6 expr data #txt
Wl0 f6 outCond ivp=="LinkA.ivp" #txt
Wl0 f6 type ch.ivyteam.wf.test.Data #txt
Wl0 f6 var in1 #txt
Wl0 f6 440 64 497 64 #arcP
Wl0 f6 0 0.4620603161780597 0 0 #arcLabel
>Proto Wl0 .type ch.ivyteam.wf.test.Data #txt
>Proto Wl0 .processKind NORMAL #txt
>Proto Wl0 0 0 32 24 18 0 #rect
>Proto Wl0 @|BIcon #fIcon
Wl0 f4 out f7 tail #connect
Wl0 f7 head f2 mainIn #connect
Wl0 f2 out f8 tail #connect
Wl0 f8 head f3 mainIn #connect
Wl0 f0 mainOut f10 tail #connect
Wl0 f10 head f9 mainIn #connect
Wl0 f9 mainOut f5 tail #connect
Wl0 f5 head f1 mainIn #connect
Wl0 f1 out f6 tail #connect
Wl0 f6 head f4 in #connect
