[Ivy]
13F3C911395912D4 3.28 #module
>Proto >Proto Collection #zClass
Ae0 Absence Big #zClass
Ae0 B #cInfo
Ae0 #process
Ae0 @TextInP .type .type #zField
Ae0 @TextInP .processKind .processKind #zField
Ae0 @AnnotationInP-0n ai ai #zField
Ae0 @TextInP .xml .xml #zField
Ae0 @TextInP .responsibility .responsibility #zField
Ae0 @StartRequest f0 '' #zField
Ae0 @UserDialog f1 '' #zField
Ae0 @PushWFArc f2 '' #zField
>Proto Ae0 Ae0 Absence #zField
Ae0 f0 outLink Absence.ivp #txt
Ae0 f0 inParamDecl '<> param;' #txt
Ae0 f0 requestEnabled true #txt
Ae0 f0 triggerEnabled false #txt
Ae0 f0 callSignature Absence() #txt
Ae0 f0 persist false #txt
Ae0 f0 startName Absence #txt
Ae0 f0 startDescription 'My absences' #txt
Ae0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Ae0 f0 showInStartList 0 #txt
Ae0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Absence.ivp</name>
        <nameStyle>11,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f0 @C|.responsibility Everybody #txt
Ae0 f0 81 49 30 30 -33 15 #rect
Ae0 f0 @|StartRequestIcon #fIcon
Ae0 f0 -1|-1|-9671572 #nodeStyle
Ae0 f1 dialogId ch.ivyteam.wf.settings.Absence #txt
Ae0 f1 startMethod start() #txt
Ae0 f1 requestActionDecl '<> param;' #txt
Ae0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Ae0 f1 responseMappingAction 'out=in;
' #txt
Ae0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>absence</name>
        <nameStyle>7,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ae0 f1 168 42 112 44 -24 -8 #rect
Ae0 f1 @|UserDialogIcon #fIcon
Ae0 f1 -1|-1|-9671572 #nodeStyle
Ae0 f2 expr out #txt
Ae0 f2 111 64 168 64 #arcP
>Proto Ae0 .type ch.ivyteam.wf.Data #txt
>Proto Ae0 .processKind NORMAL #txt
>Proto Ae0 0 0 32 24 18 0 #rect
>Proto Ae0 @|BIcon #fIcon
Ae0 f0 mainOut f2 tail #connect
Ae0 f2 head f1 mainIn #connect
