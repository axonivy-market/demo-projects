package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.addons.cmscontext.Cms;

/**
 * Strings the are used to find component's parameters into the CMS.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 17.02.2009
 */
public final class KnownParameters
{
  public enum ETableAutoResizeMode
  {
    AUTO_RESIZE_ALL_COLUMNS, AUTO_RESIZE_LAST_COLUMN, AUTO_RESIZE_NEXT_COLUMN, AUTO_RESIZE_OFF, AUTO_RESIZE_SUBSEQUENT_COLUMNS
  }

  private KnownParameters()
  {
  }

  public static final String LABEL_FIELD_ICON_LAYOUT = "LabelFieldIcon";

  public static final String ICON_LABEL_FIELD_LAYOUT = "IconLabelField";

  public static final String LABEL_ICON_FIELD_LAYOUT = "LabelIconField";

  public static final String ICON_LABEL_ON_FIELD_LAYOUT = "IconLabel/Field";

  public static final String LABEL_ICON_ON_FIELD_LAYOUT = "LabelIcon/Field";

  public static final String LABEL_ON_ICON_FIELD_LAYOUT = "Label/IconField";

  public static final String LABEL_ON_FIELD_ICON_LAYOUT = "Label/FieldIcon";

  public static final String LABEL_ON_ICON_FIELD = "Label/IconField";

  public static final String DEFAULT_LAYOUT = LABEL_FIELD_ICON_LAYOUT;

  public static final String COMPONENT_DEFAULT_STYLE = "default";

  public static final String CONTAINER_DEFAULT_STYLE = "container";

  public static final String RADIO_CONTAINER_DEFAULT_STYLE = "radio";

  public static final String BUTTON_DEFAULT_STYLE = "button";

  public static final String CONTAINER_BUTTON_DEFAULT_STYLE = "button";

  public static final String LABEL_DEFAULT_STYLE = "label";

  public static final String EXAMPLE_LABEL_DEFAULT_STYLE = "exampleLabel";

  public static final String ICON_DEFAULT_STYLE = "icon";

  public static final String FIELD_DEFAULT_STYLE = "field";

  public static final String SCROLL_PANE_DEFAULT_STYLE = "field";

  public static final String FIELD_FILLER_DEFAULT_STYLE = "field";

  public static final String LABEL_FILLER_DEFAULT_STYLE = "label";

  public static final String TABLE_DEFAULT_STYLE = "default";

  public static final String TABLE_CELL_DEFAULT_STYLE = "default";

  public static final String NEXT_TO_CONTAINER_DEFAULT_STYLE = "nextTo";

  public static final String BUTTON_ICON = "/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialog/icons/FieldButton16";

  public static final String MANDATORY_ICON = "/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialog/icons/Mandatory16";

  public static final String ERROR_ICON = "/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialog/icons/Error16";

  public static final String TRANSPARENT_ICON = "/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialog/icons/Transparent16";

  public static final String LABEL_STRING = "plainStrings/label";

  public static final String CONTAINER_BUTTON_LABEL_STRING = "plainStrings/containerButtonLabel";

  public static final String SHORT_LABEL_STRING = "plainStrings/shortLabel";

  public static final String EXAMPLE_LABEL_STRING = "plainStrings/exampleLabel";

  public static final String ENABLED_PARAMETER = "parameters/enabled";

  public static final String FOCUSABLE_PARAMETER = "parameters/focusable";

  public static final String GROUP_PARAMETER = "parameters/group";

  public static final String INSIDE_CONTAINER_STYLE_PARAMETER = "parameters/insideContainerStyle";

  public static final String NEW_COLUMN_PARAMETER = "parameters/newColumn";

  public static final String ROW_PARAMETER = "parameters/row";

  public static final String SCROLL_PANE_STYLE_PARAMETER = "parameters/scrollPaneStyle";

  public static final String NEXT_TO_CONTAINER_STYLE_PARAMETER = "parameters/nextToContainerStyle";

  public static final String VALIDATION_PARAMETER = "parameters/validation";

  public static final String VISIBLE_PARAMETER = "parameters/visible";

  public static final String CELL_VISIBLE_PARAMETER = "parameters/cellVisible";

  public static final String CELL_FORMAT_PARAMETER = "parameters/cellFormat";

  public static final String LABEL_STYLE_PARAMETER = "parameters/labelStyle";

  public static final String MANDATORY_LABEL_STYLE_PARAMETER = "parameters/mandatoryLabelStyle";

  public static final String EXAMPLE_LABEL_STYLE_PARAMETER = "parameters/exampleLabelStyle";

  public static final String ICON_STYLE_PARAMETER = "parameters/iconStyle";

  public static final String BUTTON_STYLE_PARAMETER = "parameters/buttonStyle";

  public static final String CONTAINER_BUTTON_STYLE_PARAMETER = "parameters/containerButtonStyle";

  public static final String TABLE_STYLE_PARAMETER = "parameters/tableStyle";

  public static final String TABLE_CELL_STYLE_PARAMETER = "parameters/tableCellStyle";

  public static final String MANDATORY_PARAMETER = "parameters/mandatory";

  public static final String NEXT_TO_PARAMETER = "parameters/nextTo";

  public static final String BLOCKING_VALIDATION_PARAMETER = "parameters/blockingValidation";

  public static final String VALUE_CHANGED_METHOD_PARAMETER = "parameters/valueChangedMethod";

  public static final String FOCUS_LOST_METHOD_PARAMETER = "parameters/focusLostMethod";

  public static final String FOCUS_GAINED_METHOD_PARAMETER = "parameters/focusGainedMethod";

  public static final String INIT_METHOD_PARAMETER = "parameters/initMethod";

  public static final String POST_STARTUP_METHOD_PARAMETER = "parameters/postStartupMethod";

  public static final String ACTION_METHOD_PARAMETER = "parameters/actionMethod";

  public static final String CONTROLLER_PARAMETER = "parameters/controller";

  public static final String BUTTON_ACTION_METHOD_PARAMETER = "parameters/buttonActionMethod";

  public static final String CONTAINER_BUTTON_ACTION_METHOD_PARAMETER = "parameters/containerButtonActionMethod";

  public static final String ROW_SELECTION_METHOD_PARAMETER = "parameters/rowSelectionMethod";

  public static final String PRE_INSERT_METHOD = "parameters/preInsertMethod";

  public static final String DEFAULT_VALUE_PARAMETER = "parameters/defaultValue";

  public static final String DEFAULT_VALUE_METHOD_PARAMETER = "parameters/defaultValueMethod";

  public static final String WIDGET_PARAMETER = "parameters/widget";

  public static final String FIELD_FILLER_STYLE_PARAMETER = "parameters/fieldFillerStyle";

  public static final String LABEL_FILLER_STYLE_PARAMETER = "parameters/labelFillerStyle";

  public static final String FIELD_STYLE_PARAMETER = "parameters/fieldStyle";

  public static final String MANDATORY_FIELD_STYLE_PARAMETER = "parameters/mandatoryFieldStyle";

  public static final String RADIO_CONTAINER_STYLE_PARAMETER = "parameters/radioContainerStyle";

  public static final String CONTAINER_STYLE_PARAMETER = "parameters/containerStyle";

  public static final String EDITABLE_PARAMETER = "parameters/editable";

  public static final String CELL_EDITABLE_PARAMETER = "parameters/cellEditable";

  public static final String COLUMNS_PARAMETERS = "parameters/columns";

  public static final String COLUMN_WIDTH_PARAMETERS = "parameters/columnWidth";

  public static final String WHERE_PARAMETER = "parameters/where";

  public static final String VALUE_COLUMN_NAME_PARAMETER = "parameters/valueColumnName";

  public static final String SQL_STATEMENT_PARAMETER = "parameters/sqlStatement";

  public static final String TABLE_NAME_PARAMETER = "parameters/tableName";

  public static final String SORT_PARAMETER = "parameters/sort";

  public static final String OTHER_COLUMNS_PARAMETER = "parameters/otherColumns";

  public static final String KEY_COLUMN_NAME_PARAMETER = "parameters/keyColumnName";

  public static final String DBCONFIG_PARAMETER = "parameters/dbConfig";

  public static final String SPECIFIC_WHERE_PARAMETER = "parameters/%1$s/where";

  public static final String SPECIFIC_VALUE_COLUMN_NAME_PARAMETER = "parameters/%1$s/valueColumnName";

  public static final String SPECIFIC_SQL_STATEMENT_PARAMETER = "parameters/%1$s/sqlStatement";

  public static final String SPECIFIC_TABLE_NAME_PARAMETER = "parameters/%1$s/tableName";

  public static final String SPECIFIC_SORT_PARAMETER = "parameters/%1$s/sort";

  public static final String SPECIFIC_OTHER_COLUMNS_PARAMETER = "parameters/%1$s/otherColumns";

  public static final String SPECIFIC_KEY_COLUMN_NAME_PARAMETER = "parameters/%1$s/keyColumnName";

  public static final String POSITION_PARAMETER = "parameters/position";

  public static final String SHOW_TABLE_HEADER = "parameters/showTableHeader";

  public static final String AUTO_TABLE_HEADER = "parameters/autoTableHeader";

  public static final String TOOL_TIP_STRING = "plainStrings/tooltip";

  public static final String BUTTON_TOOL_TIP_STRING = "plainStrings/buttonTooltip";

  public static final String CONTAINER_BUTTON_TOOL_TIP_STRING = "plainStrings/containerButtonTooltip";

  public static final String SHOW_TOOL_TIP_PARAMETER = "parameters/showTooltip";

  public static final String SORTABLE_TABLE = "parameters/sortableTable";

  public static final String KEY_VALUE = "values/key";

  public static final String CONTENT_VALUE = "values/value";

  public static final String ICON_VISIBLE_PARAMETER = "parameters/iconVisible";

  public static final String FIELD_LAYOUT_PARAMETER = "parameters/fieldLayout";

  public static final String SHOW_VALIDATION_ICON_PARAMETER = "parameters/showValidationIcon";

  public static final String SHOW_LABEL_PARAMETER = "parameters/showLabel";

  public static final String SHOW_EXAMPLE_LABEL_PARAMETER = "parameters/showExampleLabel";

  public static final String SHOW_FIELD_BORDER_PARAMETER = "parameters/showFieldBorder";

  public static final String BUTTON_ICON_CMS_URI_PARAMETER = "parameters/buttonIconCmsUri";

  public static final String CONTAINER_BUTTON_ICON_CMS_URI_PARAMETER = "parameters/containerButtonIconCmsUri";

  public static final String BUTTON_TRANSPARENT_PARAMETER = "parameters/buttonTransparent";

  public static final String CONTAINER_BUTTON_TRANSPARENT_PARAMETER = "parameters/containerButtonTransparent";

  public static final String GRID_WIDTH_PARAMETER = "parameters/gridWidth";

  public static final String GRID_X_PARAMETER = "parameters/gridX";

  public static final String GRID_Y_PARAMETER = "parameters/gridY";

  public static final String AUTO_RESIZE_MODE = "parameters/autoResizeMode";

  public static final String CONTAINER_BUTTON_PLACEMENT_PARAMETER = "parameters/containerButtonPlacement";

  public static final String EXISTS_PARAMETER = "parameters/exists";

  public static final String TABLE_COLUMN_POSITION_PARAMETER = "parameters/tableColumnPosition";

  public static final String WEIGHT_X_PARAMETER = "parameters/weightX";

  public static final String SHOW_BORDER_PARAMETER = "parameters/showBorder";

  public static final String DELETE_CONFIRMATION_NEEDED_PARAMETER = "parameters/deleteConfirmationNeeded";

  public static final String OLD_STYLE_VALIDATION_PARAMETER = "parameters/oldStyleValidation";

  public static final String CMS_CONTEXT = Cms.CMS_CONTEXT;

  public static final String BACKGROUND_TRANSPARENT_PARAMETER = "parameters/transparentBackground";

  public static final String SELECT_ALL_ON_FOCUS_GAINED_PARAMETER = "parameters/selectAllOnFocusGained";

  public static final String CACHE_LIFE_TIME_PARAMETER = "parameters/cacheLifeTime";

  public static final String INSETS_BOTTOM_PARAMETER = "parameters/insetsBottom";

  public static final String INSETS_TOP_PARAMETER = "parameters/insetsTop";

  public static final String INSETS_LEFT_PARAMETER = "parameters/insetsLeft";

  public static final String INSETS_RIGHT_PARAMETER = "parameters/insetsRight";

  public static final String LABEL_INSETS_BOTTOM_PARAMETER = "parameters/labelInsetsBottom";

  public static final String LABEL_INSETS_TOP_PARAMETER = "parameters/labelInsetsTop";

  public static final String LABEL_INSETS_LEFT_PARAMETER = "parameters/labelInsetsLeft";

  public static final String LABEL_INSETS_RIGHT_PARAMETER = "parameters/labelInsetsRight";

  public enum LayoutType
  {
    LABEL_FIELD_ICON_LAYOUT, ICON_LABEL_FIELD_LAYOUT, LABEL_ICON_FIELD_LAYOUT, ICON_LABEL_ON_FIELD_LAYOUT, LABEL_ICON_ON_FIELD_LAYOUT, LABEL_ON_ICON_FIELD_LAYOUT, LABEL_ON_FIELD_ICON_LAYOUT
  };

  protected static LayoutType getLayoutType(String layout)
  {
    LayoutType result;

    result = LayoutType.LABEL_FIELD_ICON_LAYOUT;
    if (layout.equals(KnownParameters.LABEL_FIELD_ICON_LAYOUT))
    {
      result = LayoutType.LABEL_FIELD_ICON_LAYOUT;
    }
    else if (layout.equals(KnownParameters.ICON_LABEL_ON_FIELD_LAYOUT))
    {
      result = LayoutType.ICON_LABEL_ON_FIELD_LAYOUT;
    }
    else if (layout.equals(KnownParameters.LABEL_FIELD_ICON_LAYOUT))
    {
      result = LayoutType.LABEL_FIELD_ICON_LAYOUT;
    }
    else if (layout.equals(KnownParameters.LABEL_ICON_FIELD_LAYOUT))
    {
      result = LayoutType.LABEL_ICON_FIELD_LAYOUT;
    }
    else if (layout.equals(KnownParameters.LABEL_ICON_ON_FIELD_LAYOUT))
    {
      result = LayoutType.LABEL_ICON_ON_FIELD_LAYOUT;
    }
    else if (layout.equals(KnownParameters.LABEL_ON_ICON_FIELD_LAYOUT))
    {
      result = LayoutType.LABEL_ON_ICON_FIELD_LAYOUT;
    }
    else if (layout.equals(KnownParameters.LABEL_ON_FIELD_ICON_LAYOUT))
    {
      result = LayoutType.LABEL_ON_FIELD_ICON_LAYOUT;
    }
    else if (layout.equals(KnownParameters.ICON_LABEL_FIELD_LAYOUT))
    {
      result = LayoutType.ICON_LABEL_FIELD_LAYOUT;
    }
    return result;
  }
}
