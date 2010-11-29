package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;

/**
 * This is parameter class of fields that use a RLookupTextField.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 14.09.2008
 */
class TextAreaParameters extends FieldComponentParameters
{
  private static final long serialVersionUID = 5722902723612113059L;

  private int rows;

  private String scrollPaneStyle;

  protected TextAreaParameters(List<String> cmsContexts, String name,
          String fullName, ComplexComponentParameters parentContainerParameters, Integer position, Class<?> clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);

    rows = Cms.coAsNumber(cmsContexts, KnownParameters.ROW_PARAMETER, 0).intValue();

    scrollPaneStyle = Cms.co(getCmsContexts(), KnownParameters.SCROLL_PANE_STYLE_PARAMETER,
            parentContainerParameters.getScrollPaneStyle());
  }

  @Override
  public ComponentType getComponentType()
  {
    return ComponentType.TEXT_AREA;
  }

  public String getScrollPaneStyle()
  {
    return scrollPaneStyle;
  }

  protected final int getRows()
  {
    return rows;
  }

  @Override
  protected final boolean isEditableByDefault()
  {
    return false;
  }
}
