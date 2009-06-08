package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * This is the implementation of fields that use a RComboBox.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 13.09.2008
 */
public class ComboBox extends FieldComponentWithList
{
  private RComboBox comboBox = null;

  public ComboBox(DynamicDialogPanel panel, Container parentContainer, ULCContainer ulcContainer,
          ComboBoxParameters parameters)
  {
    super(panel, parentContainer, ulcContainer, parameters);
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

  private RComboBox getComboBox()
  {
    if (comboBox == null)
    {
      comboBox = new RComboBox();
      comboBox.setName(parameters.getName() + "ComboBox");
      // comboBox.setModelConfiguration("{/result \"\"/version \"3.0\"/icon \"\"/tooltip \"result=null\"}");
    }
    return comboBox;
  }

  @Override
  public ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  @Override
  public ULCComponent getMainComponent()
  {
    return comboBox;
  }

  @Override
  public ComboBoxParameters getParameters()
  {
    return (ComboBoxParameters) parameters;
  }

  @Override
  protected int getSelectedIndex()
  {
    return comboBox.getSelectedIndex();
  }

  @Override
  public void initialize(Position pos)
  {
    GridBagConstraints constraints;

    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + 1);
    constraints.setGridY(pos.getPosY() + 0);
    ulcContainer.add(getComboBox(), constraints);

    ulcComponents.add(comboBox);

    super.initialize(pos);

    comboBox.addActionListener(new ActionListener(this, getParameters().getValueChangedMethod()));

    comboBox.addFocusListener(new FocusListener(this, getParameters().getFocusGainedMethod(), getParameters()
            .getFocusLostMethod()));
  }

  @Override
  public boolean isFocusable()
  {
    return comboBox.isFocusable();
  }

  @Override
  public void setFocusable(boolean b)
  {
    comboBox.setFocusable(b);
  }

  @Override
  protected void setListData(ch.ivyteam.ivy.scripting.objects.List<String> comboData)
  {
    try
    {
      comboBox.setListData(comboData);
    }
    catch (Exception e)
    {
      throw new DynamicDialogException(e);
    }
  }

  @Override
  protected void setSelectedIndex(int index)
  {
    comboBox.setSelectedIndex(index);
  }

  @Override
  protected void applyStyles()
  {
    super.applyStyles();
    comboBox.setStyle(getParameters().getFieldStyle());
  }
}