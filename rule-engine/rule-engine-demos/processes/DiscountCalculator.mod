[Ivy]
153EAAA7649F85DA 9.4.1 #module
>Proto >Proto Collection #zClass
Dr0 DiscountCalculator Big #zClass
Dr0 B #cInfo
Dr0 #process
Dr0 @TextInP .colors .colors #zField
Dr0 @TextInP color color #zField
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
Dr0 @EndTask f5 '' #zField
Dr0 @StartRequest f6 '' #zField
Dr0 @UserDialog f7 '' #zField
Dr0 @PushWFArc f8 '' #zField
Dr0 @PushWFArc f9 '' #zField
Dr0 @InfoButton f10 '' #zField
>Proto Dr0 Dr0 DiscountCalculator #zField
Dr0 f0 outLink start1.ivp #txt
Dr0 f0 inParamDecl '<> param;' #txt
Dr0 f0 requestEnabled true #txt
Dr0 f0 triggerEnabled false #txt
Dr0 f0 callSignature start1() #txt
Dr0 f0 startName '1. Discount Calculator' #txt
Dr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start1.ivp</name>
    </language>
</elementInfo>
' #txt
Dr0 f0 @C|.responsibility Everybody #txt
Dr0 f0 65 137 30 30 -21 17 #rect
Dr0 f1 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>end</name>
    </language>
</elementInfo>
' #txt
Dr0 f1 321 137 30 30 -10 17 #rect
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
    </language>
</elementInfo>
' #txt
Dr0 f3 152 130 112 44 -53 -8 #rect
Dr0 f4 expr out #txt
Dr0 f4 95 152 152 152 #arcP
Dr0 f2 expr out #txt
Dr0 f2 264 152 321 152 #arcP
Dr0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>end</name>
    </language>
</elementInfo>
' #txt
Dr0 f5 321 265 30 30 -10 17 #rect
Dr0 f6 outLink start2.ivp #txt
Dr0 f6 inParamDecl '<> param;' #txt
Dr0 f6 requestEnabled true #txt
Dr0 f6 triggerEnabled false #txt
Dr0 f6 callSignature start2() #txt
Dr0 f6 startName '2. Adjustable Discount Calculator' #txt
Dr0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start2.ivp</name>
    </language>
</elementInfo>
' #txt
Dr0 f6 @C|.responsibility Everybody #txt
Dr0 f6 65 265 30 30 -24 17 #rect
Dr0 f7 dialogId rule.engine.demo.AdjustableDiscountCalculator #txt
Dr0 f7 startMethod start() #txt
Dr0 f7 requestActionDecl '<> param;' #txt
Dr0 f7 responseActionDecl 'rule.engine.demo.Data out;
' #txt
Dr0 f7 responseMappingAction 'out=in;
' #txt
Dr0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Adjustable &#13;
Discount Calculator</name>
    </language>
</elementInfo>
' #txt
Dr0 f7 144 258 128 44 -46 -16 #rect
Dr0 f8 expr out #txt
Dr0 f8 272 280 321 280 #arcP
Dr0 f9 expr out #txt
Dr0 f9 95 280 144 280 #arcP
Dr0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>This demo explains how to use the Rule Engine to execute the rules from DRL files, decision tables (XLS) and DMN models.</name>
    </language>
</elementInfo>
' #txt
Dr0 f10 48 41 688 30 -339 -8 #rect
>Proto Dr0 .type rule.engine.demo.Data #txt
>Proto Dr0 .processKind NORMAL #txt
>Proto Dr0 0 0 32 24 18 0 #rect
>Proto Dr0 @|BIcon #fIcon
Dr0 f0 mainOut f4 tail #connect
Dr0 f4 head f3 mainIn #connect
Dr0 f3 mainOut f2 tail #connect
Dr0 f2 head f1 mainIn #connect
Dr0 f6 mainOut f9 tail #connect
Dr0 f9 head f7 mainIn #connect
Dr0 f7 mainOut f8 tail #connect
Dr0 f8 head f5 mainIn #connect
