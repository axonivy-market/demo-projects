package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.io.Serializable;
import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType.ComponentTypeEnum;
import ch.ivyteam.ivy.environment.Ivy;

/**
 * This is the common parameters for all components.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
abstract public class ComponentParameters implements Serializable {
	/** */
	private static final long serialVersionUID = -6903694755971481928L;

	protected List<String> cmsContexts = null;

	protected Configuration configuration;

	private boolean enabled;

	private boolean focusable;

	private String fullName = null;

	private String initMethod;

	private String name = null;

	private boolean newColumn;

	private String titleRef;

	private boolean visible;

	public ComponentParameters(Configuration _configuration,
			List<String> _cmsContexts, String _name, String _fullName) {
		super();

		cmsContexts = _cmsContexts;
		name = _name;
		fullName = _fullName;
		configuration = _configuration;

		visible = Cms.coAsBoolean(_cmsContexts,
				KnownParameters.VISIBLE_PARAMETER, true);

		enabled = Cms.coAsBoolean(_cmsContexts,
				KnownParameters.ENABLED_PARAMETER, true);

		titleRef = Cms.cr(_cmsContexts, KnownParameters.LABEL_STRING);

		initMethod = Cms
				.co(_cmsContexts, KnownParameters.INIT_METHOD_PARAMETER);

		if (isContainer()) {
			focusable = Cms.coAsBoolean(_cmsContexts,
					KnownParameters.FOCUSABLE_PARAMETER, false);
		} else {
			focusable = Cms.coAsBoolean(_cmsContexts,
					KnownParameters.FOCUSABLE_PARAMETER, true);
		}

		newColumn = Cms.co(_cmsContexts, KnownParameters.NEW_COLUMN_PARAMETER)
				.equals("1") ? true : false;
	}

	/**
	 * Gets the CMS contexts.
	 * 
	 * @return CMS contexts
	 * 
	 * @see Cms
	 */
	public List<String> getCmsContexts() {
		return cmsContexts;
	}

	/**
	 * Gets the component type.
	 * 
	 * @return component type
	 */
	abstract public ComponentTypeEnum getComponentType();

	/**
	 * Gets the fully qualified component's name. This name uniquely identifies
	 * a component and these parameters.
	 * 
	 * @return fully qualified name
	 */
	public String getFullName() {
		return fullName;
	}

	/**
	 * Gets the UI logic method name that should be invoked while the init time.
	 * 
	 * @return UI logic method name
	 */
	public String getInitMethod() {
		return initMethod;
	}

	/**
	 * Gets the attribute's name related to this component.
	 * 
	 * @return name
	 */
	public String getName() {
		return name;
	}

	/**
	 * Gets the title of the component. The title acts as label in field
	 * component and acts as frame border title with container.
	 * 
	 * @return title
	 */
	public String getTitle() {
		String result;

		if (titleRef != null && !titleRef.equals("")) {
			result = Ivy.cms().co(titleRef);
		} else {
			result = name;
		}
		return result;
	}

	/**
	 * Returns whether this component's parameters describe a container.
	 * 
	 * @return true if the component's parameters describe a container; false
	 *         otherwise
	 */
	abstract public boolean isContainer();

	public boolean isEnabled() {
		return enabled;
	}

	/**
	 * Returns whether the component that is described by this parameters can be
	 * focused.
	 * 
	 * @return true if this component is focusable, false otherwise.
	 */
	public boolean isFocusable() {
		return focusable;
	}

	/**
	 * Retrurns whether the component that is described by this parameters is on
	 * the top of a new column.
	 * 
	 * @return true if this component is on the top of a new column, false
	 *         otherwise.
	 */
	public boolean isNewColumn() {
		return newColumn;
	}

	/**
	 * Returns whether the component that is described by this parameters is
	 * visible.
	 * 
	 * @return true if this component is visible, false otherwise.
	 */
	public boolean isVisible() {
		return visible;
	}

}
