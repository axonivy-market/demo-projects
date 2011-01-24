package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.TreeNode;
import ch.ivyteam.ivy.addons.restricted.util.TypeCategory;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.addons.util.IvyDatabase;
import ch.ivyteam.ivy.scripting.objects.Date;

/**
 * Creates component parameters according to the CMS. This factory supports creation container and field
 * parameters.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 01.10.2008
 */
@SuppressWarnings("unchecked")
public final class ComponentParameterFactory
{
  private ComponentParameterFactory()
  {
  }

  public static final String COMBO_BOX = "ComboBox";

  public static final String DATE_PICKER = "DatePicker";

  public static final String GRID_BAG_LAYOUT_PANE = "GridBagLayoutPane";

  public static final String LOOKUP_TEXT_FIELD = "LookupTextField";

  public static final String RADIO_BUTTONS = "RadioButtons";

  public static final String TASK_PANE = "TaskPane";

  public static final String TEXT_AREA = "TextArea";

  public static final String TEXT_FIELD = "TextField";

  public static final String CHECK_BOX = "CheckBox";

  public static final String TABBED_PANE = "TabbedPane";

  public static final String TABLE = "Table";

  public static final String MASTER_DETAIL = "MasterDetail";

  public static final String TEXT_FIELD_LIST = "TextFieldList";

  public static final String COMPONENT_LIST = "ComponentList";

  public static final String LAZY_FIELD = "LazyField";

  protected static ComponentParameters createParametersComponent(String name, Class clazz,
          ComplexComponentParameters parentParameters, List<String> cmsContexts, String fullName,
          Integer position, TreeNode<ComponentParameters> parameterTree, String defaultDBConfig)
  {
    return createParametersComponent(name, clazz, parentParameters, cmsContexts, fullName, position,
            parameterTree, defaultDBConfig, Cms.co(cmsContexts, KnownParameters.WIDGET_PARAMETER));
  }

  protected static ComponentParameters createParametersComponent(String name, Class clazz,
          ComplexComponentParameters parentParameters, List<String> cmsContexts, String fullName,
          Integer position, TreeNode<ComponentParameters> parameterTree, String defaultDBConfig,
          String widgetName)
  {
    ComponentType componentType;
    ComponentParameters component;
    List<String[]> recordsetRef;

    component = null;
    componentType = ComponentType.NONE;

    recordsetRef = Cms.crRecordSet(cmsContexts, "values");
    switch (TypeCategory.getCategory(clazz))
    {
      case COMPLEX:
        componentType = chooseContainerWidget(cmsContexts);
        break;
      case LIST:
        componentType = chooseListWidget();
        break;
      case SIMPLE:
        componentType = chooseFieldWidget(clazz, cmsContexts, recordsetRef, defaultDBConfig);
        break;
    }

    componentType = getComponentType(clazz, widgetName, componentType);

    switch (componentType)
    {
      case COMBO_BOX:
        component = new ComboBoxParameters(cmsContexts, name, fullName, recordsetRef, parentParameters,
                position, clazz, defaultDBConfig);
        break;
      case TEXT_FIELD:
        component = new TextFieldParameters(cmsContexts, name, fullName, parentParameters, position, clazz);
        break;
      case DATE_PICKER:
        component = new DatePickerParameters(cmsContexts, name, fullName, parentParameters, position, clazz);
        break;
      case TEXT_AREA:
        component = new TextAreaParameters(cmsContexts, name, fullName, parentParameters, position, clazz);
        break;
      case RADIO_BUTTON:
        component = new RadioButtonParameters(cmsContexts, name, fullName, recordsetRef, parentParameters,
                position, clazz, defaultDBConfig);
        break;
      case LOOKUP_TEXT_FIELD:
        component = new LookupTextFieldParameters(cmsContexts, name, fullName, recordsetRef,
                parentParameters, position, clazz, defaultDBConfig);
        break;
      case TEXT_FIELD_LIST:
        component = new TextFieldListParameters(cmsContexts, name, fullName, recordsetRef, parentParameters,
                position, clazz, defaultDBConfig);
        break;
      case CHECK_BOX:
        component = new CheckBoxParameters(cmsContexts, name, fullName, parentParameters, position, clazz);
        break;
      case LAZY_FIELD:
        component = new LazyFieldParameters(cmsContexts, name, fullName, parentParameters, position, clazz);
        break;
      case TASK_PANE:
        component = new TaskPaneParameters(cmsContexts, name, fullName, parentParameters, position, clazz);
        break;
      case GRID_BAG_LAYOUT_PANE:
        component = new GridBagLayoutPaneParameters(cmsContexts, name, fullName, parentParameters, position,
                clazz);
        break;
      case TABBED_PANE:
        component = new TabbedPaneParameters(cmsContexts, name, fullName, parentParameters, position, clazz);
        break;
      case INSIDE:
        component = new InsideContainerParameters(cmsContexts, name, fullName, parentParameters, position,
                clazz);
        break;
      case TABLE:
        component = new TableParameters(cmsContexts, name, fullName, parentParameters, position,
                parameterTree, clazz);
        break;
      case MASTER_DETAIL:
        component = new MasterDetailParameters(cmsContexts, name, fullName, parentParameters, position,
                parameterTree, clazz);
        break;
      case COMPONENT_LIST:
        component = new ComponentListParameter(cmsContexts, name, fullName, parentParameters, position,
                parameterTree, clazz);
        break;
    }
    return component;
  }

  private static ComponentType getComponentType(Class clazz, String widgetName, ComponentType componentType)
  {
    ComponentType result;

    result = componentType;

    switch (TypeCategory.getCategory(clazz))
    {
      case COMPLEX:
        if (widgetName.equals(TASK_PANE))
        {
          result = ComponentType.TASK_PANE;
        }
        else if (widgetName.equals(GRID_BAG_LAYOUT_PANE))
        {
          result = ComponentType.GRID_BAG_LAYOUT_PANE;
        }
        else if (widgetName.equals(TABBED_PANE))
        {
          result = ComponentType.TABBED_PANE;
        }
        break;
      case LIST:
        if (widgetName.equals(TABLE))
        {
          result = ComponentType.TABLE;
        }
        else if (widgetName.equals(MASTER_DETAIL))
        {
          result = ComponentType.MASTER_DETAIL;
        }
        else if (widgetName.equals(COMPONENT_LIST))
        {
          result = ComponentType.COMPONENT_LIST;
        }
        break;
      case SIMPLE:
        if (widgetName.equals(COMBO_BOX))
        {
          result = ComponentType.COMBO_BOX;
        }
        else if (widgetName.equals(TEXT_FIELD))
        {
          result = ComponentType.TEXT_FIELD;
        }
        else if (widgetName.equals(TEXT_AREA))
        {
          result = ComponentType.TEXT_AREA;
        }
        else if (widgetName.equals(RADIO_BUTTONS))
        {
          result = ComponentType.RADIO_BUTTON;
        }
        else if (widgetName.equals(LOOKUP_TEXT_FIELD))
        {
          result = ComponentType.LOOKUP_TEXT_FIELD;
        }
        else if (widgetName.equals(TEXT_FIELD_LIST))
        {
          result = ComponentType.TEXT_FIELD_LIST;
        }
        else if (widgetName.equals(DATE_PICKER))
        {
          result = ComponentType.DATE_PICKER;
        }
        else if (widgetName.equals(CHECK_BOX))
        {
          result = ComponentType.CHECK_BOX;
        }
        else if (widgetName.equals(LAZY_FIELD))
        {
          result = ComponentType.LAZY_FIELD;
        }
        break;
    }
    return result;
  }

  private static ComponentType chooseFieldWidget(Class clazz, List<String> cmsContexts,
          List<String[]> recordsetRef, String defaultDBConfig)
  {
    int size;

    if (recordsetRef != null)
    {
      size = recordsetRef.size();
    }
    else
    {
      size = getRecordsetSize(cmsContexts, defaultDBConfig);
    }

    ComponentType componentType;
    componentType = ComponentType.TEXT_FIELD;
    if (size == 0)
    {
      componentType = ComponentType.TEXT_FIELD;
      if (clazz != null)
      {
        if (clazz.equals(Date.class))
        {
          componentType = ComponentType.DATE_PICKER;
        }
        if (clazz.equals(Boolean.class))
        {
          componentType = ComponentType.CHECK_BOX;
        }
      }
    }
    else if (size <= 4)
    {
      componentType = ComponentType.RADIO_BUTTON;
    }
    else if (size <= 40)
    {
      componentType = ComponentType.COMBO_BOX;
    }
    else
    {
      componentType = ComponentType.LOOKUP_TEXT_FIELD;
    }
    return componentType;
  }

  private static ComponentType chooseContainerWidget(List<String> cmsContexts)
  {
    ComponentType componentType;
    if (Cms.coAsBoolean(cmsContexts, KnownParameters.GROUP_PARAMETER, true))
    {
      componentType = ComponentType.TASK_PANE;
    }
    else
    {
      componentType = ComponentType.INSIDE;
    }
    return componentType;
  }

  private static ComponentType chooseListWidget()
  {
    return ComponentType.TABLE;
  }

  private static int getRecordsetSize(List<String> cmsContexts, String defaultDBConfig)
  {
    String query;
    String dbConfig;
    List<String[]> recordset;

    recordset = null;
    query = FieldComponentWithListParameters.getQuery(cmsContexts, false);
    dbConfig = FieldComponentWithListParameters.getDBConfig(cmsContexts, defaultDBConfig);
    if (query != null && !query.equals(""))
    {
      try
      {
        recordset = IvyDatabase.invokeConstantDBQuery(query, dbConfig);
      }
      catch (AddonsException e)
      {
        throw new DynamicDialogException(e);
      }
    }
    return recordset != null ? recordset.size() : 0;
  }
}
