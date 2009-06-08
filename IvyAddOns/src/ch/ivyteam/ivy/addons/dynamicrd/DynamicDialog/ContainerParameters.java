package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType.ComponentTypeEnum;

/**
 * This is the common parameters for all containers.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class ContainerParameters extends ComponentParameters
{
  private static final long serialVersionUID = -1957666551670302132L;

  protected String containerStyle;

  protected String fieldFillerStyle;

  protected String fieldStyle;

  protected boolean group;

  protected String iconStyle;

  protected String insideContainerStyle;

  protected String labelFillerStyle;

  protected String labelStyle;

  protected String radioContainerStyle;

  protected String scrollPaneStyle;

  public ContainerParameters(Configuration configuration, List<String> _cmsContexts, String name,
          String fullName, ContainerParameters parentContainerParameters)
  {
    super(configuration, _cmsContexts, name, fullName);

    group = Cms.coAsBoolean(cmsContexts, KnownParameters.GROUP_PARAMETER, true);

    if (parentContainerParameters == null)
    {
      containerStyle = KnownParameters.CONTAINER_DEFAULT_STYLE;
      fieldFillerStyle = KnownParameters.FIELD_FILLER_DEFAULT_STYLE;
      labelFillerStyle = KnownParameters.LABEL_FILLER_DEFAULT_STYLE;
      labelStyle = KnownParameters.LABEL_DEFAULT_STYLE;
      iconStyle = KnownParameters.ICON_DEFAULT_STYLE;
      fieldStyle = KnownParameters.FIELD_DEFAULT_STYLE;
      radioContainerStyle = KnownParameters.RADIO_CONTAINER_DEFAULT_STYLE;
      insideContainerStyle = KnownParameters.CONTAINER_DEFAULT_STYLE;
      scrollPaneStyle = KnownParameters.SCROLL_PANE_DEFAULT_STYLE;
    }
    else
    {
      containerStyle = parentContainerParameters.containerStyle;
      fieldFillerStyle = parentContainerParameters.fieldFillerStyle;
      labelFillerStyle = parentContainerParameters.labelFillerStyle;
      labelStyle = parentContainerParameters.labelStyle;
      iconStyle = parentContainerParameters.iconStyle;
      fieldStyle = parentContainerParameters.fieldStyle;
      radioContainerStyle = parentContainerParameters.radioContainerStyle;
      insideContainerStyle = parentContainerParameters.insideContainerStyle;
      scrollPaneStyle = parentContainerParameters.scrollPaneStyle;
    }
    containerStyle = Cms.co(getCmsContexts(), KnownParameters.CONTAINER_STYLE_PARAMETER, containerStyle);

    fieldFillerStyle = Cms.co(getCmsContexts(), KnownParameters.FIELD_FILLER_STYLE_PARAMETER,
            fieldFillerStyle);

    labelFillerStyle = Cms.co(getCmsContexts(), KnownParameters.LABEL_FILLER_STYLE_PARAMETER,
            labelFillerStyle);

    labelStyle = Cms.co(getCmsContexts(), KnownParameters.LABEL_STYLE_PARAMETER, labelStyle);
    iconStyle = Cms.co(getCmsContexts(), KnownParameters.ICON_STYLE_PARAMETER, iconStyle);
    fieldStyle = Cms.co(getCmsContexts(), KnownParameters.FIELD_STYLE_PARAMETER, fieldStyle);
    radioContainerStyle = Cms.co(getCmsContexts(), KnownParameters.RADIO_CONTAINER_DEFAULT_STYLE,
            radioContainerStyle);
    insideContainerStyle = Cms.co(getCmsContexts(), KnownParameters.INSIDE_CONTAINER_STYLE_PARAMETER,
            insideContainerStyle);
    scrollPaneStyle = Cms.co(getCmsContexts(), KnownParameters.SCROLL_PANE_STYLE_PARAMETER, scrollPaneStyle);
  }

  @Override
  public ComponentTypeEnum getComponentType()
  {
    return ComponentTypeEnum.INSIDE;
  }

  protected String getContainerStyle()
  {
    return containerStyle;
  }

  protected String getFieldFillerStyle()
  {
    return fieldFillerStyle;
  }

  protected String getLabelFillerStyle()
  {
    return labelFillerStyle;
  }

  @Override
  public boolean isContainer()
  {
    return true;
  }

  protected boolean isGroup()
  {
    return group;
  }

}
