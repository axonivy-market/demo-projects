package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.SortedMap;
import java.util.TreeMap;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.TreeNode;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.VisualDebugGridBagLayoutPane;
import ch.ivyteam.ivy.addons.widgets.RTableWithExcelExport;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RBooleanCellWidget;
import ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RComboBoxCellWidget;
import ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RTextFieldCellWidget;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.scripting.objects.List;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.IEditorComponent;
import com.ulcjava.base.application.IRendererComponent;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.ULCListSelectionModel;
import com.ulcjava.base.application.ULCScrollPane;
import com.ulcjava.base.application.ULCTable;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.table.ITableCellEditor;
import com.ulcjava.base.application.table.ITableCellRenderer;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Dimension;
import com.ulcjava.base.application.util.Insets;

/**
 * This is the implementation of list that use a Table. This component is used to represent attribute of type
 * Ivy List.
 * @see List
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 26.11.2009
 */
public class Table extends ListComponent
{
  private static final String ASK_DELETE_CONFIRMATION_METHOD = "deleteEntryConfirmation";

  protected static final String BUTTON_STYLE_PROPERTIES = "{/insetsBottom \"0\"/insetsTop \"0\"/insetsRight \"0\"/insetsLeft \"0\"}";

  private final class RemoveActionListener implements IActionListener
  {
    private static final long serialVersionUID = -2035227718897793763L;

    /**
     * {@inheritDoc}
     */
    public void actionPerformed(ActionEvent arg0)
    {
      removeActionPerformed();
    }
  }

  private final class AddActionListener implements IActionListener
  {
    private static final long serialVersionUID = 9150185713461108516L;

    /**
     * {@inheritDoc}
     */
    public void actionPerformed(ActionEvent arg0)
    {
      addActionPerformed();
    }
  }

  private static final class TableCellEditorComponent implements ITableCellEditor
  {
    private static final class MyComboBoxCellWidget extends RComboBoxCellWidget
    {
      private static final long serialVersionUID = 1L;

      @SuppressWarnings("unchecked")
      private MyComboBoxCellWidget(java.util.List<String[]> recordset,
              FieldComponentWithListParameters listFieldParameters)
      {
        super();
        String resultExpr;

        ch.ivyteam.ivy.scripting.objects.List list;
        ch.ivyteam.ivy.scripting.objects.List item;

        resultExpr = "entry.get(0)";
        if (listFieldParameters.isAssignableFromString())
        {
          resultExpr = "entry.get(0).toString()";
        }
        else if (listFieldParameters.isAssignableFromNumber())
        {
          resultExpr = "entry.get(0).toString().toNumber()";
        }
        else if (listFieldParameters.isAssignableFromInteger())
        {
          resultExpr = "entry.get(0).toString().toNumber().intValue()";
        }
        else if (listFieldParameters.isAssignableFromBoolean())
        {
          resultExpr = "entry.get(0).toString().toNumber() == 0 ? false : true";
        }

        // Discouraged usage : Construction of model configuraiton by hand
        
        // TODO ComboBox in Table have some side effects - Tries with new version and update.
        if (!listFieldParameters.isAssignableFromString())
        {
          setModelConfiguration("{/keyField \"result=" + resultExpr
                  + "\"/version \"3.0\"/result\"result=entry.get(0)\"/icon \"\"/tooltip \"\"}");
        }
        else
        {
          setModelConfiguration("{/keyField \"result=" + resultExpr
                  + "\"/version \"3.0\"/result\"result=entry.get(1)\"/icon \"\"/tooltip \"\"}");
        }
        list = ch.ivyteam.ivy.scripting.objects.List.create();

        item = ch.ivyteam.ivy.scripting.objects.List.create(String.class);
        item.add("");
        item.add("");
        list.add(item);
        for (String[] record : recordset)
        {
          item = ch.ivyteam.ivy.scripting.objects.List.create(String.class);
          item.add(record[0]);
          item.add(record[1]);
          list.add(item);
        }

        try
        {
          setListData(list);
        }
        catch (Exception e)
        {
          throw new DynamicDialogException(e);
        }
      }
    }

    private static ITableCellEditor getEditor(FieldComponentParameters fieldParameters)
    {
      IEditorComponent editor;
      TableCellEditorComponent editorComponent;
      java.util.List<String[]> choices;

      editor = null;
      editorComponent = null;

      if (fieldParameters.isAssignableFromBoolean())
      {
        RBooleanCellWidget widget;
        widget = new RBooleanCellWidget();
        editor = widget;
      }
      else if (fieldParameters instanceof FieldComponentWithListParameters)
      {
        RComboBoxCellWidget widget;
        FieldComponentWithListParameters listFieldParameters = (FieldComponentWithListParameters) fieldParameters;

        choices = listFieldParameters.getRecordset();

        widget = new MyComboBoxCellWidget(choices, listFieldParameters);
        widget.setName(fieldParameters.getName() + "ComboBoxCell");
        editor = widget;
      }
      else
      {
        RTextFieldCellWidget widget;
        widget = new RTextFieldCellWidget();
        if (fieldParameters instanceof TextFieldParameters)
        {
          TextFieldParameters parameters = (TextFieldParameters) fieldParameters;
          if (!parameters.isOldStyleValidation() && !parameters.getValidation().equals(""))
          {
            widget.setValidation(parameters.getValidation());
          }
        }
        editor = widget;
      }
      if (editor instanceof ULCComponent)
      {
        ULCComponent component = (ULCComponent) editor;
        component.setBorder(BorderFactory.createLineBorder(Color.black));
      }

      if (editor != null)
      {
        editorComponent = new TableCellEditorComponent(editor);
      }
      return editorComponent;
    }

    private IEditorComponent editor;

    private TableCellEditorComponent(IEditorComponent editor)
    {
      this.editor = editor;
    }

    /**
     * {@inheritDoc}
     */
    public IEditorComponent getTableCellEditorComponent(ULCTable arg0, Object arg1, int arg2)
    {
      return editor;
    }
  }

  private static final class TableCellRendererComponent implements ITableCellRenderer
  {
    private static ITableCellRenderer getRenderer(FieldComponentParameters fieldParameters)
    {
      IRendererComponent renderer;
      TableCellRendererComponent rendererComponent;

      renderer = null;
      rendererComponent = null;

      if (fieldParameters.isAssignableFromBoolean())
      {
        RBooleanCellWidget widget;
        widget = new RBooleanCellWidget();
        renderer = widget;
      }

      if (renderer != null)
      {
        rendererComponent = new TableCellRendererComponent(renderer);
      }
      return rendererComponent;
    }

    private IRendererComponent renderer;

    private TableCellRendererComponent(IRendererComponent renderer)
    {
      this.renderer = renderer;
    }

    /**
     * {@inheritDoc}
     */
    public IRendererComponent getTableCellRendererComponent(ULCTable table, Object value, boolean isSelected,
            boolean hasFocus, int row)
    {
      if (renderer instanceof ULCComponent)
      {
        ULCComponent component = (ULCComponent) renderer;
        component.setBackground(isSelected ? table.getSelectionBackground() : table.getBackground());
        component.setBorder(hasFocus ? BorderFactory.createLineBorder(Color.black) : null);
        if (renderer instanceof RBooleanCellWidget)
        {
          RBooleanCellWidget widget = (RBooleanCellWidget) renderer;
          widget.setBorderPainted(hasFocus);
        }
      }

      return renderer;
    }
  }

  private static final class TableModel
  {
    private TableModel()
    {
    }

    private static String escapeString(String value)
    {
      return value.replaceAll("\\\\", "\\\\").replaceAll("\"", "\\\\\"");
    }

    private static int fillColumnModels(TreeNode<ComponentParameters> root,
            TreeNode<ComponentParameters> node, SortedMap<String, String> columnModels, Table table,
            int position)
    {
      String field;
      String resultScript;
      ComponentParameters parameters;
      FieldComponentParameters fieldParameters;
      ITableCellRenderer cellRenderer;
      ITableCellEditor cellEditor;
      Integer columnPosition;
      NumberFormat nf;
      int currentPosition;
      String cellFormat;

      nf = NumberFormat.getInstance();
      nf.setMinimumIntegerDigits(6);
      currentPosition = position;

      for (TreeNode<ComponentParameters> child : node)
      {
        parameters = child.getValue();
        if (parameters instanceof FieldComponentParameters)
        {
          fieldParameters = (FieldComponentParameters) parameters;

          if (fieldParameters.isCellVisible())
          {
            field = child.getValue().getFullName().replace(
                    root.getChildren().get(0).getValue().getFullName() + "/", "").replaceAll("/", ".");

            columnPosition = fieldParameters.getTableColumnPosition();
            currentPosition = currentPosition + 1000;
            if (columnPosition < 0)
            {
              columnPosition = currentPosition;
            }

            cellFormat = fieldParameters.getCellFormat();
            if (!cellFormat.equals(""))
            {
              resultScript = "result=value.format(\"" + cellFormat + "\")";
            }
            else if (fieldParameters.isAssignableFromDate())
            {
              resultScript = "result=IF (value instanceof Date, ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.Component.getDateFormat().format(value as java.util.Date), value)";
            }
            else
            {
              resultScript = "result=value";
            }

            columnModels.put(nf.format(columnPosition) + "_" + nf.format(currentPosition), getColumnModel(
                    "3.0", resultScript, "", "", fieldParameters.getShortTitle(), field, fieldParameters
                            .isCellEditable(), "", fieldParameters.getColumnWidth() == 0 ? null
                            : fieldParameters.getColumnWidth(), fieldParameters.getTableCellStyle(), ""));

            cellRenderer = TableCellRendererComponent.getRenderer(fieldParameters);
            cellEditor = null;
            if (fieldParameters.isCellEditable())
            {
              cellEditor = TableCellEditorComponent.getEditor(fieldParameters);
            }
            table.rendererComponents.add(cellRenderer);
            table.editorComponents.add(cellEditor);
          }
        }
        if (child.hasChildren())
        {
          currentPosition = fillColumnModels(root, child, columnModels, table, currentPosition);
        }
      }
      return currentPosition;
    }

    private static String formatModel(java.util.List<Object[]> list, Boolean forceQuote)
    {
      StringBuffer result;

      result = new StringBuffer();

      for (Object[] item : list)
      {
        if (item[1] != null)
        {
          result.append("/").append(item[0]).append(" ");
          if (!(item[1] instanceof Boolean) || forceQuote)
          {
            result.append("\"");
          }
          result.append(escapeString(item[1] == null ? "" : item[1].toString()));
          if (!(item[1] instanceof Boolean) || forceQuote)
          {
            result.append("\"");
          }
          else
          {
            result.append(" ");
          }
        }
      }
      return result.toString();
    }

    private static String getColumnModel(String version, String result, String tooltip, String icon,
            String header, String field, Boolean editable, String condition, Integer columnWidth,
            String columnStyle, String cellWidget)
    {
      java.util.List<Object[]> list;

      list = new ArrayList<Object[]>();

      list.add(new Object[] {"result", result});
      list.add(new Object[] {"version", version});
      list.add(new Object[] {"tooltip", tooltip});
      list.add(new Object[] {"icon", icon});
      list.add(new Object[] {"header", "\"" + escapeString(header) + "\""});
      list.add(new Object[] {"field", field});
      list.add(new Object[] {"editable", editable});
      list.add(new Object[] {"condition", condition});
      list.add(new Object[] {"columnWidth", columnWidth});
      list.add(new Object[] {"columnStyle", columnStyle});
      list.add(new Object[] {"cellWidget", cellWidget});

      return formatModel(list, true);
    }

    private static String getTableModel(String version, Boolean showTableheader, Boolean autoTableheader,
            Boolean showTooltip, Boolean showIcons, SortedMap<String, String> columns)
    {
      StringBuffer result;
      java.util.List<Object[]> list;

      list = new ArrayList<Object[]>();
      result = new StringBuffer();

      list.add(new Object[] {"showTableheader", showTableheader});
      list.add(new Object[] {"autoTableheader", autoTableheader});
      list.add(new Object[] {"showtooltip", showTooltip});
      list.add(new Object[] {"showIcons", showIcons});
      list.add(new Object[] {"version", version});

      result.append("{");
      result.append(formatModel(list, false));
      result.append("/columns ");
      result.append("{");
      for (String item : columns.keySet())
      {
        result.append("{").append(columns.get(item)).append("}");
      }
      result.append("}");
      result.append("}");

      return result.toString();
    }

    private static String getTableModel(TreeNode<ComponentParameters> node, Table table)
    {
      String result;
      ComponentParameters parameters;
      ListComponentParameters listComponentParameters;
      SortedMap<String, String> columnModels;

      columnModels = new TreeMap<String, String>();
      fillColumnModels(node, node, columnModels, table, 0);

      result = "";
      parameters = node.getValue();
      if (parameters instanceof ListComponentParameters)
      {
        listComponentParameters = (ListComponentParameters) parameters;
        result = getTableModel("3.0", listComponentParameters.isTableHeaderVisible(), listComponentParameters
                .isTableHeaderAuto(), listComponentParameters.isToolTipShown(), false, columnModels);
      }

      return result;
    }
  }

  private RButton addButton;

  private java.util.List<ITableCellEditor> editorComponents;

  private RGridBagLayoutPane gridBag;

  private boolean modelSet = false;

  private RButton removeButton;

  private java.util.List<ITableCellRenderer> rendererComponents;

  private RScrollPane scrollPane;

  private RTable table;

  protected Table(DynamicDialogPanel panel, ComplexComponent container, TableParameters parameters, int index)
  {
    super(panel, container, parameters, index);

    rendererComponents = new ArrayList<ITableCellRenderer>();
    editorComponents = new ArrayList<ITableCellEditor>();
  }

  @SuppressWarnings("restriction")
  protected void removeActionPerformed()
  {
    if (getTable().getSelectedListEntry() != null && getParameters().isDeleteConfirmationNeeded())
    {
      invoke(ASK_DELETE_CONFIRMATION_METHOD);
    }
  }

  /**
   * Removes from the table the current selected entry.
   */
  public void removeSelectedListEntry()
  {
    Object entry;

    List<?> list = getTable().getListData();
    entry = getTable().getSelectedListEntry();

    preRemoveSelectedListEntry();

    list.remove(entry);
    try
    {
      setListData(list);
    }
    catch (Exception e)
    {
      throw new DynamicDialogException(e);
    }
  }

  protected void preRemoveSelectedListEntry()
  {
  }

  @SuppressWarnings("unchecked")
  protected void addActionPerformed()
  {
    Object newItem;
    List<Object> list = (List<Object>) getTable().getListData();
    try
    {
      newItem = getItemClazz().newInstance();
    }
    catch (InstantiationException e)
    {
      throw new DynamicDialogException(e);
    }
    catch (IllegalAccessException e)
    {
      throw new DynamicDialogException(e);
    }

    list.add(newItem);

    try
    {
      setListData(list);
    }
    catch (Exception e)
    {
      throw new DynamicDialogException(e);
    }
    table.setSelectedListEntry(newItem);
  }

  @Override
  protected final void applyComponentStyle()
  {
    table.setStyle(getParameters().getTableStyle());
    scrollPane.setStyle(getParameters().getScrollPaneStyle());

    setWeightX(getParameters().isEditable() ? getGridBag() : getScrollPane());

    applyStylesEx();
  }

  protected void applyStylesEx()
  {
  }

  private final List<?> constructListData()
  {
    List<?> list;
    Class<?> clazz;

    clazz = getItemClazz();
    list = List.create(clazz);
    return list;
  }

  private ULCComponent getAddButton()
  {
    if (addButton == null)
    {
      addButton = new RButton();
      addButton.setName(getParameters().getName() + "AddButton");
      addButton.setStyleProperties(BUTTON_STYLE_PROPERTIES);
      addButton.setIconUri("/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialog/icons/Add16");
      addButton.addActionListener(new AddActionListener());

      getUlcComponents().add(addButton);
    }
    return addButton;
  }

  private RGridBagLayoutPane getGridBag()
  {
    GridBagConstraints constraints;

    if (gridBag == null)
    {
      gridBag = new VisualDebugGridBagLayoutPane();
      gridBag.setName(getParameters().getName() + "GridBag");

      constraints = new GridBagConstraints();
      constraints.setGridX(0);
      constraints.setGridY(0);
      constraints.setFill(GridBagConstraints.BOTH);
      constraints.setWeightX(1);
      constraints.setAnchor(GridBagConstraints.CENTER);
      constraints.setGridHeight(3);
      gridBag.add(getScrollPane(), constraints);

      constraints = new GridBagConstraints();
      constraints.setGridX(1);
      constraints.setGridY(0);
      constraints.setWeightX(0);
      gridBag.add(getAddButton(), constraints);

      constraints = new GridBagConstraints();
      constraints.setGridX(1);
      constraints.setGridY(1);
      constraints.setWeightX(0);
      gridBag.add(getRemoveButton(), constraints);

      getUlcComponents().add(gridBag);
    }
    return gridBag;
  }

  protected final Class<?> getItemClazz()
  {
    Class<?> clazz;
    try
    {
      clazz = getPanel().getDisplayedClass().getClassLoader().loadClass(
              getParameters().getParameterTree().getChildren().get(0).getValue().getClassName());
    }
    catch (ClassNotFoundException e)
    {
      throw new DynamicDialogException(e);
    }

    return clazz;
  }

  @Override
  public final String getLabel()
  {
    return null;
  }

  @Override
  public final ULCComponent getLastMainComponent()
  {
    return getMainComponent();
  }

  @Override
  public final List<?> getListData()
  {
    return getTable().getListData();
  }

  @Override
  public final ULCComponent getMainComponent()
  {
    return getTable();
  }

  @Override
  public final TableParameters getParameters()
  {
    return (TableParameters) getComponentParameters();
  }

  private ULCComponent getRemoveButton()
  {
    if (removeButton == null)
    {
      removeButton = new RButton();
      removeButton.setName(getParameters().getName() + "RemoveButton");
      removeButton.setStyleProperties(BUTTON_STYLE_PROPERTIES);
      removeButton.setIconUri("/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialog/icons/Remove16");
      removeButton.setMargin(new Insets(0, 0, 0, 0));
      removeButton.setEnabler(getTable().getSelectionModel());
      removeButton.addActionListener(new RemoveActionListener());

      getUlcComponents().add(removeButton);
    }
    return removeButton;
  }

  /**
   * This method initializes ScrollPane
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane
   */
  private RScrollPane getScrollPane()
  {
    if (scrollPane == null)
    {
      scrollPane = new RScrollPane();
      scrollPane.setPreferredSize(new Dimension(10, getTable().getRowHeight()
              * (getParameters().getRows() + (getParameters().isTableHeaderVisible() ? 1 : 0))));
      scrollPane.setName(getParameters().getName() + "ScrollPane");
      scrollPane.setHorizontalScrollBarPolicy(ULCScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
      scrollPane.setViewPortView(getTable());

      getUlcComponents().add(scrollPane);
    }
    return scrollPane;
  }

  protected final RTable getTable()
  {
    String model;

    if (table == null)
    {
      table = new RTableWithExcelExport();
      table.setName(getParameters().getName() + "Table");

      model = TableModel.getTableModel(getParameters().getParameterTree(), this);
      table.setModelConfiguration(model);
      table.setSortable(getParameters().isSortable());

      table.addValueChangedListener(new ValueChangedListener(this, true));

      table.addFocusListener(new FocusListener(this));

      table.addActionListener(new ActionListener(this));

      table.setAutoResizeMode(getParameters().getAutoResizeMode());

      table.getSelectionModel().addListSelectionListener(new RowSelectionListener(this));

      getUlcComponents().add(table);
    }
    return table;
  }

  @Override
  public ULCContainer getUlcContainer()
  {
    return null;
  }

  @Override
  protected void initialize(final Position pos, ComplexComponent previousContainer)
  {
    GridBagConstraints constraints;

    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + 0);
    constraints.setGridY(pos.getPosY() + 0);
    constraints.setFill(GridBagConstraints.BOTH);
    constraints.setGridWidth(getParameters().getGridWidth() * GRID_BAG_COLUMN_WIDTH);
    constraints.setGridHeight(3);
    getParentContainer().add(getParameters().isEditable() ? getGridBag() : getScrollPane(), constraints);

    super.initialize(pos);

    pos.setPosY(pos.getPosY() + 3);
  }

  @Override
  public final boolean isFocusable()
  {
    return true;
  }

  protected void rowSelection()
  {
    invoke(getParameters().getRowSelectionMethod());
  }

  private void setColumnModel()
  {
    int i;
    i = 0;
    for (ITableCellEditor editorComponent : editorComponents)
    {
      if (editorComponent != null)
      {
        getTable().getColumnModel().getColumn(i).setCellEditor(editorComponent);
      }
      i++;
    }
    i = 0;
    for (ITableCellRenderer renderComponent : rendererComponents)
    {
      if (renderComponent != null)
      {
        getTable().getColumnModel().getColumn(i).setCellRenderer(renderComponent);
      }
      i++;
    }
  }

  @Override
  public final void setFocusable(boolean value)
  {
    getTable().setFocusable(value);
  }

  @Override
  public final void setLabel(String value)
  {
  }

  @Override
  public final void setListData(List<?> list)
  {
    List<?> newList;

    newList = list;

    if (newList == null)
    {
      newList = constructListData();
    }
    if (newList != getListData() || !modelSet)
    {
      try
      {
        getTable().setListData(newList);
        table.setSelectionMode(ULCListSelectionModel.SINGLE_SELECTION);
        setColumnModel();
        if (!newList.isEmpty())
        {
          modelSet = true;
        }
      }
      catch (Exception e)
      {
        throw new DynamicDialogException(e);
      }
    }
  }

  @Override
  protected final boolean useParentContainer()
  {
    return false;
  }

  @Override
  protected final Position getStartPos(Position pos)
  {
    return new Position();
  }
}
