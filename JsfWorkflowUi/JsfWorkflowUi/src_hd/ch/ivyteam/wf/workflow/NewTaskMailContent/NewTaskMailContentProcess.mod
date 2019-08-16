[Ivy]
147A9FEEB5CF1D19 3.28 #module
>Proto >Proto Collection #zClass
Ns0 NewTaskMailContentProcess Big #zClass
Ns0 RD #cInfo
Ns0 #process
Ns0 @TextInP .type .type #zField
Ns0 @TextInP .processKind .processKind #zField
Ns0 @AnnotationInP-0n ai ai #zField
Ns0 @MessageFlowInP-0n messageIn messageIn #zField
Ns0 @MessageFlowOutP-0n messageOut messageOut #zField
Ns0 @TextInP .xml .xml #zField
Ns0 @TextInP .responsibility .responsibility #zField
Ns0 @UdInit f0 '' #zField
Ns0 @UdProcessEnd f1 '' #zField
Ns0 @PushWFArc f2 '' #zField
>Proto Ns0 Ns0 NewTaskMailContentProcess #zField
Ns0 f0 guid 147A9FEEB7B3C1B6 #txt
Ns0 f0 method start(ch.ivyteam.ivy.security.IUser,ch.ivyteam.ivy.workflow.ITask) #txt
Ns0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ch.ivyteam.ivy.security.IUser user,ch.ivyteam.ivy.workflow.ITask task> param = methodEvent.getInputArguments();
' #txt
Ns0 f0 inParameterMapAction 'out.user=param.user;
out.task=param.task;
' #txt
Ns0 f0 outParameterDecl '<> result;
' #txt
Ns0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(IUser,ITask)</name>
    </language>
</elementInfo>
' #txt
Ns0 f0 83 51 26 26 -47 15 #rect
Ns0 f0 @|UdInitIcon #fIcon
Ns0 f1 211 51 26 26 0 12 #rect
Ns0 f1 @|UdProcessEndIcon #fIcon
Ns0 f2 expr out #txt
Ns0 f2 109 64 211 64 #arcP
>Proto Ns0 .type ch.ivyteam.wf.workflow.NewTaskMailContent.NewTaskMailContentData #txt
>Proto Ns0 .processKind HTML_DIALOG #txt
>Proto Ns0 -8 -8 16 16 16 26 #rect
>Proto Ns0 '' #fIcon
Ns0 f0 mainOut f2 tail #connect
Ns0 f2 head f1 mainIn #connect
