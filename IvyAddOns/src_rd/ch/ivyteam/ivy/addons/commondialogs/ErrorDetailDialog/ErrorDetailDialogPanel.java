package ch.ivyteam.ivy.addons.commondialogs.ErrorDetailDialog;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

/**
 * RichDialog panel implementation for ErrorDetailDialogPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ErrorDetailDialogPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RScrollPane detailScrollPane = null;
private RTextArea detailTextArea = null;
private RButton okButton = null;
  
  /**
   * Create a new instance of ErrorDetailDialogPanel
   */
  public ErrorDetailDialogPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ErrorDetailDialogPanel
   * @return void
   */
  public void initialize()
  {
        this.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
        this.add(getDetailScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getOkButton(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes detailScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getDetailScrollPane() {
	if (detailScrollPane == null) {
		detailScrollPane = new RScrollPane();
		detailScrollPane.setName("detailScrollPane");
		detailScrollPane.setStyle("fill-both-border");
		detailScrollPane.setViewPortView(getDetailTextArea());
	}
	return detailScrollPane;
}

/**
 * This method initializes detailTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getDetailTextArea() {
	if (detailTextArea == null) {
		detailTextArea = new RTextArea();
		detailTextArea.setText("RTextArea");
		detailTextArea.setColumns(40);
		detailTextArea.setRows(20);
		detailTextArea.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		detailTextArea.setName("detailTextArea");
	}
	return detailTextArea;
}

/**
 * This method initializes okButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getOkButton() {
	if (okButton == null) {
		okButton = new RButton();
		okButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/addons/strings/buttons/ok\") %>");
		okButton.setStyle("border-left-bottom-right");
		okButton.setName("okButton");
	}
	return okButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"