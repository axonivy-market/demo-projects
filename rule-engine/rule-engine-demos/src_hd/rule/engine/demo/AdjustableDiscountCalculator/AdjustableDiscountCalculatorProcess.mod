[Ivy]
175F99FC96A78D96 9.4.8 #module
>Proto >Proto Collection #zClass
Ds0 AdjustableDiscountCalculatorProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @TextInP .colors .colors #zField
Ds0 @TextInP color color #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @MessageFlowInP-0n messageIn messageIn #zField
Ds0 @MessageFlowOutP-0n messageOut messageOut #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @UdProcessEnd f11 '' #zField
Ds0 @UdInit f0 '' #zField
Ds0 @UdProcessEnd f1 '' #zField
Ds0 @RuleActivity f6 '' #zField
Ds0 @UdEvent f5 '' #zField
Ds0 @UdProcessEnd f7 '' #zField
Ds0 @UdEvent f3 '' #zField
Ds0 @PushWFArc f14 '' #zField
Ds0 @GridStep f4 '' #zField
Ds0 @PushWFArc f8 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @GridStep f10 '' #zField
Ds0 @PushWFArc f12 '' #zField
Ds0 @PushWFArc f9 '' #zField
Ds0 @GridStep f15 '' #zField
Ds0 @PushWFArc f16 '' #zField
Ds0 @PushWFArc f13 '' #zField
Ds0 @UdEvent f17 '' #zField
Ds0 @UdProcessEnd f18 '' #zField
Ds0 @GridStep f20 '' #zField
Ds0 @PushWFArc f21 '' #zField
Ds0 @PushWFArc f19 '' #zField
>Proto Ds0 Ds0 AdjustableDiscountCalculatorProcess #zField
Ds0 f11 563 371 26 26 0 12 #rect
Ds0 f0 guid 153E9EE0238C8F41 #txt
Ds0 f0 method start() #txt
Ds0 f0 inParameterDecl '<> param;' #txt
Ds0 f0 outParameterDecl '<rule.engine.demo.Member member> result;' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -38 15 #rect
Ds0 f1 499 51 26 26 0 12 #rect
Ds0 f6 @AbstractThirdPartyProgramInterface|type rule.engine.demo.AdjustableDiscountCalculator.AdjustableDiscountCalculatorData #txt
Ds0 f6 @AbstractThirdPartyProgramInterface|timeout 0 #txt
Ds0 f6 @AbstractThirdPartyProgramInterface|beanConfig "{""namespace"":""rule.engine.adjustable-drl"",""dataObject"":""in.ruleData""}" #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Apply Rules from DRL</name>
        <desc>''in.member'' is the input object that stores the information of a member.&#13;
This object will be modified during the rule execution.</desc>
    </language>
</elementInfo>
' #txt
Ds0 f6 216 362 128 44 -60 -8 #rect
Ds0 f5 guid 175F9C1813FE7E35 #txt
Ds0 f5 actionTable 'out=in;
' #txt
Ds0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>saveRules</name>
    </language>
</elementInfo>
' #txt
Ds0 f5 83 243 26 26 -29 15 #rect
Ds0 f7 499 243 26 26 0 12 #rect
Ds0 f3 guid 175FA45130F2A6CE #txt
Ds0 f3 actionTable 'out=in;
out.ruleData.member.discount=null;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>applyRules</name>
    </language>
</elementInfo>
' #txt
Ds0 f3 83 371 26 26 -31 15 #rect
Ds0 f14 109 384 216 384 #arcP
Ds0 f4 actionTable 'out=in;
' #txt
Ds0 f4 actionCode 'import rule.engine.demo.RuleRepo;
// initial .csv resource
out.filename = "rulerepo.csv";
out.files.add(out.filename);

out.ruleData.rules = RuleRepo.loadRules(out.filename);





' #txt
Ds0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load rules from DB&#13;
(csv resource in this demo)</name>
    </language>
</elementInfo>
' #txt
Ds0 f4 192 42 176 44 -69 -16 #rect
Ds0 f8 109 64 192 64 #arcP
Ds0 f2 368 64 499 64 #arcP
Ds0 f10 actionTable 'out=in;
' #txt
Ds0 f10 actionCode 'import rule.engine.demo.RuleRepo;

out.filename = RuleRepo.saveRules(in.ruleData.rules);
out.files.add(out.filename);

// make a call to force the rule engine to initialize rulebase
out.ruleData.member.purchaseAmount = 0;
ivy.rules.create()
   .namespace("rule.engine.adjustable-drl")
  .executor()
  .execute(in.ruleData);' #txt
Ds0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Store rules into DB&#13;
(csv in this demo)</name>
    </language>
</elementInfo>
' #txt
Ds0 f10 216 234 128 44 -45 -16 #rect
Ds0 f12 109 256 216 256 #arcP
Ds0 f9 344 256 499 256 #arcP
Ds0 f15 actionTable 'out=in;
' #txt
Ds0 f15 actionCode 'import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
if(!in.ruleData.member.#discount is initialized)
{
	FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Discount NOT defined", ""));
}
' #txt
Ds0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Validate result</name>
    </language>
</elementInfo>
' #txt
Ds0 f15 392 362 112 44 -39 -8 #rect
Ds0 f16 344 384 392 384 #arcP
Ds0 f13 504 384 563 384 #arcP
Ds0 f17 guid 1762968775DA744B #txt
Ds0 f17 actionTable 'out=in;
' #txt
Ds0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>loadRules</name>
    </language>
</elementInfo>
' #txt
Ds0 f17 83 179 26 26 -28 15 #rect
Ds0 f18 499 179 26 26 0 12 #rect
Ds0 f20 actionTable 'out=in;
' #txt
Ds0 f20 actionCode 'import rule.engine.demo.RuleRepo;

out.ruleData.rules = RuleRepo.loadRules(out.filename);



' #txt
Ds0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load rules from DB&#13;
(csv resource in this demo)</name>
    </language>
</elementInfo>
' #txt
Ds0 f20 200 170 176 44 -69 -16 #rect
Ds0 f21 109 192 200 192 #arcP
Ds0 f19 376 192 499 192 #arcP
>Proto Ds0 .type rule.engine.demo.AdjustableDiscountCalculator.AdjustableDiscountCalculatorData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
        <swimlaneLabel></swimlaneLabel>
    </language>
    <swimlaneOrientation>false</swimlaneOrientation>
    <swimlaneSize>128</swimlaneSize>
    <swimlaneSize>192</swimlaneSize>
    <swimlaneSize>128</swimlaneSize>
    <swimlaneColor gradient="false">-3342388</swimlaneColor>
    <swimlaneColor gradient="false">-13108</swimlaneColor>
    <swimlaneColor gradient="false">-3342337</swimlaneColor>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneType>LANE</swimlaneType>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
    <swimlaneSpaceBefore>0</swimlaneSpaceBefore>
</elementInfo>
' #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
Ds0 f3 mainOut f14 tail #connect
Ds0 f14 head f6 @AbstractThirdPartyProgramInterface|mainIn #connect
Ds0 f0 mainOut f8 tail #connect
Ds0 f8 head f4 mainIn #connect
Ds0 f4 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f5 mainOut f12 tail #connect
Ds0 f12 head f10 mainIn #connect
Ds0 f10 mainOut f9 tail #connect
Ds0 f9 head f7 mainIn #connect
Ds0 f6 @AbstractThirdPartyProgramInterface|mainOut f16 tail #connect
Ds0 f16 head f15 mainIn #connect
Ds0 f15 mainOut f13 tail #connect
Ds0 f13 head f11 mainIn #connect
Ds0 f17 mainOut f21 tail #connect
Ds0 f21 head f20 mainIn #connect
Ds0 f20 mainOut f19 tail #connect
Ds0 f19 head f18 mainIn #connect
