package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.Component;
import ch.ivyteam.ivy.cm.IContentManagementSystem;

/**
 * Class used to exchange DynamicDialog attribute information with the manager through an event.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 30.08.2010
 */
public class FieldChangeEventParameters
{
  private Component component;

  private IContentManagementSystem cms;

  /**
   * Constructs a new FieldChangeEventParameters with parameters.
   * 
   * @param component dynamic dialog component that fires this event
   * @param cms content management system used by the projet that starts dynamic dialog
   */
  public FieldChangeEventParameters(Component component, IContentManagementSystem cms)
  {
    super();
    this.component = component;
    this.cms = cms;
  }

  /**
   * Gets the field cms.
   * @return the value of the field cms; may be null
   */
  public final IContentManagementSystem getCms()
  {
    return cms;
  }

  /**
   * Sets the field cms.
   * @param cms the new value of the field cms
   */
  public final void setCms(IContentManagementSystem cms)
  {
    this.cms = cms;
  }

  /**
   * Gets the field component.
   * @return the value of the field component; may be null
   */
  public final Component getComponent()
  {
    return component;
  }

  /**
   * Sets the field component.
   * @param component the new value of the field component
   */
  public final void setComponent(Component component)
  {
    this.component = component;
  }
}
