package ch.ivyteam.ivy.workflow.ui.cases.FinishedCaseDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.ULCContainer;

/**
 * RichDialog panel implementation for FinishedCaseDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class FinishedCaseDisplayListPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RBoxPane headerBoxPane = null;
@EmbeddedRichDialog(HeaderPanel.class) private ULCContainer headerRDC = null;
@EmbeddedRichDialog(CaseDisplayListPanel.class) private ULCContainer caseDisplayListRDC = null;
private RButton closeHyperlink = null;
/**
   * Create a new instance of FinishedCaseDisplayListPanel
   */
  public FinishedCaseDisplayListPanel()
  {
    super();
    initialize();
    
    // prettify ui components
    UIHelper.prettifyComponent(this);     
  }
  
  /**
   * This method initializes FinishedCaseDisplayListPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(630,468));
        this.add(getHeaderBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
        this.add(getCaseDisplayListRDC(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes headerBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getHeaderBoxPane() {
	if (headerBoxPane == null) {
		headerBoxPane = new RBoxPane();
		headerBoxPane.setName("headerBoxPane");
		headerBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getHeaderRDC());
		headerBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getCloseHyperlink());
	}
	return headerBoxPane;
}

/**
 * This method initializes headerRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel	
 */
private ULCContainer getHeaderRDC()  {
	if (headerRDC == null) {
		headerRDC = RichDialogPanelFactory.create(HeaderPanel.class);
		headerRDC.setName("headerRDC");
		headerRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,75));
		headerRDC.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
	}
	return headerRDC;
}

/**
 * This method initializes caseDisplayListRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListPanel	
 */
private ULCContainer getCaseDisplayListRDC()  {
	if (caseDisplayListRDC == null) {
		caseDisplayListRDC = RichDialogPanelFactory.create(CaseDisplayListPanel.class);
		caseDisplayListRDC.setName("caseDisplayListRDC");
	}
	return caseDisplayListRDC;
}

/**
 * This method initializes closeHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCloseHyperlink() {
	if (closeHyperlink == null) {
		closeHyperlink = new RButton();
		closeHyperlink.setName("closeHyperlink");
		closeHyperlink.setStyleProperties("{/insetsRight \"3\"}");
		closeHyperlink.setStyle("toolBarButton");
		closeHyperlink.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/close\")%>");
		closeHyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close32\")%>");
		closeHyperlink.setBorderPainted(false);
	}
	return closeHyperlink;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"