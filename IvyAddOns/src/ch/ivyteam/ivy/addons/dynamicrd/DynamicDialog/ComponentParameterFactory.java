package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.Hashtable;
import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType.ComponentTypeEnum;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.DataClassAttributeDetail;
import ch.ivyteam.ivy.addons.util.IvyDatabase;
import ch.ivyteam.ivy.scripting.objects.Date;

/**
 * Creates component parameters according to the CMS. This factory supports creation container and field
 * parameters.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 01.10.2008
 */
public class ComponentParameterFactory
{
  static final String COMBO_BOX = "ComboBox";

  static final String DATE_PICKER = "DatePicker";

  static final String GRID_BAG_LAYOUT_PANE = "GridBagLayoutPane";

  static final String LOOKUP_TEXT_FIELD = "LookupTextField";

  static final String RADIO_BUTTONS = "RadioButtons";

  static final String TASK_PANE = "TaskPane";

  static final String TEXT_AREA = "TextArea";

  static final String TEXT_FIELD = "TextField";

  public static ComponentParameters CreateParametersComponent(Configuration configuration,
          DataClassAttributeDetail attributeDetail, String databaseConfiguration, boolean isContainer,
          ContainerParameters parentContainerParameters, Hashtable<String, String> valueSubstitution,
          String databaseParameterSubFolder)
  {
    String widgetName;
    ComponentType.ComponentTypeEnum componentType;
    ComponentParameters component;
    List<String> cmsContexts;
    String name;
    String fullName;
    List<String[]> recordsetRef;
    int size;

    cmsContexts = attributeDetail.cmsContexts;
    name = attributeDetail.name;
    fullName = attributeDetail.fullName;
    component = null;
    componentType = ComponentTypeEnum.NONE;
    recordsetRef = null;

    widgetName = Cms.co(cmsContexts, KnownParameters.WIDGET_PARAMETER);

    if (isContainer)
    {
      if (Cms.coAsBoolean(cmsContexts, KnownParameters.GROUP_PARAMETER, true))
      {
        componentType = ComponentTypeEnum.TASK_PANE;
      }
      else
      {
        componentType = ComponentTypeEnum.INSIDE;
      }
    }
    else
    {
      recordsetRef = Cms.crRecordSet(cmsContexts, "values");
      if (recordsetRef != null)
      {
        size = recordsetRef.size();
      }
      else
      {
        size = getRecordsetSize(configuration, cmsContexts, databaseConfiguration, valueSubstitution,
                databaseParameterSubFolder);
      }

      if (size == 0)
      {
        // TODO pjoly: Use DatePicker with Date type. Wait on IvyTeam issue.
        // if (attributeDetail != null
        // && attributeDetail.propertyType.equals(Date.class)) {
        // componentType = ComponentTypeEnum.DATE_PICKER;
        // } else {
        // componentType = ComponentTypeEnum.TEXT_FIELD;
        // }
        componentType = ComponentTypeEnum.TEXT_FIELD;
      }
      else if (size <= 4)
      {
        componentType = ComponentTypeEnum.RADIO_BUTTON;
      }
      else if (size <= 40)
      {
        componentType = ComponentTypeEnum.COMBO_BOX;
      }
      else
      {
        componentType = ComponentTypeEnum.LOOKUP_TEXT_FIELD;
      }
    }

    if (isContainer)
    {
      if (widgetName.equals(TASK_PANE))
      {
        componentType = ComponentTypeEnum.TASK_PANE;
      }
      else if (widgetName.equals(GRID_BAG_LAYOUT_PANE))
      {
        componentType = ComponentTypeEnum.GRID_BAG_LAYOUT_PANE;
      }
    }
    else
    {
      if (widgetName.equals(COMBO_BOX))
      {
        componentType = ComponentType.ComponentTypeEnum.COMBO_BOX;
      }
      else if (widgetName.equals(TEXT_FIELD))
      {
        componentType = ComponentType.ComponentTypeEnum.TEXT_FIELD;
      }
      else if (widgetName.equals(TEXT_AREA))
      {
        componentType = ComponentType.ComponentTypeEnum.TEXT_AREA;
      }
      else if (widgetName.equals(RADIO_BUTTONS))
      {
        componentType = ComponentType.ComponentTypeEnum.RADIO_BUTTON;
      }
      else if (widgetName.equals(LOOKUP_TEXT_FIELD))
      {
        componentType = ComponentType.ComponentTypeEnum.LOOKUP_TEXT_FIELD;
      }
      else if (widgetName.equals(DATE_PICKER))
      {
        componentType = ComponentType.ComponentTypeEnum.DATE_PICKER;
      }
    }

    switch (componentType)
    {
      case COMBO_BOX:
        component = new ComboBoxParameters(configuration, cmsContexts, name, fullName, recordsetRef,
                parentContainerParameters);
        break;
      case TEXT_FIELD:
        Boolean isDate = false;
        Boolean isNumber = false;

        if (attributeDetail != null)
        {
          if (attributeDetail.propertyType.equals(Date.class))
          {
            isDate = true;
          }

          if (attributeDetail.propertyType.equals(Number.class))
          {
            isNumber = true;
          }

        }

        component = new TextFieldParameters(configuration, cmsContexts, name, fullName, isNumber, isDate,
                parentContainerParameters);
        break;
      case DATE_PICKER:
        component = new DatePickerParameters(configuration, cmsContexts, name, fullName,
                parentContainerParameters);
        break;
      case TEXT_AREA:
        component = new TextAreaParameters(configuration, cmsContexts, name, fullName,
                parentContainerParameters);
        break;
      case RADIO_BUTTON:
        component = new RadioButtonParameters(configuration, cmsContexts, name, fullName, recordsetRef,
                parentContainerParameters);
        break;
      case LOOKUP_TEXT_FIELD:
        component = new LookupTextFieldParameters(configuration, cmsContexts, name, fullName, recordsetRef,
                parentContainerParameters);
        break;
      case TASK_PANE:
        component = new TaskPaneParameters(configuration, cmsContexts, name, fullName,
                parentContainerParameters);
        break;
      case GRID_BAG_LAYOUT_PANE:
        component = new GridBagLayoutPaneParameters(configuration, cmsContexts, name, fullName,
                parentContainerParameters);
        break;
      case INSIDE:
        component = new ContainerParameters(configuration, cmsContexts, name, fullName,
                parentContainerParameters);
        break;
    }
    return component;
  }

  private static int getRecordsetSize(Configuration configuration, List<String> cmsContexts,
          String databaseConfiguration, Hashtable<String, String> valueSubstitution,
          String databaseParameterSubFolder)
  {
    String query;
    List<String[]> recordset;

    recordset = null;
    query = FieldComponentWithListParameters.getQuery(configuration, cmsContexts, false);
    if (query != null && !query.equals(""))
    {
      recordset = IvyDatabase.invokeConstantDBQuery(query);
    }
    ;
    return recordset != null ? recordset.size() : 0;
  }
}
