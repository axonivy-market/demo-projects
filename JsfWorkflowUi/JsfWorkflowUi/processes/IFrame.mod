[Ivy]
167C5AFF5317B2A7 3.23 #module
>Proto >Proto Collection #zClass
Ie0 IFrame Big #zClass
Ie0 B #cInfo
Ie0 #process
Ie0 @TextInP .resExport .resExport #zField
Ie0 @TextInP .type .type #zField
Ie0 @TextInP .processKind .processKind #zField
Ie0 @AnnotationInP-0n ai ai #zField
Ie0 @MessageFlowInP-0n messageIn messageIn #zField
Ie0 @MessageFlowOutP-0n messageOut messageOut #zField
Ie0 @TextInP .xml .xml #zField
Ie0 @TextInP .responsibility .responsibility #zField
Ie0 @StartRequest f0 '' #zField
Ie0 @EndTask f1 '' #zField
Ie0 @RichDialog f3 '' #zField
Ie0 @PushWFArc f4 '' #zField
Ie0 @PushWFArc f2 '' #zField
Ie0 @StartRequest f5 '' #zField
Ie0 @PushWFArc f6 '' #zField
>Proto Ie0 Ie0 IFrame #zField
Ie0 f0 outLink ProcessStartIFrame.ivp #txt
Ie0 f0 type ch.ivyteam.wf.Data #txt
Ie0 f0 inParamDecl '<java.lang.String url> param;' #txt
Ie0 f0 inParamTable 'out.url=param.url;
' #txt
Ie0 f0 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ie0 f0 guid 167C5AFF5369C626 #txt
Ie0 f0 requestEnabled true #txt
Ie0 f0 triggerEnabled false #txt
Ie0 f0 callSignature ProcessStartIFrame(String) #txt
Ie0 f0 persist false #txt
Ie0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Ie0 f0 caseData businessCase.attach=true #txt
Ie0 f0 showInStartList 0 #txt
Ie0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ProcessStartIFrame.ivp</name>
    </language>
</elementInfo>
' #txt
Ie0 f0 @C|.responsibility Everybody #txt
Ie0 f0 81 49 30 30 -51 27 #rect
Ie0 f0 @|StartRequestIcon #fIcon
Ie0 f1 type ch.ivyteam.wf.Data #txt
Ie0 f1 337 49 30 30 0 15 #rect
Ie0 f1 @|EndIcon #fIcon
Ie0 f3 richDialogId ch.ivyteam.wf.workflow.IFrame #txt
Ie0 f3 startMethod start(String) #txt
Ie0 f3 type ch.ivyteam.wf.Data #txt
Ie0 f3 requestActionDecl '<String url> param;' #txt
Ie0 f3 requestMappingAction 'param.url=in.url;
' #txt
Ie0 f3 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ie0 f3 responseMappingAction 'out=in;
' #txt
Ie0 f3 168 42 112 44 0 -7 #rect
Ie0 f3 @|RichDialogIcon #fIcon
Ie0 f4 expr out #txt
Ie0 f4 111 64 168 64 #arcP
Ie0 f2 expr out #txt
Ie0 f2 280 64 337 64 #arcP
Ie0 f5 outLink TaskListStartIFrame.ivp #txt
Ie0 f5 type ch.ivyteam.wf.Data #txt
Ie0 f5 inParamDecl '<java.lang.String taskId> param;' #txt
Ie0 f5 actionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ie0 f5 guid 167C5EB9D15C0120 #txt
Ie0 f5 requestEnabled true #txt
Ie0 f5 triggerEnabled false #txt
Ie0 f5 callSignature TaskListStartIFrame(String) #txt
Ie0 f5 persist false #txt
Ie0 f5 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Ie0 f5 caseData businessCase.attach=true #txt
Ie0 f5 showInStartList 1 #txt
Ie0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TaskListStartIFrame.ivp</name>
    </language>
</elementInfo>
' #txt
Ie0 f5 @C|.responsibility Everybody #txt
Ie0 f5 81 145 30 30 -52 38 #rect
Ie0 f5 @|StartRequestIcon #fIcon
Ie0 f6 expr out #txt
Ie0 f6 111 160 224 86 #arcP
Ie0 f6 1 224 160 #addKink
Ie0 f6 0 0.8209634454236441 0 0 #arcLabel
>Proto Ie0 .type ch.ivyteam.wf.Data #txt
>Proto Ie0 .processKind NORMAL #txt
>Proto Ie0 0 0 32 24 18 0 #rect
>Proto Ie0 @|BIcon #fIcon
Ie0 f0 mainOut f4 tail #connect
Ie0 f4 head f3 mainIn #connect
Ie0 f3 mainOut f2 tail #connect
Ie0 f2 head f1 mainIn #connect
Ie0 f5 mainOut f6 tail #connect
Ie0 f6 head f3 mainIn #connect
