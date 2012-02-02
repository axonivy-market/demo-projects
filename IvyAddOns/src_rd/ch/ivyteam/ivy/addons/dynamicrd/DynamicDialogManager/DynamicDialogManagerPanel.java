package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager;

import java.lang.reflect.InvocationTargetException;

import ch.ivyteam.ivy.addons.util.AddonsRuntimeException;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.components.RLookupTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RTableTree;
import ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.scripting.objects.Tree;

import com.ulcjava.base.application.ULCFrame;
import com.ulcjava.base.application.ULCListSelectionModel;
import com.ulcjava.base.application.ULCRootPane;
import com.ulcjava.base.application.ULCSplitPane;
import com.ulcjava.base.application.ULCTableTree;
import com.ulcjava.base.application.event.IWindowListener;
import com.ulcjava.base.application.event.WindowEvent;
import com.ulcjava.base.application.tree.ULCTreeSelectionModel;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import com.ulcjava.base.application.ULCScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.menus.RCheckBoxMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane;

/**
 * RichDialog panel implementation for TableTreeDialogPanel.
 * 
 * @author <%=author%>
 * @since <%=date%>
 */
public class DynamicDialogManagerPanel extends RichDialogGridBagPanel implements IRichDialogPanel
{
  /** Serial version id */
  private static final long serialVersionUID = 1L;

  private RScrollPane parameterScrollPane = null;

  private ParameterTableTree parameterTableTree = null;

  private RPopupMenu popupMenu = null;

  private RMenuItem refreshMenuItem = null;

  private RMenuItem removeMenuItem = null;

  private RMenuItem upMenuItem = null;

  private RMenuItem downMenuItem = null;

  private RPopupMenu.RSeparator MenuSeparator = null;

  private RScrollPane attributeScrollPane = null;

  private RList cmsContextList = null;

  private RSplitPane mainSplitPane = null;

  private RComboBox selectDCComboBox = null;

  private RLabel Label = null;

  private RSplitPane topSplitPane = null;

  private RScrollPane cmsContentScrollPane = null;

  private RTableTree attributeTableTree = null;

  private RToggleButton comboLookupToggleButton = null;

  private RGridBagLayoutPane GridBagLayoutPane1 = null;

  private RLookupTextField selectDCLookupTextField = null;

  private RCardPane cardPane = null;

  private RButton refreshDDButton = null;

  private RToggleButton parametersFilter = null; // @jve:decl-index=0:visual-constraint="762,121"

  private RPopupMenu.RSeparator menuSeparator = null;

  private RCheckBoxMenuItem filterMenuItem = null;

  private RFlowLayoutPane buttonFlowLayoutPane = null;

  private RButton logonButton = null;

  private RLabel administrativeRightsLabel = null;

  private RLabel errorLabel = null;

  private RSplitPane helpSplitPane = null;

  private RScrollPane helpScrollPane = null;

  private RHtmlPane helpHtmlPane = null;

  /**
   * Create a new instance of TableTreeDialogPanel
   */
  public DynamicDialogManagerPanel()
  {
    super();
    initialize();
  }

  /**
   * This method initializes TableTreeDialogPanel
   * 
   * @return void
   */
  private void initialize()
  {
    this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(628, 530));
    this.add(getMainSplitPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, 1.0D, 0.7D,
            com.ulcjava.base.application.GridBagConstraints.CENTER,
            com.ulcjava.base.application.GridBagConstraints.BOTH,
            new com.ulcjava.base.application.util.Insets(0, 0, 0, 0), 0, 0));
    this.add(getGridBagLayoutPane1(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, 1.0D,
            0.0D, com.ulcjava.base.application.GridBagConstraints.CENTER,
            com.ulcjava.base.application.GridBagConstraints.HORIZONTAL,
            new com.ulcjava.base.application.util.Insets(0, 0, 0, 0), 0, 0));
    this.add(getButtonFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1,
            -1, com.ulcjava.base.application.GridBagConstraints.EAST,
            com.ulcjava.base.application.GridBagConstraints.BOTH,
            new com.ulcjava.base.application.util.Insets(0, 0, 0, 0), 0, 0));
  }

  public void initializeCloseOperation()
  {
    ULCRootPane rootPane;
    rootPane = this.getRootPane();
    if (rootPane instanceof ULCFrame)
    {
      ULCFrame dialog = (ULCFrame) rootPane;

      dialog.setDefaultCloseOperation(ULCFrame.DO_NOTHING_ON_CLOSE);
      dialog.setName("dialog");
      dialog.addWindowListener(new IWindowListener()
        {
          private static final long serialVersionUID = 0L;

          public void windowClosing(WindowEvent arg0)
          {
            try
            {
              getPanelAPI().callMethod("close", new Object[] {});
            }
            catch (InvocationTargetException e)
            {
              throw new AddonsRuntimeException(e);
            }
            catch (NoSuchMethodException e)
            {
              throw new AddonsRuntimeException(e);
            }
          }
        });
    }
  }

  /**
   * This method initializes parameterScrollPane
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane
   */
  private RScrollPane getParameterScrollPane()
  {
    if (parameterScrollPane == null)
    {
      parameterScrollPane = new RScrollPane();
      parameterScrollPane.setName("parameterScrollPane");
      parameterScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \".7\"/weightX \"1\"}");
      parameterScrollPane.setVerticalScrollBarPolicy(ULCScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
      parameterScrollPane.setName("ScrollPane");
      parameterScrollPane.setViewPortView(getParameterTableTree());
    }
    return parameterScrollPane;
  }

  /**
   * This method initializes parameterTableTree
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RTableTree
   */
  private ULCTableTree getParameterTableTree()
  {
    if (parameterTableTree == null)
    {
      parameterTableTree = new ParameterTableTree();
      parameterTableTree.setName("parameterTableTree");
      parameterTableTree.setRootVisible(false);
      parameterTableTree.setComponentPopupMenu(getPopupMenu());
    }

    return parameterTableTree;
  }

  public void setValue(Tree tree)
  {
    parameterTableTree.setValue(tree);
  }

  /**
   * This method initializes PopupMenu
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu
   */
  private RPopupMenu getPopupMenu()
  {
    if (popupMenu == null)
    {
      popupMenu = new RPopupMenu();
      popupMenu.setName("popupMenu");
      popupMenu.setName("PopupMenu");
      popupMenu.add(getRefreshMenuItem());
      popupMenu.add(getRemoveMenuItem());
      popupMenu.add(getMenuSeparator());
      popupMenu.add(getUpMenuItem());
      popupMenu.add(getDownMenuItem());
      popupMenu.add(getMenuSeparator1());
      popupMenu.add(getFilterMenuItem());
    }
    return popupMenu;
  }

  /**
   * This method initializes addMenuItem
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem
   */
  private RMenuItem getRefreshMenuItem()
  {
    if (refreshMenuItem == null)
    {
      refreshMenuItem = new RMenuItem();
      refreshMenuItem.setName("refreshMenuItem");
      refreshMenuItem
              .setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/icons/Refresh16\")%>");
      refreshMenuItem
              .setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/plainStrings/refresh\")%>");
    }
    return refreshMenuItem;
  }

  /**
   * This method initializes removeMenuItem
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem
   */
  private RMenuItem getRemoveMenuItem()
  {
    if (removeMenuItem == null)
    {
      removeMenuItem = new RMenuItem();
      removeMenuItem
              .setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/plainStrings/remove\")%>");
      removeMenuItem
              .setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/icons/Remove16\")%>");
      removeMenuItem.setName("removeMenuItem");
    }
    return removeMenuItem;
  }

  /**
   * This method initializes upMenuItem
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem
   */
  private RMenuItem getUpMenuItem()
  {
    if (upMenuItem == null)
    {
      upMenuItem = new RMenuItem();
      upMenuItem
              .setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/plainStrings/up\")%>");
      upMenuItem
              .setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/icons/Up16\")%>");
      upMenuItem.setName("upMenuItem");
    }
    return upMenuItem;
  }

  /**
   * This method initializes downMenuItem
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem
   */
  private RMenuItem getDownMenuItem()
  {
    if (downMenuItem == null)
    {
      downMenuItem = new RMenuItem();
      downMenuItem.setName("downMenuItem");
      downMenuItem
              .setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/icons/Down16\")%>");
      downMenuItem
              .setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/plainStrings/down\")%>");
    }
    return downMenuItem;
  }

  /**
   * This method initializes MenuSeparator
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator
   */
  private RPopupMenu.RSeparator getMenuSeparator()
  {
    if (MenuSeparator == null)
    {
      MenuSeparator = new RPopupMenu.RSeparator();
      MenuSeparator.setName("MenuSeparator");
    }
    return MenuSeparator;
  }

  /**
   * This method initializes attributeScrollPane
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane
   */
  private RScrollPane getAttributeScrollPane()
  {
    if (attributeScrollPane == null)
    {
      attributeScrollPane = new RScrollPane();
      attributeScrollPane.setName("attributeScrollPane");
      attributeScrollPane.setViewPortView(getAttributeTableTree());
      attributeScrollPane.setName("ScrollPane1");
    }
    return attributeScrollPane;
  }

  /**
   * This method initializes cmsContextList
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RList
   */
  private RList getCmsContextList()
  {
    if (cmsContextList == null)
    {
      cmsContextList = new RList();
      cmsContextList.setName("cmsContextList");
      cmsContextList.setSelectionMode(ULCListSelectionModel.SINGLE_SELECTION);
      cmsContextList.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
      cmsContextList
              .setModelConfiguration("{/result \"result=entry.split(\\\";\\\").get(2)\"/version \"3.0\"/icon \"result=IF (entry.split(\\\";\\\").get(0).startsWith(\\\"X\\\"), ivy.cms.cr(\\\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/icons/Inexistant16\\\"), ivy.cms.cr(\\\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/icons/Empty16\\\"))\"/tooltip \"result=entry.split(\\\";\\\").get(1)\"}");
    }
    return cmsContextList;
  }

  /**
   * This method initializes mainSplitPane
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane
   */
  private RSplitPane getMainSplitPane()
  {
    if (mainSplitPane == null)
    {
      mainSplitPane = new RSplitPane();
      mainSplitPane.setName("mainSplitPane");
      mainSplitPane.setOrientation(ULCSplitPane.VERTICAL_SPLIT);
      mainSplitPane.setLeftComponent(getTopSplitPane());
      mainSplitPane.setRightComponent(getHelpSplitPane());
      mainSplitPane
              .setStyleProperties("{/orientation \"VERTICAL_SPLIT\"/dividerLocation \".3\"/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
    }
    return mainSplitPane;
  }

  /**
   * This method initializes selectDCComboBox
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox
   */
  private RComboBox getSelectDCComboBox()
  {
    if (selectDCComboBox == null)
    {
      selectDCComboBox = new RComboBox();
      selectDCComboBox.setName("selectDCComboBox");
      selectDCComboBox
              .setModelConfiguration("{/result \"result=entry\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
      selectDCComboBox.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"}");
    }
    return selectDCComboBox;
  }

  /**
   * This method initializes Label
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel
   */
  private RLabel getLabel()
  {
    if (Label == null)
    {
      Label = new RLabel();
      Label
              .setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/plainStrings/dataclassSelection\")%>");
      Label.setName("Label");
    }
    return Label;
  }

  /**
   * This method initializes topSplitPane
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane
   */
  private RSplitPane getTopSplitPane()
  {
    if (topSplitPane == null)
    {
      topSplitPane = new RSplitPane();
      topSplitPane.setName("topSplitPane");
      topSplitPane.setStyleProperties("{/dividerLocation \".5\"}");
      topSplitPane.setName("SplitPane1");
      topSplitPane.setRightComponent(getCmsContentScrollPane());
      topSplitPane.setLeftComponent(getAttributeScrollPane());
    }
    return topSplitPane;
  }

  /**
   * This method initializes cmsContentScrollPane
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane
   */
  private RScrollPane getCmsContentScrollPane()
  {
    if (cmsContentScrollPane == null)
    {
      cmsContentScrollPane = new RScrollPane();
      cmsContentScrollPane.setName("cmsContentScrollPane");
      cmsContentScrollPane.setViewPortView(getCmsContextList());
      cmsContentScrollPane.setName("ScrollPane2");
    }
    return cmsContentScrollPane;
  }

  /**
   * This method initializes attributeTableTree
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RTableTree
   */
  private RTableTree getAttributeTableTree()
  {
    if (attributeTableTree == null)
    {
      attributeTableTree = new RTableTree();
      attributeTableTree.setName("attributeTableTree");
      attributeTableTree.setForeground(Color.darkGray);
      attributeTableTree.setSelectionForeground(Color.darkGray);
      attributeTableTree.setAutoSelectFirstEntry(false);
      attributeTableTree.getSelectionModel().setSelectionMode(ULCTreeSelectionModel.SINGLE_TREE_SELECTION);
      attributeTableTree
              .setModelConfiguration("{/dynamicTreeLoadMode \"LOAD_FOR_RENDER_PARENT\"/version \"3.0\"/showTableheader true /autoTableheader false /showtooltip true /showIcons false /columns {{/patterns {{/result \"result=node.info\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Name\\\"\"/field \"\"/patternMode \"ALL\"/patternValue \"default\"}{/result \"result=entry.name\"/version \"3.0\"/header \"\"/field \"\"/columnStyle \"\"/patternMode \"INSTANCE\"/patternValue \"ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager.EncapsulationTreeNodeValue\"}}/version \"3.0\"}{/patterns {{/result \"\"/version \"3.0\"/header \"\\\"Class\\\"\"/patternMode \"ALL\"/patternValue \"default\"}{/result \"result=entry.clazz.getSimpleName()\"/version \"3.0\"/tooltip \"result=entry.clazz.getCanonicalName()\"/header \"\"/columnStyle \"\"/patternMode \"INSTANCE\"/patternValue \"ch.ivyteam.ivy.addons.dynamicrd.DynamicDialogManager.EncapsulationTreeNodeValue\"}}/version \"3.0\"}}}");
    }
    return attributeTableTree;
  }

  /**
   * This method initializes comboLookupToggleButton
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton
   */
  private RToggleButton getComboLookupToggleButton()
  {
    if (comboLookupToggleButton == null)
    {
      comboLookupToggleButton = new RToggleButton();
      comboLookupToggleButton.setName("comboLookupToggleButton");
      comboLookupToggleButton
              .setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/icons/Search16\")%>");
    }
    return comboLookupToggleButton;
  }

  /**
   * This method initializes GridBagLayoutPane1
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane
   */
  private RGridBagLayoutPane getGridBagLayoutPane1()
  {
    if (GridBagLayoutPane1 == null)
    {
      GridBagLayoutPane1 = new RGridBagLayoutPane();
      GridBagLayoutPane1.setName("GridBagLayoutPane1");
      GridBagLayoutPane1.setStyleProperties("{/fill \"BOTH\"/weightX \"1\"}");
      GridBagLayoutPane1.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1,
              3.0D, -1, com.ulcjava.base.application.GridBagConstraints.CENTER,
              com.ulcjava.base.application.GridBagConstraints.HORIZONTAL,
              new com.ulcjava.base.application.util.Insets(0, 0, 0, 0), 0, 0));
      GridBagLayoutPane1.add(getComboLookupToggleButton(),
              new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1,
                      com.ulcjava.base.application.GridBagConstraints.EAST,
                      com.ulcjava.base.application.GridBagConstraints.NONE,
                      new com.ulcjava.base.application.util.Insets(0, 0, 0, 0), 0, 0));
      GridBagLayoutPane1.add(getCardPane(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1,
              10.0D, -1, com.ulcjava.base.application.GridBagConstraints.CENTER,
              com.ulcjava.base.application.GridBagConstraints.HORIZONTAL,
              new com.ulcjava.base.application.util.Insets(0, 0, 0, 0), 0, 0));
      GridBagLayoutPane1.add(getLabel1(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 1, -1,
              -1, com.ulcjava.base.application.GridBagConstraints.CENTER,
              com.ulcjava.base.application.GridBagConstraints.NONE,
              new com.ulcjava.base.application.util.Insets(0, 0, 0, 0), 0, 0));
      GridBagLayoutPane1.add(getErrorLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 4, 1,
              -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER,
              com.ulcjava.base.application.GridBagConstraints.NONE,
              new com.ulcjava.base.application.util.Insets(0, 0, 0, 0), 0, 0));
    }
    return GridBagLayoutPane1;
  }

  /**
   * This method initializes selectDCLookupTextField
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RLookupTextField
   */
  private RLookupTextField getSelectDCLookupTextField()
  {
    if (selectDCLookupTextField == null)
    {
      selectDCLookupTextField = new RLookupTextField();
      selectDCLookupTextField.setText("");
      selectDCLookupTextField.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"}");
      selectDCLookupTextField.setName("selectDCLookupTextField");
    }
    return selectDCLookupTextField;
  }

  /**
   * This method initializes CardPane
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane
   */
  private RCardPane getCardPane()
  {
    if (cardPane == null)
    {
      cardPane = new RCardPane();
      cardPane.setName("cardPane");
      cardPane.addCard("ComboBox", getSelectDCComboBox());
      cardPane.addCard("LookupTextField", getSelectDCLookupTextField());
    }
    return cardPane;
  }

  /**
   * This method initializes refreshDDButton
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton
   */
  private RButton getRefreshDDButton()
  {
    if (refreshDDButton == null)
    {
      refreshDDButton = new RButton();
      refreshDDButton.setStyleProperties("{/anchor \"EAST\"}");
      refreshDDButton
              .setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/icons/RefreshWindow32\")%>");
      refreshDDButton
              .setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/plainStrings/refreshDD\")%>");
      refreshDDButton.setName("refreshDDButton");
    }
    return refreshDDButton;
  }

  /**
   * This method initializes parametersFilter
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RToggleButton
   */
  @SuppressWarnings("unused")
  private RToggleButton getParametersFilter()
  {
    if (parametersFilter == null)
    {
      parametersFilter = new RToggleButton();
      parametersFilter.setName("parametersFilter");
      parametersFilter
              .setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/plainStrings/filter\")%>");
      parametersFilter
              .setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/icons/Filter16\")%>");
    }
    return parametersFilter;
  }

  /**
   * This method initializes MenuSeparator1
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu.RSeparator
   */
  private RPopupMenu.RSeparator getMenuSeparator1()
  {
    if (menuSeparator == null)
    {
      menuSeparator = new RPopupMenu.RSeparator();
      menuSeparator.setName("MenuSeparator1");
    }
    return menuSeparator;
  }

  /**
   * This method initializes filterMenuItem
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.menus.RCheckBoxMenuItem
   */
  private RCheckBoxMenuItem getFilterMenuItem()
  {
    if (filterMenuItem == null)
    {
      filterMenuItem = new RCheckBoxMenuItem();
      filterMenuItem
              .setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/plainStrings/filter\")%>");
      filterMenuItem
              .setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/icons/Filter16\")%>");
      filterMenuItem.setName("filterMenuItem");
    }
    return filterMenuItem;
  }

  /**
   * This method initializes buttonFlowLayoutPane
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane
   */
  private RFlowLayoutPane getButtonFlowLayoutPane()
  {
    if (buttonFlowLayoutPane == null)
    {
      buttonFlowLayoutPane = new RFlowLayoutPane();
      buttonFlowLayoutPane.setName("buttonFlowLayoutPane");
      buttonFlowLayoutPane.setStyle("fill-horiz-border");
      buttonFlowLayoutPane.setStyleProperties("{/alignment \"RIGHT\"}");
      buttonFlowLayoutPane.add(getLogonButton());
      buttonFlowLayoutPane.add(getRefreshDDButton());
    }
    return buttonFlowLayoutPane;
  }

  /**
   * This method initializes logonButton
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton
   */
  private RButton getLogonButton()
  {
    if (logonButton == null)
    {
      logonButton = new RButton();
      logonButton
              .setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/plainStrings/logon\")%>");
      logonButton
              .setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/dynamicrd/DynamicDialogManager/icons/Logon32\")%>");
      logonButton.setName("logonButton");
    }
    return logonButton;
  }

  /**
   * This method initializes Label1
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel
   */
  private RLabel getLabel1()
  {
    if (administrativeRightsLabel == null)
    {
      administrativeRightsLabel = new RLabel();
      administrativeRightsLabel.setText("You should have ADMINISTRATE_WORKFLOW permision !");
      administrativeRightsLabel
              .setStyleProperties("{/foregroundColor {/b \"0\"/r \"255\"/g \"0\"}/fill \"HORIZONTAL\"}");
      administrativeRightsLabel.setName("administrativeRightsLabel");
    }
    return administrativeRightsLabel;
  }

  /**
   * This method initializes errorLabel
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel
   */
  private RLabel getErrorLabel()
  {
    if (errorLabel == null)
    {
      errorLabel = new RLabel();
      errorLabel.setName("errorLabel");
      errorLabel.setStyleProperties("{/foregroundColor {/b \"0\"/r \"255\"/g \"0\"}/fill \"HORIZONTAL\"}");
    }
    return errorLabel;
  }

  /**
   * This method initializes helpSplitPane	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane	
   */
  private RSplitPane getHelpSplitPane()
  {
    if (helpSplitPane == null)
    {
      helpSplitPane = new RSplitPane();
      helpSplitPane.setName("helpSplitPane");
      helpSplitPane.setStyleProperties("{/dividerSize \".5\"/orientation \"VERTICAL_SPLIT\"}");
      helpSplitPane.setRightComponent(getHelpScrollPane());
      helpSplitPane.setLeftComponent(getParameterScrollPane());
    }
    return helpSplitPane;
  }

  /**
   * This method initializes helpScrollPane	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
   */
  private RScrollPane getHelpScrollPane()
  {
    if (helpScrollPane == null)
    {
      helpScrollPane = new RScrollPane();
      helpScrollPane.setName("helpScrollPane");
      helpScrollPane.setViewPortView(getHelpHtmlPane());
    }
    return helpScrollPane;
  }

  /**
   * This method initializes helpHtmlPane	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane	
   */
  private RHtmlPane getHelpHtmlPane()
  {
    if (helpHtmlPane == null)
    {
      helpHtmlPane = new RHtmlPane();
      helpHtmlPane.setText("");
      helpHtmlPane.setName("helpHtmlPane");
      helpHtmlPane.setFocusable(false);
    }
    return helpHtmlPane;
  }

} // @jve:decl-index=0:visual-constraint="10,10"
