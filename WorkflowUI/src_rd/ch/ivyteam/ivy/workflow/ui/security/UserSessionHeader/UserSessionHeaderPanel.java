package ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;

/**
 * RichDialog panel implementation for UserSessionHeaderPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class UserSessionHeaderPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RHyperlink helpHyperlink = null;
private RHyperlink aboutHyperlink = null;
private RHyperlink settingsHyperlink = null;
private RHyperlink userHyperlink = null;
/**
   * Create a new instance of UserSessionHeaderPanel
   */
  public UserSessionHeaderPanel()
  {
    super();
    initialize();

    // prettify ui components
    UIHelper.prettifyComponent(this); 
  }
  
  /**
   * This method initializes UserSessionHeaderPanel
   * @return void
   */
  private void initialize()
  {
        RFiller horizontalFiller = new RFiller();
        horizontalFiller.setStyleProperties("{/weightX \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(102,40));
        this.setBackground(Color.white);
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(160,34));
        this.add(getHelpHyperlink(), new com.ulcjava.base.application.GridBagConstraints(4, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAboutHyperlink(), new com.ulcjava.base.application.GridBagConstraints(3, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSettingsHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getUserHyperlink(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(horizontalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes helpHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getHelpHyperlink() {
	if (helpHyperlink == null) {
		helpHyperlink = new RHyperlink();
		helpHyperlink.setName("helpHyperlink");
		helpHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/help/plainStrings/openUserGuide\")%>\n");
		helpHyperlink.setOpaque(false);
		helpHyperlink.setStyle("sessionHeaderHyperlink");
		helpHyperlink.setStyleProperties("{/insetsRight \"10\"}");
		helpHyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/help/images/help24\")%>");
	}
	return helpHyperlink;
}

/**
 * This method initializes aboutHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getAboutHyperlink() {
	if (aboutHyperlink == null) {
		aboutHyperlink = new RHyperlink();
		aboutHyperlink.setName("aboutHyperlink");
		aboutHyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/about/images/about24\")%>");
		aboutHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/about/plainStrings/aboutLabel\")%>");
		aboutHyperlink.setOpaque(false);
		aboutHyperlink.setStyle("sessionHeaderHyperlink");
		aboutHyperlink.setVisible(false);
	}
	return aboutHyperlink;
}

/**
 * This method initializes settingsHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getSettingsHyperlink() {
	if (settingsHyperlink == null) {
		settingsHyperlink = new RHyperlink();
		settingsHyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/administration/images/settings16\")%>");
		settingsHyperlink.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/administration/plainStrings/settingsShortDesc\")%>");
		settingsHyperlink.setStyle("sessionHeaderHyperlink");
		settingsHyperlink.setName("settingsHyperlink");
	}
	return settingsHyperlink;
}

/**
 * This method initializes userHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getUserHyperlink() {
	if (userHyperlink == null) {
		userHyperlink = new RHyperlink();
		userHyperlink.setStyle("sessionHeaderHyperlink");
		userHyperlink.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/security/images/user16\") %>");
		userHyperlink.setVisible(false);
		userHyperlink.setName("userHyperlink");
	}
	return userHyperlink;
}

}  //  @jve:decl-index=0:visual-constraint="10,10"