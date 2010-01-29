package ch.ivyteam.ivy.demo.commondialogs.DialogOverview;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

/**
 * RichDialog panel implementation for DemoPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class DialogOverviewPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridLayoutPane buttonPane = null;
private RButton messageDialogButton = null;
private RButton questionDialogButton = null;
private RButton singleLineInputDialogButton = null;
private RButton multipleLineInputDialogButton = null;
private RButton errorDialogButton = null;
private RButton loginDialogButton = null;
private RButton messageDialogLongButton = null;
private RButton questionDialogLongButton = null;
@EmbeddedRichDialog(TitlePanel.class) private ULCContainer titlePanel = null;
  
  /**
   * Create a new instance of DemoPanel
   */
  public DialogOverviewPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes DemoPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(333,356));
        this.add(getButtonPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		buttonPane.setColumns(1);
		buttonPane.setRows(0);
		buttonPane.setVgap(5);
		buttonPane.setStyle("border-all");
		buttonPane.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
		buttonPane.add(getMessageDialogButton());
		buttonPane.add(getMessageDialogLongButton());
		buttonPane.add(getQuestionDialogButton());
		buttonPane.add(getQuestionDialogLongButton());
		buttonPane.add(getSingleLineInputDialogButton());
		buttonPane.add(getMultipleLineInputDialogButton());
		buttonPane.add(getErrorDialogButton());
		buttonPane.add(getLoginDialogButton());
	}
	return buttonPane;
}

/**
 * This method initializes messageDialogButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getMessageDialogButton() {
	if (messageDialogButton == null) {
		messageDialogButton = new RButton();
		messageDialogButton.setText("Message Dialog");
		messageDialogButton.setName("messageDialogButton");
	}
	return messageDialogButton;
}

/**
 * This method initializes questionDialogButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getQuestionDialogButton() {
	if (questionDialogButton == null) {
		questionDialogButton = new RButton();
		questionDialogButton.setText("Question Dialog");
		questionDialogButton.setName("questionDialogButton");
	}
	return questionDialogButton;
}

/**
 * This method initializes singleLineInputDialogButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getSingleLineInputDialogButton() {
	if (singleLineInputDialogButton == null) {
		singleLineInputDialogButton = new RButton();
		singleLineInputDialogButton.setText("Single Line Input Dialog");
		singleLineInputDialogButton.setName("singleLineInputDialogButton");
	}
	return singleLineInputDialogButton;
}

/**
 * This method initializes multipleLineInputDialogButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getMultipleLineInputDialogButton() {
	if (multipleLineInputDialogButton == null) {
		multipleLineInputDialogButton = new RButton();
		multipleLineInputDialogButton.setText("Multiple Line Input Dialog");
		multipleLineInputDialogButton.setName("multipleLineInputDialogButton");
	}
	return multipleLineInputDialogButton;
}

/**
 * This method initializes errorDialogButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getErrorDialogButton() {
	if (errorDialogButton == null) {
		errorDialogButton = new RButton();
		errorDialogButton.setText("Error Dialog");
		errorDialogButton.setName("errorDialogButton");
	}
	return errorDialogButton;
}

/**
 * This method initializes loginDialogButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getLoginDialogButton() {
	if (loginDialogButton == null) {
		loginDialogButton = new RButton();
		loginDialogButton.setText("Login Dialog");
		loginDialogButton.setName("loginDialogButton");
	}
	return loginDialogButton;
}

/**
 * This method initializes messageDialogLongButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getMessageDialogLongButton() {
	if (messageDialogLongButton == null) {
		messageDialogLongButton = new RButton();
		messageDialogLongButton.setText("Message Dialog with long text");
		messageDialogLongButton.setName("messageDialogLongButton");
	}
	return messageDialogLongButton;
}

/**
 * This method initializes questionDialogLongButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getQuestionDialogLongButton() {
	if (questionDialogLongButton == null) {
		questionDialogLongButton = new RButton();
		questionDialogLongButton.setText("Question Dialog with long text");
		questionDialogLongButton.setName("questionDialogLongButton");
	}
	return questionDialogLongButton;
}

/**
 * This method initializes titlePanel	
 * 	
 * @return ch.ivyteam.ivy.demo.util.Title.TitlePanel	
 */
private ULCContainer getTitlePanel()  {
	if (titlePanel == null) {
		titlePanel = RichDialogPanelFactory.create(TitlePanel.class);
		titlePanel.setName("titlePanel");
		titlePanel.setStyle("fill-horiz");
	}
	return titlePanel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"