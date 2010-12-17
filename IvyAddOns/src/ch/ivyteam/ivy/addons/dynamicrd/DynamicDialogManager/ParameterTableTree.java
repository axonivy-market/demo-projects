package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager;

import java.util.HashMap;
import java.util.Map;

import ch.ivyteam.ivy.addons.util.AddonsRuntimeException;
import ch.ivyteam.ivy.richdialog.widgets.components.RTableTree;
import ch.ivyteam.ivy.scripting.objects.Tree;

import com.ulcjava.base.application.IEditorComponent;
import com.ulcjava.base.application.IRendererComponent;
import com.ulcjava.base.application.ULCCheckBox;
import com.ulcjava.base.application.ULCComboBox;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCTableTree;
import com.ulcjava.base.application.ULCTextField;
import com.ulcjava.base.application.datatype.ULCNumberDataType;
import com.ulcjava.base.application.datatype.ULCStringDataType;
import com.ulcjava.base.application.event.ITableTreeModelListener;
import com.ulcjava.base.application.event.TableTreeModelEvent;
import com.ulcjava.base.application.tabletree.DefaultTableTreeCellRenderer;
import com.ulcjava.base.application.tabletree.ITableTreeCellEditor;
import com.ulcjava.base.application.tabletree.ITableTreeCellRenderer;
import com.ulcjava.base.application.tree.ULCTreeSelectionModel;

class ParameterTableTree extends RTableTree
{
  private final class CellRenderer implements ITableTreeCellRenderer
  {
    /**
     * {@inheritDoc}
     */
    public IRendererComponent getTableTreeCellRendererComponent(ULCTableTree tableTree, Object value,
            boolean selected, boolean hasFocus, boolean expanded, boolean leaf, Object node)
    {
      IRendererComponent rendererComponent;
      ParameterTableTreeNode treeNode;

      rendererComponent = null;
      if (node instanceof ParameterTableTreeNode)
      {
        treeNode = (ParameterTableTreeNode) node;
        switch (treeNode.getValue().getType())
        {
          case BOOLEAN:
            rendererComponent = getBooleanEditor();
            break;
        }

        if (selected)
        {
          switch (treeNode.getValue().getType())
          {
            case TRISTATE:
              rendererComponent = getTreeStateEditor();
              break;
            case LIST:
              rendererComponent = getComboEditor(treeNode.getValue().getAcceptedValues());
              break;
          }
        }
      }

      if (rendererComponent == null)
      {
        rendererComponent = defaultRenderer;
      }

      if (rendererComponent instanceof ULCComponent)
      {
        ((ULCComponent) rendererComponent).setBackground(selected ? tableTree.getSelectionBackground()
                : tableTree.getBackground());
      }

      return rendererComponent;
    }
  }

  private final class CellEditor implements ITableTreeCellEditor
  {
    /**
     * {@inheritDoc}
     */
    public IEditorComponent getTableTreeCellEditorComponent(ULCTableTree arg0, Object arg1, boolean arg2,
            boolean arg3, boolean arg4, Object arg5)
    {
      ParameterTableTreeNode node;
      IEditorComponent editorComponent;

      editorComponent = null;
      if (arg5 instanceof ParameterTableTreeNode)
      {
        node = (ParameterTableTreeNode) arg5;
        switch (node.getValue().getType())
        {
          case TRISTATE:
            editorComponent = getTreeStateEditor();
            break;
          case BOOLEAN:
            editorComponent = getBooleanEditor();
            break;
          case NUMBER:
            editorComponent = getNumberEditor();
            break;
          case INTEGER:
            editorComponent = getIntegerEditor();
            break;
          case LIST:
            editorComponent = getComboEditor(node.getValue().getAcceptedValues());
            break;
        }
      }

      if (editorComponent == null)
      {
        editorComponent = getStringEditor();
      }

      return editorComponent;
    }
  }

  private final class ModelListener implements ITableTreeModelListener
  {
    private static final long serialVersionUID = -5141166790186702851L;

    /**
     * {@inheritDoc}
     */
    public void tableTreeNodeStructureChanged(TableTreeModelEvent arg0)
    {
    }

    /**
     * {@inheritDoc}
     */
    public void tableTreeNodesChanged(TableTreeModelEvent arg0)
    {
      if (VALUE_CHANGED_METHOD_NAME != null)
      {
        try
        {
          getPanelComponentAPI().getPanel().getPanelAPI().callMethod(VALUE_CHANGED_METHOD_NAME,
                  new Object[] {getSelectionModel().getSelectionPath()});
        }
        catch (Exception e)
        {
          throw new AddonsRuntimeException("Unable to invoke method : " + VALUE_CHANGED_METHOD_NAME + "(TreePath)",
                  e);
        }
      }
    }

    /**
     * {@inheritDoc}
     */
    public void tableTreeNodesInserted(TableTreeModelEvent arg0)
    {
    }

    /**
     * {@inheritDoc}
     */
    public void tableTreeNodesRemoved(TableTreeModelEvent arg0)
    {
    }

    /**
     * {@inheritDoc}
     */
    public void tableTreeStructureChanged(TableTreeModelEvent arg0)
    {
    }
  }

  private static final long serialVersionUID = 1006416608807350346L;

  private ULCTextField stringEditor = null;

  private ULCTextField numberEditor = null;

  private ULCTextField integerEditor = null;

  private ULCComboBox triStateEditor = null;

  private ULCCheckBox booleanEditor = null;

  private Map<String[], ULCComboBox> comboEditors = null;

  private DefaultTableTreeCellRenderer defaultRenderer = null;

  private static final String VALUE_CHANGED_METHOD_NAME = "valueChanged";
;

  protected ParameterTableTree()
  {
    super(new ParameterTableTreeModel());

    this.setColumnSelectionAllowed(false);
    this.getSelectionModel().setSelectionMode(ULCTreeSelectionModel.SINGLE_TREE_SELECTION);
    this.setAutoResizeMode(ULCTableTree.AUTO_RESIZE_ALL_COLUMNS);
    this.getModel().addTableTreeModelListener(new ModelListener());

    defaultRenderer = new DefaultTableTreeCellRenderer();

    setRenderers();
  }

  private void setRenderers()
  {
    getColumnModel().getColumn(ParameterTableTreeNode.VALUE_COLUMN).setCellEditor(getEditorComponent());
    getColumnModel().getColumn(ParameterTableTreeNode.VALUE_COLUMN).setCellRenderer(getRendererComponent());
  }

  protected final void setValue(Tree tree)
  {
    ParameterTableTreeNode root = (ParameterTableTreeNode) getModel().getRoot();
    root.removeAllChildren();
    if (tree != null)
    {
      root.add(this, tree.getChildren());
    }
    structureChanged();

    setRenderers();
  }

  protected final void structureChanged()
  {
    ParameterTableTreeModel model = (ParameterTableTreeModel) getModel();
    model.structureChanged();
  }

  private ITableTreeCellRenderer getRendererComponent()
  {
    return new CellRenderer();
  }

  private ITableTreeCellEditor getEditorComponent()
  {
    return new CellEditor();
  }

  private ULCTextField getNumberEditor()
  {
    ULCNumberDataType dataType;

    if (numberEditor == null)
    {
      numberEditor = new ULCTextField();

      dataType = new ULCNumberDataType();
      dataType.setMinFractionDigits(0);
      dataType.setMaxFractionDigits(5);

      numberEditor.setDataType(dataType);
    }
    return numberEditor;
  }

  private ULCTextField getIntegerEditor()
  {
    ULCNumberDataType dataType;

    if (integerEditor == null)
    {
      integerEditor = new ULCTextField();

      dataType = new ULCNumberDataType();
      dataType.setClassType(Integer.class);

      integerEditor.setDataType(dataType);
    }
    return integerEditor;
  }

  private ULCTextField getStringEditor()
  {
    if (stringEditor == null)
    {
      stringEditor = new ULCTextField();
      stringEditor.setDataType(new ULCStringDataType());
    }
    return stringEditor;
  }

  private ULCComboBox getTreeStateEditor()
  {
    if (triStateEditor == null)
    {
      triStateEditor = new ULCComboBox(new String[] {"", "true", "false"});
    }
    return triStateEditor;
  }

  private ULCCheckBox getBooleanEditor()
  {
    if (booleanEditor == null)
    {
      booleanEditor = new ULCCheckBox();
    }
    return booleanEditor;
  }

  private ULCComboBox getComboEditor(String[] values)
  {
    ULCComboBox editor;

    if (comboEditors == null)
    {
      comboEditors = new HashMap<String[], ULCComboBox>();
    }

    editor = comboEditors.get(values);
    if (editor == null)
    {
      editor = new ULCComboBox();
      editor.addItem("");
      for (String item : values)
      {
        editor.addItem(item);
      }

      comboEditors.put(values, editor);
    }

    return editor;
  }

  protected final String getValueChangedMethod()
  {
    return VALUE_CHANGED_METHOD_NAME;
  }

  protected final void setValueChangedMethod(String valueChangedMethod)
  {
  }
}
