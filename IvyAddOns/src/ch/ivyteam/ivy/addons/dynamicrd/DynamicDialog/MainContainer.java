package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;

import com.ulcjava.base.application.ULCContainer;

/**
 * This is the implementation of pseudo containers that represent the DynamicDialog's main container.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 18.03.2009
 */
public class MainContainer extends InsideContainer
{
  public MainContainer(DynamicDialogPanel panel, ULCContainer ulcContainer, ContainerParameters parameters,
          Integer height)
  {
    super(panel, null, ulcContainer, parameters, height);
  }

  @Override
  protected boolean createFiller()
  {
    return true;
  }
}
