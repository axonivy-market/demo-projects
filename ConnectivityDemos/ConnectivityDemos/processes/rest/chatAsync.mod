[Ivy]
16764B07C0329FC8 3.23 #module
>Proto >Proto Collection #zClass
cc0 chatAsync Big #zClass
cc0 B #cInfo
cc0 #process
cc0 @TextInP .resExport .resExport #zField
cc0 @TextInP .type .type #zField
cc0 @TextInP .processKind .processKind #zField
cc0 @AnnotationInP-0n ai ai #zField
cc0 @MessageFlowInP-0n messageIn messageIn #zField
cc0 @MessageFlowOutP-0n messageOut messageOut #zField
cc0 @TextInP .xml .xml #zField
cc0 @TextInP .responsibility .responsibility #zField
cc0 @StartRequest f0 '' #zField
cc0 @EndTask f1 '' #zField
cc0 @RichDialog f3 '' #zField
cc0 @PushWFArc f4 '' #zField
cc0 @PushWFArc f2 '' #zField
>Proto cc0 cc0 chatAsync #zField
cc0 f0 outLink chatAsync.ivp #txt
cc0 f0 type com.axonivy.connectivity.Data #txt
cc0 f0 inParamDecl '<> param;' #txt
cc0 f0 actionDecl 'com.axonivy.connectivity.Data out;
' #txt
cc0 f0 guid 16764B07C16394B2 #txt
cc0 f0 requestEnabled true #txt
cc0 f0 triggerEnabled false #txt
cc0 f0 callSignature chatAsync() #txt
cc0 f0 persist false #txt
cc0 f0 startName '5.2 chat async with JS client for REST' #txt
cc0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
cc0 f0 caseData businessCase.attach=true #txt
cc0 f0 showInStartList 1 #txt
cc0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>chatAsync.ivp</name>
    </language>
</elementInfo>
' #txt
cc0 f0 @C|.responsibility Everybody #txt
cc0 f0 81 49 30 30 -42 17 #rect
cc0 f0 @|StartRequestIcon #fIcon
cc0 f1 type com.axonivy.connectivity.Data #txt
cc0 f1 337 49 30 30 0 15 #rect
cc0 f1 @|EndIcon #fIcon
cc0 f3 richDialogId com.axonivy.connectivity.rest.ChatClient #txt
cc0 f3 startMethod start() #txt
cc0 f3 type com.axonivy.connectivity.Data #txt
cc0 f3 requestActionDecl '<> param;' #txt
cc0 f3 responseActionDecl 'com.axonivy.connectivity.Data out;
' #txt
cc0 f3 responseMappingAction 'out=in;
' #txt
cc0 f3 168 42 112 44 0 -7 #rect
cc0 f3 @|RichDialogIcon #fIcon
cc0 f4 expr out #txt
cc0 f4 111 64 168 64 #arcP
cc0 f2 expr out #txt
cc0 f2 280 64 337 64 #arcP
>Proto cc0 .type com.axonivy.connectivity.Data #txt
>Proto cc0 .processKind NORMAL #txt
>Proto cc0 0 0 32 24 18 0 #rect
>Proto cc0 @|BIcon #fIcon
cc0 f0 mainOut f4 tail #connect
cc0 f4 head f3 mainIn #connect
cc0 f3 mainOut f2 tail #connect
cc0 f2 head f1 mainIn #connect
