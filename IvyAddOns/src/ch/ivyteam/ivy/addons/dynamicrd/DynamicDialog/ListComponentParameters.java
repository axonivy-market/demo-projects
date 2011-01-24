package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.TreeNode;

/**
 * This is the common parameters for the component that represents a <code>List</Code>.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 26.11.2009
 */
abstract class ListComponentParameters extends ComplexComponentParameters
{
  private boolean showTableHeader;

  private boolean autoTableHeader;

  private boolean sortable;

  private boolean editable;

  private TreeNode<ComponentParameters> parameterTree;

  @SuppressWarnings("unchecked")
protected ListComponentParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position,
          TreeNode<ComponentParameters> parameters, Class clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, clazz);

    showTableHeader = Cms.coAsBoolean(cmsContexts, KnownParameters.SHOW_TABLE_HEADER, true);
    autoTableHeader = Cms.coAsBoolean(cmsContexts, KnownParameters.AUTO_TABLE_HEADER, false);
    sortable = Cms.coAsBoolean(cmsContexts, KnownParameters.SORTABLE_TABLE, true);
    editable = Cms.coAsBoolean(cmsContexts, KnownParameters.EDITABLE_PARAMETER, true);
    parameterTree = parameters;
  }

  @Override
  public boolean isList()
  {
    return true;
  }

  protected final boolean isTableHeaderVisible()
  {
    return showTableHeader;
  }

  protected final boolean isTableHeaderAuto()
  {
    return autoTableHeader;
  }

  protected final boolean isSortable()
  {
    return sortable;
  }

  protected final boolean isEditable()
  {
    return editable;
  }

  /**
   * Gets the parameters of every component that should be constructed for one item.
   * 
   * @return the parameter tree
   */
  protected final TreeNode<ComponentParameters> getParameterTree()
  {
    return parameterTree;
  }
}
