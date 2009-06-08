package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal;

import java.io.Serializable;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentParameters;

/**
 * This keeps 
 * @author Patrick Joly, TI-Informatique
 * @since 19.11.2008
 */
public class StaticRelationItem implements Serializable
{
  private static final long serialVersionUID = -1804125266220286509L;

  private DataClassAttributeDetail attributeDetail;

  private ComponentParameters componentParameters;

  public ComponentParameters getComponentParameters()
  {
    return componentParameters;
  }

  public void setAttributeDetail(DataClassAttributeDetail _attributeDetail)
  {
    attributeDetail = _attributeDetail;
  }

  public DataClassAttributeDetail getAttributeDetail()
  {
    return attributeDetail;
  }

  public void setComponentParameters(ComponentParameters _componentParameters)
  {
    componentParameters = _componentParameters;
  }
}
