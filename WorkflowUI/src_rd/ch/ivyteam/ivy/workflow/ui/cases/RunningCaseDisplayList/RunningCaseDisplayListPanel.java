package ch.ivyteam.ivy.workflow.ui.cases.RunningCaseDisplayList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.workflow.ui.cases.CaseDisplayList.CaseDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;

/**
 * RichDialog panel implementation for RunningCaseDisplayListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class RunningCaseDisplayListPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RBoxPane headerBoxPane = null;
private HeaderPanel headerRDC = null;
private CaseDisplayListPanel caseDisplayListRDC = null;
/**
   * Create a new instance of RunningCaseDisplayListPanel
   */
  public RunningCaseDisplayListPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes RunningCaseDisplayListPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(560,498));
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
	}
	return headerBoxPane;
}

/**
 * This method initializes headerRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel	
 */
private HeaderPanel getHeaderRDC() {
	if (headerRDC == null) {
		headerRDC = new HeaderPanel();
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
private CaseDisplayListPanel getCaseDisplayListRDC() {
	if (caseDisplayListRDC == null) {
		caseDisplayListRDC = new CaseDisplayListPanel();
		caseDisplayListRDC.setName("caseDisplayListRDC");
	}
	return caseDisplayListRDC;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"