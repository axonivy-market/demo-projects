package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.Vector;

import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCContainer;

/**
 * Base class for all containers.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 12.09.2008
 */
abstract public class Container extends Component
{

  protected Vector<Component> children = null;

  protected Integer height = null;

  protected Position parentPos = null;

  public Container(DynamicDialogPanel panel, Container container, ULCContainer ulcContainer,
          ContainerParameters parameters, Integer _height)
  {
    super(panel, container, ulcContainer, parameters);

    height = _height;

    children = new Vector<Component>();
  }

  protected void addChild(Component component)
  {
    children.add(component);
  }

  protected boolean createFiller()
  {
    return true;
  }

  private void finalizeContainer(Position pos)
  {
    GridBagConstraints constraints;
    RFiller filler;

    if (createFiller())
    {
      constraints = new GridBagConstraints();
      constraints.setGridX(pos.getPosX() + 0);
      constraints.setGridY(pos.getPosY());
      filler = new RFiller();
      filler.setStyle(getParameters().getLabelFillerStyle());
      getUlcContainer().add(filler, constraints);

      constraints = new GridBagConstraints();
      constraints.setGridX(pos.getPosX() + 1);
      constraints.setGridY(pos.getPosY());
      filler = new RFiller();
      filler.setStyle(getParameters().getFieldFillerStyle());
      getUlcContainer().add(filler, constraints);
    }

    pos.setPosY(pos.getPosY() + 1);
  }

  @Override
  public ContainerParameters getParameters()
  {
    return (ContainerParameters) parameters;
  }

  /**
   * Gets the ULC container that contains the other components.
   * 
   * @return ULC container
   */
  abstract public ULCContainer getUlcContainer();

  @Override
  public
  final void initialize(Position pos)
  {
    super.initialize(pos);
    finalizeContainer(pos);
  }

  /**
   * Initialize the component.
   * 
   * @param pos position in the parent grid bag layout
   * @param previousContainer preceding container component that is in the same container
   */
  public void initialize(Position pos, Container previousContainer)
  {
    // Nothing to do
  }

  public void newColumn(Position pos)
  {
    finalizeContainer(pos);
    pos.setPosY(0);
    pos.setPosX(pos.getPosX() + 3);
  }

  @Override
  protected void applyStyles()
  {
    // Nothing to do
  }

  public boolean useParentContainer()
  {
    return false;
  }
}
