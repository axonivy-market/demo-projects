package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;

/**
 * This is the common parameters for all field components.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
abstract class FieldComponentParameters extends ComponentParameters
{
  private boolean blockingValidation;

  private String defaultValue;

  private String errorIconUrl;

  private String fieldStyle;

  private String iconStyle;

  private String labelStyle;

  private String exampleLabelStyle;

  private boolean mandatory;

  private boolean editable;

  private boolean cellEditable;

  private String mandatoryIconUrl;

  private String transparentIconUrl;

  private String exampleLabelRef;

  private int columns;

  private int columnWidth;

  private String fieldLayout;

  private String nextTo;

  private boolean showValidationIcon;

  private boolean showLabel;

  private boolean showExampleLabel;

  private boolean showFieldBorder;

  private String buttonIconUrl;

  private String buttonToolTipRef;

  private String buttonActionMethod;

  private FieldComponentParameters componentNextTo;

  private boolean buttonTransparent;

  private String buttonStyle;

  private String tableCellStyle;

  private Integer tableColumnPosition;

  private String mandatoryLabelStyle;

  private String mandatoryFieldStyle;

  private boolean assignableFromString;

  private boolean assignableFromNumber;

  private boolean assignableFromInteger;

  private boolean assignableFromBoolean;

  private boolean assignableFromDate;

  private boolean assignableFromDateTime;

  private boolean cellVisible;

  private boolean selectAllOnFocusGained;

  private String defaultValueMethod;

  private String cellFormat;

  private int labelInsetsBottom;

  private int labelInsetsLeft;

  private int labelInsetsRight;

  private int labelInsetsTop;

  protected FieldComponentParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position, Class<?> clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);

    boolean temp;

    mandatory = Cms.coAsBoolean(cmsContexts, KnownParameters.MANDATORY_PARAMETER, false);

    editable = Cms.coAsBoolean(cmsContexts, KnownParameters.EDITABLE_PARAMETER, isEditableByDefault());

    cellEditable = Cms.coAsBoolean(cmsContexts, KnownParameters.CELL_EDITABLE_PARAMETER, false);

    cellVisible = Cms.coAsBoolean(cmsContexts, KnownParameters.CELL_VISIBLE_PARAMETER, isVisible());

    cellFormat = Cms.co(cmsContexts, KnownParameters.CELL_FORMAT_PARAMETER);

    blockingValidation = Cms.coAsBoolean(cmsContexts, KnownParameters.BLOCKING_VALIDATION_PARAMETER, false);

    columns = Cms.coAsNumber(cmsContexts, KnownParameters.COLUMNS_PARAMETERS, 0).intValue();

    columnWidth = Cms.coAsNumber(cmsContexts, KnownParameters.COLUMN_WIDTH_PARAMETERS, 0).intValue();

    mandatoryIconUrl = Ivy.cms().cr(KnownParameters.MANDATORY_ICON);

    errorIconUrl = Ivy.cms().cr(KnownParameters.ERROR_ICON);

    transparentIconUrl = Ivy.cms().cr(KnownParameters.TRANSPARENT_ICON);

    defaultValue = Cms.co(cmsContexts, KnownParameters.DEFAULT_VALUE_PARAMETER);

    defaultValueMethod = Cms.co(cmsContexts, KnownParameters.DEFAULT_VALUE_METHOD_PARAMETER);

    labelStyle = Cms.co(getCmsContexts(), KnownParameters.LABEL_STYLE_PARAMETER, parentContainerParameters
            .getLabelStyle());

    mandatoryLabelStyle = Cms.co(getCmsContexts(), KnownParameters.MANDATORY_LABEL_STYLE_PARAMETER,
            parentContainerParameters.getMandatoryLabelStyle());
    if (mandatoryLabelStyle.equals(""))
    {
      mandatoryLabelStyle = labelStyle;
    }

    iconStyle = Cms.co(getCmsContexts(), KnownParameters.ICON_STYLE_PARAMETER, parentContainerParameters
            .getIconStyle());

    fieldStyle = Cms.co(getCmsContexts(), KnownParameters.FIELD_STYLE_PARAMETER, parentContainerParameters
            .getFieldStyle());
    mandatoryFieldStyle = Cms.co(getCmsContexts(), KnownParameters.MANDATORY_FIELD_STYLE_PARAMETER,
            parentContainerParameters.getMandatoryFieldStyle());
    if (mandatoryFieldStyle.equals(""))
    {
      mandatoryFieldStyle = fieldStyle;
    }

    buttonStyle = Cms.co(getCmsContexts(), KnownParameters.BUTTON_STYLE_PARAMETER, parentContainerParameters
            .getButtonStyle());
    tableCellStyle = Cms.co(getCmsContexts(), KnownParameters.TABLE_CELL_STYLE_PARAMETER,
            parentContainerParameters.getTableCellStyle());

    exampleLabelRef = Cms.cr(getCmsContexts(), KnownParameters.EXAMPLE_LABEL_STRING);

    exampleLabelStyle = Cms.co(getCmsContexts(), KnownParameters.EXAMPLE_LABEL_STYLE_PARAMETER,
            parentContainerParameters.getExampleLabelStyle());

    showValidationIcon = Cms.coAsBoolean(getCmsContexts(), KnownParameters.SHOW_VALIDATION_ICON_PARAMETER,
            parentContainerParameters.isShowValidationIcon());
    temp = parentContainerParameters.isShowLabel();
    showLabel = Cms.coAsBoolean(getCmsContexts(), KnownParameters.SHOW_LABEL_PARAMETER,
            parentContainerParameters.isShowLabel());
    showExampleLabel = Cms.coAsBoolean(getCmsContexts(), KnownParameters.SHOW_EXAMPLE_LABEL_PARAMETER,
            temp != showLabel ? showLabel : parentContainerParameters.isShowExampleLabel());
    showFieldBorder = Cms.coAsBoolean(getCmsContexts(), KnownParameters.SHOW_FIELD_BORDER_PARAMETER,
            parentContainerParameters.isShowFieldBorder());

    fieldLayout = parentContainerParameters.getFieldLayout();

    nextTo = Cms.co(getCmsContexts(), KnownParameters.NEXT_TO_PARAMETER);

    buttonToolTipRef = Cms.cr(getCmsContexts(), KnownParameters.BUTTON_TOOL_TIP_STRING);

    buttonIconUrl = Cms.co(getCmsContexts(), KnownParameters.BUTTON_ICON_CMS_URI_PARAMETER,
            KnownParameters.BUTTON_ICON);

    buttonActionMethod = Cms.co(getCmsContexts(), KnownParameters.BUTTON_ACTION_METHOD_PARAMETER);

    buttonTransparent = Cms.coAsBoolean(cmsContexts, KnownParameters.BUTTON_TRANSPARENT_PARAMETER,
            parentContainerParameters.isButtonTransparent());

    tableColumnPosition = Cms.coAsNumber(cmsContexts, KnownParameters.TABLE_COLUMN_POSITION_PARAMETER, -1)
            .intValue();

    selectAllOnFocusGained = Cms.coAsBoolean(getCmsContexts(),
            KnownParameters.SELECT_ALL_ON_FOCUS_GAINED_PARAMETER, parentContainerParameters
                    .isSelectAllOnFocusGained());

    this.labelInsetsBottom = Cms.coAsNumber(cmsContexts, KnownParameters.LABEL_INSETS_BOTTOM_PARAMETER, -1)
            .intValue();
    this.labelInsetsLeft = Cms.coAsNumber(cmsContexts, KnownParameters.LABEL_INSETS_LEFT_PARAMETER, -1)
            .intValue();
    this.labelInsetsRight = Cms.coAsNumber(cmsContexts, KnownParameters.LABEL_INSETS_RIGHT_PARAMETER, -1)
            .intValue();
    this.labelInsetsTop = Cms.coAsNumber(cmsContexts, KnownParameters.LABEL_INSETS_TOP_PARAMETER, -1)
            .intValue();

    assignableFromString = clazz.isAssignableFrom(String.class);
    assignableFromNumber = clazz.isAssignableFrom(Number.class);
    assignableFromInteger = clazz.isAssignableFrom(Integer.class);
    assignableFromBoolean = clazz.isAssignableFrom(Boolean.class);
    assignableFromDate = clazz.isAssignableFrom(Date.class);
    assignableFromDateTime = clazz.isAssignableFrom(DateTime.class);
  }

  protected abstract boolean isEditableByDefault();

  protected final String getErrorIconUrl()
  {
    return errorIconUrl;
  }

  protected final String getIconStyle()
  {
    return iconStyle;
  }

  protected final String getFieldStyle()
  {
    return mandatory ? mandatoryFieldStyle : fieldStyle;
  }

  protected final String getLabelStyle()
  {
    return mandatory ? mandatoryLabelStyle : labelStyle;
  }

  protected final String getExampleLabelStyle()
  {
    return exampleLabelStyle;
  }

  protected final String getMandatoryIconUrl()
  {
    return mandatoryIconUrl;
  }

  protected final String getTransparentIconUrl()
  {
    return transparentIconUrl;
  }

  @Override
  public final boolean isList()
  {
    return false;
  }

  /**
   * Returns whether the content of the component that is described by this parameters is mandatory.
   * 
   * @return true if this the content is mandatory; false otherwise
   */
  protected final boolean isMandatory()
  {
    return mandatory;
  }

  /**
   * Returns whether the content of the component that is described by this parameters should be valid to pass
   * to the next step.
   * 
   * @return true if this the content should be valid; false otherwise
   */
  protected final boolean isValidationBlocking()
  {
    return blockingValidation;
  }

  /**
   * Gets an example string that is displayed next to the lable.
   * 
   * @return example label content
   */
  public final String getExampleLabelText()
  {
    String result;

    if (exampleLabelRef != null && !exampleLabelRef.equals(""))
    {
      result = Ivy.cms().co(exampleLabelRef);
      if (result.equals(""))
      {
        result = null;
      }
    }
    else
    {
      result = null;
    }
    return result;
  }

  /**
   * Returns whether the content of this component can be edited. This value is not used for cells in a table.
   * 
   * @return true if the content is editable; false otherwise
   */
  protected final boolean isEditable()
  {
    return editable;
  }

  /**
   * Returns whether the content of this compnent can be edited when it is used in a table.
   * 
   * @return true if the content is editable in a table; false otherwise
   */
  protected final boolean isCellEditable()
  {
    return cellEditable;
  }

  /**
   * Returns the number of columns (how many times 'M' can be displayed) used by the component. This value is
   * not used for all component types.
   * 
   * @return number of columns used
   */
  protected final int getColumns()
  {
    return columns;
  }

  protected final Integer getColumnWidth()
  {
    return columnWidth;
  }

  /**
   * Returns the default value that this component should display after initialization.
   * 
   * @return default value
   */
  public final String getDefaultValue()
  {
    return defaultValue;
  }

  protected final String getFieldLayout()
  {
    return fieldLayout;
  }

  protected final String getNextTo()
  {
    return nextTo;
  }

  protected final boolean isLabelShown()
  {
    return showLabel;
  }

  protected final boolean isExampleLabelShown()
  {
    return showExampleLabel;
  }

  protected final boolean isValidationIconShown()
  {
    return showValidationIcon;
  }

  @SuppressWarnings("restriction")
  protected final boolean isFieldBorderShown()
  {
    return showFieldBorder
            || ch.ivyteam.ivy.richdialog.exec.restricted.RichDialogExecEnvironment.getInstance()
                    .isVisualDebug();
  }

  protected final void setComponentNextTo(FieldComponentParameters parameters)
  {
    componentNextTo = parameters;
  }

  protected final FieldComponentParameters getNextToComponentParameters()
  {
    return componentNextTo;
  }

  protected final String getButtonActionMethod()
  {
    return buttonActionMethod;
  }

  protected final String getButtonIconUrl()
  {
    return buttonIconUrl;
  }

  protected final String getButtonToolTipText()
  {
    String result;

    if (buttonToolTipRef != null && !buttonToolTipRef.equals(""))
    {
      result = Ivy.cms().co(buttonToolTipRef);
    }
    else
    {
      result = null;
    }
    return result;
  }

  protected final boolean isButtonTransparent()
  {
    return buttonTransparent;
  }

  protected final String getButtonStyle()
  {
    return buttonStyle;
  }

  protected final String getTableCellStyle()
  {
    return tableCellStyle;
  }

  protected final Integer getTableColumnPosition()
  {
    return tableColumnPosition;
  }

  protected final boolean isAssignableFromString()
  {
    return assignableFromString;
  }

  protected final boolean isAssignableFromNumber()
  {
    return assignableFromNumber;
  }

  protected final boolean isAssignableFromInteger()
  {
    return assignableFromInteger;
  }

  protected final boolean isAssignableFromBoolean()
  {
    return assignableFromBoolean;
  }

  protected final boolean isAssignableFromDate()
  {
    return assignableFromDate;
  }

  protected final boolean isAssignableFromDateTime()
  {
    return assignableFromDateTime;
  }

  protected final boolean isCellVisible()
  {
    return cellVisible;
  }

  @Override
  protected final boolean isContainer()
  {
    return false;
  }

  public String getDefaultValueMethodtMethod()
  {
    return defaultValueMethod;
  }

  public boolean isSelectAllOnFocusGained()
  {
    return selectAllOnFocusGained;
  }

  public String getCellFormat()
  {
    return cellFormat;
  }

  public Integer getLabelInsetsBottom()
  {
    return labelInsetsBottom;
  }

  public Integer getLabelInsetsLeft()
  {
    return labelInsetsLeft;
  }

  public Integer getLabelInsetsRight()
  {
    return labelInsetsRight;
  }

  public Integer getLabelInsetsTop()
  {
    return labelInsetsTop;
  }
}
