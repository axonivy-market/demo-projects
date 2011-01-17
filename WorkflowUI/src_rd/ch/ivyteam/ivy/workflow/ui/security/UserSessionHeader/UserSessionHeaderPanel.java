package ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.util.Color;

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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(73,40));
        this.setBackground(Color.white);
        this.add(getHelpHyperlink(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAboutHyperlink(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSettingsHyperlink(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		helpHyperlink.setStyleProperties("{/anchor \"CENTER\"/insetsBottom \"5\"/insetsTop \"5\"/fill \"NONE\"/insetsRight \"5\"/insetsLeft \"0\"}");
		helpHyperlink.setOpaque(false);
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
		aboutHyperlink.setStyleProperties("{/anchor \"CENTER\"/insetsBottom \"5\"/insetsTop \"5\"/fill \"NONE\"/insetsRight \"0\"/insetsLeft \"0\"}");
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
		settingsHyperlink.setStyleProperties("{/anchor \"CENTER\"/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/insetsLeft \"5\"}");
		settingsHyperlink.setName("settingsHyperlink");
	}
	return settingsHyperlink;
}

}  //  @jve:decl-index=0:visual-constraint="10,10"