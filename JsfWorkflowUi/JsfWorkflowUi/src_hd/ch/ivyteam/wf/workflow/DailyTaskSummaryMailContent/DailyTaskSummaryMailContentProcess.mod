[Ivy]
147A9FDE5364862C 7.5.0 #module
>Proto >Proto Collection #zClass
Ds0 DailyTaskSummaryMailContentProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @UdInit f0 '' #zField
Ds0 @UdProcessEnd f1 '' #zField
Ds0 @PushWFArc f2 '' #zField
>Proto Ds0 Ds0 DailyTaskSummaryMailContentProcess #zField
Ds0 f0 guid 147A9FDE5647A724 #txt
Ds0 f0 method start(ch.ivyteam.ivy.security.IUser,List<ch.ivyteam.ivy.workflow.ITask>) #txt
Ds0 f0 inParameterDecl '<ch.ivyteam.ivy.security.IUser user,List<ch.ivyteam.ivy.workflow.ITask> tasks> param;' #txt
Ds0 f0 inParameterMapAction 'out.user=param.user;
out.tasks=param.tasks;
' #txt
Ds0 f0 outParameterDecl '<> result;' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(IUser,List&lt;ITask&gt;)</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -64 15 #rect
Ds0 f0 @|UdInitIcon #fIcon
Ds0 f1 211 51 26 26 0 12 #rect
Ds0 f1 @|UdProcessEndIcon #fIcon
Ds0 f2 expr out #txt
Ds0 f2 109 64 211 64 #arcP
>Proto Ds0 .type ch.ivyteam.wf.workflow.DailyTaskSummaryMailContent.DailyTaskSummaryMailContentData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f0 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
