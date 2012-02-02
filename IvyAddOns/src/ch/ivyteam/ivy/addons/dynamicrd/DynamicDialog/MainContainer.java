package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

/**
 * This is the implementation of pseudo containers that represent the DynamicDialog's main container.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 18.03.2009
 */
public class MainContainer extends InsideContainer
{
  /**
   * Constructs a new MainContainer object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected MainContainer(DynamicDialogPanel panel, ComplexComponentParameters parameters, int index)
  {
    super(panel, null, parameters, index);

    setCreateFiller(true);
  }
  
  @Override
  protected final Position getStartPos(Position pos)
  {
    return new Position();
  }
}
