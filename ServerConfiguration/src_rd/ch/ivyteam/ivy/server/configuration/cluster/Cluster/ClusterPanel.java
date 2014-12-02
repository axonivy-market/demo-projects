package ch.ivyteam.ivy.server.configuration.cluster.Cluster;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCEtchedBorder;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Font;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import com.ulcjava.base.application.ULCTable;

/**
 * <p>ClusterPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
public class ClusterPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
  private RGridBagLayoutPane clusterNodesPane = null;
  private RGridBagLayoutPane localClusterNodePane = null;
  private RTextField localClusterHostIdentifierTextField = null;
  private RLabel localClusterNodeIdentifierLabel = null;
  private RButton localClusterNodeAddButton = null;
  private RScrollPane clusterNodesScrollPane = null;
  private RTable clusterNodesTable = null;
  private RButton clusterNodesRemoveButton = null;
  private RCheckBox enableClusterNodeCheckBox = null;
  
  /**
   * Create a new instance of ClusterPanel
   */
  public ClusterPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ClusterPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(387,368));
        this.add(getEnableClusterNodeCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLocalClusterNodePane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getClusterNodesPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, 1.0, 1.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

  /**
   * This method initializes clusterNodesPane	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
   */
  private RGridBagLayoutPane getClusterNodesPane()
  {
    if (clusterNodesPane == null)
    {
      clusterNodesPane = new RGridBagLayoutPane();
      clusterNodesPane.setName("clusterNodesPane");
      clusterNodesPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createEtchedBorder(ULCEtchedBorder.RAISED), "Cluster Nodes", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
      clusterNodesPane.setStyle("fill-both");
      clusterNodesPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
      clusterNodesPane.add(getClusterNodesScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
      clusterNodesPane.add(getClusterNodesRemoveButton(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
      clusterNodesPane.add(getLocalClusterNodeAddButton(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
    }
    return clusterNodesPane;
  }

  /**
   * This method initializes localClusterNodePane	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
   */
  private RGridBagLayoutPane getLocalClusterNodePane()
  {
    if (localClusterNodePane == null)
    {
      localClusterNodePane = new RGridBagLayoutPane();
      localClusterNodePane.setName("localClusterNodePane");
      localClusterNodePane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createEtchedBorder(ULCEtchedBorder.RAISED), "Local Cluster Node", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
      localClusterNodePane.setStyle("fill-horiz");
      localClusterNodePane.setToolTipText("Use 0 if you have only one cluster node on this machine.\\n\nUse 1..n if you have multiple cluster nodes on this machine.");
      // hide the local cluster node id panel because value is read from licence and must not be changed and more
      localClusterNodePane.setVisible(false);
      localClusterNodePane.add(getLocalClusterHostIdentifierTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
      localClusterNodePane.add(getLocalClusterNodeIdentifierLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
    }
    return localClusterNodePane;
  }

  /**
   * This method initializes localClusterHostIdentifierTextField	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
   */
  private RTextField getLocalClusterHostIdentifierTextField()
  {
    if (localClusterHostIdentifierTextField == null)
    {
      localClusterHostIdentifierTextField = new RTextField();
      localClusterHostIdentifierTextField.setText("");
      localClusterHostIdentifierTextField.setMandatory(true);
      localClusterHostIdentifierTextField.setValidation("NumberIntPositive");
      localClusterHostIdentifierTextField.setToolTipText("<html>Use 0 if you have only one cluster node on this machine.<br>\nUse 1..n if you have multiple cluster nodes on this machine.</html>");
      localClusterHostIdentifierTextField.setName("localClusterHostIdentifierTextField");
    }
    return localClusterHostIdentifierTextField;
  }

  /**
   * This method initializes localClusterNodeIdentifierLabel	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
   */
  private RLabel getLocalClusterNodeIdentifierLabel()
  {
    if (localClusterNodeIdentifierLabel == null)
    {
      localClusterNodeIdentifierLabel = new RLabel();
      localClusterNodeIdentifierLabel.setText("Identifier");
      localClusterNodeIdentifierLabel.setName("localClusterNodeIdentifierLabel");
    }
    return localClusterNodeIdentifierLabel;
  }

  /**
   * This method initializes localClusterNodeAddButton	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
   */
  private RButton getLocalClusterNodeAddButton()
  {
    if (localClusterNodeAddButton == null)
    {
      localClusterNodeAddButton = new RButton();
      localClusterNodeAddButton.setText("Add local node");
      localClusterNodeAddButton.setStyleProperties("{/anchor \"NORTHEAST\"/insetsTop \"0\"/fill \"HORIZONTAL\"}");
      localClusterNodeAddButton.setStyle("border-left-bottom-right");
      localClusterNodeAddButton.setToolTipText("Add data for the local cluster node");
      localClusterNodeAddButton.setName("localClusterNodeAddButton");
    }
    return localClusterNodeAddButton;
  }

  /**
   * This method initializes clusterNodesScrollPane	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
   */
  private RScrollPane getClusterNodesScrollPane()
  {
    if (clusterNodesScrollPane == null)
    {
      clusterNodesScrollPane = new RScrollPane();
      clusterNodesScrollPane.setName("clusterNodesScrollPane");
      clusterNodesScrollPane.setViewPortView(getClusterNodesTable());
    }
    return clusterNodesScrollPane;
  }

  /**
   * This method initializes clusterNodesTable	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
   */
  private RTable getClusterNodesTable()
  {
    if (clusterNodesTable == null)
    {
      clusterNodesTable = new RTable();
      clusterNodesTable.setName("clusterNodesTable");
      clusterNodesTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons false /version \"3.0\"/emptyTableText \"\"/columns {{/result \"result=entry.getHostName()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Host\\\"\"/field \"\"/editable \"\"/condition \"\"/cellWidget \"\"}{/result \"result=entry.getLocalIdentifier()\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"Local Identifier\\\"\"/field \"\"/editable \"\"/condition \"\"/cellWidget \"\"}{/result \"result=entry.ipPort\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"IP Port\\\"\"/field \"\"/editable \"\"/condition \"\"/cellWidget \"\"}{/result \"result=entry.ipAddress\"/version \"3.0\"/tooltip \"\"/icon \"\"/header \"\\\"IP Address\\\"\"/field \"\"/editable \"\"/condition \"\"/cellWidget \"\"}}}");
      clusterNodesTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_ALL_COLUMNS);
      clusterNodesTable.setSortable(true);
    }
    return clusterNodesTable;
  }

  /**
   * This method initializes clusterNodesRemoveButton	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
   */
  private RButton getClusterNodesRemoveButton()
  {
    if (clusterNodesRemoveButton == null)
    {
      clusterNodesRemoveButton = new RButton();
      clusterNodesRemoveButton.setText("Remove node");
      clusterNodesRemoveButton.setStyle("border-left-bottom-right");
      clusterNodesRemoveButton.setStyleProperties("{/anchor \"NORTH\"/insetsTop \"0\"/fill \"HORIZONTAL\"}");
      clusterNodesRemoveButton.setToolTipText("Remove the selected node");
      clusterNodesRemoveButton.setName("clusterNodesRemoveButton");
    }
    return clusterNodesRemoveButton;
  }

  /**
   * This method initializes enableClusterNodeCheckBox	
   * 	
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
   */
  private RCheckBox getEnableClusterNodeCheckBox()
  {
    if (enableClusterNodeCheckBox == null)
    {
      enableClusterNodeCheckBox = new RCheckBox();
      enableClusterNodeCheckBox.setText("Enable Cluster Server");
      enableClusterNodeCheckBox.setStyle("fill-horiz-north");
      enableClusterNodeCheckBox.setStyleProperties("{/insetsTop \"000\"}");
      enableClusterNodeCheckBox.setVisible(false);
      enableClusterNodeCheckBox.setName("enableClusterNodeCheckBox");
    }
    return enableClusterNodeCheckBox;
  }
}  //  @jve:decl-index=0:visual-constraint="10,10"