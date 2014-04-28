[Ivy]
[>Created: Mon Apr 28 15:51:09 CEST 2014]
145A88D9DD68551A 3.17 #module
>Proto >Proto Collection #zClass
Ms0 MyProcess Big #zClass
Ms0 B #cInfo
Ms0 #process
Ms0 @TextInP .resExport .resExport #zField
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @MessageFlowInP-0n messageIn messageIn #zField
Ms0 @MessageFlowOutP-0n messageOut messageOut #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @StartRequest f0 '' #zField
Ms0 @RichDialog f1 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @EndTask f3 '' #zField
Ms0 @Alternative f5 '' #zField
Ms0 @PushWFArc f6 '' #zField
Ms0 @PushWFArc f4 '' #zField
Ms0 @EndTask f7 '' #zField
Ms0 @PushWFArc f8 '' #zField
>Proto Ms0 Ms0 MyProcess #zField
Ms0 f0 outLink start.ivp #txt
Ms0 f0 type quickStartTutorial.Data #txt
Ms0 f0 inParamDecl '<> param;' #txt
Ms0 f0 actionDecl 'quickStartTutorial.Data out;
' #txt
Ms0 f0 guid 145A88DB897B781E #txt
Ms0 f0 requestEnabled true #txt
Ms0 f0 triggerEnabled false #txt
Ms0 f0 callSignature start() #txt
Ms0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ms0 f0 @C|.responsibility Everybody #txt
Ms0 f0 49 81 30 30 -21 17 #rect
Ms0 f0 @|StartRequestIcon #fIcon
Ms0 f0 -1|-1|-9671572 #nodeStyle
Ms0 f1 targetWindow NEW:card: #txt
Ms0 f1 targetDisplay TOP #txt
Ms0 f1 richDialogId quickStartTutorial.EnterProduct #txt
Ms0 f1 startMethod start(quickStartTutorial.Data) #txt
Ms0 f1 type quickStartTutorial.Data #txt
Ms0 f1 requestActionDecl '<quickStartTutorial.Data data> param;' #txt
Ms0 f1 requestMappingAction 'param.data=in;
' #txt
Ms0 f1 responseActionDecl 'quickStartTutorial.Data out;
' #txt
Ms0 f1 responseMappingAction 'out=result.data;
' #txt
Ms0 f1 windowConfiguration '* ' #txt
Ms0 f1 isAsynch false #txt
Ms0 f1 isInnerRd false #txt
Ms0 f1 userContext '* ' #txt
Ms0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Enter Product</name>
        <nameStyle>13
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f1 136 74 112 44 -37 -8 #rect
Ms0 f1 @|RichDialogIcon #fIcon
Ms0 f1 -1|-1|-9671572 #nodeStyle
Ms0 f2 expr out #txt
Ms0 f2 79 96 136 96 #arcP
Ms0 f3 type quickStartTutorial.Data #txt
Ms0 f3 497 81 30 30 0 15 #rect
Ms0 f3 @|EndIcon #fIcon
Ms0 f3 -1|-1|-9671572 #nodeStyle
Ms0 f5 type quickStartTutorial.Data #txt
Ms0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Price higher than 100?</name>
        <nameStyle>22
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f5 336 80 32 32 5 17 #rect
Ms0 f5 @|AlternativeIcon #fIcon
Ms0 f5 -1|-1|-9671572 #nodeStyle
Ms0 f6 expr out #txt
Ms0 f6 248 96 336 96 #arcP
Ms0 f4 expr in #txt
Ms0 f4 outCond 'in.price > 100' #txt
Ms0 f4 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f4 368 96 497 96 #arcP
Ms0 f4 0 0.5038759689922481 0 -9 #arcLabel
Ms0 f7 type quickStartTutorial.Data #txt
Ms0 f7 497 177 30 30 0 15 #rect
Ms0 f7 @|EndIcon #fIcon
Ms0 f7 -1|-1|-9671572 #nodeStyle
Ms0 f8 expr in #txt
Ms0 f8 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f8 352 112 497 192 #arcP
Ms0 f8 1 352 192 #addKink
Ms0 f8 1 0.5764842635874396 0 -9 #arcLabel
>Proto Ms0 .type quickStartTutorial.Data #txt
>Proto Ms0 .processKind NORMAL #txt
>Proto Ms0 0 0 32 24 18 0 #rect
>Proto Ms0 @|BIcon #fIcon
Ms0 f0 mainOut f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f1 mainOut f6 tail #connect
Ms0 f6 head f5 in #connect
Ms0 f5 out f4 tail #connect
Ms0 f4 head f3 mainIn #connect
Ms0 f5 out f8 tail #connect
Ms0 f8 head f7 mainIn #connect
