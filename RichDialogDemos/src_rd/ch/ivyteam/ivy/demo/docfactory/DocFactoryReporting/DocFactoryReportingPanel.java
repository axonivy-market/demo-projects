package ch.ivyteam.ivy.demo.docfactory.DocFactoryReporting;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Font;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.addons.filemanager.DesktopHandler.DesktopHandlerPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import com.ulcjava.base.application.ULCContainer;

/**
 * <p>DocFactoryReportingPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class DocFactoryReportingPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane reportingWithListGridBagLayoutPane = null;
private RLabel Label = null;
private RButton doReportingButton = null;
private @EmbeddedRichDialog(DesktopHandlerPanel.class) ULCContainer desktopHandlerPanel = null;
private RGridBagLayoutPane reportingWithTreeGridBagLayoutPane = null;
private RLabel Label1 = null;
private RButton doReportingButton1 = null;
private RGridBagLayoutPane serialReportingGridBagLayoutPane = null;
private RLabel Label2 = null;
private RButton doReportingButton2 = null;
  
  /**
   * Create a new instance of DocFactoryReportingPanel
   */
  public DocFactoryReportingPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes DocFactoryReportingPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(712,453));
        this.add(getReportingWithListGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getDesktopHandlerPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getReportingWithTreeGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSerialReportingGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes reportingWithListGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getReportingWithListGridBagLayoutPane() {
	if (reportingWithListGridBagLayoutPane == null) {
		reportingWithListGridBagLayoutPane = new RGridBagLayoutPane();
		reportingWithListGridBagLayoutPane.setName("reportingWithListGridBagLayoutPane");
		reportingWithListGridBagLayoutPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		reportingWithListGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray, 1), "Reporting with lists", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Dialog", Font.PLAIN, 14), new Color(23, 64, 140)));
		reportingWithListGridBagLayoutPane.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		reportingWithListGridBagLayoutPane.add(getDoReportingButton(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return reportingWithListGridBagLayoutPane;
}

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel() {
	if (Label == null) {
		Label = new RLabel();
		Label.setText("<html>A Data Class is used to provide informations to some merge fields that are outside of the nested reporting table.<br>The reporting is made with list of data classes (Company, Department, Employee, HumanCapital Elements).<br>A Company contains a list of departments, each department contains a list of employees, each employee contain each a list of Human Capital elements.<br>The template used is stored in the IvyDemos CMS (/docfactory/templatecache/reporting1).");
		Label.setStyleProperties("{/font {/name \"Dialog\"/size \"12\"/style \"PLAIN\"}/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		Label.setName("Label");
	}
	return Label;
}

/**
 * This method initializes doReportingButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDoReportingButton() {
	if (doReportingButton == null) {
		doReportingButton = new RButton();
		doReportingButton.setText("Generate the report");
		doReportingButton.setName("doReportingButton");
	}
	return doReportingButton;
}

/**
 * This method initializes desktopHandlerPanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getDesktopHandlerPanel() {
	if (desktopHandlerPanel == null) {
		desktopHandlerPanel = RichDialogPanelFactory
				.create(DesktopHandlerPanel.class);
		desktopHandlerPanel.setName("desktopHandlerPanel");
	}
	return desktopHandlerPanel;
}

/**
 * This method initializes reportingWithTreeGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getReportingWithTreeGridBagLayoutPane() {
	if (reportingWithTreeGridBagLayoutPane == null) {
		reportingWithTreeGridBagLayoutPane = new RGridBagLayoutPane();
		reportingWithTreeGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray, 1), "Reporting with data in a Tree", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Dialog", Font.PLAIN, 14), new Color(23, 64, 140)));
		reportingWithTreeGridBagLayoutPane.setName("reportingWithTreeGridBagLayoutPane");
		reportingWithTreeGridBagLayoutPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		reportingWithTreeGridBagLayoutPane.add(getLabel1(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		reportingWithTreeGridBagLayoutPane.add(getDoReportingButton1(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return reportingWithTreeGridBagLayoutPane;
}

/**
 * This method initializes Label1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel1() {
	if (Label1 == null) {
		Label1 = new RLabel();
		Label1.setName("Label1");
		Label1.setStyleProperties("{/font {/name \"Dialog\"/size \"12\"/style \"PLAIN\"}/fill \"BOTH\"/weightX \"1\"}");
		Label1.setText("<html>An Ivy Tree is used to perform the mail merge reporting with nested regions.<br>The first node of the Tree contains a DataClass used to provide informations to some merge fields that are outside of the nested reporting table. <br> The Tree contains series of nodes Dataclases, each of these nodes can contain children dataClasses.<br>The template used is the same as the one used in the first example and is stored in the IvyDemos CMS (/docfactory/templatecache/reporting1).");
	}
	return Label1;
}

/**
 * This method initializes doReportingButton1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDoReportingButton1() {
	if (doReportingButton1 == null) {
		doReportingButton1 = new RButton();
		doReportingButton1.setName("doReportingButton1");
		doReportingButton1.setText("Generate the report");
	}
	return doReportingButton1;
}

/**
 * This method initializes serialReportingGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getSerialReportingGridBagLayoutPane() {
	if (serialReportingGridBagLayoutPane == null) {
		serialReportingGridBagLayoutPane = new RGridBagLayoutPane();
		serialReportingGridBagLayoutPane.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.gray, 1), "Serial reports", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Dialog", Font.PLAIN, 14), new Color(23, 64, 140)));
		serialReportingGridBagLayoutPane.setName("serialReportingGridBagLayoutPane");
		serialReportingGridBagLayoutPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		serialReportingGridBagLayoutPane.add(getLabel2(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		serialReportingGridBagLayoutPane.add(getDoReportingButton2(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return serialReportingGridBagLayoutPane;
}

/**
 * This method initializes Label2	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel2() {
	if (Label2 == null) {
		Label2 = new RLabel();
		Label2.setName("Label2");
		Label2.setStyleProperties("{/font {/name \"Dialog\"/size \"12\"/style \"PLAIN\"}/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		Label2.setText("<html>A list of DocumentTemplate Objects is used to perform the creation of serial reports.<br> Each DocumentTemplate contains its own data and own Template.");
	}
	return Label2;
}

/**
 * This method initializes doReportingButton2	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getDoReportingButton2() {
	if (doReportingButton2 == null) {
		doReportingButton2 = new RButton();
		doReportingButton2.setName("doReportingButton2");
		doReportingButton2.setText("Generate the report");
	}
	return doReportingButton2;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"