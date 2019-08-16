[Ivy]
13FE81B1A4AD784C 3.28 #module
>Proto >Proto Collection #zClass
Cs0 CaseDetails Big #zClass
Cs0 B #cInfo
Cs0 #process
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @StartRequest f0 '' #zField
Cs0 @UserDialog f1 '' #zField
Cs0 @PushWFArc f2 '' #zField
>Proto Cs0 Cs0 CaseDetails #zField
Cs0 f0 outLink CaseDetails.ivp #txt
Cs0 f0 inParamDecl '<java.lang.Number detailCaseId> param;' #txt
Cs0 f0 inParamTable 'out.caseId=param.detailCaseId;
' #txt
Cs0 f0 requestEnabled true #txt
Cs0 f0 triggerEnabled false #txt
Cs0 f0 callSignature CaseDetails(Number) #txt
Cs0 f0 persist false #txt
Cs0 f0 taskData 'TaskTriggered.EXPRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.PRI=2
TaskTriggered.ROL=Everybody
TaskTriggered.TYPE=0' #txt
Cs0 f0 showInStartList 0 #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>CaseDetails.ivp</name>
        <nameStyle>15,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 @C|.responsibility Everybody #txt
Cs0 f0 81 49 30 30 -43 15 #rect
Cs0 f0 @|StartRequestIcon #fIcon
Cs0 f0 -1|-1|-9671572 #nodeStyle
Cs0 f1 dialogId ch.ivyteam.wf.history.CaseDetails #txt
Cs0 f1 startMethod start(Number) #txt
Cs0 f1 requestActionDecl '<Number caseId> param;' #txt
Cs0 f1 requestMappingAction 'param.caseId=in.caseId;
' #txt
Cs0 f1 responseActionDecl 'ch.ivyteam.wf.Data out;
' #txt
Cs0 f1 responseMappingAction 'out=in;
' #txt
Cs0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>case details</name>
        <nameStyle>12
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f1 168 42 112 44 -33 -8 #rect
Cs0 f1 @|UserDialogIcon #fIcon
Cs0 f1 -1|-1|-9671572 #nodeStyle
Cs0 f2 expr out #txt
Cs0 f2 111 64 168 64 #arcP
>Proto Cs0 .type ch.ivyteam.wf.Data #txt
>Proto Cs0 .processKind NORMAL #txt
>Proto Cs0 0 0 32 24 18 0 #rect
>Proto Cs0 @|BIcon #fIcon
Cs0 f0 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
