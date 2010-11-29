package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.VisualDebugGridBagLayoutPane;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.addons.util.AddonsRuntimeException;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCollapsiblePane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.scripting.objects.List;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.util.Insets;

/**
 * This is the implementation of list that use a table and a view to edit the detail. This component is used to represent attribute of type
 * Ivy List.
 * @see List
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 04.12.2009
 */
public class MasterDetail extends Table
{
  private static final String ITEM = "/item";

  private final class SaveActionListener implements IActionListener
  {
    private static final long serialVersionUID = 9150185713461108516L;

    /**
     * {@inheritDoc}
     */
    public void actionPerformed(ActionEvent arg0)
    {
      saveActionPerformed();
    }
  }

  private final class CancelActionListener implements IActionListener
  {
    private static final long serialVersionUID = -2035227718897793763L;

    /**
     * {@inheritDoc}
     */
    public void actionPerformed(ActionEvent arg0)
    {
      cancelActionPerformed();
    }
  }

  private static final String OK_ICON_URI = "/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialog/icons/Ok16";

  private static final String CANCEL_ICON_URI = "/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialog/icons/Cancel16";

  private static final String CANCEL_TOOLTIP_URI = "/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialog/plainStrings/Cancel";

  private static final String DISPLAY_VALIDATION_BLOCKED_MESSAGE_METHOD = "entryBlockedValidationMessage";

  private static final String ASK_VALIDATION_CONFIRMATION_METHOD = "entryValidationConfirmation";

  private static final String DISPLAY_ROW_IS_EDITING_MESSAGE_METHOD = "entryEditingMessage";

  private RCollapsiblePane collapsiblePane;

  private RButton saveButton;

  private RButton cancelButton;

  private RGridBagLayoutPane gridBag;

  private RGridBagLayoutPane detailGridBag;

  private Object lastSelectedEntry = null;

  private boolean detailVisible;

  protected MasterDetail(DynamicDialogPanel panel, ComplexComponent container,
          MasterDetailParameters parameters, int index)
  {
    super(panel, container, parameters, index);
  }

  private void cancelActionPerformed()
  {
    setDetailVisible(false);

    getTable().getSelectionModel().clearSelection();
  }

  private void saveActionPerformed()
  {
    invoke(getParameters().getPreInsertMethod());

    if (getPanel().isDDValid(getFullName() + ITEM))
    {
      saveEntry();
    }
    else
    {
      if (getPanel().isDDBlocked(getFullName() + ITEM))
      {
        invoke(DISPLAY_VALIDATION_BLOCKED_MESSAGE_METHOD);
      }
      else
      {
        invoke(ASK_VALIDATION_CONFIRMATION_METHOD);
      }
    }
  }

  /**
   * Stores the list item currently edited in the detail view in the list attached to the table.
   */
  @SuppressWarnings("unchecked")
  public void saveEntry()
  {
    int index;
    List<Object> list;
    Object object;
    Object selectedObject;
    object = DynamicDialogMapper.getValue(getPanel().getComponentMap(), getPanel()
            .getInexistantAttributeValues(), getItemClazz(), getFullName() + ITEM, getPanel().getClassMap());
    selectedObject = getTable().getSelectedListEntry();
    setDetailVisible(false);
    list = (List<Object>) getListData();
    if (selectedObject != null)
    {
      index = list.indexOf(selectedObject);
      list.remove(index);
      list.add(index, object);
    }
    else
    {
      list.add(object);
    }
    setListData(list);
    lastSelectedEntry = object;
    getTable().setSelectedListEntry(object);
    lastSelectedEntry = null;
  }

  @Override
  protected final void applyStylesEx()
  {
    getGridBag().setStyle(getParameters().getContainerStyle());
    getDetailGridBag().setStyle(getParameters().getContainerStyle());
    getCollapsiblePane().setStyle(getParameters().getContainerStyle());
  }

  @Override
  protected void initialize(final Position pos, ComplexComponent previousContainer)
  {
    GridBagConstraints constraints;

    super.initialize(pos, previousContainer);

    constraints = new GridBagConstraints();
    constraints.setGridX(pos.getPosX() + 0);
    constraints.setGridY(pos.getPosY() + 0);
    constraints.setGridWidth(getParameters().getGridWidth() * GRID_BAG_COLUMN_WIDTH);
    constraints.setGridHeight(1);
    constraints.setFill(GridBagConstraints.HORIZONTAL);
    constraints.setWeightX(1);
    getParentContainer().add(getCollapsiblePane(), constraints);

    constraints = new GridBagConstraints();
    constraints.setGridX(0);
    constraints.setGridY(0);
    constraints.setWeightX(1);
    constraints.setGridHeight(3);
    getGridBag().add(getDetailGridBag(), constraints);

    constraints = new GridBagConstraints();
    constraints.setGridX(1);
    constraints.setGridY(0);
    constraints.setWeightX(0);
    getGridBag().add(getSaveButton(), constraints);

    constraints = new GridBagConstraints();
    constraints.setGridX(1);
    constraints.setGridY(1);
    constraints.setWeightX(0);
    getGridBag().add(getCancelButton(), constraints);

    pos.setPosY(pos.getPosY() + 1);

    setDetailVisible(false);
  }

  private RCollapsiblePane getCollapsiblePane()
  {
    if (collapsiblePane == null)
    {
      collapsiblePane = new RCollapsiblePane();
      collapsiblePane.setName(getParameters().getName() + "CollapsiblePane");
      collapsiblePane.setStyleProperties(BUTTON_STYLE_PROPERTIES);
      collapsiblePane.setCollapsed(true);

      getUlcComponents().add(collapsiblePane);

      collapsiblePane.add(getGridBag());
    }
    return collapsiblePane;
  }

  private RGridBagLayoutPane getGridBag()
  {
    if (gridBag == null)
    {
      gridBag = new VisualDebugGridBagLayoutPane();
      gridBag.setName(getParameters().getName() + "GridBag");
      gridBag.setStyleProperties(BUTTON_STYLE_PROPERTIES);

      getUlcComponents().add(gridBag);
    }
    return gridBag;
  }

  private RGridBagLayoutPane getDetailGridBag()
  {
    if (detailGridBag == null)
    {
      detailGridBag = new VisualDebugGridBagLayoutPane();
      detailGridBag.setName(getParameters().getName() + "DetailGridBag");
      detailGridBag.setStyleProperties(BUTTON_STYLE_PROPERTIES);

      getUlcComponents().add(detailGridBag);
    }
    return detailGridBag;
  }

  private ULCComponent getCancelButton()
  {
    if (cancelButton == null)
    {
      cancelButton = new RButton();
      cancelButton.setName(getParameters().getName() + "CancelButton");
      cancelButton.setStyleProperties(BUTTON_STYLE_PROPERTIES);
      cancelButton.setIconUri(CANCEL_ICON_URI);
      cancelButton.setToolTipText(CANCEL_TOOLTIP_URI);
      cancelButton.setMargin(new Insets(0, 0, 0, 0));
      cancelButton.addActionListener(new CancelActionListener());

      getUlcComponents().add(cancelButton);
    }
    return cancelButton;
  }

  private ULCComponent getSaveButton()
  {
    if (saveButton == null)
    {
      saveButton = new RButton();
      saveButton.setName(getParameters().getName() + "SaveButton");
      saveButton.setStyleProperties(BUTTON_STYLE_PROPERTIES);
      saveButton.setIconUri(OK_ICON_URI);
      saveButton.addActionListener(new SaveActionListener());

      getUlcComponents().add(saveButton);
    }
    return saveButton;
  }

  @Override
  public ULCContainer getUlcContainer()
  {
    return getDetailGridBag();
  }

  @Override
  protected void rowSelection()
  {
    Object selectedEntry;
    boolean keepDetail;

    selectedEntry = getTable().getSelectedListEntry();
    keepDetail = true;
    if (selectedEntry == null && lastSelectedEntry != null)
    {
      keepDetail = false;
    }
    if (selectedEntry != lastSelectedEntry)
    {
      if (isSelectionChangePermit())
      {
        super.rowSelection();

        if (selectedEntry != null)
        {
          editEntry(selectedEntry, false);
        }

        lastSelectedEntry = selectedEntry;
      }
      else
      {
        if (lastSelectedEntry != null)
        {
          if (selectedEntry != lastSelectedEntry)
          {
            getTable().setSelectedListEntry(lastSelectedEntry);
          }
        }
        else
        {
          getTable().getSelectionModel().clearSelection();
          keepDetail = true;
        }
      }
    }
    if (!keepDetail)
    {
      setDetailVisible(false);
    }
  }

  private void editEntry(Object entry, boolean newEntry)
  {
    String fullName;
    fullName = getFullName() + ITEM;

    if (entry != null && entry != lastSelectedEntry)
    {
      try
      {
        DynamicDialogMapper.setValue(entry, getPanel().getComponentMap(), getPanel()
                .getInexistantAttributeValues(), fullName, true, getPanel().getClassMap());
      }
      catch (AddonsException e)
      {
        throw new AddonsRuntimeException(e);
      }
    }
    if (newEntry)
    {
      getPanel().clearDDValidation(fullName);
    }
    else
    {
      getPanel().ddValidate(fullName);
    }

    setDetailVisible(true);
    getPanel().requestFocus(fullName);

  }

  private void setDetailVisible(boolean value)
  {
    detailVisible = value;

    for (Component component : getChildren())
    {
      component.setVisible(value);
    }
    getCollapsiblePane().setCollapsed(!detailVisible);
  }

  private boolean isDetailVisible()
  {
    return detailVisible;
  }

  @Override
  protected void addActionPerformed()
  {
    Object newItem;

    if (isSelectionChangePermit())
    {
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

      getTable().getSelectionModel().clearSelection();
      lastSelectedEntry = null;
      editEntry(newItem, true);
    }
  }

  private boolean isSelectionChangePermit()
  {
    boolean result;

    String fullName;
    fullName = getFullName() + ITEM;

    result = true;

    if (isDetailVisible()
            && (lastSelectedEntry == null || !lastSelectedEntry.equals(DynamicDialogMapper.getValue(
                    getPanel().getComponentMap(), getPanel().getInexistantAttributeValues(),
                    lastSelectedEntry.getClass(), fullName, getPanel().getClassMap()))))
    {
      invoke(DISPLAY_ROW_IS_EDITING_MESSAGE_METHOD);

      result = false;
    }
    return result;
  }

  protected final void action()
  {
    rowSelection();
  }

  protected void preRemoveSelectedListEntry()
  {
    cancelActionPerformed();
  }
}
