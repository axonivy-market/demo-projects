package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComplexComponentParameters;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentParameterFactory;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.KnownParameters;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComplexComponentParameters.ContainerButtonPlacement;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager.ParameterTableTreeNodeContent.MyTreeNodeStyle;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager.ParameterTableTreeNodeContent.Type;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager.ParameterTreeListHelper.Item;
import ch.ivyteam.ivy.addons.restricted.util.CmsWriteAccess;
import ch.ivyteam.ivy.addons.restricted.util.TypeCategory;
import ch.ivyteam.ivy.addons.restricted.util.TypeCategory.TypeCategoryEnum;
import ch.ivyteam.ivy.addons.sudo.ContentObjectSystemSudo;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.cm.IContentManagementSystem;
import ch.ivyteam.ivy.cm.IContentObjectValue;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.scripting.objects.Tree;

import com.ulcjava.base.application.tree.TreePath;

/**
 * Help to manage the DynamicDialogManager tree that contains the parameters.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 27.10.2009
 */
public final class ParameterTreeHelper
{
  private static final String PARENT_RELATIVE_URI = "/..";

  private ParameterTreeHelper()
  {
  }

  private static final class TreeComparator implements Comparator<Tree>
  {
    /**
     * {@inheritDoc}
     */
    public int compare(Tree o1, Tree o2)
    {
      if ((o1.getChildCount() != 0) == (o2.getChildCount() == 0))
      {
        return o1.getChildCount() != 0 ? 1 : -1;
      }
      if (o1.getInfo() == null || o2.getInfo() == null)
      {
        return 0;
      }
      if (!o1.getInfo().getClass().equals(o2.getInfo().getClass()))
      {
        return 0;
      }
      if (o1.getInfo() instanceof String)
      {
        String value;

        value = (String) o1.getInfo();
        return value.compareTo(o2.getInfo().toString());
      }
      return 0;
    }
  }

  private static final class ContentObject
  {
    private Locale locale;

    private String uri;

    private int menuFlags;

    private Object object;

    private String nodeSubPath;

    private Locale getLocale()
    {
      return locale;
    }

    private String getUri()
    {
      return uri.startsWith("X") ? uri.substring(1) : uri;
    }

    private int getMenuFlags()
    {
      return menuFlags;
    }

    private Object getObject()
    {
      return object;
    }

    private String getNodeSubPath()
    {
      return nodeSubPath;
    }

    private ContentObject(String uri, String nodeSubPath, Locale locale, int menuFlags)
    {
      this(uri, nodeSubPath, locale, menuFlags, null);
    }

    private ContentObject(String uri, String nodeSubPath, Locale locale, int menuFlags, Object object)
    {
      super();
      this.uri = uri;
      this.locale = locale;
      this.menuFlags = menuFlags;
      this.object = object;
      this.nodeSubPath = nodeSubPath;
    }
  }

  private static final int REMOVE = 1 << 0;

  private static final int UP = 1 << 1;

  private static final int DOWN = 1 << 2;

  /**
   * Fills a tree with all parameters for a specific node.
   * 
   * @param cmsPath CMS uri where the parameters should be read
   * @param cmsContext CMS context to use
   * @param clazz java class of the attributed
   * @param showAdvanced if true, the advanced properties are shown
   * @param selectedNode tree node for which the parameters are needed
   * @param cms Ivy content management to used
   * @return a tree that contains all the parameters
   * @throws PersistencyException
   */
  @SuppressWarnings("unchecked")
public static Tree fillTree(String cmsPath, List<String> cmsContext, Class clazz, boolean showAdvanced,
          Tree selectedNode, IContentManagementSystem cms) throws PersistencyException
  {
    Tree tree;
    Tree plainStrings;
    Tree parameters;
    Tree styles;
    Tree methods;
    Tree sql;
    Tree buttons;
    Tree button;
    Tree values;
    Tree node;

    tree = new Tree();

    plainStrings = new Tree(null, "plainStrings");
    tree.add(plainStrings);
    parameters = new Tree(null, "parameters");
    tree.add(parameters);
    styles = null;
    methods = null;

    node = new Tree(null, "label");
    plainStrings.add(node);
    node.add(getTreeItem(KnownParameters.LABEL_STRING, Type.STRING, cmsPath, cmsContext, cms
            .getDefaultLanguage(), cms));
    for (Locale locale : cms.getSupportedLanguages())
    {
      if (locale.equals(cms.getDefaultLanguage()))
      {
        continue;
      }
      node.add(getTreeItem(KnownParameters.LABEL_STRING, Type.STRING, cmsPath, cmsContext, locale, cms));
    }
    if (showAdvanced)
    {
      node = new Tree(null, "shortLabel");
      plainStrings.add(node);
      node.add(getTreeItem(KnownParameters.SHORT_LABEL_STRING, Type.STRING, cmsPath, cmsContext, cms
              .getDefaultLanguage(), cms));
      for (Locale locale : cms.getSupportedLanguages())
      {
        if (locale.equals(cms.getDefaultLanguage()))
        {
          continue;
        }
        node.add(getTreeItem(KnownParameters.SHORT_LABEL_STRING, Type.STRING, cmsPath, cmsContext, locale,
                cms));
      }
      node = new Tree(null, "tooltip");
      plainStrings.add(node);
      node.add(getTreeItem(KnownParameters.TOOL_TIP_STRING, Type.STRING, cmsPath, cmsContext, cms
              .getDefaultLanguage(), cms));
      for (Locale locale : cms.getSupportedLanguages())
      {
        if (locale.equals(cms.getDefaultLanguage()))
        {
          continue;
        }
        node.add(getTreeItem(KnownParameters.TOOL_TIP_STRING, Type.STRING, cmsPath, cmsContext, locale, cms));
      }
      node = new Tree(null, "example");
      plainStrings.add(node);
      node.add(getTreeItem(KnownParameters.EXAMPLE_LABEL_STRING, Type.STRING, cmsPath, cmsContext, cms
              .getDefaultLanguage(), cms));
      for (Locale locale : cms.getSupportedLanguages())
      {
        if (locale.equals(cms.getDefaultLanguage()))
        {
          continue;
        }
        node.add(getTreeItem(KnownParameters.EXAMPLE_LABEL_STRING, Type.STRING, cmsPath, cmsContext, locale,
                cms));
      }

      node = new Tree(null, "buttonTooltip");
      plainStrings.add(node);
      node.add(getTreeItem(KnownParameters.BUTTON_TOOL_TIP_STRING, Type.STRING, cmsPath, cmsContext, cms
              .getDefaultLanguage(), cms));
      for (Locale locale : cms.getSupportedLanguages())
      {
        if (locale.equals(cms.getDefaultLanguage()))
        {
          continue;
        }
        node.add(getTreeItem(KnownParameters.BUTTON_TOOL_TIP_STRING, Type.STRING, cmsPath, cmsContext,
                locale, cms));
      }
    }
    parameters.add(getTreeItem(KnownParameters.POSITION_PARAMETER, Type.INTEGER, cmsPath, cmsContext, cms));
    switch (TypeCategory.getCategory(clazz))
    {
      case SIMPLE:
        parameters.add(getTreeItem(KnownParameters.WIDGET_PARAMETER, new String[] {
            ComponentParameterFactory.TEXT_FIELD, ComponentParameterFactory.TEXT_FIELD_LIST,
            ComponentParameterFactory.TEXT_AREA, ComponentParameterFactory.DATE_PICKER,
            ComponentParameterFactory.LOOKUP_TEXT_FIELD, ComponentParameterFactory.RADIO_BUTTONS,
            ComponentParameterFactory.COMBO_BOX, ComponentParameterFactory.LAZY_FIELD}, cmsPath, cmsContext,
                cms));
        break;
      case COMPLEX:
        parameters.add(getTreeItem(KnownParameters.WIDGET_PARAMETER, new String[] {
            ComponentParameterFactory.TASK_PANE, ComponentParameterFactory.GRID_BAG_LAYOUT_PANE,
            ComponentParameterFactory.TABBED_PANE}, cmsPath, cmsContext, cms));
        break;
      case LIST:
        parameters.add(getTreeItem(KnownParameters.WIDGET_PARAMETER, new String[] {
            ComponentParameterFactory.TABLE, ComponentParameterFactory.MASTER_DETAIL,
            ComponentParameterFactory.COMPONENT_LIST}, cmsPath, cmsContext, cms));
        break;
    }
    parameters.add(getTreeItem(KnownParameters.ENABLED_PARAMETER, Type.TRISTATE, cmsPath, cmsContext, cms));
    parameters.add(getTreeItem(KnownParameters.VISIBLE_PARAMETER, Type.TRISTATE, cmsPath, cmsContext, cms));
    parameters.add(getTreeItem(KnownParameters.EXISTS_PARAMETER, Type.TRISTATE, cmsPath, cmsContext, cms));
    if (showAdvanced)
    {
      parameters.add(getTreeItem(KnownParameters.NEW_COLUMN_PARAMETER, Type.TRISTATE, cmsPath, cmsContext,
              cms));
      parameters
              .add(getTreeItem(KnownParameters.FOCUSABLE_PARAMETER, Type.TRISTATE, cmsPath, cmsContext, cms));
      parameters
              .add(getTreeItem(KnownParameters.GRID_WIDTH_PARAMETER, Type.INTEGER, cmsPath, cmsContext, cms));
      parameters.add(getTreeItem(KnownParameters.GRID_X_PARAMETER, Type.INTEGER, cmsPath, cmsContext, cms));
      parameters.add(getTreeItem(KnownParameters.GRID_Y_PARAMETER, Type.INTEGER, cmsPath, cmsContext, cms));
      parameters.add(getTreeItem(KnownParameters.WEIGHT_X_PARAMETER, Type.NUMBER, cmsPath, cmsContext, cms));
    }
    switch (TypeCategory.getCategory(clazz))
    {
      case COMPLEX:
        parameters.add(getTreeItem(KnownParameters.GROUP_PARAMETER, Type.TRISTATE, cmsPath, cmsContext, cms));
        break;
      case SIMPLE:
        parameters.add(getTreeItem(KnownParameters.MANDATORY_PARAMETER, Type.TRISTATE, cmsPath, cmsContext,
                cms));
        if (showAdvanced)
        {
          parameters.add(getTreeItem(KnownParameters.TABLE_COLUMN_POSITION_PARAMETER, Type.INTEGER, cmsPath,
                  cmsContext, cms));
          parameters
                  .add(getTreeItem(KnownParameters.SORT_PARAMETER, Type.TRISTATE, cmsPath, cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.DEFAULT_VALUE_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.COLUMNS_PARAMETERS, Type.INTEGER, cmsPath, cmsContext,
                  cms));
          parameters.add(getTreeItem(KnownParameters.COLUMN_WIDTH_PARAMETERS, Type.INTEGER, cmsPath,
                  cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.ROW_PARAMETER, Type.INTEGER, cmsPath, cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.EDITABLE_PARAMETER, Type.TRISTATE, cmsPath, cmsContext,
                  cms));
          parameters.add(getTreeItem(KnownParameters.CELL_EDITABLE_PARAMETER, Type.TRISTATE, cmsPath,
                  cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.CELL_VISIBLE_PARAMETER, Type.TRISTATE, cmsPath,
                  cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.CELL_FORMAT_PARAMETER, Type.STRING, cmsPath, cmsContext,
                  cms));
          parameters.add(getTreeItem(KnownParameters.VALIDATION_PARAMETER, Type.STRING, cmsPath, cmsContext,
                  cms));
          parameters.add(getTreeItem(KnownParameters.OLD_STYLE_VALIDATION_PARAMETER, Type.TRISTATE, cmsPath,
                  cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.BLOCKING_VALIDATION_PARAMETER, Type.TRISTATE, cmsPath,
                  cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.ICON_VISIBLE_PARAMETER, Type.TRISTATE, cmsPath,
                  cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.BACKGROUND_TRANSPARENT_PARAMETER, Type.TRISTATE,
                  cmsPath, cmsContext, cms));

          parameters.add(getTreeItem(KnownParameters.NEXT_TO_PARAMETER, getNextToComponents(selectedNode),
                  cmsPath, cmsContext, cms));
        }
        break;
      case LIST:
        parameters.add(getTreeItem(KnownParameters.EDITABLE_PARAMETER, Type.TRISTATE, cmsPath, cmsContext,
                cms));
        parameters.add(getTreeItem(KnownParameters.DELETE_CONFIRMATION_NEEDED_PARAMETER, Type.TRISTATE,
                cmsPath, cmsContext, cms));
        parameters.add(getTreeItem(KnownParameters.ROW_PARAMETER, Type.INTEGER, cmsPath, cmsContext, cms));
        parameters.add(getTreeItem(KnownParameters.SORTABLE_TABLE, Type.TRISTATE, cmsPath, cmsContext, cms));
        parameters
                .add(getTreeItem(KnownParameters.SHOW_TABLE_HEADER, Type.TRISTATE, cmsPath, cmsContext, cms));
        parameters
                .add(getTreeItem(KnownParameters.AUTO_TABLE_HEADER, Type.TRISTATE, cmsPath, cmsContext, cms));
        parameters.add(getTreeItem(KnownParameters.AUTO_RESIZE_MODE,
                enumToStringArray(KnownParameters.ETableAutoResizeMode.values()), cmsPath, cmsContext, cms));
        break;
    }
    if (showAdvanced)
    {
      methods = new Tree(null, "methods");
      parameters.add(methods);

      methods.add(getTreeItem(KnownParameters.INIT_METHOD_PARAMETER, Type.STRING, cmsPath, cmsContext, cms));
      methods.add(getTreeItem(KnownParameters.POST_STARTUP_METHOD_PARAMETER, Type.STRING, cmsPath,
              cmsContext, cms));
      switch (TypeCategory.getCategory(clazz))
      {
        case COMPLEX:
          break;
        case SIMPLE:
          methods.add(getTreeItem(KnownParameters.BUTTON_ACTION_METHOD_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          methods.add(getTreeItem(KnownParameters.DEFAULT_VALUE_METHOD_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          break;
        case LIST:
          methods.add(getTreeItem(KnownParameters.ROW_SELECTION_METHOD_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          methods.add(getTreeItem(KnownParameters.PRE_INSERT_METHOD, Type.STRING, cmsPath, cmsContext, cms));
          break;
      }
      switch (TypeCategory.getCategory(clazz))
      {
        case COMPLEX:
          break;
        case SIMPLE:
        case LIST:
          methods.add(getTreeItem(KnownParameters.VALUE_CHANGED_METHOD_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          methods.add(getTreeItem(KnownParameters.ACTION_METHOD_PARAMETER, Type.STRING, cmsPath, cmsContext,
                  cms));
          methods.add(getTreeItem(KnownParameters.FOCUS_GAINED_METHOD_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          methods.add(getTreeItem(KnownParameters.FOCUS_LOST_METHOD_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
      }
      sortChildren(methods);

      methods.add(getTreeItem(KnownParameters.CONTROLLER_PARAMETER, Type.STRING, cmsPath, cmsContext, cms));
    }

    if (showAdvanced)
    {
      switch (TypeCategory.getCategory(clazz))
      {
        case COMPLEX:
          parameters.add(getTreeItem(KnownParameters.FIELD_LAYOUT_PARAMETER, new String[] {
              KnownParameters.ICON_LABEL_FIELD_LAYOUT, KnownParameters.LABEL_ICON_FIELD_LAYOUT,
              KnownParameters.LABEL_FIELD_ICON_LAYOUT, KnownParameters.LABEL_ICON_ON_FIELD_LAYOUT,
              KnownParameters.ICON_LABEL_ON_FIELD_LAYOUT, KnownParameters.LABEL_ON_FIELD_ICON_LAYOUT,
              KnownParameters.LABEL_ON_ICON_FIELD_LAYOUT}, cmsPath, cmsContext, cms));
          break;
        case SIMPLE:
          parameters.add(getTreeItem(KnownParameters.BUTTON_ICON_CMS_URI_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          break;
        case LIST:
          break;
      }

      if (showAdvanced)
      {
        parameters.add(getTreeItem(KnownParameters.INSETS_BOTTOM_PARAMETER, Type.INTEGER, cmsPath,
                cmsContext, cms));
        parameters.add(getTreeItem(KnownParameters.INSETS_TOP_PARAMETER, Type.INTEGER, cmsPath, cmsContext,
                cms));
        parameters.add(getTreeItem(KnownParameters.INSETS_LEFT_PARAMETER, Type.INTEGER, cmsPath, cmsContext,
                cms));
        parameters.add(getTreeItem(KnownParameters.INSETS_RIGHT_PARAMETER, Type.INTEGER, cmsPath, cmsContext,
                cms));
        switch (TypeCategory.getCategory(clazz))
        {
          case SIMPLE:
            parameters.add(getTreeItem(KnownParameters.LABEL_INSETS_BOTTOM_PARAMETER, Type.INTEGER, cmsPath,
                    cmsContext, cms));
            parameters.add(getTreeItem(KnownParameters.LABEL_INSETS_TOP_PARAMETER, Type.INTEGER, cmsPath,
                    cmsContext, cms));
            parameters.add(getTreeItem(KnownParameters.LABEL_INSETS_LEFT_PARAMETER, Type.INTEGER, cmsPath,
                    cmsContext, cms));
            parameters.add(getTreeItem(KnownParameters.LABEL_INSETS_RIGHT_PARAMETER, Type.INTEGER, cmsPath,
                    cmsContext, cms));
        }
      }

      switch (TypeCategory.getCategory(clazz))
      {
        case COMPLEX:
        case SIMPLE:
          parameters.add(getTreeItem(KnownParameters.SHOW_LABEL_PARAMETER, Type.TRISTATE, cmsPath,
                  cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.SHOW_EXAMPLE_LABEL_PARAMETER, Type.TRISTATE, cmsPath,
                  cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.SHOW_VALIDATION_ICON_PARAMETER, Type.TRISTATE, cmsPath,
                  cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.SHOW_FIELD_BORDER_PARAMETER, Type.TRISTATE, cmsPath,
                  cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.SELECT_ALL_ON_FOCUS_GAINED_PARAMETER, Type.TRISTATE,
                  cmsPath, cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.BUTTON_TRANSPARENT_PARAMETER, Type.TRISTATE, cmsPath,
                  cmsContext, cms));
          break;
        case LIST:
          break;
      }

      switch (TypeCategory.getCategory(clazz))
      {
        case COMPLEX:
          parameters.add(getTreeItem(KnownParameters.SHOW_BORDER_PARAMETER, Type.TRISTATE, cmsPath,
                  cmsContext, cms));
          parameters.add(getTreeItem(KnownParameters.CONTAINER_BUTTON_TRANSPARENT_PARAMETER, Type.TRISTATE,
                  cmsPath, cmsContext, cms));
          if (selectedNode == selectedNode.getRoot())
          {
            parameters.add(getTreeItem(KnownParameters.CACHE_LIFE_TIME_PARAMETER, Type.INTEGER, cmsPath,
                    cmsContext, cms));
          }
        case SIMPLE:
          break;
        case LIST:
          break;
      }

      styles = new Tree(null, "styles");
      parameters.add(styles);
      switch (TypeCategory.getCategory(clazz))
      {
        case COMPLEX:
        case SIMPLE:
          styles
                  .add(getTreeItem(KnownParameters.FIELD_STYLE_PARAMETER, Type.STRING, cmsPath, cmsContext,
                          cms));
          styles.add(getTreeItem(KnownParameters.MANDATORY_FIELD_STYLE_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          styles
                  .add(getTreeItem(KnownParameters.LABEL_STYLE_PARAMETER, Type.STRING, cmsPath, cmsContext,
                          cms));
          styles.add(getTreeItem(KnownParameters.EXAMPLE_LABEL_STYLE_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          styles.add(getTreeItem(KnownParameters.MANDATORY_LABEL_STYLE_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          styles
                  .add(getTreeItem(KnownParameters.ICON_STYLE_PARAMETER, Type.STRING, cmsPath, cmsContext,
                          cms));
          styles.add(getTreeItem(KnownParameters.SCROLL_PANE_STYLE_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          styles.add(getTreeItem(KnownParameters.BUTTON_STYLE_PARAMETER, Type.STRING, cmsPath, cmsContext,
                  cms));
          styles.add(getTreeItem(KnownParameters.TABLE_CELL_STYLE_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          break;
        case LIST:
          styles.add(getTreeItem(KnownParameters.SCROLL_PANE_STYLE_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          break;
      }
      styles
              .add(getTreeItem(KnownParameters.CONTAINER_STYLE_PARAMETER, Type.STRING, cmsPath, cmsContext,
                      cms));
      switch (TypeCategory.getCategory(clazz))
      {
        case COMPLEX:
          styles.add(getTreeItem(KnownParameters.CONTAINER_BUTTON_STYLE_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
        case LIST:
          styles
                  .add(getTreeItem(KnownParameters.TABLE_STYLE_PARAMETER, Type.STRING, cmsPath, cmsContext,
                          cms));
          break;
        case SIMPLE:
          break;
      }
      switch (TypeCategory.getCategory(clazz))
      {
        case COMPLEX:
          styles.add(getTreeItem(KnownParameters.INSIDE_CONTAINER_STYLE_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          styles.add(getTreeItem(KnownParameters.RADIO_CONTAINER_STYLE_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          styles.add(getTreeItem(KnownParameters.FIELD_FILLER_STYLE_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          styles.add(getTreeItem(KnownParameters.LABEL_FILLER_STYLE_PARAMETER, Type.STRING, cmsPath,
                  cmsContext, cms));
          break;
        case SIMPLE:
        case LIST:
          break;
      }

      switch (TypeCategory.getCategory(clazz))
      {
        case SIMPLE:
          sql = new Tree(null, "sql");
          parameters.add(sql);

          sql.add(getTreeItem(KnownParameters.KEY_COLUMN_NAME_PARAMETER, Type.STRING, cmsPath, cmsContext,
                  cms));
          sql.add(getTreeItem(KnownParameters.VALUE_COLUMN_NAME_PARAMETER, Type.STRING, cmsPath, cmsContext,
                  cms));
          sql
                  .add(getTreeItem(KnownParameters.OTHER_COLUMNS_PARAMETER, Type.STRING, cmsPath, cmsContext,
                          cms));
          sql.add(getTreeItem(KnownParameters.WHERE_PARAMETER, Type.STRING, cmsPath, cmsContext, cms));
          sql.add(getTreeItem(KnownParameters.TABLE_NAME_PARAMETER, Type.STRING, cmsPath, cmsContext, cms));
          sql
                  .add(getTreeItem(KnownParameters.SQL_STATEMENT_PARAMETER, Type.STRING, cmsPath, cmsContext,
                          cms));
          sql.add(getTreeItem(KnownParameters.DBCONFIG_PARAMETER, Type.STRING, cmsPath, cmsContext, cms));
          break;
        case COMPLEX:
          break;
        case LIST:
          break;
      }

      switch (TypeCategory.getCategory(clazz))
      {
        case COMPLEX:
          buttons = null;
          buttons = new Tree(null, "buttons");
          tree.add(buttons);

          for (int i = 1; i <= ComplexComponentParameters.NB_BUTTONS; i++)
          {
            NumberFormat nf;
            String suffix;

            nf = NumberFormat.getInstance();
            nf.setMinimumIntegerDigits(3);

            suffix = nf.format(i);

            button = new Tree(null, "button" + suffix);
            buttons.add(button);

            node = new Tree(null, "label");
            button.add(node);
            node.add(getTreeItem(KnownParameters.CONTAINER_BUTTON_LABEL_STRING + suffix, Type.STRING,
                    cmsPath, cmsContext, cms.getDefaultLanguage(), cms));
            for (Locale locale : cms.getSupportedLanguages())
            {
              if (locale.equals(cms.getDefaultLanguage()))
              {
                continue;
              }
              node.add(getTreeItem(KnownParameters.CONTAINER_BUTTON_LABEL_STRING + suffix, Type.STRING,
                      cmsPath, cmsContext, locale, cms));
            }
            node = new Tree(null, "tooltip");
            button.add(node);
            node.add(getTreeItem(KnownParameters.CONTAINER_BUTTON_TOOL_TIP_STRING + suffix, Type.STRING,
                    cmsPath, cmsContext, cms.getDefaultLanguage(), cms));
            for (Locale locale : cms.getSupportedLanguages())
            {
              if (locale.equals(cms.getDefaultLanguage()))
              {
                continue;
              }
              node.add(getTreeItem(KnownParameters.CONTAINER_BUTTON_TOOL_TIP_STRING + suffix, Type.STRING,
                      cmsPath, cmsContext, locale, cms));
            }

            node = new Tree(null, "parameters");
            button.add(node);
            node.add(getTreeItem(KnownParameters.CONTAINER_BUTTON_ACTION_METHOD_PARAMETER + suffix,
                    Type.STRING, cmsPath, cmsContext, cms));
            node.add(getTreeItem(KnownParameters.CONTAINER_BUTTON_STYLE_PARAMETER + suffix, Type.STRING,
                    cmsPath, cmsContext, cms));
            node.add(getTreeItem(KnownParameters.CONTAINER_BUTTON_ICON_CMS_URI_PARAMETER + suffix,
                    Type.STRING, cmsPath, cmsContext, cms));
            node.add(getTreeItem(KnownParameters.CONTAINER_BUTTON_TRANSPARENT_PARAMETER + suffix,
                    Type.TRISTATE, cmsPath, cmsContext, cms));
            node.add(getTreeItem(KnownParameters.CONTAINER_BUTTON_PLACEMENT_PARAMETER + suffix,
                    enumToStringArray(ContainerButtonPlacement.values()), cmsPath, cmsContext, cms));
          }
          break;
        case SIMPLE:
          break;
        case LIST:
          break;
      }
    }
    switch (TypeCategory.getCategory(clazz))
    {
      case COMPLEX:
        break;
      case SIMPLE:
        List<Item> list;

        list = ParameterTreeListHelper.readList(cmsPath);
        values = getTreeNodeItem(cmsPath + "/values", "values", REMOVE, list);
        tree.add(values);

        values.addAll(createTreeFromList(cmsPath, list, cms));
        break;
      case LIST:
        break;
    }

    tree.add(getTreeItem(KnownParameters.CMS_CONTEXT, Type.STRING, cmsPath, cmsContext, cms));

    if (parameters != null)
    {
      sortChildren(parameters);
    }
    if (styles != null)
    {
      sortChildren(styles);
    }

    return tree;
  }

  private static String[] getNextToComponents(Tree selectedNode)
  {
    String item;
    String selectedItem;
    List<String> items;
    List<String> result;
    Tree node;
    EncapsulationTreeNodeValue value;
    TypeCategoryEnum type;
    Object object;
    boolean isInList;

    items = new ArrayList<String>();
    result = new ArrayList<String>();

    selectedItem = null;
    for (Tree currentNode : selectedNode.getRoot())
    {
      object = currentNode.getValue();

      if (object instanceof EncapsulationTreeNodeValue)
      {
        value = (EncapsulationTreeNodeValue) object;
        type = TypeCategory.getCategory(value.getClazz());
        if (type == TypeCategoryEnum.SIMPLE)
        {
          item = "";
          isInList = false;
          node = currentNode;
          do
          {
            object = node.getValue();

            if (object instanceof EncapsulationTreeNodeValue)
            {
              value = (EncapsulationTreeNodeValue) object;
              type = TypeCategory.getCategory(value.getClazz());
              if (type == TypeCategoryEnum.LIST)
              {
                isInList = true;
                break;
              }
            }
            if (!item.equals(""))
            {
              item = "/" + item;
            }
            item = node.getInfo() + item;
            node = node.getParent();
          } while (node != null);

          if (isInList)
          {
            continue;
          }

          if (currentNode == selectedNode)
          {
            selectedItem = item;
            continue;
          }
          items.add(item);
        }
      }
    }

    if (selectedItem != null)
    {
      String replace;
      String by;
      String[] array = selectedItem.split("/");

      for (int i = 0; i < array.length - 1; i++)
      {
        replace = "";
        by = "";
        for (int j = 0; j < array.length - 1 - i; j++)
        {
          replace = replace + array[j] + "/";
        }

        for (int j = 0; j <= i; j++)
        {
          by = by + "../";
        }

        for (String s : items)
        {
          if (s.startsWith(replace))
          {
            result.add(s.replaceFirst(replace, by));
          }
        }
      }
    }
    return result.toArray(new String[0]);
  }

  private static ch.ivyteam.ivy.scripting.objects.List<Tree> createTreeFromList(String cmsPath,
          List<Item> list, IContentManagementSystem cms) throws PersistencyException
  {
    boolean first;
    boolean last;
    Tree item;
    Tree value;
    ch.ivyteam.ivy.scripting.objects.List<Tree> result;
    int count;

    result = ch.ivyteam.ivy.scripting.objects.List.create(Tree.class);

    first = true;
    last = false;

    count = list.size();
    for (Item keyValue : list)
    {
      count--;
      if (count == 0)
      {
        last = true;
      }
      item = getTreeNodeItem(cmsPath, "item", REMOVE + (first ? 0 : UP) + (last ? 0 : DOWN), null);
      result.add(item);

      item.add(getTreeItem(keyValue.getKeySubPath(), Type.STRING, cmsPath, null, cms));
      value = getTreeNodeItem(null, keyValue.getValueSubPath().split("/")[1], REMOVE, list);
      item.add(value);
      value.add(getTreeItem(keyValue.getValueSubPath(), Type.STRING, cmsPath, null, cms.getDefaultLanguage(),
              cms));

      for (Locale locale : cms.getSupportedLanguages())
      {
        if (locale.equals(cms.getDefaultLanguage()))
        {
          continue;
        }
        value.add(getTreeItem(keyValue.getValueSubPath(), Type.STRING, cmsPath, null, locale, cms));
      }
      first = false;
    }

    return result;
  }

  private static Tree getTreeItem(String nodeSubPath, Type type, String currentCmsPath,
          List<String> cmsContext, IContentManagementSystem cms) throws PersistencyException
  {
    return getTreeItem(nodeSubPath, type, currentCmsPath, cmsContext, REMOVE, cms);
  }

  private static Tree getTreeItem(String nodeSubPath, Type type, String currentCmsPath,
          List<String> cmsContext, int menuFlags, IContentManagementSystem cms) throws PersistencyException
  {
    return getTreeItem(nodeSubPath, type, currentCmsPath, cmsContext, null, menuFlags, cms);
  }

  private static Tree getTreeItem(String nodeSubPath, String[] values, String currentCmsPath,
          List<String> cmsContext, IContentManagementSystem cms)
  {
    return getTreeItem(nodeSubPath, values, currentCmsPath, cmsContext, REMOVE, cms);
  }

  private static Tree getTreeItem(String nodeSubPath, String[] values, String currentCmsPath,
          List<String> cmsContext, int menuFlags, IContentManagementSystem cms)
  {
    return getTreeItem(nodeSubPath, values, currentCmsPath, cmsContext, null, menuFlags, cms);
  }

  private static Tree getTreeItem(String nodeSubPath, String[] values, String currentCmsPath,
          List<String> cmsContext, Locale locale, int menuFlags, IContentManagementSystem cms)
  {
    String nodeName;

    nodeName = getNodeName(nodeSubPath);

    ParameterTableTreeNodeContent nodeContent = getNodeContent(nodeSubPath, Type.LIST, currentCmsPath,
            cmsContext, locale, menuFlags, cms);
    nodeContent.setAcceptedValues(values);

    return new Tree(nodeContent, nodeName);
  }

  private static Tree getTreeNodeItem(String uri, String nodeSubPath, int menuFlags, Object object)
  {
    String nodeName;

    nodeName = getNodeName(nodeSubPath);

    ParameterTableTreeNodeContent nodeContent = new ParameterTableTreeNodeContent();
    nodeContent.setObject(new ContentObject(uri, nodeSubPath, null, menuFlags, object));

    return new Tree(nodeContent, nodeName);
  }

  private static Tree getTreeItem(String nodeSubPath, Type type, String currentCmsPath,
          List<String> cmsContext, Locale locale, IContentManagementSystem cms) throws PersistencyException
  {
    return getTreeItem(nodeSubPath, type, currentCmsPath, cmsContext, locale, REMOVE, cms);
  }

  private static Tree getTreeItem(String nodeSubPath, Type type, String currentCmsPath,
          List<String> cmsContext, Locale locale, int menuFlags, IContentManagementSystem cms)
          throws PersistencyException
  {
    String nodeName;

    if (locale != null)
    {
      nodeName = locale.getDisplayLanguage();
      if (locale.equals(cms.getDefaultLanguage()))
      {
        nodeName += " (default)";
      }
    }
    else
    {
      nodeName = getNodeName(nodeSubPath);
    }

    ParameterTableTreeNodeContent nodeContent = getNodeContent(nodeSubPath, type, currentCmsPath, cmsContext,
            locale, menuFlags, cms);

    return new Tree(nodeContent, nodeName);
  }

  private static String getNodeName(String nodeSubPath)
  {
    String nodeName;
    String[] nodeSubPathItems;

    nodeSubPathItems = nodeSubPath.split("/");
    nodeName = nodeSubPathItems[nodeSubPathItems.length - 1];
    return nodeName;
  }

  private static ParameterTableTreeNodeContent getNodeContent(String nodeSubPath, Type type,
          String currentCmsPath, List<String> cmsContext, Locale locale, int menuFlags,
          IContentManagementSystem cms)
  {
    MyTreeNodeStyle style;
    String cmsPath;
    String value;
    ParameterTableTreeNodeContent nodeContent;

    if (cmsContext == null)
    {
      style = MyTreeNodeStyle.NORMAL;
    }
    else
    {
      cmsPath = Cms.cr(cmsContext, nodeSubPath, cms);

      style = MyTreeNodeStyle.ITALIC;

      for (String s : cmsContext)
      {
        if (s.equals(currentCmsPath))
        {
          style = MyTreeNodeStyle.NORMAL;
        }
        if (s.equals(cmsPath))
        {
          style = MyTreeNodeStyle.BOLD;
          value = "";
        }
      }
    }

    try
    {
      value = getCmsValue(currentCmsPath + "/" + nodeSubPath, locale, cms);
    }
    catch (Exception e)
    {
      value = "";
    }
    nodeContent = new ParameterTableTreeNodeContent(value, type);
    nodeContent.setStyle(style);
    nodeContent.setObject(new ContentObject(currentCmsPath + "/" + nodeSubPath, nodeSubPath, locale,
            menuFlags));
    return nodeContent;
  }

  private static String getCmsValue(String uri, Locale locale, IContentManagementSystem cms)
  {
    String value;
    IContentObjectValue objectValue;

    try
    {
      if (uri.startsWith(Cms.SPECIFIC_ENVIRONMENT_URI))
      {
        objectValue = ContentObjectSystemSudo.getContentObjectValue(uri, locale, true);
      }
      else
      {
        objectValue = cms.getContentObjectValue(uri, locale);
      }

      value = objectValue.getContentAsString();
      if (locale != null && !objectValue.getLanguage().equals(locale))
      {
        value = "";
      }
    }
    catch (Exception e)
    {
      value = "";
    }
    return value;
  }

  private static ParameterTableTreeNode getNode(TreePath path)
  {
    Object object;
    ParameterTableTreeNode node;

    node = null;
    do
    {
      if (path == null)
      {
        break;
      }

      object = path.getLastPathComponent();
      if (!(object instanceof ParameterTableTreeNode))
      {
        break;
      }

      node = (ParameterTableTreeNode) object;
    } while (false);

    return node;
  }

  private static ContentObject getContentObject(ParameterTableTreeNodeContent content)
  {
    Object object;
    ContentObject contentObject;

    contentObject = null;
    do
    {
      if (content == null)
      {
        break;
      }
      object = content.getObject();
      if (!(object instanceof ContentObject))
      {
        break;
      }

      contentObject = (ContentObject) object;
    } while (false);

    return contentObject;
  }

  /**
   * Stores a parameter in the Ivy content management system.
   * 
   * @param path tree path of the parameter node that the value should be stored in the Ivy content management
   *          system
   * @param cms Ivy content management system to use
   * @return true if the full tree should be reconstruct; false otherwise
   * @throws AddonsException
   */
  public static boolean storeValue(TreePath path, IContentManagementSystem cms) throws AddonsException
  {
    return storeValue(path, false, cms);
  }

  private static boolean storeValue(ParameterTableTreeNode node, boolean remove, IContentManagementSystem cms)
          throws AddonsException
  {
    ContentObject contentObject;
    ParameterTableTreeNodeContent content;
    Object value;
    String uri;
    Locale locale;
    boolean result;
    boolean shouldRemove;

    shouldRemove = remove;
    result = false;

    if (node != null)
    {
      content = node.getValue();
      contentObject = getContentObject(content);

      if (contentObject != null)
      {
        value = content.getContent();
        uri = contentObject.getUri();
        locale = contentObject.getLocale();

        if (value == null || "".equals(value.toString()))
        {
          shouldRemove = true;
        }

        if (shouldRemove)
        {
          CmsWriteAccess.remove(uri, locale, cms);
        }
        else
        {
          CmsWriteAccess.write(uri, value.toString(), locale, cms);
        }
        node.setContent(getCmsValue(uri, locale, cms));

        if (uri.contains(KnownParameters.KEY_VALUE) || uri.contains(KnownParameters.CONTENT_VALUE))
        {
          result = true;
        }
      }
    }
    return result;
  }

  private static boolean storeValue(TreePath path, Boolean remove, IContentManagementSystem cms)
          throws AddonsException
  {
    ParameterTableTreeNode node;

    node = getNode(path);
    return storeValue(node, remove, cms);
  }

  /**
   * Removes a parameter in the Ivy content management system.
   * 
   * @param path tree path of the parameter node that the value should be stored in the Ivy content management
   *          system
   * @param cms Ivy content management system to use
   * @throws AddonsException
   * @throws PersistencyException
   */
  public static void remove(TreePath path, IContentManagementSystem cms) throws AddonsException,
          PersistencyException
  {
    List<Item> list;
    ParameterTableTreeNode node;
    ParameterTableTreeNode parent;
    ParameterTableTreeNodeContent content;
    ContentObject contentObject;
    int index;

    if (getNode(path).isLeaf())
    {
      storeValue(path, true, cms);
    }
    else
    {
      node = getNode(path);
      if (node != null)
      {
        parent = (ParameterTableTreeNode) node.getParent();
        if (parent != null)
        {
          content = parent.getValue();
          contentObject = getContentObject(content);
          list = getContentObjectList(contentObject);
          if (list != null)
          {
            // I'm in an 'item' into a value list
            index = parent.getIndex(node);
            list = ParameterTreeListHelper.readList(contentObject.getUri() + PARENT_RELATIVE_URI);
            list.remove(index);
            ParameterTreeListHelper.writeList(contentObject.getUri() + PARENT_RELATIVE_URI, list, cms);
          }
        }
        content = node.getValue();
        contentObject = getContentObject(content);
        list = getContentObjectList(contentObject);
        if (list != null)
        {
          // I'm a value list
          list = ParameterTreeListHelper.readList(contentObject.getUri() + PARENT_RELATIVE_URI);
          list.clear();
          ParameterTreeListHelper.writeList(contentObject.getUri() + PARENT_RELATIVE_URI, list, cms);
        }
      }
    }
  }

  @SuppressWarnings("unchecked")
  private static List<Item> getContentObjectList(ContentObject contentObject)
  {
    Object object;
    List<Item> list;

    list = null;

    if (contentObject != null)
    {
      object = contentObject.getObject();
      if (object instanceof List)
      {
        list = (List<Item>) object;
      }
    }
    return list;
  }

  /**
   * Moves a tree node before the previous node.
   * 
   * @param path tree path of the item that should be moved
   * @param cms Ivy content management system to use
   * @throws PersistencyException
   * @throws AddonsException
   */
  public static void up(TreePath path, IContentManagementSystem cms) throws PersistencyException,
          AddonsException
  {
    upDown(path, true, cms);
  }

  private static void upDown(TreePath path, boolean up, IContentManagementSystem cms)
          throws PersistencyException, AddonsException
  {
    List<Item> list;
    ParameterTableTreeNode node;
    ParameterTableTreeNode parent;
    ParameterTableTreeNodeContent content;
    ContentObject contentObject;
    int index;

    node = getNode(path);
    if (node != null)
    {
      parent = (ParameterTableTreeNode) node.getParent();
      if (parent != null)
      {
        content = parent.getValue();
        contentObject = getContentObject(content);
        list = getContentObjectList(contentObject);
        if (list != null)
        {
          index = parent.getIndex(node);
          list = ParameterTreeListHelper.readList(contentObject.getUri() + PARENT_RELATIVE_URI);
          if (up)
          {
            if (index > 0)
            {
              list.add(index - 1, list.remove(index));
            }
          }
          else
          {
            if (index < parent.getChildCount() - 1)
            {
              list.add(index + 1, list.remove(index));
            }

          }
          ParameterTreeListHelper.writeList(contentObject.getUri() + PARENT_RELATIVE_URI, list, cms);
        }
      }
    }
  }

  /**
   * Moves a tree node after the next node.
   * 
   * @param path tree path of the item that should be moved
   * @param cms Ivy content management system to use
   * @throws PersistencyException
   * @throws AddonsException
   */
  public static void down(TreePath path, IContentManagementSystem cms) throws PersistencyException,
          AddonsException
  {
    upDown(path, false, cms);
  }

  /**
   * Gets flags that permit to update the contextual menu for a specific tree node.
   * 
   * @param path tree path of the item that should be moved
   * @return flag array that indicates wich operation is allowed on the tree node
   */
  public static boolean[] updateMenu(TreePath path)
  {
    boolean[] result;
    ParameterTableTreeNode node;
    Object object;
    int flags;

    flags = 0;

    object = path.getLastPathComponent();
    if (object instanceof ParameterTableTreeNode)
    {
      node = (ParameterTableTreeNode) object;

      object = node.getValue().getObject();
      if (object instanceof ContentObject)
      {
        ContentObject content = (ContentObject) object;
        flags = content.getMenuFlags();
      }
    }
    result = new boolean[3];
    result[0] = 0 != (flags & REMOVE);
    result[1] = 0 != (flags & UP);
    result[2] = 0 != (flags & DOWN);
    return result;
  }

  private static <T extends Enum<T>> String[] enumToStringArray(T[] values)
  {
    int i = 0;
    String[] result = new String[values.length];
    for (T value : values)
    {
      result[i++] = value.name();
    }
    return result;
  }

  private static void sortChildren(Tree tree)
  {
    if (tree.getChildCount() != 0)
    {
      ch.ivyteam.ivy.scripting.objects.List<Tree> children;
      children = tree.getChildren();
      Collections.sort(children, new TreeComparator());
      tree.removeAllChildren();
      tree.addAll(children);
    }
  }

  /**
   * Gets the help content of a parameter.
   * 
   * @param path tree path of the parameter
   * @param cms Ivy content management to used
   * @return help content
   */
  public static String getHelpContent(TreePath path, IContentManagementSystem cms)
  {
    String content;
    String uri;
    String httpURI;
    String baseURI;
    ParameterTableTreeNode node;
    Object object;
    Pattern pattern;
    Matcher matcher;
    StringBuffer buffer;
    String subPath;

    buffer = new StringBuffer();

    object = path.getLastPathComponent();
    if (object instanceof ParameterTableTreeNode)
    {
      node = (ParameterTableTreeNode) object;

      object = node.getValue().getObject();
      if (object instanceof ContentObject)
      {
        ContentObject contentObject = (ContentObject) object;
        baseURI = "/" + contentObject.getClass().getPackage().getName().replaceAll("\\.", "/") + "/help";
        
        subPath = contentObject.getNodeSubPath();
        subPath = subPath.replaceAll("[0-9]*$", "");
        uri = baseURI + "/texts/" + subPath;
        
        content = cms.co(uri);

        content = content.replace("<br />", "<br /><br />");

        pattern = Pattern.compile("#img#[^ '\"\r\n]*");
        matcher = pattern.matcher(content);

        while (matcher.find())
        {
          uri = baseURI + "/images/" + matcher.group().substring(5);
          httpURI = Ivy.html().coref(uri);
          matcher.appendReplacement(buffer, Matcher.quoteReplacement(httpURI));
        }
        matcher.appendTail(buffer);
      }
    }
    return buffer.toString();
  }

  /**
   * Gets the cms sub path of a parameter.
   * 
   * @param path tree path of the parameter
   * @param cms Ivy content management to used
   * @return sub path name
   */
  public static String getNodeSubPath(TreePath path, IContentManagementSystem cms)
  {
    ParameterTableTreeNode node;
    Object object;
    String result;

    result = "";

    object = path.getLastPathComponent();
    if (object instanceof ParameterTableTreeNode)
    {
      node = (ParameterTableTreeNode) object;

      object = node.getValue().getObject();
      if (object instanceof ContentObject)
      {
        ContentObject contentObject = (ContentObject) object;

        result = contentObject.getNodeSubPath();
      }
    }
    return result;
  }
}
