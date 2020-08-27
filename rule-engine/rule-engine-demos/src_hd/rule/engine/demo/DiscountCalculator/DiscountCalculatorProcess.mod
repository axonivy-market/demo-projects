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
Ds0 @UdInit f0 '' #zField
Ds0 @UdProcessEnd f1 '' #zField
Ds0 @GridStep f6 '' #zField
Ds0 @PushWFArc f7 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @UdMethod f10 '' #zField
Ds0 @UdProcessEnd f11 '' #zField
Ds0 @GridStep f13 '' #zField
Ds0 @PushWFArc f14 '' #zField
Ds0 @PushWFArc f12 '' #zField
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
>Proto Ds0 Ds0 DiscountCalculatorProcess #zField
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
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 actionCode '/* 
 * Create rule bases to store the rule resources.
 * "ruleBaseForDRL" will store the drl files.
 * "ruleBaseForDecisionTable" will store the decision tables.
 *
 * Current official supported rule resource types are decision table (*.xls)
 * and native rule language (*.drl) from Drools.
 */
in.ruleBaseForDRL = ivy.rules.engine.createRuleBase();
in.ruleBaseForDecisionTable = ivy.rules.engine.createRuleBase();

/* 
 * Add all rules in the namespace into the rule base. 
 * The namespace is the folder hierarchy that contains rule resources 
 * and inside the root rules folder of the Ivy project. 
 */
in.ruleBaseForDRL.loadRulesFromNamespace("rule.engine.drl");
in.ruleBaseForDecisionTable.loadRulesFromNamespace("rule.engine.decisiontable");' #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Init Rule Bases</name>
        <nameStyle>15,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f6 254 34 112 44 -42 -8 #rect
Ds0 f6 @|StepIcon #fIcon
Ds0 f7 expr out #txt
Ds0 f7 109 56 254 56 #arcP
Ds0 f2 expr out #txt
Ds0 f2 366 56 499 56 #arcP
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
Ds0 f13 actionTable 'out=in;
' #txt
Ds0 f13 actionCode '/*
 * We need to create a rule session to execute the rules.
 * 
 * ''out.member'' is the input object that stores the information of a member.
 * This object will be modified during the rule execution.
 */
in.ruleBaseForDRL.createSession().execute(out.member);' #txt
Ds0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Apply Rules From DRL</name>
        <nameStyle>20,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f13 240 146 144 44 -62 -8 #rect
Ds0 f13 @|StepIcon #fIcon
Ds0 f14 expr out #txt
Ds0 f14 109 168 240 168 #arcP
Ds0 f12 expr out #txt
Ds0 f12 384 168 499 168 #arcP
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
Ds0 f3 83 267 26 26 -89 15 #rect
Ds0 f3 @|UdMethodIcon #fIcon
Ds0 f4 499 267 26 26 0 12 #rect
Ds0 f4 @|UdProcessEndIcon #fIcon
Ds0 f5 actionTable 'out=in;
' #txt
Ds0 f5 actionCode '/*
 * We need to create a rule session to execute the rules.
 * 
 * ''out.member'' is the input object that stores the information of a member.
 * This object will be modified during the rule execution.
 */
in.ruleBaseForDecisionTable.createSession().execute(out.member);' #txt
Ds0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Apply Rules From Decision Table</name>
        <nameStyle>31,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ds0 f5 216 258 192 44 -91 -8 #rect
Ds0 f5 @|StepIcon #fIcon
Ds0 f8 expr out #txt
Ds0 f8 109 280 216 280 #arcP
Ds0 f9 expr out #txt
Ds0 f9 408 280 499 280 #arcP
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
Ds0 f15 83 403 26 26 -63 15 #rect
Ds0 f15 @|UdMethodIcon #fIcon
Ds0 f16 499 403 26 26 0 12 #rect
Ds0 f16 @|UdProcessEndIcon #fIcon
Ds0 f18 actionTable 'out=in;
' #txt
Ds0 f18 actionCode 'import ch.ivyteam.ivy.rule.engine.api.runtime.IStatelessRuleSession;
import ch.ivyteam.ivy.rule.engine.api.IRuleBase;
import java.util.HashMap;
import java.util.Map;

		IRuleBase ruleBase = Rules.engine().createRuleBase();
		ruleBase.loadRulesFromNamespace("rule.engine.dmn");
		IStatelessRuleSession session = ruleBase.createSession();

		//HashMap with input data
		HashMap input = new HashMap();
		in.member.type= in.member.#memberType == null ? "" : in.member.memberType.name();  //get string value of Enumeration for DMN
		input.put("member", in.member);
		ivy.log.info("member {0}",in.member);
		
		Map result = session.executeDMN(input);
		
		//Map returned values
		out.member.discount = result.get("member.discount").toNumber();
		ivy.log.info("result {0}",result);	' #txt
Ds0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Apply Rules from DMN</name>
    </language>
</elementInfo>
' #txt
Ds0 f18 256 394 128 44 -61 -8 #rect
Ds0 f18 @|StepIcon #fIcon
Ds0 f19 109 416 256 416 #arcP
Ds0 f17 384 416 499 416 #arcP
Ds0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>.dmn file can be edited with online editor. e.g. :&#13;
https://kiegroup.github.io/kogito-online/#/</name>
    </language>
</elementInfo>
' #txt
Ds0 f20 592 394 256 44 -125 -16 #rect
Ds0 f20 @|IBIcon #fIcon
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
    <swimlaneSize>112</swimlaneSize>
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
Ds0 f0 mainOut f7 tail #connect
Ds0 f7 head f6 mainIn #connect
Ds0 f6 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f10 mainOut f14 tail #connect
Ds0 f14 head f13 mainIn #connect
Ds0 f13 mainOut f12 tail #connect
Ds0 f12 head f11 mainIn #connect
Ds0 f3 mainOut f8 tail #connect
Ds0 f8 head f5 mainIn #connect
Ds0 f5 mainOut f9 tail #connect
Ds0 f9 head f4 mainIn #connect
Ds0 f15 mainOut f19 tail #connect
Ds0 f19 head f18 mainIn #connect
Ds0 f18 mainOut f17 tail #connect
Ds0 f17 head f16 mainIn #connect
