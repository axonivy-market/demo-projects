package ch.ivyteam.ivy.addons.commondialogs.SingleLineInputDialog;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;

/**
 * RichDialog panel implementation for StringInputDialogPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class SingleLineInputDialogPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel iconLabel = null;
private RTextArea questionTextArea = null;
private RTextField inputTextField = null;
private RGridLayoutPane buttonPane = null;
  
  /**
   * Create a new instance of StringInputDialogPanel
   */
  public SingleLineInputDialogPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes StringInputDialogPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(316,118));
        this.add(getIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 3, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getQuestionTextArea(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getInputTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButtonPane(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes iconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getIconLabel() {
	if (iconLabel == null) {
		iconLabel = new RLabel();
		iconLabel.setStyle("border-all");
		iconLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/icons/large/question\")%>");
		iconLabel.setFocusable(false);
		iconLabel.setStyleProperties("{/anchor \"NORTHWEST\"}");
		iconLabel.setName("iconLabel");
	}
	return iconLabel;
}

/**
 * This method initializes questionTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getQuestionTextArea() {
	if (questionTextArea == null) {
		questionTextArea = new RTextArea();
		questionTextArea.setText("RTextArea");
		questionTextArea.setEditable(false);
		questionTextArea.setFocusable(false);
		questionTextArea.setStyle("fill-horiz-north-border");
		questionTextArea.setName("questionTextArea");
	}
	return questionTextArea;
}

/**
 * This method initializes inputTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getInputTextField() {
	if (inputTextField == null) {
		inputTextField = new RTextField();
		inputTextField.setText("RTextField");
		inputTextField.setColumns(30);
		inputTextField.setStyle("fill-horiz-north-border");
		inputTextField.setStyleProperties("{/weightY \"1\"}");
		inputTextField.setName("inputTextField");
	}
	return inputTextField;
}

/**
 * This method initializes buttonPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane	
 */
private RGridLayoutPane getButtonPane() {
	if (buttonPane == null) {
		buttonPane = new RGridLayoutPane();
		buttonPane.setName("buttonPane");
		buttonPane.setHgap(5);
		buttonPane.setStyleProperties("{/anchor \"EAST\"/insetsBottom \"5\"}");
		buttonPane.setStyle("border-all");
	}
	return buttonPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"