package ch.ivyteam.ivy.demo.docfactory.TemplateMergeFieldPanel;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;

/**
 * <p>TemplateMergeFieldPanelPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class TemplateMergeFieldPanelPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel fieldNameLabel = null;
private RTextField fieldValueTextField = null;
private RScrollPane ScrollPane = null;
private RTextArea fieldValueTextArea = null;
private RButton toogleButton = null;
private RFiller Filler = null;
  
  /**
   * Create a new instance of TemplateMergeFieldPanelPanel
   */
  public TemplateMergeFieldPanelPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes TemplateMergeFieldPanelPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(373,40));
        this.setStyleProperties("{/insetsTop \"5\"/fill \"HORIZONTAL\"/weightX \"1\"}");
        this.add(getFieldNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFieldValueTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getToogleButton(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFiller(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes fieldNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFieldNameLabel() {
	if (fieldNameLabel == null) {
		fieldNameLabel = new RLabel();
		fieldNameLabel.setText("");
		fieldNameLabel.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/fill \"BOTH\"/insetsRight \"5\"/insetsLeft \"5\"/weightY \"1\"/weightX \"0\"}");
		fieldNameLabel.setName("fieldNameLabel");
	}
	return fieldNameLabel;
}

/**
 * This method initializes fieldValueTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getFieldValueTextField() {
	if (fieldValueTextField == null) {
		fieldValueTextField = new RTextField();
		fieldValueTextField.setText("");
		fieldValueTextField.setStyleProperties("{/anchor \"CENTER\"/insetsRight \"5\"/fill \"HORIZONTAL\"/weightY \"1\"/weightX \"1\"}");
		fieldValueTextField.setName("fieldValueTextField");
	}
	return fieldValueTextField;
}

/**
 * This method initializes ScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScrollPane() {
	if (ScrollPane == null) {
		ScrollPane = new RScrollPane();
		ScrollPane.setName("ScrollPane");
		ScrollPane.setStyleProperties("{/fill \"HORIZONTAL\"/insetsRight \"5\"/weightY \"1\"/weightX \"1\"}");
		ScrollPane.setPreferredSize(new com.ulcjava.base.application.util.Dimension(200,30));
		ScrollPane.setViewPortView(getFieldValueTextArea());
	}
	return ScrollPane;
}

/**
 * This method initializes fieldValueTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getFieldValueTextArea() {
	if (fieldValueTextArea == null) {
		fieldValueTextArea = new RTextArea();
		fieldValueTextArea.setText("");
		fieldValueTextArea.setStyleProperties("{/fill \"HORIZONTAL\"/weightY \"1\"/weightX \"1\"}");
		fieldValueTextArea.setRows(2);
		fieldValueTextArea.setName("fieldValueTextArea");
	}
	return fieldValueTextArea;
}

/**
 * This method initializes toogleButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getToogleButton() {
	if (toogleButton == null) {
		toogleButton = new RButton();
		toogleButton.setStyleProperties("{/insetsRight \"3\"/insetsLeft \"3\"}");
		toogleButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/demo/docfactory/icons/add/16\")%>");
		toogleButton.setName("toogleButton");
	}
	return toogleButton;
}

/**
 * This method initializes Filler	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RFiller	
 */
private RFiller getFiller() {
	if (Filler == null) {
		Filler = new RFiller();
		Filler.setStyleProperties("{/usePreferredSizeAsExactSize \"true\"/minimumSizeWidth \"100\"/preferredSizeWidth \"100\"/preferredSizeHeight \"0\"}");
	}
	return Filler;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"