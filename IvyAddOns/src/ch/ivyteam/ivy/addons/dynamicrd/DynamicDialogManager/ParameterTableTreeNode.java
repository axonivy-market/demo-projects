package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager;

import java.util.List;

import ch.ivyteam.ivy.scripting.objects.Tree;

import com.ulcjava.base.application.tabletree.DefaultMutableTableTreeNode;

class ParameterTableTreeNode extends DefaultMutableTableTreeNode
{
  private static final long serialVersionUID = -3768545706562811877L;

  protected static final int NAME_COLUMN = 0;

  protected static final int VALUE_COLUMN = 1;

  private ParameterTableTreeNodeContent value;

  protected ParameterTableTreeNode(String name, ParameterTableTreeNodeContent value)
  {
    super(new Object[] {name, value.getDisplayableContent()});
    this.value = value;
  }

  /**
   * {@inheritDoc}
   */
  public final boolean isCellEditable(int columnIndex)
  {
    boolean result;

    switch (columnIndex)
    {
      case NAME_COLUMN:
        result = false;
        break;
      case VALUE_COLUMN:
        switch (value.getType())
        {
          case STATIC:
            result = false;
            break;
          default:
            result = isLeaf();
            break;
        }
        break;
      default:
        result = false;
    }
    return result;
  }

  protected final ParameterTableTreeNodeContent getValue()
  {
    value.setContent(getValueAt(VALUE_COLUMN));
    return value;
  }

  protected final void setContent(String content)
  {
    value.setContent(content);
    setValueAt(value.getDisplayableContent(), VALUE_COLUMN);
  }

  protected final void add(ParameterTableTree tableTree, Tree tree)
  {
    insert(tableTree, tree, this.getChildCount());
  }

  protected final void add(ParameterTableTree tableTree, List<Tree> trees)
  {
    insert(tableTree, trees, this.getChildCount());
  }

  protected final void insert(ParameterTableTree tableTree, List<Tree> trees, int index)
  {
    int currentIndex;

    currentIndex = index;

    for (Tree tree : trees)
    {
      insert(tableTree, tree, currentIndex++);
    }
  }

  protected final void insert(ParameterTableTree tableTree, Tree tree, int index)
  {
    Object object;
    ParameterTableTreeNodeContent nodeContent;
    ParameterTableTreeNode node;

    object = tree.getValue();
    if (object instanceof ParameterTableTreeNodeContent)
    {
      nodeContent = (ParameterTableTreeNodeContent) object;
    }
    else
    {
      nodeContent = new ParameterTableTreeNodeContent(object);
    }
    node = new ParameterTableTreeNode(tree.getInfo(), nodeContent);
    this.insert(node, index);

    node.setLeaf(tree.isLeaf());
    if (!tree.isLeaf())
    {
      for (Tree treeNode : tree.getChildren())
      {
        node.add(tableTree, treeNode);
      }
    }
    this.setLeaf(false);
    ((ParameterTableTreeModel) tableTree.getModel()).nodeStructureChanged(this);
  }
}
