package ch.ivyteam.ivy.workflow.ui.task.TaskDateSelect;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

/**
 * RichDialog panel implementation for TaskDateSelectPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskDateSelectPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel dateLabel = null;
private RDatePicker taskDatePicker = null;
@EmbeddedRichDialog(HeaderPanel.class) private ULCContainer headerRDC = null;
private RFlowLayoutPane actionsFlowLayoutPane = null;
private RCheckBox disableDateSettingCheckBox = null;
private RButton okButton = null;
private RButton cancelButton = null;
/**
   * Create a new instance of TaskDateSelectPanel
   */
  public TaskDateSelectPanel()
  {
    super();
    initialize();

    // prettify ui components
    UIHelper.prettifyComponent(this);     
  }
  
  /**
   * This method initializes TaskDateSelectPanel
   * @return void
   */
  private void initialize()
  {
        RFiller verticalFiller = new RFiller();
        verticalFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        RFiller aFiller = new RFiller();
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(511,256));
        this.add(getDateLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTaskDatePicker(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getHeaderRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getActionsFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getDisableDateSettingCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes dateLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDateLabel() {
	if (dateLabel == null) {
		dateLabel = new RLabel();
		dateLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/selectDate\")%>");
		dateLabel.setName("dateLabel");
	}
	return dateLabel;
}

/**
 * This method initializes taskDatePicker	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker	
 */
private RDatePicker getTaskDatePicker() {
	if (taskDatePicker == null) {
		taskDatePicker = new RDatePicker();
		taskDatePicker.setName("taskDatePicker");
		taskDatePicker.setPreferredSize(new com.ulcjava.base.application.util.Dimension(150,23));
		taskDatePicker.setStyleProperties("{/alignmentY \"s\"}");
	}
	return taskDatePicker;
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
		headerRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,125));
		headerRDC.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
	}
	return headerRDC;
}

/**
 * This method initializes actionsFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getActionsFlowLayoutPane() {
	if (actionsFlowLayoutPane == null) {
		actionsFlowLayoutPane = new RFlowLayoutPane();
		actionsFlowLayoutPane.setName("actionsFlowLayoutPane");
		actionsFlowLayoutPane.setStyleProperties("{/alignment \"RIGHT\"}");
		actionsFlowLayoutPane.add(getOkButton());
		actionsFlowLayoutPane.add(getCancelButton());
	}
	return actionsFlowLayoutPane;
}

/**
 * This method initializes disableDateSettingCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getDisableDateSettingCheckBox() {
	if (disableDateSettingCheckBox == null) {
		disableDateSettingCheckBox = new RCheckBox();
		disableDateSettingCheckBox.setName("disableDateSettingCheckBox");
	}
	return disableDateSettingCheckBox;
}

/**
 * This method initializes okButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getOkButton() {
	if (okButton == null) {
		okButton = new RButton();
		okButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/ok\")%>");
		okButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(75,23));
		okButton.setName("okButton");
	}
	return okButton;
}

/**
 * This method initializes cancelButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCancelButton() {
	if (cancelButton == null) {
		cancelButton = new RButton();
		cancelButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/cancel\")%>");
		cancelButton.setPreferredSize(new com.ulcjava.base.application.util.Dimension(75,23));
		cancelButton.setName("cancelButton");
	}
	return cancelButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"