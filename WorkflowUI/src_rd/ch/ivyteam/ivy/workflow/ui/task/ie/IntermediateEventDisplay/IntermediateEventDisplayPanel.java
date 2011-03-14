package ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay;

import ch.ivyteam.ivy.addons.common.technical.Separator.SeparatorPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventElementDisplay.IntermediateEventElementDisplayPanel;

import com.ulcjava.base.application.ULCContainer;

/**
 * RichDialog panel implementation for IntermediateEventDisplayPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class IntermediateEventDisplayPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel eventIdentifierLabel = null;
private RTextField eventIdentifierTextField = null;
private RLabel eventTimeStampLabel = null;
private RTextField eventTimestampTextField = null;
private RLabel identifierLabel = null;
private RTextField identifierTextField = null;
@EmbeddedRichDialog(IntermediateEventElementDisplayPanel.class) private ULCContainer intermediateEventElementDisplayRDC = null;
private RLabel resultObjectLabel = null;
private RTextField resultObjectTextField = null;
private RLabel stateLabel = null;
private RTextField stateTextField = null;
private RLabel timeoutActionLabel = null;
private RTextField timeoutActionTextField = null;
private RLabel timeoutTaskStartElementIdLabel = null;
private RTextField timeoutTaskStartElementIdTextField = null;
private RLabel timeoutTimestampLabel = null;
private RTextField timeoutTimestampTextField = null;
private RFlowLayoutPane aFlowLayoutPane = null;
private RFlowLayoutPane aFlowLayoutPane1 = null;
private RFlowLayoutPane aFlowLayoutPane11 = null;
private RFlowLayoutPane aFlowLayoutPane111 = null;
private RFlowLayoutPane aFlowLayoutPane1111 = null;
private RFlowLayoutPane aFlowLayoutPane11111 = null;
private RFlowLayoutPane aFlowLayoutPane111111 = null;
private RFlowLayoutPane aFlowLayoutPane1111111 = null;
@EmbeddedRichDialog(SeparatorPanel.class) private ULCContainer separatorRDC = null;
  
  /**
   * Create a new instance of IntermediateEventDisplayPanel
   */
  public IntermediateEventDisplayPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes IntermediateEventDisplayPanel
   * @return void
   */
  private void initialize()
  {
        RFiller aFiller = new RFiller();
        aFiller.setStyle("horizontalStrut150");
        RFiller verticalFiller = new RFiller();
        verticalFiller.setStyleProperties("{/fill \"VERTICAL\"/weightY \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(548,558));
        this.add(getEventIdentifierLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getEventTimeStampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIdentifierLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIntermediateEventElementDisplayRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 10, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getResultObjectLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getStateLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTimeoutActionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTimeoutTaskStartElementIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTimeoutTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 11, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAFlowLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAFlowLayoutPane1(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAFlowLayoutPane11(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAFlowLayoutPane111(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAFlowLayoutPane1111(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAFlowLayoutPane11111(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAFlowLayoutPane111111(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAFlowLayoutPane1111111(), new com.ulcjava.base.application.GridBagConstraints(1, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSeparatorRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 9, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes eventIdentifierLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getEventIdentifierLabel() {
	if (eventIdentifierLabel == null) {
		eventIdentifierLabel = new RLabel();
		eventIdentifierLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/eventIdentifier\")%>");
		eventIdentifierLabel.setStyle("rightAlignedLabel");
		eventIdentifierLabel.setName("eventIdentifierLabel");
	}
	return eventIdentifierLabel;
}

/**
 * This method initializes eventIdentifierTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getEventIdentifierTextField() {
	if (eventIdentifierTextField == null) {
		eventIdentifierTextField = new RTextField();
		eventIdentifierTextField.setText("");
		eventIdentifierTextField.setEditable(false);
		eventIdentifierTextField.setStyle("displayedLeftAlignedTextField");
		eventIdentifierTextField.setName("eventIdentifierTextField");
	}
	return eventIdentifierTextField;
}

/**
 * This method initializes eventTimeStampLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getEventTimeStampLabel() {
	if (eventTimeStampLabel == null) {
		eventTimeStampLabel = new RLabel();
		eventTimeStampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/eventDateTime\")%>");
		eventTimeStampLabel.setStyle("rightAlignedLabel");
		eventTimeStampLabel.setName("eventTimeStampLabel");
	}
	return eventTimeStampLabel;
}

/**
 * This method initializes eventTimestampTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getEventTimestampTextField() {
	if (eventTimestampTextField == null) {
		eventTimestampTextField = new RTextField();
		eventTimestampTextField.setText("");
		eventTimestampTextField.setEditable(false);
		eventTimestampTextField.setStyle("displayedLeftAlignedTextField");
		eventTimestampTextField.setName("eventTimestampTextField");
	}
	return eventTimestampTextField;
}

/**
 * This method initializes identifierLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getIdentifierLabel() {
	if (identifierLabel == null) {
		identifierLabel = new RLabel();
		identifierLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/name\")%>");
		identifierLabel.setStyle("rightAlignedLabel");
		identifierLabel.setName("identifierLabel");
	}
	return identifierLabel;
}

/**
 * This method initializes identifierTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getIdentifierTextField() {
	if (identifierTextField == null) {
		identifierTextField = new RTextField();
		identifierTextField.setText("");
		identifierTextField.setEditable(false);
		identifierTextField.setStyle("displayedLeftAlignedTextField");
		identifierTextField.setName("identifierTextField");
	}
	return identifierTextField;
}

/**
 * This method initializes intermediateEventElementDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventElementDisplay.IntermediateEventElementDisplayPanel	
 */
private ULCContainer getIntermediateEventElementDisplayRDC()  {
	if (intermediateEventElementDisplayRDC == null) {
		intermediateEventElementDisplayRDC = RichDialogPanelFactory.create(IntermediateEventElementDisplayPanel.class);
		intermediateEventElementDisplayRDC.setName("intermediateEventElementDisplayRDC");
		intermediateEventElementDisplayRDC.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		intermediateEventElementDisplayRDC.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,225));
	}
	return intermediateEventElementDisplayRDC;
}

/**
 * This method initializes resultObjectLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getResultObjectLabel() {
	if (resultObjectLabel == null) {
		resultObjectLabel = new RLabel();
		resultObjectLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/resultObject\")%>");
		resultObjectLabel.setStyle("rightAlignedLabel");
		resultObjectLabel.setName("resultObjectLabel");
	}
	return resultObjectLabel;
}

/**
 * This method initializes resultObjectTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getResultObjectTextField() {
	if (resultObjectTextField == null) {
		resultObjectTextField = new RTextField();
		resultObjectTextField.setText("");
		resultObjectTextField.setEditable(false);
		resultObjectTextField.setStyle("displayedLeftAlignedTextField");
		resultObjectTextField.setName("resultObjectTextField");
	}
	return resultObjectTextField;
}

/**
 * This method initializes stateLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getStateLabel() {
	if (stateLabel == null) {
		stateLabel = new RLabel();
		stateLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/state\")%>\n");
		stateLabel.setStyle("rightAlignedLabel");
		stateLabel.setName("stateLabel");
	}
	return stateLabel;
}

/**
 * This method initializes stateTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getStateTextField() {
	if (stateTextField == null) {
		stateTextField = new RTextField();
		stateTextField.setText("");
		stateTextField.setEditable(false);
		stateTextField.setStyle("displayedLeftAlignedTextField");
		stateTextField.setName("stateTextField");
	}
	return stateTextField;
}

/**
 * This method initializes timeoutActionLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTimeoutActionLabel() {
	if (timeoutActionLabel == null) {
		timeoutActionLabel = new RLabel();
		timeoutActionLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/timeoutAction\")%>");
		timeoutActionLabel.setStyle("rightAlignedLabel");
		timeoutActionLabel.setName("timeoutActionLabel");
	}
	return timeoutActionLabel;
}

/**
 * This method initializes timeoutActionTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTimeoutActionTextField() {
	if (timeoutActionTextField == null) {
		timeoutActionTextField = new RTextField();
		timeoutActionTextField.setText("");
		timeoutActionTextField.setEditable(false);
		timeoutActionTextField.setStyle("displayedLeftAlignedTextField");
		timeoutActionTextField.setName("timeoutActionTextField");
	}
	return timeoutActionTextField;
}

/**
 * This method initializes timeoutTaskStartElementIdLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTimeoutTaskStartElementIdLabel() {
	if (timeoutTaskStartElementIdLabel == null) {
		timeoutTaskStartElementIdLabel = new RLabel();
		timeoutTaskStartElementIdLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/timeoutTaskStartElementId\")%>");
		timeoutTaskStartElementIdLabel.setStyle("rightAlignedLabel");
		timeoutTaskStartElementIdLabel.setName("timeoutTaskStartElementIdLabel");
	}
	return timeoutTaskStartElementIdLabel;
}

/**
 * This method initializes timeoutTaskStartElementIdTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTimeoutTaskStartElementIdTextField() {
	if (timeoutTaskStartElementIdTextField == null) {
		timeoutTaskStartElementIdTextField = new RTextField();
		timeoutTaskStartElementIdTextField.setText("");
		timeoutTaskStartElementIdTextField.setEditable(false);
		timeoutTaskStartElementIdTextField.setStyle("displayedLeftAlignedTextField");
		timeoutTaskStartElementIdTextField.setName("timeoutTaskStartElementIdTextField");
	}
	return timeoutTaskStartElementIdTextField;
}

/**
 * This method initializes timeoutTimestampLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTimeoutTimestampLabel() {
	if (timeoutTimestampLabel == null) {
		timeoutTimestampLabel = new RLabel();
		timeoutTimestampLabel.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/task/intermediateEvent/plainStrings/timeoutDateTime\")%>");
		timeoutTimestampLabel.setStyle("rightAlignedLabel");
		timeoutTimestampLabel.setName("timeoutTimestampLabel");
	}
	return timeoutTimestampLabel;
}

/**
 * This method initializes timeoutTimestampTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTimeoutTimestampTextField() {
	if (timeoutTimestampTextField == null) {
		timeoutTimestampTextField = new RTextField();
		timeoutTimestampTextField.setText("");
		timeoutTimestampTextField.setEditable(false);
		timeoutTimestampTextField.setStyle("displayedLeftAlignedTextField");
		timeoutTimestampTextField.setName("timeoutTimestampTextField");
	}
	return timeoutTimestampTextField;
}

/**
 * This method initializes aFlowLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAFlowLayoutPane() {
	if (aFlowLayoutPane == null) {
		aFlowLayoutPane = new RFlowLayoutPane();
		aFlowLayoutPane.setName("aFlowLayoutPane");
		aFlowLayoutPane.setStyleProperties("{/alignment \"LEFT\"}");
		aFlowLayoutPane.add(getEventIdentifierTextField());
	}
	return aFlowLayoutPane;
}

/**
 * This method initializes aFlowLayoutPane1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAFlowLayoutPane1() {
	if (aFlowLayoutPane1 == null) {
		aFlowLayoutPane1 = new RFlowLayoutPane();
		aFlowLayoutPane1.setName("aFlowLayoutPane1");
		aFlowLayoutPane1.setStyleProperties("{/alignment \"LEFT\"}");
		aFlowLayoutPane1.add(getEventTimestampTextField());
	}
	return aFlowLayoutPane1;
}

/**
 * This method initializes aFlowLayoutPane11	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAFlowLayoutPane11() {
	if (aFlowLayoutPane11 == null) {
		aFlowLayoutPane11 = new RFlowLayoutPane();
		aFlowLayoutPane11.setName("aFlowLayoutPane11");
		aFlowLayoutPane11.setStyleProperties("{/alignment \"LEFT\"}");
		aFlowLayoutPane11.add(getIdentifierTextField());
	}
	return aFlowLayoutPane11;
}

/**
 * This method initializes aFlowLayoutPane111	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAFlowLayoutPane111() {
	if (aFlowLayoutPane111 == null) {
		aFlowLayoutPane111 = new RFlowLayoutPane();
		aFlowLayoutPane111.setName("aFlowLayoutPane111");
		aFlowLayoutPane111.setStyleProperties("{/alignment \"LEFT\"}");
		aFlowLayoutPane111.add(getResultObjectTextField());
	}
	return aFlowLayoutPane111;
}

/**
 * This method initializes aFlowLayoutPane1111	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAFlowLayoutPane1111() {
	if (aFlowLayoutPane1111 == null) {
		aFlowLayoutPane1111 = new RFlowLayoutPane();
		aFlowLayoutPane1111.setName("aFlowLayoutPane1111");
		aFlowLayoutPane1111.setStyleProperties("{/alignment \"LEFT\"}");
		aFlowLayoutPane1111.add(getStateTextField());
	}
	return aFlowLayoutPane1111;
}

/**
 * This method initializes aFlowLayoutPane11111	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAFlowLayoutPane11111() {
	if (aFlowLayoutPane11111 == null) {
		aFlowLayoutPane11111 = new RFlowLayoutPane();
		aFlowLayoutPane11111.setName("aFlowLayoutPane11111");
		aFlowLayoutPane11111.setStyleProperties("{/alignment \"LEFT\"}");
		aFlowLayoutPane11111.add(getTimeoutActionTextField());
	}
	return aFlowLayoutPane11111;
}

/**
 * This method initializes aFlowLayoutPane111111	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAFlowLayoutPane111111() {
	if (aFlowLayoutPane111111 == null) {
		aFlowLayoutPane111111 = new RFlowLayoutPane();
		aFlowLayoutPane111111.setName("aFlowLayoutPane111111");
		aFlowLayoutPane111111.setStyleProperties("{/alignment \"LEFT\"}");
		aFlowLayoutPane111111.add(getTimeoutTaskStartElementIdTextField());
	}
	return aFlowLayoutPane111111;
}

/**
 * This method initializes aFlowLayoutPane1111111	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getAFlowLayoutPane1111111() {
	if (aFlowLayoutPane1111111 == null) {
		aFlowLayoutPane1111111 = new RFlowLayoutPane();
		aFlowLayoutPane1111111.setName("aFlowLayoutPane1111111");
		aFlowLayoutPane1111111.setStyleProperties("{/alignment \"LEFT\"}");
		aFlowLayoutPane1111111.add(getTimeoutTimestampTextField());
	}
	return aFlowLayoutPane1111111;
}

/**
 * This method initializes separatorRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.Separator.SeparatorPanel	
 */
private ULCContainer getSeparatorRDC()  {
	if (separatorRDC == null) {
		separatorRDC = RichDialogPanelFactory.create(SeparatorPanel.class);
		separatorRDC.setName("separatorRDC");
	}
	return separatorRDC;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"