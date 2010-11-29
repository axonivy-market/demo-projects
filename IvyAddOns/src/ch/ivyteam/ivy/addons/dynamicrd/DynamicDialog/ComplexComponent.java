package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComplexComponentParameters.ContainerButtonParameters;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.VisualDebugFiller;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.VisualDebugGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.style.IStylableWidget;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.border.ULCEmptyBorder;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.util.Insets;

/**
 * Base class for all containers and tables.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
abstract class ComplexComponent extends Component
{
  private List<Component> children = null;

  private RGridBagLayoutPane northButtonBar;

  private RGridBagLayoutPane southButtonBar;

  private Map<RButton, ContainerButtonParameters> buttons;

  private int buttonNumber = 0;

  private boolean createFiller;

  @Override
  protected void updateEnabledChildren()
  {
    for (Component c : this.children)
    {
      c.updateEnabled();
    }
  }

  @Override
  protected final void updateVisibleChildren()
  {
    for (Component component : children)
    {
      component.setParentVisible(isVisible());
    }
  }

  private final class ContainerButtonActionListener implements IActionListener
  {
    private static final long serialVersionUID = 4504056306652222482L;

    private String actionMethod;

    private Component component;

    private ContainerButtonActionListener(Component component, String actionMethod)
    {
      this.actionMethod = actionMethod;
      this.component = component;
    }

    /**
     * {@inheritDoc}
     */
    public void actionPerformed(ActionEvent arg0)
    {
      component.invoke(actionMethod);
    }
  }

  protected ComplexComponent(DynamicDialogPanel panel, ComplexComponent container,
          ComponentParameters parameters, int index)
  {
    super(panel, container, parameters, index);

    setCreateFiller(true);

    children = new ArrayList<Component>();
  }

  protected final void addChild(Component component)
  {
    children.add(component);
  }

  protected boolean createFiller()
  {
    return createFiller;
  }

  protected final void addFillers(Position pos)
  {
    addFillers(pos, createFiller(), getParameters(), this, true);
  }

  protected static final void addFillers(Position pos, boolean createFiller,
          ComplexComponentParameters parameters, ComplexComponent container, boolean createFieldFiller)
  {
    int fieldFillerPosition;
    int labelFillerPosition;
    int fieldFillerWidth;
    int widgetWidth;

    widgetWidth = parameters.getGridWidth() * GRID_BAG_COLUMN_WIDTH;
    if (createFiller)
    {
      labelFillerPosition = 0;
      fieldFillerPosition = 0;
      fieldFillerWidth = 1;
      switch (KnownParameters.getLayoutType(parameters.getFieldLayout()))
      {
        case ICON_LABEL_FIELD_LAYOUT:
          labelFillerPosition = 1;
          fieldFillerPosition = 2;
          fieldFillerWidth = widgetWidth - 3;
          break;
        case LABEL_ICON_FIELD_LAYOUT:
          labelFillerPosition = 0;
          fieldFillerPosition = 2;
          fieldFillerWidth = widgetWidth - 3;
          break;
        case LABEL_FIELD_ICON_LAYOUT:
          labelFillerPosition = 0;
          fieldFillerPosition = 1;
          fieldFillerWidth = widgetWidth - 3;
          break;
        case ICON_LABEL_ON_FIELD_LAYOUT:
          labelFillerPosition = -1;
          fieldFillerPosition = 1;
          fieldFillerWidth = widgetWidth - 2;
          break;
        case LABEL_ICON_ON_FIELD_LAYOUT:
          labelFillerPosition = -1;
          fieldFillerPosition = 0;
          fieldFillerWidth = widgetWidth - 1;
          break;
        case LABEL_ON_FIELD_ICON_LAYOUT:
          labelFillerPosition = -1;
          fieldFillerPosition = 0;
          fieldFillerWidth = widgetWidth - 2;
          break;
        case LABEL_ON_ICON_FIELD_LAYOUT:
          labelFillerPosition = -1;
          fieldFillerPosition = 1;
          fieldFillerWidth = widgetWidth - 2;
          break;
      }

      if (labelFillerPosition >= 0)
      {
        addLabelFiller(pos, parameters, container, labelFillerPosition);
      }
      if (createFieldFiller)
      {
        addFieldFiller(pos, parameters, container, fieldFillerPosition, fieldFillerWidth);
      }
      pos.setPosY(pos.getPosY() + 1);
    }
  }

  private static void addFieldFiller(Position pos, ComplexComponentParameters parameters,
          ComplexComponent container, int fieldFillerPosition, int fieldFillerWidth)
  {
    GridBagConstraints constraints;
    RFiller filler;
    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + fieldFillerPosition);
    constraints.setGridY(0);
    constraints.setGridWidth(fieldFillerWidth);
    constraints.setInsets(new Insets(0, 0, 0, 0));
    filler = new VisualDebugFiller();
    filler.setStyle(parameters.getFieldFillerStyle());
    container.add(filler, constraints);
  }

  private static void addLabelFiller(Position pos, ComplexComponentParameters parameters,
          ComplexComponent container, int labelFillerPosition)
  {
    GridBagConstraints constraints;
    RFiller filler;
    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + labelFillerPosition);
    constraints.setGridY(0);
    constraints.setInsets(new Insets(0, 0, 0, 0));
    filler = new VisualDebugFiller();
    filler.setStyle(parameters.getLabelFillerStyle());
    container.add(filler, constraints);
  }

  @Override
  public abstract ComplexComponentParameters getParameters();

  /**
   * Gets the ULC container that contains the other components.
   * 
   * @return ULC container
   */
  public abstract ULCContainer getUlcContainer();

  @Override
  protected final void initializeComponent(Position pos)
  {
    // Nothing to do
  }

  /**
   * Initialize the component.
   * 
   * @param pos position in the parent grid bag layout
   * @param previousContainer preceding container component that is in the same container
   */
  protected abstract void initialize(final Position pos, ComplexComponent previousContainer);

  protected final void newColumn(Position pos)
  {
    pos.setPosY(0);
    pos.setPosX(pos.getPosX() + GRID_BAG_COLUMN_WIDTH);
    addFillers(pos);
  }

  protected final void applyButtonStyles()
  {
    if (buttons != null)
    {
      for (RButton button : buttons.keySet())
      {
        if (button != null)
        {
          button.setStyle(buttons.get(button).getStyle());
        }
      }
    }
  }

  protected abstract boolean useParentContainer();

  protected abstract Position getStartPos(Position pos);

  protected final void finalizeContainer(Position pos)
  {
    List<ContainerButtonParameters> northWestButton;
    List<ContainerButtonParameters> northEastButton;
    List<ContainerButtonParameters> southWestButton;
    List<ContainerButtonParameters> southEastButton;

    northWestButton = new ArrayList<ContainerButtonParameters>();
    northEastButton = new ArrayList<ContainerButtonParameters>();
    southWestButton = new ArrayList<ContainerButtonParameters>();
    southEastButton = new ArrayList<ContainerButtonParameters>();

    for (ContainerButtonParameters buttonParameters : getParameters().getButtons())
    {
      if (buttonParameters.getActionMethod().equals(""))
      {
        continue;
      }

      switch (buttonParameters.getPlacement())
      {
        case NORTH_WEST:
          northWestButton.add(buttonParameters);
          break;
        case NORTH_EAST:
          northEastButton.add(buttonParameters);
          break;
        case SOUTH_WEST:
          southWestButton.add(buttonParameters);
          break;
        case SOUTH_EAST:
          southEastButton.add(buttonParameters);
      }
    }
    fillButtonBar(pos, getNorthButtonBar(), northWestButton, northEastButton);

    if (fillButtonBar(pos, getSouthButtonBar(), southWestButton, southEastButton))
    {
      pos.setPosY(pos.getPosY() + 1);
    }
    applyButtonStyles();
  }

  private boolean fillButtonBar(Position pos, RGridBagLayoutPane buttonBar,
          List<ContainerButtonParameters> westButtons, List<ContainerButtonParameters> eastButtons)
  {
    GridBagConstraints constraints;
    boolean result;

    result = false;
    if (!westButtons.isEmpty() || !eastButtons.isEmpty())
    {
      constraints = new GridBagConstraints();
      constraints.setGridX(0);
      constraints.setGridY(pos.getMaxPosY());
      constraints.setGridWidth(pos.getMaxPosX() + GRID_BAG_COLUMN_WIDTH);
      constraints.setFill(GridBagConstraints.HORIZONTAL);
      getUlcContainer().add(buttonBar, constraints);

      for (ContainerButtonParameters buttonParameters : westButtons)
      {
        buttonBar.add(getNewButton(buttonParameters));
      }

      constraints = new GridBagConstraints();
      constraints.setFill(GridBagConstraints.HORIZONTAL);
      constraints.setWeightX(1);
      buttonBar.add(new VisualDebugFiller(), constraints);

      for (ContainerButtonParameters buttonParameters : eastButtons)
      {
        buttonBar.add(getNewButton(buttonParameters));
      }
      result = true;
    }
    return result;
  }

  private RButton getNewButton(ContainerButtonParameters buttonParameters)
  {
    RButton button;
    String toolTip;

    button = new RButton();

    if (buttons == null)
    {
      buttons = new HashMap<RButton, ContainerButtonParameters>();
    }

    button.setName(getParameters().getName() + "Button" + buttonNumber++);
    button.setText(buttonParameters.getLabel());
    button.setIconUri(buttonParameters.getIconCmsUri());
    if (buttonParameters.isTransparent())
    {
      button.setOpaque(false);
      button.setBorderPainted(false);
      button.setContentAreaFilled(false);
      button.setBorder(new ULCEmptyBorder(0, 0, 0, 0));
      button.setBackground(getParentContainer().getUlcContainer().getBackground());
    }

    toolTip = buttonParameters.getToolTip();
    if (toolTip != null)
    {
      button.setToolTipText(toolTip);
    }
    button.addActionListener(new ContainerButtonActionListener(this, buttonParameters.getActionMethod()));

    getUlcComponents().add(button);

    buttons.put(button, buttonParameters);

    return button;
  }

  private RGridBagLayoutPane getNorthButtonBar()
  {
    if (northButtonBar == null)
    {
      // TODO Allow to change the button style
      northButtonBar = new VisualDebugGridBagLayoutPane();
      northButtonBar.setName(getParameters().getName() + "NorthButtonBar");

      getUlcComponents().add(northButtonBar);
    }
    return northButtonBar;
  }

  private RGridBagLayoutPane getSouthButtonBar()
  {
    if (southButtonBar == null)
    {
      southButtonBar = new VisualDebugGridBagLayoutPane();
      southButtonBar.setName(getParameters().getName() + "SouthButtonBar");

      getUlcComponents().add(southButtonBar);
    }
    return southButtonBar;
  }

  protected final void add(ULCComponent component, GridBagConstraints constraints)
  {
    getUlcContainer().add(component, constraints);
  }

  protected final List<Component> getChildren()
  {
    return children;
  }

  @Override
  protected final void setWeightX(IStylableWidget widget)
  {
    setDefaultWeightX(widget);
  }

  protected void setCreateFiller(boolean value)
  {
    createFiller = value;
  }

  @Override
  protected String buildFullName(ComplexComponent parentContainer, ComponentParameters parameters)
  {
    return buildDefaultFullName(parentContainer, parameters);
  }
}