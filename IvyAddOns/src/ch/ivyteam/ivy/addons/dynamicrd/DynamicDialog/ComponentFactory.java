package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

/**
 * Creates component objects according to the needs of the user. This factory supports creation container and
 * field component.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public final class ComponentFactory
{
  private ComponentFactory()
  {
  }

  /**
   * Creates a new field component.
   * 
   * @param panel DynamicDialog panel in which the component is created
   * @param parentContainer parent container in which the component is created
   * @param parameters component's parameters
   * @param index index of the component in a list
   * @return newly field component created
   */
  protected static FieldComponent createComponent(DynamicDialogPanel panel, ComplexComponent parentContainer,
          ComponentParameters parameters, int index)
  {
    FieldComponent component;

    component = null;

    switch (parameters.getComponentType())
    {
      case COMBO_BOX:
        component = new ComboBox(panel, parentContainer, (ComboBoxParameters) parameters, index);
        break;
      case TEXT_FIELD:
        component = new TextField(panel, parentContainer, (TextFieldParameters) parameters, index);
        break;
      case DATE_PICKER:
        component = new DatePicker(panel, parentContainer, (DatePickerParameters) parameters, index);
        break;
      case TEXT_AREA:
        component = new TextArea(panel, parentContainer, (TextAreaParameters) parameters, index);
        break;
      case RADIO_BUTTON:
        component = new RadioButton(panel, parentContainer, (RadioButtonParameters) parameters, index);
        break;
      case LOOKUP_TEXT_FIELD:
        component = new LookupTextField(panel, parentContainer, (LookupTextFieldParameters) parameters, index);
        break;
      case TEXT_FIELD_LIST:
        component = new TextFieldList(panel, parentContainer, (TextFieldListParameters) parameters, index);
        break;
      case CHECK_BOX:
        component = new CheckBox(panel, parentContainer, (CheckBoxParameters) parameters, index);
        break;
      case LAZY_FIELD:
        component = new LazyField(panel, parentContainer, (LazyFieldParameters) parameters, index);
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
   * @param index index of the component in a list
   * @return newly field component created
   */
  protected static ComplexComponent createContainer(DynamicDialogPanel panel,
          ComplexComponent parentContainer, ComplexComponentParameters parameters, int index)
  {
    ComplexComponent container;
    ComponentType type;

    type = ComponentType.MAIN;
    if (parentContainer != null)
    {
      type = parameters.getComponentType();
    }

    container = null;

    switch (type)
    {
      case GRID_BAG_LAYOUT_PANE:
        container = new GridBagLayoutPane(panel, parentContainer, (GridBagLayoutPaneParameters) parameters,
                index);
        break;
      case TASK_PANE:
        container = new TaskPane(panel, parentContainer, (TaskPaneParameters) parameters, index);
        break;
      case TABBED_PANE:
        container = new TabbedPane(panel, parentContainer, (TabbedPaneParameters) parameters, index);
        break;
      case INSIDE:
        container = new InsideContainer(panel, parentContainer, parameters, index);
        break;
      case MAIN:
        container = new MainContainer(panel, parameters, index);
        break;
    }

    return container;
  }

  /**
   * Creates a new list container.
   * 
   * @param panel DynamicDialog panel in which the component is created
   * @param parentContainer parent container in which the component is created
   * @param parameters component's parameters
   * @param index index of the component in a list
   * @return field component newly created
   */
  protected static ListComponent createListContainer(DynamicDialogPanel panel,
          ComplexComponent parentContainer, ComplexComponentParameters parameters, int index)
  {
    ListComponent container;
    ComponentType type;

    type = parameters.getComponentType();

    container = null;

    switch (type)
    {
      case TABLE:
        container = new Table(panel, parentContainer, (TableParameters) parameters, index);
        break;
      case MASTER_DETAIL:
        container = new MasterDetail(panel, parentContainer, (MasterDetailParameters) parameters, index);
        break;
      case COMPONENT_LIST:
        container = new ComponentList(panel, parentContainer, (ComponentListParameter) parameters, index);
        break;
    }

    return container;
  }

}
