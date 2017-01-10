[Ivy]
[>Created: Tue Jan 10 16:54:54 CET 2017]
157E64657EEBDD9C 3.19 #module
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
Ei0 @EndTask f1 '' #zField
Ei0 @RichDialog f3 '' #zField
Ei0 @PushWFArc f4 '' #zField
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
Ei0 f1 type engine.config.ui.test.Data #txt
Ei0 f1 337 49 30 30 0 15 #rect
Ei0 f1 @|EndIcon #fIcon
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
Ei0 f2 expr out #txt
Ei0 f2 280 64 337 64 #arcP
>Proto Ei0 .type engine.config.ui.test.Data #txt
>Proto Ei0 .processKind NORMAL #txt
>Proto Ei0 0 0 32 24 18 0 #rect
>Proto Ei0 @|BIcon #fIcon
Ei0 f0 mainOut f4 tail #connect
Ei0 f4 head f3 mainIn #connect
Ei0 f3 mainOut f2 tail #connect
Ei0 f2 head f1 mainIn #connect
