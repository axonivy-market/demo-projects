package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.VisualDebugGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.scripting.objects.List;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCButtonGroup;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.util.Color;

/**
 * This is the implementation of fields that use a RRadioButton.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 14.09.2008
 */
public class RadioButton extends FieldComponentWithList
{
  private RGridBagLayoutPane gridBag = null;

  private int lastSelectedIndex;

  private ULCButtonGroup radioButtonGroup;

  private RRadioButton[] radioButtons = null;

  /**
   * Constructs a new RadioButton object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected RadioButton(DynamicDialogPanel panel, ComplexComponent parentContainer,
          RadioButtonParameters parameters, int index)
  {
    super(panel, parentContainer, parameters, index);

    lastSelectedIndex = -1;
  }

  @Override
  public final void focusLost()
  {
    validate();
    super.focusLost();
  }

  @Override
  public final ULCComponent getLastMainComponent()
  {
    return radioButtons != null ? radioButtons[radioButtons.length - 1] : null;
  }

  @Override
  public final ULCComponent getMainComponent()
  {
    return radioButtons != null ? radioButtons[0] : null;
  }

  @Override
  public final RadioButtonParameters getParameters()
  {
    return (RadioButtonParameters) getComponentParameters();
  }

  private RRadioButton getRadioButton(int index, String text)
  {
    if (radioButtons[index] == null)
    {
      radioButtons[index] = new RRadioButton();
      radioButtons[index].setName(getParameters().getName() + "RadioButton" + index);
      radioButtons[index].setGroup(getRadioButtonGroup());

      radioButtons[index].setText(text);

      radioButtons[index].addValueChangedListener(new ValueChangedListener(this, true));

      radioButtons[index].addFocusListener(new FocusListener(this));

      getUlcComponents().add(radioButtons[index]);
    }
    return radioButtons[index];
  }

  protected final ULCButtonGroup getRadioButtonGroup()
  {
    if (radioButtonGroup == null)
    {
      radioButtonGroup = new ULCButtonGroup();
    }
    return radioButtonGroup;
  }

  @Override
  protected final int getSelectedIndex()
  {
    int result = -1;
    int index = 0;

    for (RRadioButton r : radioButtons)
    {
      if (r.isSelected())
      {
        result = index;
        break;
      }
      index++;
    }
    return result;
  }

  private RGridBagLayoutPane getGridBag()
  {
    GridBagConstraints constraints;
    int index;

    if (gridBag == null)
    {
      gridBag = new VisualDebugGridBagLayoutPane();
      gridBag.setName(getParameters().getName());

      if (getRecordset() != null)
      {
        radioButtons = new RRadioButton[getRecordset().size()];

        index = 0;
        for (String[] record : getRecordset())
        {
          constraints = new GridBagConstraints();
          constraints.setGridX(index);
          constraints.setGridY(0);
          gridBag.add(getRadioButton(index, record[1]), constraints);

          index++;
        }
      }
      getUlcComponents().add(gridBag);
    }
    return gridBag;
  }

  @Override
  public final boolean isFocusable()
  {
    boolean result = true;
    for (RRadioButton r : radioButtons)
    {
      result = result && r.isFocusable();
    }
    return result;
  }

  @Override
  protected final boolean isFillable()
  {
    return false;
  }

  @Override
  public final void setFocusable(boolean b)
  {
    for (RRadioButton r : radioButtons)
    {
      r.setFocusable(b);
    }
  }

  @Override
  protected final void setSelectedIndex(int index)
  {
    for (int i = 0; i < radioButtons.length; i++)
    {
      radioButtons[i].setSelected(i == index);
    }
  }

  @Override
  protected final void applyFieldStyles()
  {
    for (RRadioButton r : radioButtons)
    {
      r.setStyle(getParameters().getFieldStyle());
    }
    getGridBag().setStyle(getParameters().getInsideContainerStyle());

    setWeightX(getGridBag());
    
    setInsetsSettingsTarget(getGridBag());
  }

  @Override
  public final void valueChanged()
  {
    int index;

    index = getSelectedIndex();

    if (index != lastSelectedIndex && index != -1)
    {
      super.valueChanged();
    }

    lastSelectedIndex = index;
  }

  @Override
  protected final ULCComponent getFieldComponent()
  {
    return getGridBag();
  }

  @Override
  protected final void setBackground(Color color)
  {
    // Nothing to do
  }

  @Override
  public final void setDisplayedText(String text)
  {
    throw new DynamicDialogException(getNoSuchMethodException("setDisplayedText", getClass()));
  }

  @Override
  protected void setListData(List<String> comboData)
  {
    throw new DynamicDialogException(getNoSuchMethodException("setListData", getClass()));
  }

  @Override
  public boolean validate()
  {
    return validateList();
  }

  @Override
  protected final boolean isEditable()
  {
    return false;
  }

  @Override
  protected String getDisplayedText()
  {
    throw new DynamicDialogException(getNoSuchMethodException("getDisplayedText", getClass()));
  }

  @Override
  protected boolean isBackgroundColorChangedAllowed()
  {
    return false;
  }
}
