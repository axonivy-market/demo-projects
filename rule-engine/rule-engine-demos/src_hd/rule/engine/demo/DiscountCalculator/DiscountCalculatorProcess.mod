[Ivy]
153E9EE0223D1DF9 9.2.0 #module
>Proto >Proto Collection #zClass
Ds0 DiscountCalculatorProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @UdMethod f10 '' #zField
Ds0 @UdProcessEnd f11 '' #zField
Ds0 @UdMethod f3 '' #zField
Ds0 @UdProcessEnd f4 '' #zField
Ds0 @GridStep f5 '' #zField
Ds0 @PushWFArc f8 '' #zField
Ds0 @PushWFArc f9 '' #zField
Ds0 @UdMethod f15 '' #zField
Ds0 @UdProcessEnd f16 '' #zField
Ds0 @GridStep f18 '' #zField
Ds0 @PushWFArc f19 '' #zField
Ds0 @PushWFArc f17 '' #zField
Ds0 @InfoButton f20 '' #zField
Ds0 @UdInit f0 '' #zField
Ds0 @UdProcessEnd f1 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @RuleActivity f6 '' #zField
Ds0 @PushWFArc f13 '' #zField
Ds0 @GridStep f14 '' #zField
Ds0 @PushWFArc f12 '' #zField
>Proto Ds0 Ds0 DiscountCalculatorProcess #zField
Ds0 f10 guid 153EA7B7991C970A #txt
Ds0 f10 method applyRulesFromDRL() #txt
Ds0 f10 inParameterDecl '<> param;' #txt
Ds0 f10 outParameterDecl '<> result;' #txt
Ds0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>applyRulesFromDRL()</name>
        <nameStyle>19,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f10 83 155 26 26 -62 15 #rect
Ds0 f10 @|UdMethodIcon #fIcon
Ds0 f11 499 155 26 26 0 12 #rect
Ds0 f11 @|UdProcessEndIcon #fIcon
Ds0 f3 guid 153EA7D0A9692E67 #txt
Ds0 f3 method applyRulesFromDecisionTable() #txt
Ds0 f3 inParameterDecl '<> param;' #txt
Ds0 f3 outParameterDecl '<> result;' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>applyRulesFromDecisionTable()</name>
        <nameStyle>29,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f3 83 299 26 26 -89 15 #rect
Ds0 f3 @|UdMethodIcon #fIcon
Ds0 f4 499 299 26 26 0 12 #rect
Ds0 f4 @|UdProcessEndIcon #fIcon
Ds0 f5 actionTable 'out=in;
' #txt
Ds0 f5 actionCode '/*
 * ''out.member'' is the input object that stores the information of a member.
 * This object will be modified during the rule execution.
 */
ivy.rules.create()
	.namespace("rule.engine.decisiontable")
	.executor()
	.execute(out.member);
' #txt
Ds0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Apply Rules From Decision Table</name>
        <nameStyle>31,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f5 216 290 192 44 -91 -8 #rect
Ds0 f5 @|StepIcon #fIcon
Ds0 f8 expr out #txt
Ds0 f8 109 312 216 312 #arcP
Ds0 f9 expr out #txt
Ds0 f9 408 312 499 312 #arcP
Ds0 f15 guid 1740BA3DD7672D96 #txt
Ds0 f15 method applyRulesFromDMN() #txt
Ds0 f15 inParameterDecl '<> param;' #txt
Ds0 f15 outParameterDecl '<> result;' #txt
Ds0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>applyRulesFromDMN()</name>
    </language>
</elementInfo>
' #txt
Ds0 f15 83 435 26 26 -63 15 #rect
Ds0 f15 @|UdMethodIcon #fIcon
Ds0 f16 499 435 26 26 0 12 #rect
Ds0 f16 @|UdProcessEndIcon #fIcon
Ds0 f18 actionTable 'out=in;
' #txt
Ds0 f18 actionCode 'import java.util.HashMap;
import java.util.Map;

HashMap input = new HashMap();
in.member.type= in.member.#memberType == null ? "" : in.member.memberType.name();  //get string value of Enumeration for DMN
input.put("member", in.member);

Map result = ivy.rules.create()
	.namespace("rule.engine.dmn")
	.executor()
	.executeDMN(input);

out.member.discount = result.get("member.discount").toNumber();
' #txt
Ds0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Apply Rules from DMN</name>
    </language>
</elementInfo>
' #txt
Ds0 f18 256 426 128 44 -61 -8 #rect
Ds0 f18 @|StepIcon #fIcon
Ds0 f19 109 448 256 448 #arcP
Ds0 f17 384 448 499 448 #arcP
Ds0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>.dmn file can be edited with online editor. e.g. :&#13;
https://kiegroup.github.io/kogito-online/#/</name>
    </language>
</elementInfo>
' #txt
Ds0 f20 592 426 256 44 -125 -16 #rect
Ds0 f20 @|IBIcon #fIcon
Ds0 f0 guid 153E9EE0238C8F41 #txt
Ds0 f0 method start(rule.engine.demo.Member) #txt
Ds0 f0 inParameterDecl '<rule.engine.demo.Member member> param;' #txt
Ds0 f0 inParameterMapAction 'out.member=param.member;
' #txt
Ds0 f0 outParameterDecl '<rule.engine.demo.Member member> result;' #txt
Ds0 f0 outParameterMapAction 'result.member=in.member;
' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Member)</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 43 26 26 -38 15 #rect
Ds0 f0 @|UdInitIcon #fIcon
Ds0 f1 499 43 26 26 0 12 #rect
Ds0 f1 @|UdProcessEndIcon #fIcon
Ds0 f2 109 56 499 56 #arcP
Ds0 f6 @AbstractThirdPartyProgramInterface|type rule.engine.demo.DiscountCalculator.DiscountCalculatorData #txt
Ds0 f6 @AbstractThirdPartyProgramInterface|timeout 0 #txt
Ds0 f6 @AbstractThirdPartyProgramInterface|beanConfig "{""namespace"":""rule.engine.drl"",""dataObject"":""in.member""}" #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Apply Rules From DRL</name>
    </language>
</elementInfo>
' #txt
Ds0 f6 248 146 128 44 -61 -8 #rect
Ds0 f6 @|RuleActivity #fIcon
Ds0 f13 376 168 499 168 #arcP
Ds0 f14 actionTable 'out=in;
' #txt
Ds0 f14 actionCode '/*
 * ''in.member'' is the input object that stores the information of a member.
 * This object will be modified during the rule execution.
 * Note: The parameter values in this example (the namespaces and
 * the input object) will not be validated during design time. The
 * example below will lead to an error during runtime as namespace
 * ''rule.engine.otherdrl'' does not exist.
 */
ivy.rules.create()
    .namespace("rule.engine.drl")
    .namespace("rule.engine.otherdrl")
    .executor()
    .execute(in.member);' #txt
Ds0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Apply Rules From DRL&#13;
Multiple Namespaces</name>
    </language>
</elementInfo>
' #txt
Ds0 f14 240 202 144 44 -54 -16 #rect
Ds0 f14 @|StepIcon #fIcon
Ds0 f12 109 168 248 168 #arcP
>Proto Ds0 .type rule.engine.demo.DiscountCalculator.DiscountCalculatorData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>112</swimlaneSize>
    <swimlaneSize>144</swimlaneSize>
    <swimlaneSize>120</swimlaneSize>
    <swimlaneSize>136</swimlaneSize>
    <swimlaneColor gradient="false">-3342388</swimlaneColor>
    <swimlaneColor gradient="false">-13108</swimlaneColor>
    <swimlaneColor gradient="false">-3355393</swimlaneColor>
    <swimlaneColor gradient="false">-3342337</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
>Proto Ds0 '' #fIcon
Ds0 f3 mainOut f8 tail #connect
Ds0 f8 head f5 mainIn #connect
Ds0 f5 mainOut f9 tail #connect
Ds0 f9 head f4 mainIn #connect
Ds0 f15 mainOut f19 tail #connect
Ds0 f19 head f18 mainIn #connect
Ds0 f18 mainOut f17 tail #connect
Ds0 f17 head f16 mainIn #connect
Ds0 f0 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f6 @AbstractThirdPartyProgramInterface|mainOut f13 tail #connect
Ds0 f13 head f11 mainIn #connect
Ds0 f10 mainOut f12 tail #connect
Ds0 f12 head f6 @AbstractThirdPartyProgramInterface|mainIn #connect
