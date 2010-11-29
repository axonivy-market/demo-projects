package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

/**
 * Defined component types that permit to choose the right widget for a field.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public enum ComponentType
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
  TEXT_FIELD,
  /**
   * Field that uses a RTextField
   */
  CHECK_BOX,
  /**
   * Field that uses a RTabbedPane
   */
  TABBED_PANE,
  /**
   * List that uses a RList
   */
  TABLE,
  /**
   * List that uses a RTable and a edition part
   */
  MASTER_DETAIL,
  /**
   * Text field that can work with key/value
   */
  TEXT_FIELD_LIST,
  /**
   * List as multi-container
   */
  COMPONENT_LIST,
  /**
   * Field componant that the renderer is not know at the beginning
   */
  LAZY_FIELD
}
