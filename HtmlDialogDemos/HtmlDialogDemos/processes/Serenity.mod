[Ivy]
170C8E433F4303F1 7.5.0 #module
>Proto >Proto Collection #zClass
Sy0 Serenity Big #zClass
Sy0 B #cInfo
Sy0 #process
Sy0 @TextInP .type .type #zField
Sy0 @TextInP .processKind .processKind #zField
Sy0 @TextInP .xml .xml #zField
Sy0 @TextInP .responsibility .responsibility #zField
Sy0 @StartRequest f0 '' #zField
Sy0 @EndRequest f1 '' #zField
Sy0 @PushWFArc f2 '' #zField
>Proto Sy0 Sy0 Serenity #zField
Sy0 f0 outLink showcase.ivp #txt
Sy0 f0 inParamDecl '<> param;' #txt
Sy0 f0 requestEnabled true #txt
Sy0 f0 triggerEnabled false #txt
Sy0 f0 callSignature showcase() #txt
Sy0 f0 startName 'Serenity Showcase' #txt
Sy0 f0 caseData businessCase.attach=true #txt
Sy0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>showcase.ivp</name>
    </language>
</elementInfo>
' #txt
Sy0 f0 @C|.responsibility Everybody #txt
Sy0 f0 81 49 30 30 -25 17 #rect
Sy0 f0 @|StartRequestIcon #fIcon
Sy0 f1 template "dashboard.xhtml" #txt
Sy0 f1 305 49 30 30 0 15 #rect
Sy0 f1 @|EndRequestIcon #fIcon
Sy0 f2 111 64 305 64 #arcP
>Proto Sy0 .type htmlDialogDemos.Data #txt
>Proto Sy0 .processKind NORMAL #txt
>Proto Sy0 0 0 32 24 18 0 #rect
>Proto Sy0 @|BIcon #fIcon
Sy0 f0 mainOut f2 tail #connect
Sy0 f2 head f1 mainIn #connect
