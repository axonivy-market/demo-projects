[Ivy]
169B3B7F5EF38D8F 3.26 #module
>Proto >Proto Collection #zClass
fd0 fileUpload Big #zClass
fd0 B #cInfo
fd0 #process
fd0 @TextInP .resExport .resExport #zField
fd0 @TextInP .type .type #zField
fd0 @TextInP .processKind .processKind #zField
fd0 @AnnotationInP-0n ai ai #zField
fd0 @MessageFlowInP-0n messageIn messageIn #zField
fd0 @MessageFlowOutP-0n messageOut messageOut #zField
fd0 @TextInP .xml .xml #zField
fd0 @TextInP .responsibility .responsibility #zField
fd0 @StartRequest f0 '' #zField
fd0 @EndTask f1 '' #zField
fd0 @RichDialog f3 '' #zField
fd0 @PushWFArc f4 '' #zField
fd0 @PushWFArc f2 '' #zField
>Proto fd0 fd0 fileUpload #zField
fd0 f0 outLink start.ivp #txt
fd0 f0 type com.axonivy.connectivity.Data #txt
fd0 f0 inParamDecl '<> param;' #txt
fd0 f0 actionDecl 'com.axonivy.connectivity.Data out;
' #txt
fd0 f0 guid 169B3B7F5F71BFFC #txt
fd0 f0 requestEnabled true #txt
fd0 f0 triggerEnabled false #txt
fd0 f0 callSignature start() #txt
fd0 f0 persist false #txt
fd0 f0 caseData businessCase.attach=true #txt
fd0 f0 showInStartList 1 #txt
fd0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
fd0 f0 @C|.responsibility Everybody #txt
fd0 f0 81 49 30 30 -25 17 #rect
fd0 f0 @|StartRequestIcon #fIcon
fd0 f1 type com.axonivy.connectivity.Data #txt
fd0 f1 337 49 30 30 0 15 #rect
fd0 f1 @|EndIcon #fIcon
fd0 f3 richDialogId com.axonivy.connectivity.rest.FileUpload #txt
fd0 f3 startMethod start(com.axonivy.connectivity.Data) #txt
fd0 f3 type com.axonivy.connectivity.Data #txt
fd0 f3 requestActionDecl '<com.axonivy.connectivity.Data data> param;' #txt
fd0 f3 responseActionDecl 'com.axonivy.connectivity.Data out;
' #txt
fd0 f3 responseMappingAction 'out=in;
' #txt
fd0 f3 168 42 112 44 0 -7 #rect
fd0 f3 @|RichDialogIcon #fIcon
fd0 f4 expr out #txt
fd0 f4 111 64 168 64 #arcP
fd0 f2 expr out #txt
fd0 f2 280 64 337 64 #arcP
>Proto fd0 .type com.axonivy.connectivity.Data #txt
>Proto fd0 .processKind NORMAL #txt
>Proto fd0 0 0 32 24 18 0 #rect
>Proto fd0 @|BIcon #fIcon
fd0 f0 mainOut f4 tail #connect
fd0 f4 head f3 mainIn #connect
fd0 f3 mainOut f2 tail #connect
fd0 f2 head f1 mainIn #connect
