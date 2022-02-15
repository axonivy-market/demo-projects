package ch.ivyteam.demo.jpa.demos.service;

import java.math.BigDecimal;

import org.apache.commons.lang.StringUtils;

import ch.ivyteam.demo.jpa.demos.Logger;
import ch.ivyteam.ivy.environment.Ivy;

public class ConfigurationService {
	static final Logger LOGGER = Logger.getLogger(ConfigurationService.class);
	public static final String COM_AXONIVY_DEMO_JPA_DEMO_CORE_RAISE_SALARY_CRON = "com_axonivy_demo_jpa_demo_core_raise_salary_cron";
	public static final String COM_AXONIVY_DEMO_JPA_DEMO_CORE_RAISE_SALARY_PERCENTAGE = "com_axonivy_demo_jpa_demo_core_raise_salary_percentage";
	public static final String COM_AXONIVY_DEMO_JPA_DEMO_CORE_RAISE_SALARY_PROBABILITY = "com_axonivy_demo_jpa_demo_core_raise_salary_probability";

	private ConfigurationService() {
	}


	/**
	 * Get the "raise salary" cron expression.
	 * 
	 * @return
	 */
	public static String getRaiseSalaryCron() {
		return getIvyVar(COM_AXONIVY_DEMO_JPA_DEMO_CORE_RAISE_SALARY_CRON);
	}

	/**
	 * Get the "raise salary" percentage.
	 * 
	 * @return
	 */
	public static BigDecimal getRaiseSalaryPercentage() {
		return getIvyVarAsBigDecimal(COM_AXONIVY_DEMO_JPA_DEMO_CORE_RAISE_SALARY_PERCENTAGE, BigDecimal.ZERO);
	}

	/**
	 * Get the "raise salary" probability.
	 * 
	 * @return
	 */
	public static BigDecimal getRaiseSalaryProbability() {
		return getIvyVarAsBigDecimal(COM_AXONIVY_DEMO_JPA_DEMO_CORE_RAISE_SALARY_PROBABILITY, BigDecimal.ZERO);
	}

	/**
	 * Get Ivy global variable or null.
	 *
	 * @param name
	 * @return
	 */
	public static String getIvyVar(String name) {
		return getIvyVar(name, null);
	}

	/**
	 * Get Ivy global variable or default value.
	 *
	 * @param name
	 * @param defaultValue
	 * @return
	 */
	public static String getIvyVar(String name, String defaultValue) {
		String value = Ivy.var().get(name);
		if(StringUtils.isBlank(value)) {
			LOGGER.warn("Could not get ivy global configuration {0} using value {1} instead.", name, defaultValue);
			value = defaultValue;
		}
		return value;
	}

	/**
	 * Get Ivy global variable as double or default value.
	 * 
	 * @param name
	 * @param defaultValue
	 * @return
	 */
	public static BigDecimal getIvyVarAsBigDecimal(String name, BigDecimal defaultValue) {
		BigDecimal result = defaultValue;
		String stringValue = getIvyVar(name, null);

		if(stringValue != null) {
			try {
				result = new BigDecimal(stringValue);
			} catch (NumberFormatException e) {
				LOGGER.warn("Could not convert value ''{0}'' of ivy global configuration {1} to a number, using value {2} instead.", stringValue, name, defaultValue);
			}
		}
		return result;
	}
}
