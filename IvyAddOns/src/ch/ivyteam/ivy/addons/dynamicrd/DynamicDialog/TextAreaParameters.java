package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType.ComponentTypeEnum;

/**
 * This is parameter class of fields that use a RLookupTextField.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 14.09.2008
 */
public class TextAreaParameters extends FieldComponentParameters
{
  private static final long serialVersionUID = 5722902723612113059L;

  protected Integer maxLength = Integer.MAX_VALUE;

  public int rows;

  public String scrollPaneStyle;

  public TextAreaParameters(Configuration configuration, List<String> cmsContexts, String name,
          String fullName, ContainerParameters parentContainerParameters)
  {
    super(configuration, cmsContexts, name, fullName, parentContainerParameters);

    rows = Cms.coAsNumber(cmsContexts, KnownParameters.ROW_PARAMETER, 0).intValue();

    scrollPaneStyle = Cms.co(getCmsContexts(), KnownParameters.SCROLL_PANE_STYLE_PARAMETER,
            parentContainerParameters.scrollPaneStyle);
  }

  @Override
  public ComponentTypeEnum getComponentType()
  {
    return ComponentType.ComponentTypeEnum.TEXT_AREA;
  }

  public String getScrollPaneStyle()
  {
    return scrollPaneStyle;
  }
}
