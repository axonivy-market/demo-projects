[Ivy]
167C61A86526BDE9 3.26 #module
>Proto >Proto Collection #zClass
Fe0 Frame Big #zClass
Fe0 B #cInfo
Fe0 #process
Fe0 @TextInP .resExport .resExport #zField
Fe0 @TextInP .type .type #zField
Fe0 @TextInP .processKind .processKind #zField
Fe0 @AnnotationInP-0n ai ai #zField
Fe0 @MessageFlowInP-0n messageIn messageIn #zField
Fe0 @MessageFlowOutP-0n messageOut messageOut #zField
Fe0 @TextInP .xml .xml #zField
Fe0 @TextInP .responsibility .responsibility #zField
Fe0 @StartRequest f0 '' #zField
Fe0 @EndTask f1 '' #zField
Fe0 @StartRequest f5 '' #zField
Fe0 @PushWFArc f2 '' #zField
Fe0 @PushWFArc f4 '' #zField
Fe0 @RichDialog f3 '' #zField
Fe0 @GridStep f8 '' #zField
Fe0 @PushWFArc f7 '' #zField
Fe0 @PushWFArc f9 '' #zField
Fe0 @StartRequest f6 '' #zField
Fe0 @PushWFArc f10 '' #zField
>Proto Fe0 Fe0 Frame #zField
Fe0 f0 outLink FrameWithUrl.ivp #txt
Fe0 f0 type ch.ivyteam.wf.FrameData #txt
Fe0 f0 inParamDecl '<java.lang.String url> param;' #txt
Fe0 f0 inParamTable 'out.url=param.url;
' #txt
Fe0 f0 actionDecl 'ch.ivyteam.wf.FrameData out;
' #txt
Fe0 f0 guid 167C61A865880B19 #txt
Fe0 f0 requestEnabled true #txt
Fe0 f0 triggerEnabled false #txt
Fe0 f0 callSignature FrameWithUrl(String) #txt
Fe0 f0 persist false #txt
Fe0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Fe0 f0 caseData businessCase.attach=true #txt
Fe0 f0 showInStartList 0 #txt
Fe0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>FrameWithUrl.ivp</name>
    </language>
</elementInfo>
' #txt
Fe0 f0 @C|.responsibility Everybody #txt
Fe0 f0 81 49 30 30 -51 21 #rect
Fe0 f0 @|StartRequestIcon #fIcon
Fe0 f1 type ch.ivyteam.wf.FrameData #txt
Fe0 f1 337 49 30 30 0 15 #rect
Fe0 f1 @|EndIcon #fIcon
Fe0 f5 outLink FrameWithTaskId.ivp #txt
Fe0 f5 type ch.ivyteam.wf.FrameData #txt
Fe0 f5 inParamDecl '<java.lang.Number detailTaskId> param;' #txt
Fe0 f5 inParamTable 'out.task=ivy.wf.findTask(param.detailTaskId);
out.taskId=param.detailTaskId;
' #txt
Fe0 f5 actionDecl 'ch.ivyteam.wf.FrameData out;
' #txt
Fe0 f5 guid 167C61CF6C5F07F5 #txt
Fe0 f5 requestEnabled true #txt
Fe0 f5 triggerEnabled false #txt
Fe0 f5 callSignature FrameWithTaskId(Number) #txt
Fe0 f5 persist false #txt
Fe0 f5 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Fe0 f5 caseData businessCase.attach=true #txt
Fe0 f5 showInStartList 0 #txt
Fe0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>FrameWithTaskId.ivp</name>
    </language>
</elementInfo>
' #txt
Fe0 f5 @C|.responsibility Everybody #txt
Fe0 f5 81 241 30 30 -54 28 #rect
Fe0 f5 @|StartRequestIcon #fIcon
Fe0 f2 expr out #txt
Fe0 f2 280 64 337 64 #arcP
Fe0 f4 expr out #txt
Fe0 f4 111 64 168 64 #arcP
Fe0 f3 richDialogId ch.ivyteam.wf.workflow.IFrame #txt
Fe0 f3 startMethod start(String) #txt
Fe0 f3 type ch.ivyteam.wf.FrameData #txt
Fe0 f3 requestActionDecl '<String url> param;' #txt
Fe0 f3 requestMappingAction 'param.url=in.url;
' #txt
Fe0 f3 responseActionDecl 'ch.ivyteam.wf.FrameData out;
' #txt
Fe0 f3 responseMappingAction 'out=in;
' #txt
Fe0 f3 168 42 112 44 0 -7 #rect
Fe0 f3 @|RichDialogIcon #fIcon
Fe0 f8 actionDecl 'ch.ivyteam.wf.FrameData out;
' #txt
Fe0 f8 actionTable 'out=in;
' #txt
Fe0 f8 actionCode 'out.url = ivy.html.taskstartref(in.task);' #txt
Fe0 f8 type ch.ivyteam.wf.FrameData #txt
Fe0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>build iframe url</name>
    </language>
</elementInfo>
' #txt
Fe0 f8 168 234 112 44 -46 -7 #rect
Fe0 f8 @|StepIcon #fIcon
Fe0 f7 expr out #txt
Fe0 f7 111 256 168 256 #arcP
Fe0 f9 expr out #txt
Fe0 f9 224 234 224 86 #arcP
Fe0 f6 outLink OpenTaskUi.ivp #txt
Fe0 f6 type ch.ivyteam.wf.FrameData #txt
Fe0 f6 inParamDecl '<java.lang.String taskUiUrl,java.lang.Number runningTaskId> param;' #txt
Fe0 f6 inParamTable 'out.url=param.taskUiUrl;
' #txt
Fe0 f6 actionDecl 'ch.ivyteam.wf.FrameData out;
' #txt
Fe0 f6 guid 16A4F4141BFBA6E9 #txt
Fe0 f6 requestEnabled true #txt
Fe0 f6 triggerEnabled false #txt
Fe0 f6 callSignature OpenTaskUi(String,Number) #txt
Fe0 f6 persist false #txt
Fe0 f6 caseData businessCase.attach=true #txt
Fe0 f6 showInStartList 0 #txt
Fe0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>OpenTaskUi.ivp</name>
    </language>
</elementInfo>
' #txt
Fe0 f6 @C|.responsibility Everybody #txt
Fe0 f6 81 145 30 30 -25 17 #rect
Fe0 f6 @|StartRequestIcon #fIcon
Fe0 f10 expr out #txt
Fe0 f10 111 160 224 86 #arcP
Fe0 f10 1 224 160 #addKink
Fe0 f10 0 0.8153078287483635 0 0 #arcLabel
>Proto Fe0 .type ch.ivyteam.wf.FrameData #txt
>Proto Fe0 .processKind NORMAL #txt
>Proto Fe0 0 0 32 24 18 0 #rect
>Proto Fe0 @|BIcon #fIcon
Fe0 f0 mainOut f4 tail #connect
Fe0 f4 head f3 mainIn #connect
Fe0 f3 mainOut f2 tail #connect
Fe0 f2 head f1 mainIn #connect
Fe0 f5 mainOut f7 tail #connect
Fe0 f7 head f8 mainIn #connect
Fe0 f8 mainOut f9 tail #connect
Fe0 f9 head f3 mainIn #connect
Fe0 f6 mainOut f10 tail #connect
Fe0 f10 head f3 mainIn #connect
