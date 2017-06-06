[Ivy]
[>Created: Tue Jun 06 16:03:02 CEST 2017]
157E64657EEBDD9C 3.20 #module
>Proto >Proto Collection #zClass
Ei0 EngineConfigUi Big #zClass
Ei0 B #cInfo
Ei0 #process
Ei0 @TextInP .resExport .resExport #zField
Ei0 @TextInP .type .type #zField
Ei0 @TextInP .processKind .processKind #zField
Ei0 @AnnotationInP-0n ai ai #zField
Ei0 @MessageFlowInP-0n messageIn messageIn #zField
Ei0 @MessageFlowOutP-0n messageOut messageOut #zField
Ei0 @TextInP .xml .xml #zField
Ei0 @TextInP .responsibility .responsibility #zField
Ei0 @StartRequest f0 '' #zField
Ei0 @RichDialog f3 '' #zField
Ei0 @PushWFArc f4 '' #zField
Ei0 @StartRequest f5 '' #zField
Ei0 @EndTask f6 '' #zField
Ei0 @GridStep f8 '' #zField
Ei0 @PushWFArc f9 '' #zField
Ei0 @PushWFArc f1 '' #zField
Ei0 @PushWFArc f2 '' #zField
>Proto Ei0 Ei0 EngineConfigUi #zField
Ei0 f0 outLink start.ivp #txt
Ei0 f0 type engine.config.ui.test.Data #txt
Ei0 f0 inParamDecl '<> param;' #txt
Ei0 f0 actionDecl 'engine.config.ui.test.Data out;
' #txt
Ei0 f0 guid 157E64657EE41A9A #txt
Ei0 f0 requestEnabled true #txt
Ei0 f0 triggerEnabled false #txt
Ei0 f0 callSignature start() #txt
Ei0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ei0 f0 @C|.responsibility Everybody #txt
Ei0 f0 81 49 30 30 -21 17 #rect
Ei0 f0 @|StartRequestIcon #fIcon
Ei0 f3 targetWindow NEW:card: #txt
Ei0 f3 targetDisplay TOP #txt
Ei0 f3 richDialogId com.axonivy.engine.config.ui.settings.ConfigurationOverview #txt
Ei0 f3 startMethod start() #txt
Ei0 f3 type engine.config.ui.test.Data #txt
Ei0 f3 requestActionDecl '<> param;' #txt
Ei0 f3 responseActionDecl 'engine.config.ui.test.Data out;
' #txt
Ei0 f3 responseMappingAction 'out=in;
' #txt
Ei0 f3 windowConfiguration '* ' #txt
Ei0 f3 isAsynch false #txt
Ei0 f3 isInnerRd false #txt
Ei0 f3 userContext '* ' #txt
Ei0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>System Database</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ei0 f3 168 42 112 44 -49 -8 #rect
Ei0 f3 @|RichDialogIcon #fIcon
Ei0 f4 expr out #txt
Ei0 f4 111 64 168 64 #arcP
Ei0 f5 outLink Logout.ivp #txt
Ei0 f5 type engine.config.ui.test.Data #txt
Ei0 f5 inParamDecl '<> param;' #txt
Ei0 f5 actionDecl 'engine.config.ui.test.Data out;
' #txt
Ei0 f5 guid 15C7DB5C460C4AE0 #txt
Ei0 f5 requestEnabled true #txt
Ei0 f5 triggerEnabled false #txt
Ei0 f5 callSignature Logout() #txt
Ei0 f5 persist false #txt
Ei0 f5 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Ei0 f5 caseData businessCase.attach=true #txt
Ei0 f5 showInStartList 0 #txt
Ei0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Logout.ivp</name>
        <nameStyle>10,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ei0 f5 @C|.responsibility Everybody #txt
Ei0 f5 81 113 30 30 -28 17 #rect
Ei0 f5 @|StartRequestIcon #fIcon
Ei0 f6 type engine.config.ui.test.Data #txt
Ei0 f6 337 49 30 30 0 15 #rect
Ei0 f6 @|EndIcon #fIcon
Ei0 f8 actionDecl 'engine.config.ui.test.Data out;
' #txt
Ei0 f8 actionTable 'out=in;
' #txt
Ei0 f8 actionCode ivy.session.logoutSessionUser(ivy.task.getId()); #txt
Ei0 f8 type engine.config.ui.test.Data #txt
Ei0 f8 168 106 112 44 0 -8 #rect
Ei0 f8 @|StepIcon #fIcon
Ei0 f9 expr out #txt
Ei0 f9 111 128 168 128 #arcP
Ei0 f1 expr out #txt
Ei0 f1 224 106 224 86 #arcP
Ei0 f2 expr out #txt
Ei0 f2 280 64 337 64 #arcP
Ei0 f2 0 0.7107175366338164 0 0 #arcLabel
>Proto Ei0 .type engine.config.ui.test.Data #txt
>Proto Ei0 .processKind NORMAL #txt
>Proto Ei0 0 0 32 24 18 0 #rect
>Proto Ei0 @|BIcon #fIcon
Ei0 f0 mainOut f4 tail #connect
Ei0 f4 head f3 mainIn #connect
Ei0 f5 mainOut f9 tail #connect
Ei0 f9 head f8 mainIn #connect
Ei0 f8 mainOut f1 tail #connect
Ei0 f1 head f3 mainIn #connect
Ei0 f3 mainOut f2 tail #connect
Ei0 f2 head f6 mainIn #connect
