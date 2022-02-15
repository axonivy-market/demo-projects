package ch.ivyteam.demo.jpa.demos.service;

import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Objects;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.faces.application.FacesMessage;
import javax.faces.application.FacesMessage.Severity;
import javax.faces.component.UIComponent;
import javax.faces.component.html.HtmlOutputLabel;
import javax.faces.context.FacesContext;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;

import org.apache.commons.lang3.StringUtils;
import org.primefaces.PrimeFaces;
import org.primefaces.component.inputnumber.InputNumber;

import ch.ivyteam.demo.jpa.demos.Logger;
import ch.ivyteam.demo.jpa.demos.validation.groups.BaseGroup;
import ch.ivyteam.demo.jpa.demos.validation.groups.DefaultGroup;
import ch.ivyteam.demo.jpa.demos.validation.groups.Fatal;
import ch.ivyteam.demo.jpa.demos.validation.groups.Info;
import ch.ivyteam.demo.jpa.demos.validation.groups.Warning;


/**
 * Functions to work with validation.
 *
 */
public class ValidationService {
	private static final Logger LOG = Logger.getLogger(ValidationService.class);
	private static final String FATAL_CSS_CLASS = "ivy-ui-state-fatal";
	private static final String ERROR_CSS_CLASS = "ivy-ui-state-error";
	private static final String WARN_CSS_CLASS = "ivy-ui-state-warn";
	private static final String INFO_CSS_CLASS = "ivy-ui-state-info";
	private static boolean skipGettingIdsAndAddingCssClass = false;
	private static final Pattern labelPattern = Pattern.compile("(.*?)([\\s*]*)");

	private static final LinkedHashMap<Severity, SeverityProperties> severityMap;

	static {
		severityMap = new LinkedHashMap<>();
		// insert in decreasing severity order
		severityMap.put(FacesMessage.SEVERITY_FATAL, new SeverityProperties(Fatal.class, FATAL_CSS_CLASS, FATAL_CSS_CLASS));
		severityMap.put(FacesMessage.SEVERITY_ERROR, new SeverityProperties(ch.ivyteam.demo.jpa.demos.validation.groups.Error.class, ERROR_CSS_CLASS, ERROR_CSS_CLASS));
		severityMap.put(FacesMessage.SEVERITY_WARN, new SeverityProperties(Warning.class, WARN_CSS_CLASS, WARN_CSS_CLASS));
		severityMap.put(FacesMessage.SEVERITY_INFO, new SeverityProperties(Info.class, INFO_CSS_CLASS, INFO_CSS_CLASS));
	}

	private static class SeverityProperties {
		private final Class<? extends BaseGroup> baseGroup;
		private final String fieldCssClass;
		private final String labelCssClass;
		public SeverityProperties(Class<? extends BaseGroup> baseGroup, String fieldCssClass, String labelCssClass) {
			this.baseGroup = baseGroup;
			this.fieldCssClass = fieldCssClass;
			this.labelCssClass = labelCssClass;
		}
		/**
		 * @return the baseGroup
		 */
		public Class<? extends BaseGroup> getBaseGroup() {
			return baseGroup;
		}
		/**
		 * @return the fieldCssClass
		 */
		public String getFieldCssClass() {
			return fieldCssClass;
		}
		/**
		 * @return the labelCssClass
		 */
		public String getLabelCssClass() {
			return labelCssClass;
		}

	}

	private ValidationService() {
		super();
	}

	/**
	 * Skip setting of validation css class?
	 *
	 * This function should only be used for testing.
	 *
	 * @return
	 */
	public static boolean isSkipGettingIdsAndAddingCssClass() {
		return skipGettingIdsAndAddingCssClass;
	}

	/**
	 * Skip setting of validation css class?
	 *
	 * This function should only be used for testing.
	 *
	 * @param value
	 */
	public static void setSkipGettingIdsAndAddingCssClass(boolean value) {
		skipGettingIdsAndAddingCssClass = value;
	}

	/**
	 * Removes failed validations markings, must be called manually
	 */
	public static void resetValidation() {
		String validationClasses = severityMap.entrySet().stream()
				.map(e -> "'" + e.getValue().getFieldCssClass() + "','" + e.getValue().getLabelCssClass() + "'")
				.collect(Collectors.joining(","));

		String script = "var all = document.body.getElementsByTagName(\"*\");"
				+ "for (var i=0, max=all.length; i < max; i++) {"
				+ "all[i].classList.remove(" + validationClasses + ")"
				+ "}";

		PrimeFaces.current().executeScript(script);
	}

	/**
	 * Validate a bean producing {@link ConstraintViolation}s.
	 *
	 * Actual validation will be performed by {@link Validator#validate(Object, Class...)}.
	 * Note, that if validate is called for a group which is a sub-class of another group,
	 * then it will also be performed for the super classes of the group.
	 *
	 * @param entity
	 * @param groups
	 * @return
	 */
	public static <T extends Object> Set<ConstraintViolation<T>> validate(T entity, Class<?>... groups) {
		Set<ConstraintViolation<T>> constraintViolations = new HashSet<>();
		Class<?>[] groupArray = groups;
		String groupsString = Stream.of(groups).map(g -> g.toString()).collect(Collectors.joining(", "));
		if (entity != null) {
			LOG.debug("Validation was called for object of type: {0} and groups {1}", entity.getClass().getSimpleName(), groupsString);
			if(groupArray.length == 0) {
				groupArray = new Class<?>[]{DefaultGroup.class};
			}
			Validator validator = Validation.buildDefaultValidatorFactory().getValidator();
			try {
				constraintViolations = validator.validate(entity, groupArray);
			} catch (Exception e) {
				LOG.error("Could not load validate method", e);
			}
		}
		else {
			LOG.warn("Validation was called for null object, ignored for groups {0}.", groupsString);
		}
		return constraintViolations;
	}

	/**
	 * Validate a bean adding {@link FacesMessage}s of different severities.
	 *
	 * The given groups will be separated by {@link Severity}. For every {@link Severity} group
	 * containing entries, validation will be called and the resulting {@link ConstraintViolation}s
	 * will be converted to {@link FacesMessage}s with the groups {@link Severity}. When calling this
	 * method, previous validation markings will not be removed
	 *
	 * @param entity
	 * @param groups inheriting from {@link Fatal}, {@link Error}, {@link Warning} and {@link Info}
	 * @return
	 */
	public static <T extends Object> Severity validate2FacesMessages(T entity, Class<?>... groups) {
		return validate2FacesMessages(entity, false, groups);
	}

	/**
	 * Validate a bean adding {@link FacesMessage}s of different severities.
	 *
	 * The given groups will be separated by {@link Severity}. For every {@link Severity} group
	 * containing entries, validation will be called and the resulting {@link ConstraintViolation}s
	 * will be converted to {@link FacesMessage}s with the groups {@link Severity}. You can remove
	 * previous validation markings by setting resetValidation param to true.
	 *
	 * @param entity
	 * @param resetValidation if this param is true, all validation markings will be removed from UI
	 * @param validationGroups inheriting from {@link Fatal}, {@link Error}, {@link Warning} and {@link Info}
	 * @return
	 */
	public static <T extends Object> Severity validate2FacesMessages(T entity, boolean resetValidation, Class<?>... validationGroups) {
		if(resetValidation) {
			resetValidation();
		}
		Severity maxSeverity = null;
		int maxSeverityOrdinal = 0;
		FacesContext ctx = FacesContext.getCurrentInstance();
		if(ctx == null) {
			LOG.error("Loading Faces context returned null.");
		} else {

			//set defaultGroup validation if no group is specified
			if(validationGroups == null || validationGroups.length == 0) {
				validationGroups = new Class<?>[]{DefaultGroup.class};
			}

			Set<ConstraintViolation<T>> violations = validate(entity, validationGroups);
			Severity defaultSeverity = FacesMessage.SEVERITY_ERROR;
			for (ConstraintViolation<T> violation : violations) {
				Set<Class<?>> violationGroups = violation.getConstraintDescriptor().getGroups();
				Severity severity = getMaxSeverity(validationGroups, violationGroups);
				if(severity == null) {
					LOG.warn("Violation for bean {0}, property path {1}, constraint {2} does not specify a known severity and will be handled as severity error: {3}",
							violation.getRootBean(),
							violation.getPropertyPath(),
							violation.getConstraintDescriptor(),
							violationGroups.stream().map(g -> g.getCanonicalName()).collect(Collectors.joining(", ")));
					severity = defaultSeverity;
				}

				if(severity.getOrdinal() > maxSeverityOrdinal) {
					maxSeverityOrdinal = severity.getOrdinal();
					maxSeverity = severity;
				}

				processConstraintViolation(severity, violation, ctx);
			}

			if(maxSeverityOrdinal >= FacesMessage.SEVERITY_ERROR.getOrdinal()) {
				ctx.validationFailed();
			}
		}
		return maxSeverity;
	}

	private static Severity getMaxSeverity(Class<?>[] validationGroups, Set<Class<?>> violationGroups) {
		// work from highest to lowest severity
		for (Entry<Severity, SeverityProperties> entry : severityMap.entrySet()) {
			for (Class<?> group : validationGroups) {
				if(violationGroups.contains(group)) {
					if(entry.getValue().getBaseGroup().isAssignableFrom(group)) {
						return entry.getKey();
					}
				}
			}
		}

		return null;
	}

	/**
	 * Convert a {@link ConstraintViolation} to a {@link FacesMessage} of given {@link Severity}.
	 *
	 * @param severity
	 * @param constr
	 * @param ctx
	 */
	private static <T extends Object> void processConstraintViolation(Severity severity, ConstraintViolation<T> constr, FacesContext ctx) {
		String fieldName;
		String propPath = constr.getPropertyPath().toString();

		if (propPath.startsWith(":")) {
			fieldName = propPath;
		} else {
			fieldName = stripAllbutLastPath(propPath, '.');
		}
		String clientId = fieldName;
		String label = fieldName;
		if(!skipGettingIdsAndAddingCssClass) {
			clientId = getClientIdAndApplyCSS(severity, fieldName, propPath, ctx);
			label = getLabelAndApplyCSS(severity, fieldName, ctx);
		}

		if(StringUtils.isBlank(label)) {
			UiService.addFacesMessage(severity, clientId, "", constr.getMessage());
		} else {
			UiService.addFacesMessage(severity, clientId, "", label + ": " + constr.getMessage());
		}
	}

	/**
	 * Find the {@link UIComponent} the field is bound to, get it's id and apply severity style to field.
	 *
	 * @param fieldName
	 * @param propPath
	 * @param ctx
	 * @return
	 */
	private static String getClientIdAndApplyCSS(Severity severity, String fieldName, String propPath, FacesContext ctx) {
		UIComponent component = UiService.findComponent(ctx.getViewRoot(), fieldName, false);
		if(component != null) {
			String clientId = component.getClientId();
			String clientId4Css = clientId;
			if(component instanceof InputNumber) {
				clientId4Css = ((InputNumber)component).getInputClientId();
			}
			if(StringUtils.isNotBlank(clientId4Css)) {
				UiService.addCssClass(clientId4Css, severityMap.get(severity).getFieldCssClass());
			}

			return clientId;
		}

		return "";
	}


	/**
	 * Find the label of the {@link UIComponent} the field is bound to, get it's name and apply severity style to the label.
	 *
	 * @param fieldName
	 * @param ctx
	 * @return
	 */
	private static String getLabelAndApplyCSS(Severity severity, String fieldName, FacesContext ctx) {
		String label = "";
		UIComponent labelComponent = UiService.findComponent(ctx.getViewRoot(), fieldName, true);
		if(labelComponent != null) {
			String labelClientId = labelComponent.getClientId();
			if(labelClientId != null && !labelClientId.isEmpty()) {
				UiService.addCssClass(labelClientId, severityMap.get(severity).getLabelCssClass());
			}

			label = Objects.toString(((HtmlOutputLabel)labelComponent).getValue(), "");

			// remove the trailing * which shows whether field is mandatory
			Matcher m = labelPattern.matcher(label);
			if(m.matches()) {
				label = m.group(1);
			}
		}

		return label;
	}

	/**
	 * Remove all parts of string separated via specified separator.
	 *
	 * This method is used to compare prefixes from IDs of UI components
	 * @param id
	 * @param separator
	 * @return stripped string
	 */
	private static String stripAllbutLastPath(String id, Character separator) {
		return id.replaceAll(".*\\" + separator, ""); 	// remove all paths separated via separator,
		// leave only last ending part of string,
		// to be compared with prefix from ID of UI components
	}
}
