package ch.ivyteam.ivy.workflow.ui.restricted.technical.DefaultWebBannerDisplay;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

/**
 * RichDialog panel implementation for DefaultWebBannerDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class DefaultWebBannerDisplayPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RHyperlink webBannerHyperlink = null;
  
  /**
   * Create a new instance of DefaultWebBannerDisplayPanel
   */
  public DefaultWebBannerDisplayPanel()
  {
    super();
    initialize();
    
    // prettify ui components
    UIHelper.prettifyComponent(this);     
  }
  
  /**
   * This method initializes DefaultWebBannerDisplayPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(383,40));
        this.setOpaque(false);
        this.add(getWebBannerHyperlink(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes webBannerHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RHyperlink getWebBannerHyperlink() {
	if (webBannerHyperlink == null) {
		webBannerHyperlink = new RHyperlink();
		webBannerHyperlink.setText(" ");
		webBannerHyperlink.setToolTipText("<%= ivy.var.xivy_workflow_ui_restricted_xpertLineOfficialWebSite %>");
		webBannerHyperlink.setFocusPainted(false);
		webBannerHyperlink.setName("webBannerHyperlink");
	}
	return webBannerHyperlink;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"