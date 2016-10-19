[Ivy]
[>Created: Wed Oct 19 11:37:08 CEST 2016]
157DC47A058F7798 3.18 #module
>Proto >Proto Collection #zClass
Ss0 SimpleProcess Big #zClass
Ss0 B #cInfo
Ss0 #process
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @StartRequest f0 '' #zField
Ss0 @EndTask f1 '' #zField
Ss0 @RichDialog f3 '' #zField
Ss0 @PushWFArc f4 '' #zField
Ss0 @PushWFArc f2 '' #zField
>Proto Ss0 Ss0 SimpleProcess #zField
Ss0 f0 outLink start.ivp #txt
Ss0 f0 type engine.config.ui.test.Data #txt
Ss0 f0 inParamDecl '<> param;' #txt
Ss0 f0 actionDecl 'engine.config.ui.test.Data out;
' #txt
Ss0 f0 guid 157DC47A199AC652 #txt
Ss0 f0 requestEnabled true #txt
Ss0 f0 triggerEnabled false #txt
Ss0 f0 callSignature start() #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 @C|.responsibility Everybody #txt
Ss0 f0 81 49 30 30 -21 17 #rect
Ss0 f0 @|StartRequestIcon #fIcon
Ss0 f1 type engine.config.ui.test.Data #txt
Ss0 f1 337 49 30 30 0 15 #rect
Ss0 f1 @|EndIcon #fIcon
Ss0 f3 targetWindow NEW:card: #txt
Ss0 f3 targetDisplay TOP #txt
Ss0 f3 richDialogId engine.config.ui.test.simplelDialog #txt
Ss0 f3 startMethod start(engine.config.ui.test.Data) #txt
Ss0 f3 type engine.config.ui.test.Data #txt
Ss0 f3 requestActionDecl '<engine.config.ui.test.Data data> param;' #txt
Ss0 f3 requestMappingAction 'param.data=in;
' #txt
Ss0 f3 responseActionDecl 'engine.config.ui.test.Data out;
' #txt
Ss0 f3 responseMappingAction 'out=result.data;
' #txt
Ss0 f3 windowConfiguration '* ' #txt
Ss0 f3 isAsynch false #txt
Ss0 f3 isInnerRd false #txt
Ss0 f3 userContext '* ' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>SimpleDialog</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ss0 f3 168 42 112 44 -37 -8 #rect
Ss0 f3 @|RichDialogIcon #fIcon
Ss0 f4 expr out #txt
Ss0 f4 111 64 168 64 #arcP
Ss0 f2 expr out #txt
Ss0 f2 280 64 337 64 #arcP
>Proto Ss0 .type engine.config.ui.test.Data #txt
>Proto Ss0 .processKind NORMAL #txt
>Proto Ss0 0 0 32 24 18 0 #rect
>Proto Ss0 @|BIcon #fIcon
Ss0 f0 mainOut f4 tail #connect
Ss0 f4 head f3 mainIn #connect
Ss0 f3 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
