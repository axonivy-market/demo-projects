package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;

import com.ulcjava.base.application.IComboBoxModel;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCComboBox.IKeySelectionManager;

/**
 * This is the implementation of fields that use a RComboBox.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 13.09.2008
 */
public class ComboBox extends FieldComponentWithList
{
  private final class KeySelectionManager implements IKeySelectionManager
  {
    // That code comes from
    // http://www.canoo.com/ulc/developerzone/apidoc/application/com/ulcjava/base/application/ULCComboBox.html#setKeySelectionManager%28com.ulcjava.base.application.ULCComboBox.IKeySelectionManager%29
    private static final int MAX_DELAY = 1000;

    private long fLastMillis = 0;

    private StringBuffer fLastEnteredChars = new StringBuffer();

    /**
     * {@inheritDoc}
     */
    public int selectionForKey(char keyChar, IComboBoxModel model)
    {
      {
        if (System.currentTimeMillis() - fLastMillis > MAX_DELAY)
        {
          fLastEnteredChars.setLength(0);
        }
        fLastMillis = System.currentTimeMillis();
        fLastEnteredChars.append(keyChar);
        for (int i = 0; i < model.getSize(); i++)
        {
          String item = model.getElementAt(i).toString().toLowerCase();
          String typedKeys = fLastEnteredChars.toString().toLowerCase();
          if (item.startsWith(typedKeys))
          {
            return i;
          }
        }
        return -1;
      }
    }
  }

  private RComboBox comboBox = null;

  /**
   * Constructs a new ComboBox object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected ComboBox(DynamicDialogPanel panel, ComplexComponent parentContainer,
          ComboBoxParameters parameters, int index)
  {
    super(panel, parentContainer, parameters, index);
  }

  @Override
  public final void focusLost()
  {
    validate();
    super.focusLost();
  }

  private RComboBox getComboBox()
  {
    if (comboBox == null)
    {
      comboBox = new RComboBox();
      comboBox.setName(getParameters().getName() + "ComboBox");

      comboBox.addActionListener(new ActionListener(this));

      comboBox.addFocusListener(new FocusListener(this));

      comboBox.setKeySelectionManager(new KeySelectionManager());

      getUlcComponents().add(comboBox);
    }
    return comboBox;
  }

  @Override
  public final ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  @Override
  public final ULCComponent getMainComponent()
  {
    return comboBox;
  }

  @Override
  public final ComboBoxParameters getParameters()
  {
    return (ComboBoxParameters) getComponentParameters();
  }

  @Override
  protected final int getSelectedIndex()
  {
    return comboBox.getSelectedIndex();
  }

  @Override
  public final boolean isFocusable()
  {
    return comboBox.isFocusable();
  }

  @Override
  public final void setFocusable(boolean b)
  {
    getComboBox().setFocusable(b);
  }

  @Override
  protected final void setListData(ch.ivyteam.ivy.scripting.objects.List<String> comboData)
  {
    try
    {
      getComboBox().setListData(comboData);
    }
    catch (Exception e)
    {
      throw new DynamicDialogException(e);
    }
  }

  @Override
  protected final void setSelectedIndex(int index)
  {
    getComboBox().setSelectedIndex(index);
  }

  @Override
  protected final void applyFieldStyles()
  {
    getComboBox().setStyle(getParameters().getFieldStyle());

    setWeightX(getComboBox());
  }

  @Override
  protected final void action()
  {
    super.action();
    valueChanged();
  }

  @Override
  protected final ULCComponent getFieldComponent()
  {
    return getComboBox();
  }

  @Override
  public final void setDisplayedText(String text)
  {
    throw new DynamicDialogException(getNoSuchMethodException("setDisplayedText", getClass()));
  }

  @Override
  protected final boolean isFillable()
  {
    return true;
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