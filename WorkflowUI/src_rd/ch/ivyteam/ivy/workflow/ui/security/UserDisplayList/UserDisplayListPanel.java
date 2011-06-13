package ch.ivyteam.ivy.workflow.ui.security.UserDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import com.ulcjava.base.application.ULCTable;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import com.ulcjava.base.application.BorderFactory;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import com.ulcjava.base.application.border.ULCEtchedBorder;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import com.ulcjava.base.application.ULCListSelectionModel;

/**
 * <p>UserDisplayListPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class UserDisplayListPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RScrollPane usersScrollPane = null;
private RTable userTable = null;
private RGridBagLayoutPane findUsersGridBagLayoutPane = null;
private RBoxPane findBoxPane = null;
private RTextField userNameCriteriaTextField = null;
private RHyperlink findUserHyperlink = null;
  
  /**
   * Create a new instance of UserDisplayListPanel
   */
  public UserDisplayListPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes UserDisplayListPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(280,441));
        this.add(getUsersScrollPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        this.add(getFindUsersGridBagLayoutPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
  }

/**
 * This method initializes usersScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getUsersScrollPane() {
	if (usersScrollPane == null) {
		usersScrollPane = new RScrollPane();
		usersScrollPane.setName("usersScrollPane");
		usersScrollPane.setViewPortView(getUserTable());
	}
	return usersScrollPane;
}

/**
 * This method initializes userTable	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTable	
 */
private RTable getUserTable() {
	if (userTable == null) {
		userTable = new RTable();
		userTable.setName("userTable");
		userTable.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons true /version \"3.0\"/columns {{/result \"result=\\\"<html><b>\\\" + entry.getName() + \\\"</b>\\\" + (entry.getFullName() is initialized? \\\" (\\\" + entry.getFullName() + \\\")\\\": \\\"\\\")\"/version \"3.0\"/tooltip \"\"/icon \"result=ivy.cms.cr(\\\"/ch/ivyteam/ivy/workflow/ui/security/images/user16\\\")\"/header \"ivy.cms.co(\\\"/ch/ivyteam/ivy/workflow/ui/security/plainStrings/userShortDesc\\\")\"/field \"\"/editable \"\"/condition \"\"/columnWidth \"150\"/columnStyle \"boldLeftAlignment\"/cellWidget \"\"}}}");
		userTable.setAutoResizeMode(ULCTable.AUTO_RESIZE_LAST_COLUMN);
		userTable.setSelectionMode(ULCListSelectionModel.SINGLE_SELECTION);
		userTable.setSortable(true);
	}
	return userTable;
}

/**
 * This method initializes findUsersGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getFindUsersGridBagLayoutPane() {
	if (findUsersGridBagLayoutPane == null) {
		findUsersGridBagLayoutPane = new RGridBagLayoutPane();
		findUsersGridBagLayoutPane.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
		findUsersGridBagLayoutPane.setOpaque(false);
		findUsersGridBagLayoutPane.setName("findUsersGridBagLayoutPane");
		findUsersGridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		findUsersGridBagLayoutPane.add(getFindBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return findUsersGridBagLayoutPane;
}

/**
 * This method initializes findBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getFindBoxPane() {
	if (findBoxPane == null) {
		findBoxPane = new RBoxPane();
		findBoxPane.setBorder(BorderFactory.createEtchedBorder(ULCEtchedBorder.LOWERED));
		findBoxPane.setName("findBoxPane");
		findBoxPane.setStyleProperties("{/weightX \"1\"}");
		findBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getUserNameCriteriaTextField());
		findBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getFindUserHyperlink());
	}
	return findBoxPane;
}

/**
 * This method initializes userNameCriteriaTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getUserNameCriteriaTextField() {
	if (userNameCriteriaTextField == null) {
		userNameCriteriaTextField = new RTextField();
		userNameCriteriaTextField.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0));
		userNameCriteriaTextField.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/findUsersByNameLongDesc\")%>");
		userNameCriteriaTextField.setColumns(20);
		userNameCriteriaTextField.setText("Find users");
		userNameCriteriaTextField.setSelectAllOnFocusGained(true);
		userNameCriteriaTextField.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/insetsTop \"0\"/insetsBottom \"0\"/opaque \"true\"/fill \"BOTH\"/insetsLeft \"0\"/weightY \"0\"/weightX \"1\"}");
		userNameCriteriaTextField.setName("userNameCriteriaTextField");
	}
	return userNameCriteriaTextField;
}

/**
 * This method initializes findUserHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getFindUserHyperlink() {
	if (findUserHyperlink == null) {
		findUserHyperlink = new RHyperlink();
		findUserHyperlink.setName("findUserHyperlink");
		findUserHyperlink.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/view24\") %>");
		findUserHyperlink.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/insetsTop \"0\"/insetsRight \"0\"/insetsLeft \"0\"}");
		findUserHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/find\")%>");
	}
	return findUserHyperlink;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"