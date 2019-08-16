[Ivy]
13F5720218D18BA2 3.28 #module
>Proto >Proto Collection #zClass
Sn0 Substitution Big #zClass
Sn0 B #cInfo
Sn0 #process
Sn0 @TextInP .type .type #zField
Sn0 @TextInP .processKind .processKind #zField
Sn0 @AnnotationInP-0n ai ai #zField
Sn0 @TextInP .xml .xml #zField
Sn0 @TextInP .responsibility .responsibility #zField
Sn0 @StartRequest f0 '' #zField
Sn0 @UserDialog f1 '' #zField
Sn0 @PushWFArc f2 '' #zField
>Proto Sn0 Sn0 Substitution #zField
Sn0 f0 outLink Substitution.ivp #txt
Sn0 f0 inParamDecl '<> param;' #txt
Sn0 f0 requestEnabled true #txt
Sn0 f0 triggerEnabled false #txt
Sn0 f0 callSignature Substitution() #txt
Sn0 f0 persist false #txt
Sn0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Sn0 f0 showInStartList 0 #txt
Sn0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Substitution.ivp</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f0 @C|.responsibility Everybody #txt
Sn0 f0 81 49 30 30 -41 15 #rect
Sn0 f0 @|StartRequestIcon #fIcon
Sn0 f0 -1|-1|-9671572 #nodeStyle
Sn0 f1 dialogId ch.ivyteam.wf.settings.Substitution #txt
Sn0 f1 startMethod start() #txt
Sn0 f1 requestActionDecl '<> param;' #txt
Sn0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Sn0 f1 responseMappingAction 'out=in;
' #txt
Sn0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>substitution</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Sn0 f1 168 42 112 44 -32 -8 #rect
Sn0 f1 @|UserDialogIcon #fIcon
Sn0 f1 -1|-1|-9671572 #nodeStyle
Sn0 f2 expr out #txt
Sn0 f2 111 64 168 64 #arcP
>Proto Sn0 .type ch.ivyteam.wf.Data #txt
>Proto Sn0 .processKind NORMAL #txt
>Proto Sn0 0 0 32 24 18 0 #rect
>Proto Sn0 @|BIcon #fIcon
Sn0 f0 mainOut f2 tail #connect
Sn0 f2 head f1 mainIn #connect
