package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.io.Serializable;
import java.text.NumberFormat;
import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.environment.Ivy;

/**
 * This is the common parameters for all containers and tables.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 23.07.2010
 */
public abstract class ComplexComponentParameters extends ComponentParameters
{
  public static final int NB_BUTTONS = 10;

  public enum ContainerButtonPlacement
  {
    NORTH_WEST, NORTH_EAST, SOUTH_WEST, SOUTH_EAST
  }

  private static final long serialVersionUID = -1957666551670302132L;

  private String containerStyle;

  private String fieldFillerStyle;

  private String fieldStyle;

  private String fieldLayout;

  private boolean group;

  private String iconStyle;

  private String insideContainerStyle;

  private String labelFillerStyle;

  private String labelStyle;

  private String exampleLabelStyle;

  private String radioContainerStyle;

  private String scrollPaneStyle;

  private String buttonStyle;

  private String tableStyle;

  private String tableCellStyle;

  private boolean showValidationIcon;

  private boolean showLabel;

  private boolean showExampleLabel;

  private boolean showFieldBorder;

  private boolean buttonTransparent;

  private ContainerButtonParameters[] buttonsParameters;

  private String containerButtonStyle;

  private boolean containerButtonTransparent;

  private String mandatoryLabelStyle;

  private String mandatoryFieldStyle;

  private boolean selectAllOnFocusGained;

  protected ComplexComponentParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position, Class<?> clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);

    boolean temp;

    group = Cms.coAsBoolean(cmsContexts, KnownParameters.GROUP_PARAMETER, true);

    if (parentContainerParameters == null)
    {
      containerStyle = KnownParameters.CONTAINER_DEFAULT_STYLE;
      fieldFillerStyle = KnownParameters.FIELD_FILLER_DEFAULT_STYLE;
      labelFillerStyle = KnownParameters.LABEL_FILLER_DEFAULT_STYLE;
      labelStyle = KnownParameters.LABEL_DEFAULT_STYLE;
      mandatoryLabelStyle = "";
      exampleLabelStyle = KnownParameters.EXAMPLE_LABEL_DEFAULT_STYLE;
      iconStyle = KnownParameters.ICON_DEFAULT_STYLE;
      fieldStyle = KnownParameters.FIELD_DEFAULT_STYLE;
      mandatoryFieldStyle = "";
      radioContainerStyle = KnownParameters.RADIO_CONTAINER_DEFAULT_STYLE;
      insideContainerStyle = KnownParameters.CONTAINER_DEFAULT_STYLE;
      scrollPaneStyle = KnownParameters.SCROLL_PANE_DEFAULT_STYLE;
      buttonStyle = KnownParameters.BUTTON_DEFAULT_STYLE;
      tableStyle = KnownParameters.TABLE_DEFAULT_STYLE;
      tableCellStyle = KnownParameters.TABLE_CELL_DEFAULT_STYLE;
      containerButtonStyle = KnownParameters.CONTAINER_BUTTON_DEFAULT_STYLE;

      fieldLayout = KnownParameters.DEFAULT_LAYOUT;

      showLabel = true;
      showExampleLabel = true;
      showValidationIcon = true;
      showFieldBorder = true;
      buttonTransparent = true;
      containerButtonTransparent = false;
      selectAllOnFocusGained = false;
    }
    else
    {
      containerStyle = parentContainerParameters.containerStyle;
      fieldFillerStyle = parentContainerParameters.fieldFillerStyle;
      labelFillerStyle = parentContainerParameters.labelFillerStyle;
      labelStyle = parentContainerParameters.labelStyle;
      mandatoryLabelStyle = parentContainerParameters.mandatoryLabelStyle;
      exampleLabelStyle = parentContainerParameters.exampleLabelStyle;
      iconStyle = parentContainerParameters.iconStyle;
      fieldStyle = parentContainerParameters.fieldStyle;
      mandatoryFieldStyle = parentContainerParameters.mandatoryFieldStyle;
      radioContainerStyle = parentContainerParameters.radioContainerStyle;
      insideContainerStyle = parentContainerParameters.insideContainerStyle;
      scrollPaneStyle = parentContainerParameters.scrollPaneStyle;
      buttonStyle = parentContainerParameters.buttonStyle;
      tableStyle = parentContainerParameters.tableStyle;
      tableCellStyle = parentContainerParameters.tableCellStyle;
      containerButtonStyle = parentContainerParameters.containerButtonStyle;

      fieldLayout = parentContainerParameters.fieldLayout;

      showLabel = parentContainerParameters.showLabel;
      showExampleLabel = parentContainerParameters.showExampleLabel;
      showValidationIcon = parentContainerParameters.showValidationIcon;
      showFieldBorder = parentContainerParameters.showFieldBorder;
      buttonTransparent = parentContainerParameters.buttonTransparent;
      containerButtonTransparent = parentContainerParameters.containerButtonTransparent;
      selectAllOnFocusGained = parentContainerParameters.selectAllOnFocusGained;
    }
    containerStyle = Cms.co(getCmsContexts(), KnownParameters.CONTAINER_STYLE_PARAMETER, containerStyle);

    fieldFillerStyle = Cms.co(getCmsContexts(), KnownParameters.FIELD_FILLER_STYLE_PARAMETER,
            fieldFillerStyle);

    labelFillerStyle = Cms.co(getCmsContexts(), KnownParameters.LABEL_FILLER_STYLE_PARAMETER,
            labelFillerStyle);

    labelStyle = Cms.co(getCmsContexts(), KnownParameters.LABEL_STYLE_PARAMETER, labelStyle);
    mandatoryLabelStyle = Cms.co(getCmsContexts(), KnownParameters.MANDATORY_LABEL_STYLE_PARAMETER,
            mandatoryLabelStyle);
    exampleLabelStyle = Cms.co(getCmsContexts(), KnownParameters.EXAMPLE_LABEL_STYLE_PARAMETER,
            exampleLabelStyle);
    iconStyle = Cms.co(getCmsContexts(), KnownParameters.ICON_STYLE_PARAMETER, iconStyle);
    fieldStyle = Cms.co(getCmsContexts(), KnownParameters.FIELD_STYLE_PARAMETER, fieldStyle);
    mandatoryFieldStyle = Cms.co(getCmsContexts(), KnownParameters.MANDATORY_FIELD_STYLE_PARAMETER,
            mandatoryFieldStyle);
    radioContainerStyle = Cms.co(getCmsContexts(), KnownParameters.RADIO_CONTAINER_STYLE_PARAMETER,
            radioContainerStyle);
    insideContainerStyle = Cms.co(getCmsContexts(), KnownParameters.INSIDE_CONTAINER_STYLE_PARAMETER,
            insideContainerStyle);
    scrollPaneStyle = Cms.co(getCmsContexts(), KnownParameters.SCROLL_PANE_STYLE_PARAMETER, scrollPaneStyle);
    buttonStyle = Cms.co(getCmsContexts(), KnownParameters.BUTTON_STYLE_PARAMETER, buttonStyle);
    tableStyle = Cms.co(getCmsContexts(), KnownParameters.TABLE_STYLE_PARAMETER, tableStyle);
    tableCellStyle = Cms.co(getCmsContexts(), KnownParameters.TABLE_CELL_STYLE_PARAMETER, tableCellStyle);
    containerButtonStyle = Cms.co(getCmsContexts(), KnownParameters.CONTAINER_BUTTON_STYLE_PARAMETER,
            containerButtonStyle);

    fieldLayout = Cms.co(getCmsContexts(), KnownParameters.FIELD_LAYOUT_PARAMETER, fieldLayout);

    showValidationIcon = Cms.coAsBoolean(getCmsContexts(), KnownParameters.SHOW_VALIDATION_ICON_PARAMETER,
            showValidationIcon);
    temp = showLabel;
    showLabel = Cms.coAsBoolean(getCmsContexts(), KnownParameters.SHOW_LABEL_PARAMETER, showLabel);
    showExampleLabel = Cms.coAsBoolean(getCmsContexts(), KnownParameters.SHOW_EXAMPLE_LABEL_PARAMETER,
            temp != showLabel ? showLabel : showExampleLabel);
    showFieldBorder = Cms.coAsBoolean(getCmsContexts(), KnownParameters.SHOW_FIELD_BORDER_PARAMETER,
            showFieldBorder);
    buttonTransparent = Cms.coAsBoolean(getCmsContexts(), KnownParameters.BUTTON_TRANSPARENT_PARAMETER,
            buttonTransparent);
    containerButtonTransparent = Cms.coAsBoolean(getCmsContexts(),
            KnownParameters.CONTAINER_BUTTON_TRANSPARENT_PARAMETER, containerButtonTransparent);

    buttonsParameters = new ContainerButtonParameters[NB_BUTTONS];
    for (int i = 0; i < NB_BUTTONS; i++)
    {
      buttonsParameters[i] = new ContainerButtonParameters(getCmsContexts(), this, i + 1);
    }
    selectAllOnFocusGained = Cms.coAsBoolean(getCmsContexts(),
            KnownParameters.SELECT_ALL_ON_FOCUS_GAINED_PARAMETER, selectAllOnFocusGained);
  }

  protected final boolean isGroup()
  {
    return group;
  }

  protected final String getFieldLayout()
  {
    return fieldLayout;
  }

  protected final class ContainerButtonParameters implements Serializable
  {
    private static final long serialVersionUID = 6646371685435616129L;

    private boolean transparent;

    private String actionMethod;

    private String iconCmsUri;

    private String labelRef;

    private ContainerButtonPlacement placement;

    private String style;

    private String toolTipRef;

    private ContainerButtonParameters(List<String> cmsContexts,
            ComplexComponentParameters parentContainerParameters, int num)
    {
      NumberFormat nf;
      String suffix;

      nf = NumberFormat.getInstance();
      nf.setMinimumIntegerDigits(3);

      suffix = nf.format(num);

      this.transparent = Cms.coAsBoolean(getCmsContexts(),
              KnownParameters.CONTAINER_BUTTON_TRANSPARENT_PARAMETER + suffix,
              parentContainerParameters.containerButtonTransparent);
      this.actionMethod = Cms.co(getCmsContexts(), KnownParameters.CONTAINER_BUTTON_ACTION_METHOD_PARAMETER
              + suffix);
      this.iconCmsUri = Cms.co(getCmsContexts(), KnownParameters.CONTAINER_BUTTON_ICON_CMS_URI_PARAMETER
              + suffix);
      this.labelRef = Cms.cr(getCmsContexts(), KnownParameters.CONTAINER_BUTTON_LABEL_STRING + suffix);
      this.style = Cms.co(getCmsContexts(), KnownParameters.CONTAINER_BUTTON_STYLE_PARAMETER + suffix,
              parentContainerParameters.containerButtonStyle);
      this.toolTipRef = Cms.cr(getCmsContexts(), KnownParameters.CONTAINER_BUTTON_TOOL_TIP_STRING + suffix);

      try
      {
        this.placement = ContainerButtonPlacement.valueOf(Cms.co(cmsContexts,
                KnownParameters.CONTAINER_BUTTON_PLACEMENT_PARAMETER + suffix,
                ContainerButtonPlacement.SOUTH_EAST.toString()));
      }
      catch (Exception e)
      {
        this.placement = ContainerButtonPlacement.SOUTH_EAST;
      }
    }

    protected String getActionMethod()
    {
      return actionMethod;
    }

    protected String getIconCmsUri()
    {
      return iconCmsUri;
    }

    protected String getLabel()
    {
      String result;

      if (labelRef != null && !labelRef.equals(""))
      {
        result = Ivy.cms().co(labelRef);
      }
      else
      {
        result = "";
      }
      return result;
    }

    protected ContainerButtonPlacement getPlacement()
    {
      return placement;
    }

    protected String getStyle()
    {
      return style;
    }

    protected String getToolTip()
    {
      String result;

      result = null;
      if (toolTipRef != null && !toolTipRef.equals(""))
      {
        result = Ivy.cms().co(toolTipRef);
      }
      return result;
    }

    protected boolean isTransparent()
    {
      return transparent;
    }
  }

  protected final ContainerButtonParameters[] getButtons()
  {
    return buttonsParameters;
  }

  protected final ContainerButtonParameters[] getButtonsParameters()
  {
    return buttonsParameters;
  }

  protected final String getButtonStyle()
  {
    return buttonStyle;
  }

  protected final boolean isButtonTransparent()
  {
    return buttonTransparent;
  }

  protected final String getContainerButtonStyle()
  {
    return containerButtonStyle;
  }

  protected final boolean isContainerButtonTransparent()
  {
    return containerButtonTransparent;
  }

  protected final String getContainerStyle()
  {
    return containerStyle;
  }

  protected final String getExampleLabelStyle()
  {
    return exampleLabelStyle;
  }

  protected final String getFieldFillerStyle()
  {
    return fieldFillerStyle;
  }

  protected final String getFieldStyle()
  {
    return fieldStyle;
  }

  protected final String getIconStyle()
  {
    return iconStyle;
  }

  protected final String getInsideContainerStyle()
  {
    return insideContainerStyle;
  }

  protected final String getLabelFillerStyle()
  {
    return labelFillerStyle;
  }

  protected final String getLabelStyle()
  {
    return labelStyle;
  }

  protected final String getMandatoryFieldStyle()
  {
    return mandatoryFieldStyle;
  }

  protected final String getMandatoryLabelStyle()
  {
    return mandatoryLabelStyle;
  }

  protected final String getRadioContainerStyle()
  {
    return radioContainerStyle;
  }

  protected final String getScrollPaneStyle()
  {
    return scrollPaneStyle;
  }

  protected final boolean isShowExampleLabel()
  {
    return showExampleLabel;
  }

  protected final boolean isShowFieldBorder()
  {
    return showFieldBorder;
  }

  protected final boolean isShowLabel()
  {
    return showLabel;
  }

  protected final boolean isShowValidationIcon()
  {
    return showValidationIcon;
  }

  protected final String getTableCellStyle()
  {
    return tableCellStyle;
  }

  protected final String getTableStyle()
  {
    return tableStyle;
  }

  public boolean isSelectAllOnFocusGained()
  {
    return selectAllOnFocusGained;
  }
}
