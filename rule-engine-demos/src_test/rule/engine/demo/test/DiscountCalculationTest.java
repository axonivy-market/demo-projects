package rule.engine.demo.test;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import rule.engine.demo.Member;
import rule.engine.demo.enums.MemberType;
import ch.ivyteam.ivy.rule.engine.api.IRuleBase;
import ch.ivyteam.ivy.rule.engine.api.Rules;
import ch.ivyteam.ivy.rule.engine.api.runtime.IStatelessRuleSession;
import ch.ivyteam.ivy.rule.engine.testing.AbstractRuleEngineTest;

/**
 * In order to use Rules Engine in unit test, you have to make your test class
 * extend {@link AbstractRuleEngineTest}. The abstract class will help you
 * setting-up the Rules Engine for testing environment.
 */
public class DiscountCalculationTest extends AbstractRuleEngineTest {

	/**
	 * You can use Rules Engine API the same way as other places in your
	 * production code. <br/>
	 * Note: Only rules from the current project are loaded when you use Rules
	 * Engine in unit test. So, you have to put your unit tests in the same
	 * project with your rules.
	 */
	@Test
	public void goldMembersGet10PercentDiscountIfPurchaseFrom2000Dollars() {
		IRuleBase ruleBase = Rules.engine().createRuleBase();
		ruleBase.loadRulesFromNamespace("rule.engine.drl");
		IStatelessRuleSession ruleSession = ruleBase.createSession();

		Member member = new Member();
		member.setMemberType(MemberType.Gold);
		member.setPurchaseAmount(2000);
		ruleSession.execute(member);
		assertEquals(10, member.getDiscount());
	}

}
