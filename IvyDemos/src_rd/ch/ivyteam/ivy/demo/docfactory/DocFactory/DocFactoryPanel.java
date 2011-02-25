package ch.ivyteam.ivy.demo.docfactory.DocFactory;



import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer;
import ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import com.ulcjava.base.application.ULCContainer;


/**
 * RichDialog panel implementation for DocFactoryPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class DocFactoryPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTabbedDisplay TabbedDisplay = null;
private RButton addCorrespondantButton = null;
private RButton Button1 = null;
private RCheckBox oneDocCheckBox = null;
private RCheckBox SeparatedocumentsCheckBox = null;
private RTextField TextField = null;
private RTaskPaneContainer TaskPaneContainer = null;
private RTaskPane menuTaskPane = null;
private RTaskPane templateTaskPane = null;
private RButton templateButton = null;
private RLabel Label = null;
private @EmbeddedRichDialog(TitlePanel.class) ULCContainer titlePanel = null;
private RTaskPane personTaskPane = null;
private RButton Button = null;
/**
   * Create a new instance of DocFactoryPanel
   */
  public DocFactoryPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes DocFactoryPanel
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(852,614));
        this.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTabbedDisplay(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 2, 1, 1.0D, 1.0D, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTaskPaneContainer(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 4, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes TabbedDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay	
 */
private RTabbedDisplay getTabbedDisplay() {
	if (TabbedDisplay == null) {
		TabbedDisplay = new RTabbedDisplay();
		TabbedDisplay.setName("TabbedDisplay");
		TabbedDisplay.setDisplayId("default_display");
	}
	return TabbedDisplay;
}

/**
 * This method initializes addCorrespondantButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getAddCorrespondantButton() {
	if (addCorrespondantButton == null) {
		addCorrespondantButton = new RButton();
		addCorrespondantButton.setText("<%= \"<html> <p style=\\\"color:#001199;\\\"><b>Add one correspondent</b></p>\n</html>\" %>");
		addCorrespondantButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Tahoma\"/size \"10\"/style \"PLAIN\"}}");
		addCorrespondantButton.setToolTipText("<%= \"<html><p style=\\\"color:#001199;\\\"><b>add a correspondent</b></p> \nAdd a correspondent panel to the center panel. <br>\nEach correspondent panel represents a letter to a correspondent.<br>\nIt displays the list of mergefields included into the template, you will be able to fill each fields manually.<br>\n<br>\" %>");
		addCorrespondantButton.setName("addCorrespondantButton");
	}
	return addCorrespondantButton;
}

/**
 * This method initializes Button1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getButton1() {
	if (Button1 == null) {
		Button1 = new RButton();
		Button1.setText("<%= \"<html> <p style=\\\"color:#001199;\\\"><b>Write Serial letter</b></p>\nWith the selected options:\n</html>\" %>");
		Button1.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Tahoma\"/size \"10\"/style \"PLAIN\"}/insetsTop \"10\"}");
		Button1.setToolTipText("<%= \"<html><p style=\\\"color:#001199;\\\"><b>Write the letters</b></p>\nIf the first option us selected, all the correspondent's letters are going to be appended in one serial letter.<br>\nIf the second option is selected, the letters are also been produced as separated letters.<br>\nThose two options can be selected together.<br>\nThe letters are going to be stored under %root%/ivy_RIA_files,<br>\nwhere %root% represents the installation folder of your Ivy designer or server.\" %>");
		Button1.setName("Button1");
	}
	return Button1;
}

/**
 * This method initializes oneDocCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getOneDocCheckBox() {
	if (oneDocCheckBox == null) {
		oneDocCheckBox = new RCheckBox();
		oneDocCheckBox.setText("<%= \"<html>Append the letters<br> in one document<br>with the following<br> name:</html>\" %>");
		oneDocCheckBox.setStyleProperties("{/fill \"HORIZONTAL\"}");
		oneDocCheckBox.setSelected(true);
		oneDocCheckBox.setName("oneDocCheckBox");
	}
	return oneDocCheckBox;
}

/**
 * This method initializes SeparatedocumentsCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getSeparatedocumentsCheckBox() {
	if (SeparatedocumentsCheckBox == null) {
		SeparatedocumentsCheckBox = new RCheckBox();
		SeparatedocumentsCheckBox.setStyleProperties("{/fill \"HORIZONTAL\"}");
		SeparatedocumentsCheckBox.setSelected(true);
		SeparatedocumentsCheckBox.setText("<%= \"<html>Generate one letter<br> for each correspondent</html>\" %>");
		SeparatedocumentsCheckBox.setName("SeparatedocumentsCheckBox");
	}
	return SeparatedocumentsCheckBox;
}

/**
 * This method initializes TextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTextField() {
	if (TextField == null) {
		TextField = new RTextField();
		TextField.setText("");
		TextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		TextField.setName("TextField");
	}
	return TextField;
}

/**
 * This method initializes TaskPaneContainer	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPaneContainer	
 */
private RTaskPaneContainer getTaskPaneContainer() {
	if (TaskPaneContainer == null) {
		TaskPaneContainer = new RTaskPaneContainer();
		TaskPaneContainer.setName("TaskPaneContainer");
		TaskPaneContainer.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"}");
		TaskPaneContainer.add(getMenuTaskPane());
		TaskPaneContainer.add(getTemplateTaskPane());
		TaskPaneContainer.add(getPersonTaskPane());
	}
	return TaskPaneContainer;
}

/**
 * This method initializes menuTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getMenuTaskPane() {
	if (menuTaskPane == null) {
		RFiller Filler1 = new RFiller();
		Filler1.setStyleProperties("{/usePreferredSizeAsExactSize \"true\"/minimumSizeWidth \"5\"/minimumSizeHeight \"10\"/preferredSizeHeight \"10\"}");
		RFiller Filler = new RFiller();
		Filler.setStyleProperties("{/usePreferredSizeAsExactSize \"true\"/minimumSizeWidth \"5\"/minimumSizeHeight \"10\"/preferredSizeHeight \"10\"}");
		menuTaskPane = new RTaskPane();
		menuTaskPane.setName("menuTaskPane");
		menuTaskPane.setTitle("Letters options");
		menuTaskPane.add(getAddCorrespondantButton());
		menuTaskPane.add(Filler);
		menuTaskPane.add(getButton1());
		menuTaskPane.add(getOneDocCheckBox());
		menuTaskPane.add(getTextField());
		menuTaskPane.add(Filler1);
		menuTaskPane.add(getSeparatedocumentsCheckBox());
	}
	return menuTaskPane;
}

/**
 * This method initializes templateTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getTemplateTaskPane() {
	if (templateTaskPane == null) {
		templateTaskPane = new RTaskPane();
		templateTaskPane.setName("templateTaskPane");
		templateTaskPane.setTitle("Template");
		templateTaskPane.add(getTemplateButton());
	}
	return templateTaskPane;
}

/**
 * This method initializes templateButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getTemplateButton() {
	if (templateButton == null) {
		templateButton = new RButton();
		templateButton.setText("<%= \"<html> <p style=\\\"color:#001199;\\\"><b>Choose a template</b></p>\nIndicate another template<br> file path<br>\n</html>\" %>");
		templateButton.setStyleProperties("{/horizontalAlignment \"LEFT\"/font {/name \"Tahoma\"/size \"10\"/style \"PLAIN\"}}");
		templateButton.setToolTipText("<%= \"<html> <p style=\\\"color:#001199;\\\"><b>Choose a template</b></p>\nA template included in the CMS is used per default to be able to test the document factory.<br>\nYou can indicate another one by entering its path.<br>\nThe path of the template should point to the template on the server.<br>\nit can be an absolute path (like C:/templates/myTemplate.dot)<br>\nor a relative one, if it is included under the server path.\n</html>\" %>");
		templateButton.setName("templateButton");
	}
	return templateButton;
}

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel() {
	if (Label == null) {
		Label = new RLabel();
		Label.setText("<html>A document model (template) is included in the CMS of this demo project. If you want to use another one, please \nuse the \"Choose a template\" button.<br><br>\nFirst, click on \"Add a correspondent\" to add a correspondent panel to the center panel.\nEach correspondent panel represents a letter to a correspondent. Those panels display the list of \nmergefields included into the template, you will be able to fill each fields manually.<br><br>\nAfter filling out the fields, click on \"Write Serial letter\" to produce the serial letters with the filled templates panels.\nYou can choose to write all the letters in one document or/and to generate a separated letter for each correspondent.<br><br>\nThe produced letters are going to be stored under %root%/ivy_RIA_files</b>,\nwhere %root% represents the installation folder of your Ivy designer or server.\n</html>\n");
		Label.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/demo/docfactory/icons/info/24\")%>");
		Label.setStyleProperties("{/insetsBottom \"10\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		Label.setName("Label");
	}
	return Label;
}

/**
 * This method initializes titlePanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getTitlePanel() {
	if (titlePanel == null) {
		titlePanel = RichDialogPanelFactory.create(TitlePanel.class);
		titlePanel.setName("titlePanel");
		titlePanel.setStyle("fill-horiz");
		titlePanel.setPreferredSize(null);
	}
	return titlePanel;
}

/**
 * This method initializes personTaskPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RTaskPane	
 */
private RTaskPane getPersonTaskPane() {
	if (personTaskPane == null) {
		personTaskPane = new RTaskPane();
		personTaskPane.setName("personTaskPane");
		personTaskPane.setTitle("<%= \"<html>Use a Dataclass (NEW!)\" %>");
		personTaskPane.setToolTipText("<%= \"<html>This demo provides a Dataclass to the document factory.<br>The attributes from this dataclass are used as mergefields values for the office template. \"%>");
		personTaskPane.add(getButton());
	}
	return personTaskPane;
}

/**
 * This method initializes Button	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getButton() {
	if (Button == null) {
		Button = new RButton();
		Button.setText("<%= \"<html> <p style=\\\"color:#001199;\\\"><b>Demo with a Dataclass</b></p>\nA Dataclass is used to fill <br>directly the template <br>mergefields\n</html>\" %>");
		Button.setStyleProperties("{/font {/name \"Tahoma\"/size \"10\"/style \"PLAIN\"}}");
		Button.setName("Button");
	}
	return Button;
}
  
  
}  //  @jve:decl-index=0:visual-constraint="10,10"