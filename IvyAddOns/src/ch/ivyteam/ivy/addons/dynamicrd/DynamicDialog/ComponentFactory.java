package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType.ComponentTypeEnum;

import com.ulcjava.base.application.ULCContainer;

/**
 * Creates component objects according to the needs of the user. This factory supports creation container and
 * field component.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class ComponentFactory
{
  /**
   * Creates a new field component.
   * 
   * @param panel DynamicDialog panel in which the component is created
   * @param parentContainer parent container in which the component is created
   * @param ulcContainer 
   * @param parameters component's parameters
   * @return newly field component created
   */
  public static FieldComponent CreateComponent(DynamicDialogPanel panel, Container parentContainer,
          ULCContainer ulcContainer, ComponentParameters parameters)
  {
    FieldComponent component;

    component = null;

    switch (parameters.getComponentType())
    {
      case COMBO_BOX:
        component = new ComboBox(panel, parentContainer, ulcContainer, (ComboBoxParameters) parameters);
        break;
      case TEXT_FIELD:
        component = new TextField(panel, parentContainer, ulcContainer, (TextFieldParameters) parameters);
        break;
      case DATE_PICKER:
        component = new DatePicker(panel, parentContainer, ulcContainer, (DatePickerParameters) parameters);
        break;
      case TEXT_AREA:
        component = new TextArea(panel, parentContainer, ulcContainer, (TextAreaParameters) parameters);
        break;
      case RADIO_BUTTON:
        component = new RadioButton(panel, parentContainer, ulcContainer, (RadioButtonParameters) parameters);
        break;
      case LOOKUP_TEXT_FIELD:
        component = new LookupTextField(panel, parentContainer, ulcContainer,
                (LookupTextFieldParameters) parameters);
        break;
    }

    return component;

  }

  /**
   * Creates a new container.
   * 
   * @param panel DynamicDialog panel in which the component is created
   * @param parentContainer parent container in which the component is created
   * @param ulcContainer 
   * @param parameters component's parameters
   * @param height height used in the GridBagLayout
   * @return newly field component created
   */
  public static Container CreateContainer(DynamicDialogPanel panel, Container parentContainer,
          ULCContainer ulcContainer, ContainerParameters parameters, Integer height)
  {
    Container container;
    ComponentTypeEnum type;

    type = ComponentTypeEnum.MAIN;
    if (parentContainer != null)
      type = parameters.getComponentType();

    container = null;

    switch (type)
    {
      case GRID_BAG_LAYOUT_PANE:
        container = new GridBagLayoutPane(panel, parentContainer, ulcContainer,
                (GridBagLayoutPaneParameters) parameters, height);
        break;
      case TASK_PANE:
        container = new TaskPane(panel, parentContainer, ulcContainer, (TaskPaneParameters) parameters,
                height);
        break;
      case INSIDE:
        container = new InsideContainer(panel, parentContainer, ulcContainer, parameters, height);
        break;
      case MAIN:
        container = new MainContainer(panel, ulcContainer, parameters, height);
        break;
    }

    return container;
  }

}
