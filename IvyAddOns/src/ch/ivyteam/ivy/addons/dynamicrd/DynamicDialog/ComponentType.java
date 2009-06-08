package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

public class ComponentType
{
  /**
   * @author Patrick Joly, TI-Informatique
   * @since 12.09.2008
   */
  public enum ComponentTypeEnum
  {
    /**
     * Field that uses a RComboBox
     */
    COMBO_BOX,
    /**
     * Field that uses a RDatePicer
     */
    DATE_PICKER,
    /**
     * Container that contains a RGridBagLayoutPane
     */
    GRID_BAG_LAYOUT_PANE,
    /**
     * Container that reuses the parent container
     */
    INSIDE,
    /**
     * Field that use a RLookUpTextField
     */
    LOOKUP_TEXT_FIELD,
    /**
     * Container that is the main container
     */
    MAIN,
    /**
     * Unknown type
     */
    NONE,
    /**
     * Field that uses RRadioButton
     */
    RADIO_BUTTON,
    /**
     * Container that uses a RTaskPane
     */
    TASK_PANE,
    /**
     * Field that uses a RTextArea
     */
    TEXT_AREA,
    /**
     * Field that uses a RTextField
     */
    TEXT_FIELD
  }
}
