package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCButtonGroup;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

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

  public RadioButton(DynamicDialogPanel panel, Container parentContainer, ULCContainer ulcContainer,
          RadioButtonParameters parameters)
  {
    super(panel, parentContainer, ulcContainer, parameters);

    lastSelectedIndex = -1;
  }

  @Override
  public void focusGained(String method)
  {
    super.focusGained(method);
  }

  @Override
  public void focusLost(String method)
  {
    validate();
    super.focusLost(method);
  }

  protected ULCButtonGroup getButtonGroup(int index)
  {
    if (radioButtonGroup == null)
    {
      radioButtonGroup = new ULCButtonGroup();
    }
    return radioButtonGroup;
  }

  @Override
  public ULCComponent getLastMainComponent()
  {
    return radioButtons[radioButtons.length - 1];
  }

  @Override
  public ULCComponent getMainComponent()
  {
    return radioButtons[0];
  }

  @Override
  public RadioButtonParameters getParameters()
  {
    return (RadioButtonParameters) parameters;
  }

  private RRadioButton getRadioButton(int index)
  {
    if (radioButtons[index] == null)
    {
      radioButtons[index] = new RRadioButton();
      radioButtons[index].setName(parameters.getName() + "RadioButton" + index);
      radioButtons[index].setGroup(getRadioButtonGroup());
    }
    return radioButtons[index];
  }

  protected ULCButtonGroup getRadioButtonGroup()
  {
    if (radioButtonGroup == null)
    {
      radioButtonGroup = new ULCButtonGroup();
    }
    return radioButtonGroup;
  }

  @Override
  protected int getSelectedIndex()
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

  @Override
  public void initialize(Position pos)
  {
    GridBagConstraints constraints;
    int index;

    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + 1);
    constraints.setGridY(pos.getPosY() + 0);
    gridBag = new RGridBagLayoutPane();
    gridBag.setName(parameters.getName());

    ulcContainer.add(gridBag, constraints);

    radioButtons = new RRadioButton[recordset.size()];

    index = 0;
    for (String[] record : recordset)
    {
      constraints = new GridBagConstraints();
      constraints.setGridX(index);
      constraints.setGridY(0);
      gridBag.add(getRadioButton(index), constraints);

      radioButtons[index].setText(record[1]);

      ulcComponents.add(radioButtons[index]);

      index++;
    }
    super.initialize(pos);

    for (RRadioButton radioButton : radioButtons)
    {
      radioButton.addValueChangedListener(new ValueChangedListener(this, getParameters()
              .getValueChangedMethod()));

      radioButton.addFocusListener(new FocusListener(this, getParameters().getFocusGainedMethod(),
              getParameters().getFocusLostMethod()));
    }
  }

  @Override
  public boolean isFocusable()
  {
    boolean result = true;
    for (RRadioButton r : radioButtons)
    {
      result = result && r.isFocusable();
    }
    return result;
  }

  @Override
  protected boolean isFillable()
  {
    return false;
  }

  @Override
  public void setFocusable(boolean b)
  {
    for (RRadioButton r : radioButtons)
    {
      r.setFocusable(b);
    }
  }

  @Override
  protected void setSelectedIndex(int index)
  {
    for (int i = 0; i < radioButtons.length; i++)
    {
      radioButtons[i].setSelected(i == index);
    }
    index = index++;
  }

  @Override
  protected void applyStyles()
  {
    super.applyStyles();
    for (RRadioButton r : radioButtons)
    {
      r.setStyle(getParameters().getFieldStyle());
    }
    gridBag.setStyle(getParameters().getInsideContainerStyle());
  }

  @Override
  protected void valueChanged(String method)
  {
    int index;

    index = getSelectedIndex();

    if (index != lastSelectedIndex && index != -1)
    {
      super.valueChanged(method);
    }

    lastSelectedIndex = index;
  }
}
