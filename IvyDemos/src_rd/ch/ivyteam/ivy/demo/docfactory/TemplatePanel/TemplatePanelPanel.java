package ch.ivyteam.ivy.demo.docfactory.TemplatePanel;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.shared.UlcEventCategories;
import com.ulcjava.base.shared.UlcEventConstants;

import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.displays.RListDisplay;

/**
 * RichDialog panel implementation for TemplatePanelPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TemplatePanelPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RFlowLayoutPane buttonFlowLayoutPane = null;
private RLabel infoLabel = null;
private RLabel Label = null;
private RButton makeDocButton = null;
private RButton closeButton = null;
private RGridBagLayoutPane optionsGridBagLayoutPane = null;
private RLabel describeLabel = null;
private RLabel lettreNameLabel = null;
private RTextField letterNameTextField = null;
private RComboBox formatsComboBox = null;
private RListDisplay ListDisplay = null;
/**
   * Create a new instance of TemplatePanelPanel
   */
  public TemplatePanelPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes TemplatePanelPanel
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(621,510));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(476,459));
        this.add(getOptionsGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButtonFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getDescribeLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getListDisplay(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 2, 1, 1.0D, 1.0D, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes buttonFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getButtonFlowLayoutPane() {
	if (buttonFlowLayoutPane == null) {
		buttonFlowLayoutPane = new RFlowLayoutPane();
		buttonFlowLayoutPane.setName("buttonFlowLayoutPane");
		buttonFlowLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/alignment \"RIGHT\"}");
		buttonFlowLayoutPane.add(getMakeDocButton());
		buttonFlowLayoutPane.add(getCloseButton());
	}
	return buttonFlowLayoutPane;
}

/**
 * This method initializes infoLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getInfoLabel() {
	if (infoLabel == null) {
		infoLabel = new RLabel();
		infoLabel.setStyleProperties("{/verticalTextPosition \"CENTER\"/verticalAlignment \"CENTER\"/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/fill \"BOTH\"/insetsLeft \"5\"}");
		infoLabel.setName("infoLabel");
	}
	return infoLabel;
}

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel() {
	if (Label == null) {
		Label = new RLabel();
		Label.setName("Label");
		Label.setStyleProperties("{/verticalTextPosition \"CENTER\"/horizontalAlignment \"CENTER\"/verticalAlignment \"CENTER\"/fill \"BOTH\"/horizontalTextPosition \"CENTER\"}");
		Label.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/addons/docfactory/icons/info/24\")%>");
	}
	return Label;
}

/**
 * This method initializes makeDocButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getMakeDocButton() {
	if (makeDocButton == null) {
		makeDocButton = new RButton();
		makeDocButton.setName("makeDocButton");
		makeDocButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/demo/docfactory/labels/makeDocument\")%>");
	}
	return makeDocButton;
}

/**
 * This method initializes closeButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCloseButton() {
	if (closeButton == null) {
		closeButton = new RButton();
		closeButton.setName("closeButton");
		closeButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/demo/docfactory/labels/close\")%>");
	}
	return closeButton;
}

/**
 * This method initializes optionsGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getOptionsGridBagLayoutPane() {
	if (optionsGridBagLayoutPane == null) {
		RFiller Filler1 = new RFiller();
		Filler1.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		optionsGridBagLayoutPane = new RGridBagLayoutPane();
		optionsGridBagLayoutPane.setName("optionsGridBagLayoutPane");
		optionsGridBagLayoutPane.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/fill \"BOTH\"}");
		optionsGridBagLayoutPane.add(getLettreNameLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		optionsGridBagLayoutPane.add(getLetterNameTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		optionsGridBagLayoutPane.add(getFormatsComboBox(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		optionsGridBagLayoutPane.add(Filler1, new com.ulcjava.base.application.GridBagConstraints(3, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return optionsGridBagLayoutPane;
}

/**
 * This method initializes describeLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDescribeLabel() {
	if (describeLabel == null) {
		describeLabel = new RLabel();
		describeLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/addons/docfactory/labels/foundMergeFields\")%>");
		describeLabel.setStyleProperties("{/foregroundColor {/b \"102\"/r \"102\"/g \"102\"}/font {/name \"Tahoma\"/size \"12\"/style \"PLAIN\"}/anchor \"NORTHWEST\"/fill \"HORIZONTAL\"/insetsLeft \"5\"/weightX \"1\"}");
		describeLabel.setBorder(BorderFactory.createMatteBorder(0, 0, 1, 0, Color.gray));
		describeLabel.setName("describeLabel");
	}
	return describeLabel;
}

/**
 * This method initializes lettreNameLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLettreNameLabel() {
	if (lettreNameLabel == null) {
		lettreNameLabel = new RLabel();
		lettreNameLabel.setStyleProperties("{/insetsLeft \"5\"/insetsRight \"5\"/font {/name \"Tahoma\"/size \"12\"/style \"PLAIN\"}/anchor \"NORTHWEST\"/verticalAlignment \"CENTER\"/foregroundColor {/b \"102\"/r \"102\"/g \"102\"}/insetsTop \"5\"/verticalTextPosition \"CENTER\"/horizontalTextPosition \"LEFT\"/insetsBottom \"5\"/horizontalAlignment \"LEFT\"/fill \"BOTH\"}");
		lettreNameLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/demo/docfactory/labels/letterName\")%>");
		lettreNameLabel.setName("lettreNameLabel");
	}
	return lettreNameLabel;
}

/**
 * This method initializes letterNameTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getLetterNameTextField() {
	if (letterNameTextField == null) {
		letterNameTextField = new RTextField();
		letterNameTextField.setText("");
		letterNameTextField.setEventDeliveryMode(UlcEventCategories.VALUE_CHANGED_EVENT_CATEGORY, UlcEventConstants.ASYNCHRONOUS_MODE);
		letterNameTextField.setEventDeliveryMode(UlcEventCategories.KEY_EVENT_CATEGORY, UlcEventConstants.ASYNCHRONOUS_MODE);
		letterNameTextField.setEventDeliveryMode(UlcEventCategories.ACTION_EVENT_CATEGORY, UlcEventConstants.ASYNCHRONOUS_MODE);
		letterNameTextField.setStyleProperties("{/fill \"BOTH\"}");
		letterNameTextField.setColumns(30);
		letterNameTextField.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/demo/docfactory/tooltips/enterFileName\")%>");
		letterNameTextField.setName("letterNameTextField");
	}
	return letterNameTextField;
}

/**
 * This method initializes formatsComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getFormatsComboBox() {
	if (formatsComboBox == null) {
		formatsComboBox = new RComboBox();
		formatsComboBox.setName("formatsComboBox");
		formatsComboBox.setModelConfiguration("{/result \"result=entry\"/version \"3.0\"/icon \"\"/tooltip \"\"}");
		formatsComboBox.setStyleProperties("{/fill \"BOTH\"/insetsLeft \"5\"}");
	}
	return formatsComboBox;
}

/**
 * This method initializes ListDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RListDisplay	
 */
private RListDisplay getListDisplay() {
	if (ListDisplay == null) {
		ListDisplay = new RListDisplay();
		ListDisplay.setName("ListDisplay");
		ListDisplay.setDisplayId("docFactoryDisplay");
	}
	return ListDisplay;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"