[Ivy]
153E9EE0223D1DF9 9.3.1 #module
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
Ds0 @PushWFArc f12 '' #zField
Ds0 @InfoButton f14 '' #zField
Ds0 @RuleActivity f21 '' #zField
Ds0 @PushWFArc f22 '' #zField
Ds0 @PushWFArc f8 '' #zField
Ds0 @InfoButton f23 '' #zField
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
Ds0 f10 83 307 26 26 -62 15 #rect
Ds0 f11 499 307 26 26 0 12 #rect
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
Ds0 f3 83 179 26 26 -89 15 #rect
Ds0 f4 499 179 26 26 0 12 #rect
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
Ds0 f16 499 435 26 26 0 12 #rect
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
Ds0 f18 248 426 128 44 -61 -8 #rect
Ds0 f19 109 448 248 448 #arcP
Ds0 f17 376 448 499 448 #arcP
Ds0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>.dmn file can be edited with online editor. e.g. :&#13;
https://kiegroup.github.io/kogito-online/#/</name>
    </language>
</elementInfo>
' #txt
Ds0 f20 608 426 256 44 -125 -16 #rect
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
Ds0 f0 83 51 26 26 -38 15 #rect
Ds0 f1 499 51 26 26 0 12 #rect
Ds0 f2 109 64 499 64 #arcP
Ds0 f6 @AbstractThirdPartyProgramInterface|type rule.engine.demo.DiscountCalculator.DiscountCalculatorData #txt
Ds0 f6 @AbstractThirdPartyProgramInterface|timeout 0 #txt
Ds0 f6 @AbstractThirdPartyProgramInterface|beanConfig "{""namespace"":""rule.engine.drl"",""dataObject"":""in.member""}" #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Apply Rules from DRL</name>
        <desc>''in.member'' is the input object that stores the information of a member.&#13;
This object will be modified during the rule execution.</desc>
    </language>
</elementInfo>
' #txt
Ds0 f6 248 298 128 44 -60 -8 #rect
Ds0 f13 376 320 499 320 #arcP
Ds0 f12 109 320 248 320 #arcP
Ds0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Alternatively you can use the API. e.g to apply multiple namespaces&#13;
ivy.rules.create()&#13;
   .namespace("rule.engine.drl")&#13;
   .namespace("rule.engine.other")&#13;
  .executor()&#13;
  .execute(out.member);</name>
    </language>
</elementInfo>
' #txt
Ds0 f14 608 266 384 108 -182 -48 #rect
Ds0 f21 @AbstractThirdPartyProgramInterface|type rule.engine.demo.DiscountCalculator.DiscountCalculatorData #txt
Ds0 f21 @AbstractThirdPartyProgramInterface|timeout 0 #txt
Ds0 f21 @AbstractThirdPartyProgramInterface|beanConfig "{""namespace"":""rule.engine.decisiontable"",""dataObject"":""in.member""}" #txt
Ds0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Apply Rules from &#13;
Decision Table (xls)</name>
    </language>
</elementInfo>
' #txt
Ds0 f21 240 170 144 44 -51 -16 #rect
Ds0 f22 expr out #txt
Ds0 f22 109 192 240 192 #arcP
Ds0 f8 384 192 499 192 #arcP
Ds0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>''in.member'' is the input object that stores the information of a member.&#13;
This object will be modified during the rule execution.</name>
    </language>
</elementInfo>
' #txt
Ds0 f23 608 170 400 44 -192 -16 #rect
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
    <swimlaneSize>128</swimlaneSize>
    <swimlaneSize>128</swimlaneSize>
    <swimlaneSize>128</swimlaneSize>
    <swimlaneSize>128</swimlaneSize>
    <swimlaneColor gradient="false">-3342388</swimlaneColor>
    <swimlaneColor gradient="false">-13108</swimlaneColor>
    <swimlaneColor gradient="false">-2500111</swimlaneColor>
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
Ds0 f3 mainOut f22 tail #connect
Ds0 f22 head f21 @AbstractThirdPartyProgramInterface|mainIn #connect
Ds0 f21 @AbstractThirdPartyProgramInterface|mainOut f8 tail #connect
Ds0 f8 head f4 mainIn #connect
