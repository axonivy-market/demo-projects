[Ivy]
153EAAA7649F85DA 7.5.0 #module
>Proto >Proto Collection #zClass
Dr0 DiscountCalculator Big #zClass
Dr0 B #cInfo
Dr0 #process
Dr0 @TextInP .type .type #zField
Dr0 @TextInP .processKind .processKind #zField
Dr0 @AnnotationInP-0n ai ai #zField
Dr0 @MessageFlowInP-0n messageIn messageIn #zField
Dr0 @MessageFlowOutP-0n messageOut messageOut #zField
Dr0 @TextInP .xml .xml #zField
Dr0 @TextInP .responsibility .responsibility #zField
Dr0 @StartRequest f0 '' #zField
Dr0 @EndTask f1 '' #zField
Dr0 @UserDialog f3 '' #zField
Dr0 @PushWFArc f4 '' #zField
Dr0 @PushWFArc f2 '' #zField
>Proto Dr0 Dr0 DiscountCalculator #zField
Dr0 f0 outLink start.ivp #txt
Dr0 f0 inParamDecl '<> param;' #txt
Dr0 f0 requestEnabled true #txt
Dr0 f0 triggerEnabled false #txt
Dr0 f0 callSignature start() #txt
Dr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Dr0 f0 @C|.responsibility Everybody #txt
Dr0 f0 81 49 30 30 -21 17 #rect
Dr0 f0 @|StartRequestIcon #fIcon
Dr0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>end</name>
        <nameStyle>3,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dr0 f1 337 49 30 30 -10 17 #rect
Dr0 f1 @|EndIcon #fIcon
Dr0 f3 dialogId rule.engine.demo.DiscountCalculator #txt
Dr0 f3 startMethod start(rule.engine.demo.Member) #txt
Dr0 f3 requestActionDecl '<rule.engine.demo.Member member> param;' #txt
Dr0 f3 responseActionDecl 'rule.engine.demo.Data out;
' #txt
Dr0 f3 responseMappingAction 'out=in;
' #txt
Dr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Discount Calculator</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Dr0 f3 168 42 112 44 -53 -8 #rect
Dr0 f3 @|UserDialogIcon #fIcon
Dr0 f4 expr out #txt
Dr0 f4 111 64 168 64 #arcP
Dr0 f2 expr out #txt
Dr0 f2 280 64 337 64 #arcP
>Proto Dr0 .type rule.engine.demo.Data #txt
>Proto Dr0 .processKind NORMAL #txt
>Proto Dr0 0 0 32 24 18 0 #rect
>Proto Dr0 @|BIcon #fIcon
Dr0 f0 mainOut f4 tail #connect
Dr0 f4 head f3 mainIn #connect
Dr0 f3 mainOut f2 tail #connect
Dr0 f2 head f1 mainIn #connect
