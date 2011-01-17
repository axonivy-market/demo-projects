package ch.ivyteam.ivy.workflow.ui.common.RoleSelect;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

/**
 * RichDialog panel implementation for RoleSelectPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class RoleSelectPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RComboBox rolesComboBox = null;
/**
   * Create a new instance of RoleSelectPanel
   */
  public RoleSelectPanel()
  {
    super();
    initialize();
    
    // prettify ui components
    UIHelper.prettifyComponent(this);     
  }
  
  /**
   * This method initializes RoleSelectPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(150,20));
        this.add(getRolesComboBox(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes rolesComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getRolesComboBox() {
	if (rolesComboBox == null) {
		rolesComboBox = new RComboBox();
		rolesComboBox.setName("rolesComboBox");
		rolesComboBox.setModelConfiguration("{/result \"result=entry.displayName.toString()\"/version \"2.0\"/icon \"\"/tooltip \"result=entry.displayName.toString() + \\\" \\\" + entry.description\"}");
	}
	return rolesComboBox;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"