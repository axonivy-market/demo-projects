package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager.ParameterTableTreeNodeContent.Type;

import com.ulcjava.base.application.tabletree.DefaultTableTreeModel;

class ParameterTableTreeModel extends DefaultTableTreeModel
{
  private static final long serialVersionUID = 2876532677035162057L;

  protected ParameterTableTreeModel()
  {
    super(new ParameterTableTreeNode("root", new ParameterTableTreeNodeContent("",
            Type.STRING)), new String[] {"Parameter", "Value"});
  }

  @SuppressWarnings("unchecked")
  @Override
  public final Class getColumnClass(int columnIndex)
  {
    switch (columnIndex)
    {
      default:
        return String.class;
    }
  }

}
