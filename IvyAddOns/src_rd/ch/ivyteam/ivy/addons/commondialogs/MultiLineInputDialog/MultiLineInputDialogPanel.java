package ch.ivyteam.ivy.addons.commondialogs.MultiLineInputDialog;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

/**
 * RichDialog panel implementation for StringInputDialogPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class MultiLineInputDialogPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel iconLabel = null;
private RTextArea questionTextArea = null;
private RGridLayoutPane buttonPane = null;
private RTextArea inputTextArea = null;
private RScrollPane inputScrollPane = null;
  
  /**
   * Create a new instance of StringInputDialogPanel
   */
  public MultiLineInputDialogPanel()
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
        this.add(getIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 3, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getQuestionTextArea(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButtonPane(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getInputScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		questionTextArea.setStyleProperties("{/weightY \"0\"}");
		questionTextArea.setFocusable(false);
		questionTextArea.setStyle("fill-horiz-north-border");
		questionTextArea.setName("questionTextArea");
	}
	return questionTextArea;
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
		buttonPane.setStyleProperties("{/anchor \"EAST\"/insetsBottom \"5\"/insetsTop \"0\"}");
		buttonPane.setStyle("border-all");
	}
	return buttonPane;
}

/**
 * This method initializes inputTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getInputTextArea() {
	if (inputTextArea == null) {
		inputTextArea = new RTextArea();
		inputTextArea.setText("RTextArea");
		inputTextArea.setColumns(40);
		inputTextArea.setRows(7);
		inputTextArea.setFocusCycleRoot(true);
		inputTextArea.setName("inputTextArea");
	}
	return inputTextArea;
}

/**
 * This method initializes inputScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getInputScrollPane() {
	if (inputScrollPane == null) {
		inputScrollPane = new RScrollPane();
		inputScrollPane.setName("inputScrollPane");
		inputScrollPane.setStyle("fill-both-border");
		inputScrollPane.setViewPortView(getInputTextArea());
	}
	return inputScrollPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"