package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.ComponentType;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.TreeNode;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;

/**
 * This is the parameters for the component that represents a <code>List</Code> with a RTable.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 26.11.2009
 */
class TableParameters extends ListComponentParameters
{
  private static final long serialVersionUID = 2263989296889572694L;

  private int rows;

  private String rowSelectionMethod;

  private String preInsertMethod;

  private KnownParameters.ETableAutoResizeMode autoResizeMode;

  private boolean deleteConfirmationNeeded;

  protected TableParameters(List<String> cmsContexts, String name, String fullName,
          ComplexComponentParameters parentContainerParameters, Integer position,
          TreeNode<ComponentParameters> parameters, Class clazz)
  {
    super(cmsContexts, name, fullName, parentContainerParameters, position, parameters, clazz);

    rows = Cms.coAsNumber(cmsContexts, KnownParameters.ROW_PARAMETER, 5).intValue();

    rowSelectionMethod = Cms.co(cmsContexts, KnownParameters.ROW_SELECTION_METHOD_PARAMETER);

    preInsertMethod = Cms.co(cmsContexts, KnownParameters.PRE_INSERT_METHOD);

    try
    {
      autoResizeMode = KnownParameters.ETableAutoResizeMode.valueOf(Cms.co(cmsContexts,
              KnownParameters.AUTO_RESIZE_MODE,
              KnownParameters.ETableAutoResizeMode.AUTO_RESIZE_SUBSEQUENT_COLUMNS.toString()));
    }
    catch (Exception e)
    {
      autoResizeMode = KnownParameters.ETableAutoResizeMode.AUTO_RESIZE_SUBSEQUENT_COLUMNS;
    }

    deleteConfirmationNeeded = Cms.coAsBoolean(cmsContexts,
            KnownParameters.DELETE_CONFIRMATION_NEEDED_PARAMETER, true);
  }

  @Override
  protected ComponentType getComponentType()
  {
    return ComponentType.TABLE;
  }

  protected final int getRows()
  {
    return rows;
  }

  @Override
  protected boolean isContainer()
  {
    return false;
  }

  protected String getRowSelectionMethod()
  {
    return rowSelectionMethod;
  }

  protected String getPreInsertMethod()
  {
    return preInsertMethod;
  }

  protected int getAutoResizeMode()
  {
    switch (autoResizeMode)
    {
      case AUTO_RESIZE_ALL_COLUMNS:
        return RTable.AUTO_RESIZE_ALL_COLUMNS;
      case AUTO_RESIZE_LAST_COLUMN:
        return RTable.AUTO_RESIZE_LAST_COLUMN;
      case AUTO_RESIZE_NEXT_COLUMN:
        return RTable.AUTO_RESIZE_NEXT_COLUMN;
      case AUTO_RESIZE_OFF:
        return RTable.AUTO_RESIZE_OFF;
      case AUTO_RESIZE_SUBSEQUENT_COLUMNS:
      default:
        return RTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS;
    }
  }

  protected boolean isDeleteConfirmationNeeded()
  {
    return deleteConfirmationNeeded;
  }
}
