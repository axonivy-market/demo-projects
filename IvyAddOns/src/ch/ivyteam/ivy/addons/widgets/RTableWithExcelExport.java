package ch.ivyteam.ivy.addons.widgets;

import java.io.IOException;
import java.io.OutputStream;

import ch.ivyteam.ivy.addons.util.ExcelExport;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;

import com.ulcjava.base.application.ClientContext;
import com.ulcjava.base.application.ULCAlert;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCPopupMenu;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.table.ITableModel;
import com.ulcjava.base.application.util.IFileStoreHandler;
import com.ulcjava.base.shared.FileChooserConfig;

/**
 * Add Excel export capabilities on the tables.<br />
 * To use it, just replace in the java source code of the panel <br />
 * <code>... = new RTable(...)</code> by <code>... = new RTableWithExcelExport(...)</code><br />
 * A new contextual menu is added to the table to export the content.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 11.05.2010
 */
public class RTableWithExcelExport extends RTable
{
  private static final long serialVersionUID = -8266633571083214955L;

  private RPopupMenu popupMenu;

  private RMenuItem exportExcelMenuItem;

  private RPopupMenu.RSeparator menuSeparator;

  private String failureCallbackRDMethod;

  /**
   * Constructs a default RTableWithExcelExport that is initialized with a default data model.
   */
  public RTableWithExcelExport()
  {
    super();
    init();
  }

  /**
   * Constructs a default RTableWithExcelExport that is initialized with a default data model.
   * 
   * @param model data model
   */
  public RTableWithExcelExport(ITableModel model)
  {
    super(model);
    init();
  }

  private void init()
  {
    super.setComponentPopupMenu(getPopupMenu());
  }

  private RPopupMenu getPopupMenu()
  {
    if (popupMenu == null)
    {
      popupMenu = new RPopupMenu();
      popupMenu.setName("PopupMenu");
      popupMenu.setName("PopupMenu");
      popupMenu.add(getMenuExportExcel());
    }
    return popupMenu;
  }

  private RMenuItem getMenuExportExcel()
  {
    if (exportExcelMenuItem == null)
    {
      exportExcelMenuItem = new RMenuItem();
      exportExcelMenuItem.setName("exportExcelMenuItem");
      exportExcelMenuItem
              .setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/widgets/icons/exportExcel16\")%>");
      exportExcelMenuItem
              .setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/widgets/plainStrings/exportExcel\")%>");
      exportExcelMenuItem.addActionListener(new ActionListener(this));
    }
    return exportExcelMenuItem;
  }

  private RPopupMenu.RSeparator getMenuSeparator()
  {
    if (menuSeparator == null)
    {
      menuSeparator = new RPopupMenu.RSeparator();
      menuSeparator.setName("MenuSeparator");
    }
    return menuSeparator;
  }

  private final class ActionListener implements IActionListener
  {
    private final class FileStoreHandler implements IFileStoreHandler
    {
      /**
       * {@inheritDoc}
       */
      public void onFailure(int reason, String description)
      {
        ULCComponent component;
        IRichDialogPanel panel;
        boolean isFailureTreated;
        ULCAlert dialog;

        if (reason == IFileStoreHandler.CANCELLED)
        {
          return;
        }

        component = table.getParent();
        panel = null;

        isFailureTreated = false;

        if (failureCallbackRDMethod != null && !failureCallbackRDMethod.equals(""))
        {
          while (!(component instanceof IRichDialogPanel))
          {
            component = component.getParent();
          }
          if (component != null)
          {
            panel = (IRichDialogPanel) component;
          }

          // Try to call the failure call back method
          if (panel != null)
          {
            try
            {
              panel.getPanelAPI().callMethod(failureCallbackRDMethod, new Object[] {});
              isFailureTreated = true;
            }
            catch (Exception e)
            {
              Ivy.log().error(
                      "Unable to invoke the failure callback method from exportation of RTable to Excel. "
                              + e.getMessage());
            }
          }
        }
        if (!isFailureTreated)
        {
          dialog = new ULCAlert(Ivy.cms().co("/ch/ivyteam/ivy/addons/widgets/plainStrings/exportExcel"), Ivy
                  .cms().co("/ch/ivyteam/ivy/addons/widgets/plainStrings/exportExcelError"), Ivy.cms().co(
                  "/ch/ivyteam/ivy/addons/strings/buttons/ok"));
          dialog.setMessageType(ULCAlert.ERROR_MESSAGE);
          dialog.show();
        }
      }

      /**
       * {@inheritDoc}
       */
      public void onSuccess(String arg0, String arg1)
      {
        // Do nothing
      }

      /**
       * {@inheritDoc}
       */
      public void prepareFile(OutputStream data) throws IOException
      {
        ExcelExport.exportRTableAsExcel(table, table.getName(), data);
      }
    }

    private static final String EXCEL_FILE_EXTENTION = "xls";

    private static final String FILE_EXTENTION_SEPARATOR = ".";

    private static final String EXCEL_FILTER_DESCRIPTION = "Excel (*" + FILE_EXTENTION_SEPARATOR
            + EXCEL_FILE_EXTENTION + ")";

    private static final long serialVersionUID = -8168945971520369043L;

    private RTable table;

    private ActionListener(RTable table)
    {
      this.table = table;
    }

    /**
     * {@inheritDoc}
     */
    public void actionPerformed(ActionEvent arg0)
    {
      FileChooserConfig fileChooserConfig;

      fileChooserConfig = new FileChooserConfig();
      fileChooserConfig.setFileSelectionMode(FileChooserConfig.FILES_ONLY);
      fileChooserConfig.setSelectedFile(table.getName() + FILE_EXTENTION_SEPARATOR + EXCEL_FILE_EXTENTION);
      fileChooserConfig.setDialogType(FileChooserConfig.SAVE_DIALOG);
      fileChooserConfig.addFileFilterConfig(new FileChooserConfig.FileFilterConfig(
              new String[] {EXCEL_FILE_EXTENTION}, EXCEL_FILTER_DESCRIPTION));
      try
      {
        ClientContext.storeFile(new FileStoreHandler(), fileChooserConfig, table);
      }
      catch (Exception e)
      {
      }
    }
  }

  @Override
  public void setComponentPopupMenu(ULCPopupMenu popupMenu)
  {
    popupMenu.add(getMenuSeparator());
    popupMenu.add(getMenuExportExcel());
    super.setComponentPopupMenu(popupMenu);
  }

  /**
   * Gives the RD method name that should be called if the exported Excel file can not be sent to the client
   * desktop.
   * 
   * @param method RD method name to call
   */
  public void setFailureCallbackRDMethod(String method)
  {
    failureCallbackRDMethod = method;
  }

  /**
   * Returns the RD method name that is called if the exported Excel file can not be sent th the client
   * desktop.
   * @return RD method name called in case of failure
   */
  public String getFailureCallbackRDMethod()
  {
    return failureCallbackRDMethod;
  }
}
