package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.KnownParameters.LayoutType;
import ch.ivyteam.ivy.addons.util.StringUtil;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.style.IStylableWidget;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.border.ULCAbstractBorder;
import com.ulcjava.base.application.border.ULCEmptyBorder;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.util.Color;

/**
 * Base class for all field components.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 06.10.2008
 */
public abstract class FieldComponent extends Component
{
  private static final String DEFAULT_ERROR_COLOR = "#ffd7d7";

  private static Color errorBackgroundColor;

  private static final String SYSTEM_VALIDATION_ERROR_BACKGROUND = "/system/validation/errorbackground";

  private RButton button = null;

  private Color defaultBackgroundColor;

  private RLabel exampleLabel = null;

  private boolean fieldBorderShown;

  private boolean firstValidation = true;

  private RLabel iconLabel = null;

  private NextToState nextToState;

  private RLabel label = null;

  private boolean mandatory = false;

  private ULCAbstractBorder oldBorder;

  private boolean valid = true;

  enum NextToState
  {
    NONE, FIRST, LAST, MIDDLE
  };

  /**
   * Constructs a new FieldComponent object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected FieldComponent(DynamicDialogPanel panel, ComplexComponent parentContainer,
          FieldComponentParameters parameters, int index)
  {
    super(panel, parentContainer, parameters, index);

    mandatory = getParameters().isMandatory();
    nextToState = NextToState.NONE;
  }

  protected void addComponent(ULCComponent fieldComponent, GridBagConstraints constraints)
  {
    getParentContainer().add(getFieldComponent(), constraints);
  }

  protected final void applyComponentStyle()
  {
    if (label != null)
    {
      if (getParameters().getLabelInsetsBottom() >= 0)
      {
        addStyleProperties(label, "insetsBottom", getParameters().getLabelInsetsBottom().toString());
      }
      if (getParameters().getLabelInsetsTop() >= 0)
      {
        addStyleProperties(label, "insetsTop", getParameters().getLabelInsetsTop().toString());
      }
      if (getParameters().getLabelInsetsLeft() >= 0)
      {
        addStyleProperties(label, "insetsLeft", getParameters().getLabelInsetsLeft().toString());
      }
      if (getParameters().getLabelInsetsRight() >= 0)
      {
        addStyleProperties(label, "insetsRight", getParameters().getLabelInsetsRight().toString());
      }
    }

    if (label != null)
    {
      label.setStyle(getParameters().getLabelStyle());
    }
    if (exampleLabel != null)
    {
      exampleLabel.setStyle(getParameters().getExampleLabelStyle());
    }
    if (iconLabel != null)
    {
      iconLabel.setStyle(getParameters().getIconStyle());
    }
    if (button != null)
    {
      button.setStyle(getParameters().getButtonStyle());
    }

    applyFieldStyles();
  }

  protected abstract void applyFieldStyles();

  private RButton getButton()
  {
    if (button == null)
    {
      button = new RButton();

      button.setName(getParameters().getName() + "Button");
      button.setIconUri(getParameters().getButtonIconUrl());
      if (getParameters().isButtonTransparent())
      {
        button.setOpaque(false);
        button.setBorderPainted(false);
        button.setContentAreaFilled(false);
        button.setBorder(new ULCEmptyBorder(0, 0, 0, 0));
        button.setBackground(getParentContainer().getUlcContainer().getBackground());
      }

      if (getParameters().getButtonToolTipText() != null)
      {
        button.setToolTipText(getParameters().getButtonToolTipText());
      }
      button.addActionListener(new IActionListener()
        {
          private static final long serialVersionUID = -6240607272669238663L;

          /**
           * {@inheritDoc}
           */
          public void actionPerformed(ActionEvent arg0)
          {
            invoke(getParameters().getButtonActionMethod());
          }
        });

      getUlcComponents().add(button);
    }
    return button;
  }

  private GridBagConstraints getConstraits(Position pos, Position offset)
  {
    GridBagConstraints constraints;
    Position usedOffset;

    usedOffset = offset;
    if (usedOffset == null)
    {
      usedOffset = new Position();
    }

    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + usedOffset.getPosX());
    constraints.setGridY(pos.getPosY() + usedOffset.getPosY());
    return constraints;
  }

  private GridBagConstraints getConstraits(Position pos, Position offset, int width)
  {
    GridBagConstraints constraints;

    constraints = getConstraits(pos, offset);
    constraints.setGridWidth(width);
    return constraints;
  }

  /**
   * Gets the default value that is defined in the parameters.
   * 
   * @return default value
   */
  public final String getDefaultValue()
  {
    return getParameters().getDefaultValue();
  }

  /**
   * This method initialize the label used as 2nd label or as example label.
   * 
   * @return example label widget
   */
  private RLabel getExampleLabelWidget()
  {
    if (exampleLabel == null)
    {
      exampleLabel = new RLabel();

      exampleLabel.setText(getParameters().getExampleLabelText());
      exampleLabel.setName(getParameters().getName() + "ExampleLabel");

      getUlcComponents().add(exampleLabel);
    }
    return exampleLabel;
  }

  /**
   * Returns the component that contains the editable part.
   * 
   * @return the ULC component
   */
  protected abstract ULCComponent getFieldComponent();

  /**
   * This method initialize the label used to display the validation icon.
   * 
   * @return validation icon label widget
   */
  private RLabel getIconLabelWidget()
  {
    if (iconLabel == null)
    {
      iconLabel = new RLabel();
      iconLabel.setName(getParameters().getName() + "IconLabel");

      getUlcComponents().add(iconLabel);
    }
    return iconLabel;
  }

  @Override
  public final String getLabel()
  {
    return label == null ? null : label.getText();
  }

  /**
   * This method initialize the label associated to the field.
   * 
   * @return label widget
   */
  private RLabel getLabelWidget()
  {
    if (label == null)
    {
      label = new RLabel();

      label.setText(getParameters().getTitle());
      label.setName(getParameters().getName() + "Label");

      getUlcComponents().add(label);
    }
    return label;
  }

  @Override
  public abstract FieldComponentParameters getParameters();

  /**
   * Gets the record that is selected in fields that proposes multiple choices.
   * 
   * @return selected record
   */
  public abstract String[] getSelectedRecord();

  /**
   * Gets the text displayed by the component.
   * 
   * @return displayed text
   */
  public abstract String getText();

  /**
   * Gets the Object that is used inside the component.
   * 
   * @return value as Object
   */
  public abstract Object getValue();

  /**
   * Gets the value as Boolean.
   * 
   * @return a Boolean when it's possible; null otherwise
   */
  public abstract Boolean getValueAsBoolean();

  /**
   * Gets the value as Date.
   * 
   * @return a Date when it's possible; null otherwise
   */
  public abstract Date getValueAsDate();

  /**
   * Gets the value as DateTime.
   * 
   * @return a DateTime when it's possible; null otherwise
   */
  public abstract DateTime getValueAsDateTime();

  /**
   * Gets the value as Duration.
   * 
   * @return a Duration when it's possible; null otherwise
   */
  public abstract Duration getValueAsDuration();

  /**
   * Gets the value as Number.
   * 
   * @return a Number when it's possible; null otherwise
   */
  public abstract Number getValueAsNumber();

  /**
   * Gets the value as String.
   * 
   * @return value as String
   */
  public abstract String getValueAsString();

  /**
   * Gets the value as Time.
   * 
   * @return a Time when it's possible; null otherwise
   */
  public abstract Time getValueAsTime();

  @Override
  protected final void initializeComponent(Position pos)
  {
    LayoutType layout;
    Position offset;
    int height;
    int width;
    int widgetWidth;
    boolean hasButton;
    ComplexComponent parentContainer;
    ComplexComponent grandParentContainer;
    ComplexComponent labelContainer;
    ComplexComponent iconContainer;
    ComplexComponent buttonContainer;
    Position parentPos;
    Position labelPos;
    Position iconPos;
    Position buttonPos;

    layout = KnownParameters.getLayoutType(getParameters().getFieldLayout());
    parentContainer = getParentContainer();
    labelContainer = parentContainer;
    iconContainer = parentContainer;
    buttonContainer = parentContainer;

    parentPos = parentContainer.getPos();
    labelPos = pos;
    iconPos = pos;
    buttonPos = pos;

    offset = null;
    height = 0;
    widgetWidth = GRID_BAG_COLUMN_WIDTH;
    if (!isNextTo())
    {
      widgetWidth *= getParameters().getGridWidth();
    }
    width = widgetWidth;

    if (nextToState != NextToState.NONE)
    {
      grandParentContainer = parentContainer.getParentContainer();

      switch (layout)
      {
        case ICON_LABEL_FIELD_LAYOUT:
          switch (nextToState)
          {
            case FIRST:
              labelContainer = grandParentContainer;
              iconContainer = grandParentContainer;
              labelPos = parentPos;
              iconPos = parentPos;
              break;
            case LAST:
              buttonContainer = grandParentContainer;
              buttonPos = parentPos;
              break;
          }
          break;
        case LABEL_FIELD_ICON_LAYOUT:
          switch (nextToState)
          {
            case FIRST:
              labelContainer = grandParentContainer;
              labelPos = parentPos;
              break;
            case LAST:
              iconContainer = grandParentContainer;
              iconPos = parentPos;
              buttonContainer = grandParentContainer;
              buttonPos = parentPos;
              break;
          }
          break;
        case LABEL_ICON_FIELD_LAYOUT:
          switch (nextToState)
          {
            case FIRST:
              labelContainer = grandParentContainer;
              iconContainer = grandParentContainer;
              labelPos = parentPos;
              iconPos = parentPos;
              break;
            case LAST:
              buttonContainer = grandParentContainer;
              buttonPos = parentPos;
              break;
          }
          break;
        case ICON_LABEL_ON_FIELD_LAYOUT:
        case LABEL_ICON_ON_FIELD_LAYOUT:
        case LABEL_ON_ICON_FIELD_LAYOUT:
        case LABEL_ON_FIELD_ICON_LAYOUT:
          break;
      }
    }

    if (getParameters().isLabelShown() || getParameters().isExampleLabelShown())
    {
      switch (layout)
      {
        case ICON_LABEL_FIELD_LAYOUT:
          offset = new Position(1, 0);
          break;
        case ICON_LABEL_ON_FIELD_LAYOUT:
          offset = new Position(1, 0);
          break;
        case LABEL_FIELD_ICON_LAYOUT:
          offset = new Position(0, 0);
          break;
        case LABEL_ICON_FIELD_LAYOUT:
          offset = new Position(0, 0);
          break;
        case LABEL_ICON_ON_FIELD_LAYOUT:
          offset = new Position(0, 0);
          break;
        case LABEL_ON_ICON_FIELD_LAYOUT:
          offset = new Position(1, 0);
          break;
        case LABEL_ON_FIELD_ICON_LAYOUT:
          offset = new Position(0, 0);
          break;
      }
    }
    if (getParameters().isLabelShown() && !getParameters().getTitle().equals(""))
    {
      labelContainer.add(getLabelWidget(), getConstraits(labelPos, offset));
    }
    if (getParameters().isExampleLabelShown() && getParameters().getExampleLabelText() != null)
    {
      labelContainer.add(getExampleLabelWidget(), getConstraits(labelPos, offset));
    }

    if (getParameters().isValidationIconShown())
    {
      switch (layout)
      {
        case ICON_LABEL_FIELD_LAYOUT:
          offset = new Position(0, 0);
          break;
        case ICON_LABEL_ON_FIELD_LAYOUT:
          offset = new Position(0, 0);
          break;
        case LABEL_FIELD_ICON_LAYOUT:
          offset = new Position(widgetWidth - 1, 0);
          break;
        case LABEL_ICON_FIELD_LAYOUT:
          offset = new Position(1, 0);
          break;
        case LABEL_ICON_ON_FIELD_LAYOUT:
          offset = new Position(widgetWidth - 1, 0);
          break;
        case LABEL_ON_ICON_FIELD_LAYOUT:
          offset = new Position(0, 1);
          break;
        case LABEL_ON_FIELD_ICON_LAYOUT:
          offset = new Position(widgetWidth - 1, 1);
          break;
      }
      iconContainer.add(getIconLabelWidget(), getConstraits(iconPos, offset));
    }

    hasButton = !getParameters().getButtonActionMethod().equals("");

    switch (layout)
    {
      case ICON_LABEL_FIELD_LAYOUT:
        offset = new Position(2, 0);
        width = widgetWidth - 2;
        break;
      case ICON_LABEL_ON_FIELD_LAYOUT:
        offset = new Position(1, 1);
        width = widgetWidth - 1;
        break;
      case LABEL_FIELD_ICON_LAYOUT:
        offset = new Position(1, 0);
        width = widgetWidth - 2;
        break;
      case LABEL_ICON_FIELD_LAYOUT:
        offset = new Position(2, 0);
        width = widgetWidth - 2;
        break;
      case LABEL_ICON_ON_FIELD_LAYOUT:
        offset = new Position(0, 1);
        width = widgetWidth;
        break;
      case LABEL_ON_ICON_FIELD_LAYOUT:
        offset = new Position(1, 1);
        width = widgetWidth - 1;
        break;
      case LABEL_ON_FIELD_ICON_LAYOUT:
        offset = new Position(0, 1);
        width = widgetWidth - 1;
        break;
    }
    // Remove the size of the button
    width--;

    addComponent(getFieldComponent(), getConstraits(pos, offset, width));

    if (hasButton)
    {
      switch (layout)
      {
        case ICON_LABEL_FIELD_LAYOUT:
          offset = new Position(widgetWidth - 1, 0);
          break;
        case ICON_LABEL_ON_FIELD_LAYOUT:
          offset = new Position(widgetWidth - 1, 1);
          break;
        case LABEL_FIELD_ICON_LAYOUT:
          offset = new Position(widgetWidth - 2, 0);
          break;
        case LABEL_ICON_FIELD_LAYOUT:
          offset = new Position(widgetWidth - 1, 0);
          break;
        case LABEL_ICON_ON_FIELD_LAYOUT:
          offset = new Position(widgetWidth - 1, 1);
          break;
        case LABEL_ON_ICON_FIELD_LAYOUT:
          offset = new Position(widgetWidth - 1, 1);
          break;
        case LABEL_ON_FIELD_ICON_LAYOUT:
          offset = new Position(widgetWidth - 2, 1);
          break;
      }
      buttonContainer.add(getButton(), getConstraits(buttonPos, offset));
    }

    switch (layout)
    {
      case ICON_LABEL_FIELD_LAYOUT:
        height = 1;
        break;
      case ICON_LABEL_ON_FIELD_LAYOUT:
        height = 2;
        break;
      case LABEL_FIELD_ICON_LAYOUT:
        height = 1;
        break;
      case LABEL_ICON_FIELD_LAYOUT:
        height = 1;
        break;
      case LABEL_ICON_ON_FIELD_LAYOUT:
        height = 2;
        break;
      case LABEL_ON_ICON_FIELD_LAYOUT:
        height = 2;
        break;
      case LABEL_ON_FIELD_ICON_LAYOUT:
        height = 2;
        break;
    }
    pos.setPosY(pos.getPosY() + height);

    fieldBorderShown = true;
    if (!getParameters().isFieldBorderShown())
    {
      setFieldBorderVisible(false);
    }

    postInitializeField();

    updateIconAndBackground(true);
  }

  /**
   * Returns if the field can be edited.
   * 
   * @return true if the content of the field can be edited; false otherwise
   */
  protected abstract boolean isEditable();

  /**
   * Returns if the border of the field is visible. This property is not used by every field components.
   * 
   * @return true if the border of the field should be visible; false otherwise
   */
  public final boolean isFieldBorderVisible()
  {
    return fieldBorderShown;
  }

  /**
   * Returns if a validation was already be done. The field validation is done explicitly or when the field
   * loose the focus.
   * @return true if it's the first time that a validation is done on this field; false otherwise
   */
  protected final boolean isFirstValidation()
  {
    return firstValidation;
  }

  /**
   * Returns if the field is mandatory.
   * 
   * @return true if the field should be filled by the user; false otherwise
   */
  public final boolean isMandatory()
  {
    return mandatory;
  }

  /**
   * Returns if the field is next to another one.
   * 
   * @return true if the field should be positionned next to another one; false otherwise
   */
  public final boolean isNextTo()
  {
    return nextToState != NextToState.NONE;
  }

  /**
   * Returns if the content of the field is valid.
   * 
   * @return true if the content of the field is valid; false otherwise
   */
  protected final boolean isValid()
  {
    return valid;
  }

  /**
   * Method called when the common field intialisation is done.
   */
  protected abstract void postInitializeField();

  protected void setBackground(Color color)
  {
    getMainComponent().setBackground(color);
  }

  /**
   * Changes the editable state of this component. Not every field components manage this state.
   * 
   * @param value if true, the content of the field can be modified
   */
  public void setEditable(boolean value)
  {
    // Nothing
  }

  /**
   * Changes the border visibility state.
   * 
   * @param value if true, the border of the component is drawn
   */
  public final void setFieldBorderVisible(boolean value)
  {
    fieldBorderShown = value;
    if (oldBorder == null)
    {
      oldBorder = getFieldComponent().getBorder();
    }

    if (value)
    {
      if (oldBorder != null)
      {
        getMainComponent().setBorder(oldBorder);
      }
    }
    else
    {
      getMainComponent().setBorder(BorderFactory.createEmptyBorder());
    }
  }

  /**
   * Fills the field component with possible choices. For component that doesn't give choice, this method does
   * nothing.
   * 
   * @param keyValue key value list
   */
  public abstract void setKeyValue(List<String[]> keyValue);

  @Override
  public final void setLabel(String value)
  {
    if (label != null)
    {
      label.setText(value);
    }
  }

  /**
   * Indicates if the content of the field should always be filled by the user.
   * 
   * @param value if true, the field is mandatory; otherwise, it isn't
   */
  public final void setMandatory(boolean value)
  {
    mandatory = value;

    if (firstValidation)
    {
      updateIconAndBackground(valid);
    }
    else
    {
      validate();
    }
  }

  /**
   * Indicates if the field should be positionned next to another one.
   * 
   * @param value if true, the field is positionned next to another one; otherwise, the field is positionned
   *          in a column layout.
   */
  protected final void setNextTo(NextToState value)
  {
    nextToState = value;
  }

  /**
   * Forces the validation mechanism to return always false.
   * 
   * @param value if false, the validation returns always false; otherwise, the real result of the validation
   */
  public final void setValid(boolean value)
  {
    valid = value;
    validate();
  }

  /**
   * Fills the field component with the given value.
   * 
   * @param value value
   */
  public final void setValue(Object value)
  {
    setValue(value, null);
  }

  /**
   * Fills the field component with the given value. If the value given is the key of a component that uses a
   * list of values like ComboBox and LookupTextField and the value given is not a valid key, the given text
   * is used to fill the component.
   * 
   * @param value value
   * @param text displayed text
   */
  public abstract void setValue(Object value, String text);

  /**
   * Fills the field component with the given value as Boolean.
   * 
   * @param value value
   */
  public final void setValueAsBoolean(Boolean value)
  {
    setValueAsBoolean(value, null);
  }

  /**
   * Fills the field component with the given value as Boolean.
   * 
   * @param value value
   * @param text displayed text
   * 
   * @see #setValueAsString(String, String)
   */
  public abstract void setValueAsBoolean(Boolean value, String text);

  /**
   * Fills the field component with the date given as Date.
   * 
   * @param value value
   */
  public final void setValueAsDate(Date value)
  {
    setValueAsDate(value, null);
  }

  /**
   * Fills the field component with the given value as Date.
   * 
   * @param value value
   * @param text displayed text
   * 
   * @see #setValueAsString(String, String)
   */
  public abstract void setValueAsDate(Date value, String text);

  /**
   * Fills the field component with the value given as DateTime.
   * 
   * @param value value
   */
  public final void setValueAsDateTime(DateTime value)
  {
    setValueAsDateTime(value, null);
  }

  /**
   * Fills the field component with the given value as DateTime.
   * 
   * @param value value
   * @param text displayed text
   * 
   * @see #setValueAsString(String, String)
   */
  public abstract void setValueAsDateTime(DateTime value, String text);

  /**
   * Fills the field component with the value given as Duration.
   * 
   * @param value value
   */
  public final void setValueAsDuration(Duration value)
  {
    setValueAsDuration(value, null);
  }

  /**
   * Fills the field component with the given value as Duration.
   * 
   * @param value value
   * @param text displayed text
   * 
   * @see #setValueAsString(String, String)
   */
  public abstract void setValueAsDuration(Duration value, String text);

  /**
   * Fills the field component with the value given as Number.
   * 
   * @param value value
   */
  public final void setValueAsNumber(Number value)
  {
    setValueAsNumber(value, null);
  }

  /**
   * Fills the field component with the given value as Number.
   * 
   * @param value value
   * @param text displayed text
   * 
   * @see #setValueAsString(String, String)
   */
  public abstract void setValueAsNumber(Number value, String text);

  /**
   * Fills the field component with the value given as String.
   * 
   * @param value value
   */
  public final void setValueAsString(String value)
  {
    setValueAsString(value, null);
  }

  /**
   * Fills the field component with the value given as String. When the value is a key of component like
   * lookup text field, and the key does not exist in the proposed choices, the text is used to fill the
   * component.
   * 
   * @param value value
   * @param text diplayed text
   */
  public abstract void setValueAsString(String value, String text);

  /**
   * Fills the field component with the value given as Time.
   * 
   * @param value value
   */
  public final void setValueAsTime(Time value)
  {
    setValueAsTime(value, null);
  }

  /**
   * Fills the field component with the given value as Time.
   * 
   * @param value value
   * @param text displayed text
   * 
   * @see #setValueAsString(String, String)
   */
  public abstract void setValueAsTime(Time value, String text);

  protected final void setWeightX(IStylableWidget widget)
  {
    if (getParameters().getWeightX() >= 0)
    {
      setDefaultWeightX(widget);
    }
    else
    {
      if (isNextTo())
      {
        addStyleProperties(widget, "weightX", "1");
      }
    }
  }

  protected void updateIconAndBackground(boolean valid)
  {
    String iconUri;
    String errorBackgroundUri;
    String color;

    if (defaultBackgroundColor == null)
    {
      defaultBackgroundColor = getMainComponent().getBackground();
    }
    if (errorBackgroundColor == null)
    {
      errorBackgroundUri = Ivy.cms().cr(SYSTEM_VALIDATION_ERROR_BACKGROUND);
      color = DEFAULT_ERROR_COLOR;
      if (!errorBackgroundUri.equals(""))
      {
        color = Ivy.cms().co(errorBackgroundUri);
      }

      if (color.startsWith("#") && color.length() >= 7)
      {
        errorBackgroundColor = new Color(Integer.parseInt(color.substring(1, 3), 16), Integer.parseInt(color
                .substring(3, 5), 16), Integer.parseInt(color.substring(5, 7), 16));
      }
    }

    if (iconLabel != null)
    {
      if (valid)
      {
        if (isMandatory())
        {
          iconUri = getParameters().getMandatoryIconUrl();
        }
        else
        {
          iconUri = getParameters().getTransparentIconUrl();
        }
      }
      else
      {
        iconUri = getParameters().getErrorIconUrl();
      }
      iconLabel.setIconUri(iconUri);
    }
    if (isBackgroundColorChangedAllowed())
    {
      if (valid)
      {
        setBackground(defaultBackgroundColor);
      }
      else
      {
        setBackground(errorBackgroundColor);
      }
    }
  }

  protected abstract boolean isBackgroundColorChangedAllowed();

  /**
   * Fills the field component with its default value.
   */
  public final void useDefaultValue()
  {
    setValueAsString(getParameters().getDefaultValue(), null);
    callDefaultValueMethod();
  }

  private void callDefaultValueMethod()
  {
    invoke(getParameters().getDefaultValueMethodtMethod());
  }

  /**
   * Checks if the content of the field is valid and updates the validation icon.
   * 
   * @return true if the content of the field component is valid; false otherwise
   */
  public abstract boolean validate();

  protected final void validationDone(boolean isValid)
  {
    firstValidation = false;
    updateIconAndBackground(isValid);
  }

  protected final void updateVisibleChildren()
  {
    // Nothing to do
  }

  protected void updateEnabledChildren()
  {
    // Nothing to do
  }

  /**
   * Clears the validation status. The field thinks that it has never had a validation.
   */
  protected final void clearValidation()
  {
    firstValidation = true;
  }

  /**
   * The component request the focus.
   */
  public void requestFocus()
  {
    getMainComponent().requestFocus();
  }

  protected String buildFullName(ComplexComponent parentContainer, ComponentParameters parameters)
  {
    String result;

    if (parentContainer instanceof NextToContainer)
    {
      result = StringUtil.cleanUpPath(parentContainer.getFullName()
              + "/"
              + StringUtil.buildRelativePath(parentContainer.getParentContainer().getParameters()
                      .getFullName(), parameters.getFullName(), "/"));
    }
    else
    {
      result = buildDefaultFullName(parentContainer, parameters);
    }
    return result;
  }
}