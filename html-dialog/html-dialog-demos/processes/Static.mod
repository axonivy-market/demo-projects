[Ivy]
1698080EFEC9C585 9.4.0 #module
>Proto >Proto Collection #zClass
Sc0 Static Big #zClass
Sc0 B #cInfo
Sc0 #process
Sc0 @TextInP .type .type #zField
Sc0 @TextInP .processKind .processKind #zField
Sc0 @AnnotationInP-0n ai ai #zField
Sc0 @MessageFlowInP-0n messageIn messageIn #zField
Sc0 @MessageFlowOutP-0n messageOut messageOut #zField
Sc0 @TextInP .xml .xml #zField
Sc0 @TextInP .responsibility .responsibility #zField
Sc0 @StartRequest f0 '' #zField
Sc0 @EndRequest f1 '' #zField
Sc0 @PushWFArc f2 '' #zField
>Proto Sc0 Sc0 Static #zField
Sc0 f0 outLink StaticEndPage.ivp #txt
Sc0 f0 inParamDecl '<> param;' #txt
Sc0 f0 requestEnabled true #txt
Sc0 f0 triggerEnabled false #txt
Sc0 f0 callSignature StaticEndPage() #txt
Sc0 f0 persist false #txt
Sc0 f0 startName StaticEndPage #txt
Sc0 f0 startCategory static #txt
Sc0 f0 startCustomFields 'cssIcon=fa fa-file-o
embedInFrame=false' #txt
Sc0 f0 caseData businessCase.attach=true #txt
Sc0 f0 showInStartList 1 #txt
Sc0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>StaticEndPage.ivp</name>
    </language>
</elementInfo>
' #txt
Sc0 f0 @C|.responsibility Everybody #txt
Sc0 f0 81 49 30 30 -25 17 #rect
Sc0 f1 template "view/static.xhtml" #txt
Sc0 f1 305 49 30 30 0 15 #rect
Sc0 f2 expr out #txt
Sc0 f2 111 64 305 64 #arcP
>Proto Sc0 .type htmlDialogDemos.Data #txt
>Proto Sc0 .processKind NORMAL #txt
>Proto Sc0 0 0 32 24 18 0 #rect
>Proto Sc0 @|BIcon #fIcon
Sc0 f0 mainOut f2 tail #connect
Sc0 f2 head f1 mainIn #connect
