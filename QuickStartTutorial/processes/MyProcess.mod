[Ivy]
148655DDB7BB6588 3.28 #module
>Proto >Proto Collection #zClass
Ms0 MyProcess Big #zClass
Ms0 B #cInfo
Ms0 #process
Ms0 @TextInP .type .type #zField
Ms0 @TextInP .processKind .processKind #zField
Ms0 @AnnotationInP-0n ai ai #zField
Ms0 @MessageFlowInP-0n messageIn messageIn #zField
Ms0 @MessageFlowOutP-0n messageOut messageOut #zField
Ms0 @TextInP .xml .xml #zField
Ms0 @TextInP .responsibility .responsibility #zField
Ms0 @StartRequest f0 '' #zField
Ms0 @EndTask f1 '' #zField
Ms0 @UserDialog f3 '' #zField
Ms0 @PushWFArc f4 '' #zField
Ms0 @Alternative f5 '' #zField
Ms0 @PushWFArc f6 '' #zField
Ms0 @PushWFArc f2 '' #zField
Ms0 @EndTask f7 '' #zField
Ms0 @PushWFArc f8 '' #zField
>Proto Ms0 Ms0 MyProcess #zField
Ms0 f0 outLink start.ivp #txt
Ms0 f0 inParamDecl '<> param;' #txt
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
Ms0 f0 81 49 30 30 -21 17 #rect
Ms0 f0 @|StartRequestIcon #fIcon
Ms0 f1 497 49 30 30 0 15 #rect
Ms0 f1 @|EndIcon #fIcon
Ms0 f3 dialogId quickStartTutorial.EnterProduct #txt
Ms0 f3 startMethod start(quickStartTutorial.Data) #txt
Ms0 f3 requestActionDecl '<quickStartTutorial.Data data> param;' #txt
Ms0 f3 requestMappingAction 'param.data=in;
' #txt
Ms0 f3 responseActionDecl 'quickStartTutorial.Data out;
' #txt
Ms0 f3 responseMappingAction 'out=result.data;
' #txt
Ms0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Enter Product</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f3 168 42 112 44 -37 -8 #rect
Ms0 f3 @|UserDialogIcon #fIcon
Ms0 f4 expr out #txt
Ms0 f4 111 64 168 64 #arcP
Ms0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Price higher than 100?</name>
        <nameStyle>22,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f5 336 48 32 32 -62 -34 #rect
Ms0 f5 @|AlternativeIcon #fIcon
Ms0 f6 expr out #txt
Ms0 f6 280 64 336 64 #arcP
Ms0 f2 expr in #txt
Ms0 f2 outCond 'in.price > 100' #txt
Ms0 f2 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>yes</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f2 368 64 497 64 #arcP
Ms0 f2 0 0.1937984496124031 0 -8 #arcLabel
Ms0 f7 497 145 30 30 0 15 #rect
Ms0 f7 @|EndIcon #fIcon
Ms0 f8 expr in #txt
Ms0 f8 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>no</name>
        <nameStyle>2,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ms0 f8 352 80 497 160 #arcP
Ms0 f8 1 352 160 #addKink
Ms0 f8 1 0.2689655172413793 0 -8 #arcLabel
>Proto Ms0 .type quickStartTutorial.Data #txt
>Proto Ms0 .processKind NORMAL #txt
>Proto Ms0 0 0 32 24 18 0 #rect
>Proto Ms0 @|BIcon #fIcon
Ms0 f0 mainOut f4 tail #connect
Ms0 f4 head f3 mainIn #connect
Ms0 f3 mainOut f6 tail #connect
Ms0 f6 head f5 in #connect
Ms0 f5 out f2 tail #connect
Ms0 f2 head f1 mainIn #connect
Ms0 f5 out f8 tail #connect
Ms0 f8 head f7 mainIn #connect
