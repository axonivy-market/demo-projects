package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.VisualDebugGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;

/**
 * This is the implementation of containers that uses a RGridBagLayoutPane.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
public class NextToContainer extends ComplexComponent
{

  private RGridBagLayoutPane gridBag = null;

  /**
   * Constructs a new NextToContainer object. This container is used to group fields that are displayed side
   * by side.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected NextToContainer(DynamicDialogPanel panel, ComplexComponent container,
          FieldComponentParameters parameters, int index)
  {
    super(panel, container, parameters, index);

    setCallInitMethod(false);
    setFullName(container.getFullName());
  }

  @Override
  protected final void applyComponentStyle()
  {
    ComponentParameters parameters;
    boolean isHorizontalFilled;

    isHorizontalFilled = false;

    gridBag.setStyle(getComponentParameters().getNextToContainerStyle());

    parameters = getComponentParameters();
    if (parameters instanceof FieldComponentParameters)
    {
      FieldComponentParameters fieldComponentParameters = (FieldComponentParameters) parameters;

      while (fieldComponentParameters != null)
      {
        if (fieldComponentParameters.getColumns() == 0 && fieldComponentParameters.getWeightX() > 0)
        {
          isHorizontalFilled = true;
        }
        fieldComponentParameters = fieldComponentParameters.getNextToComponentParameters();
      }
    }

    if (isHorizontalFilled)
    {
      addStyleProperties(gridBag, "fill", "HORIZONTAL");
    }
    
    setInsetsSettingsTarget(null);
  }

  /**
   * This method initialize the container that receive fields that are side by side.
   * 
   * @return validation icon label widget
   */
  private RGridBagLayoutPane getGridBag()
  {
    if (gridBag == null)
    {
      gridBag = new VisualDebugGridBagLayoutPane();
      gridBag.setName(getComponentParameters().getName() + "NextTo");

      getUlcComponents().add(gridBag);
    }
    return gridBag;
  }

  @Override
  public final ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  @Override
  public final ULCComponent getMainComponent()
  {
    return gridBag;
  }

  @Override
  public final ComplexComponentParameters getParameters()
  {
    throw new DynamicDialogException(getNoSuchMethodException("getParameters", getClass()));
  }

  @Override
  public final ULCContainer getUlcContainer()
  {
    return gridBag;
  }

  @Override
  protected final void initialize(final Position pos, ComplexComponent previousContainer)
  {
    throw new DynamicDialogException(getNoSuchMethodException("initialize", getClass()));
  }

  @Override
  public final boolean isFocusable()
  {
    return false;
  }

  @Override
  public final void setFocusable(boolean b)
  {
    // Nothing to do
  }

  @Override
  protected final boolean useParentContainer()
  {
    return false;
  }

  @Override
  public final String getLabel()
  {
    return null;
  }

  @Override
  public final void setLabel(String value)
  {
  }

  protected void initialize(final Position pos, Object object, GridBagConstraints constraints)
  {
    getParentContainer().add(getGridBag(), constraints);

    super.initialize(pos);
  }

  @Override
  protected final Position getStartPos(Position pos)
  {
    return new Position();
  }
}
