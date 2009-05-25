package ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventDisplay;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventElementDisplay.IntermediateEventElementDisplayPanel;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.util.Font;

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
private IntermediateEventElementDisplayPanel intermediateEventElementDisplayRDC = null;
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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(411,454));
        this.setBorder(BorderFactory.createTitledBorder(null, "Intermediate Event", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
        this.add(getEventIdentifierLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getEventIdentifierTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getEventTimeStampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getEventTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIdentifierLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIdentifierTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIntermediateEventElementDisplayRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 9, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getResultObjectLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getResultObjectTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getStateLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getStateTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTimeoutActionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTimeoutActionTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTimeoutTaskStartElementIdLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTimeoutTaskStartElementIdTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTimeoutTimestampLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTimeoutTimestampTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 10, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(aFiller, new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		identifierTextField.setName("identifierTextField");
	}
	return identifierTextField;
}

/**
 * This method initializes intermediateEventElementDisplayRDC	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.task.ie.IntermediateEventElementDisplay.IntermediateEventElementDisplayPanel	
 */
private IntermediateEventElementDisplayPanel getIntermediateEventElementDisplayRDC() {
	if (intermediateEventElementDisplayRDC == null) {
		intermediateEventElementDisplayRDC = new IntermediateEventElementDisplayPanel();
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
		timeoutTimestampTextField.setName("timeoutTimestampTextField");
	}
	return timeoutTimestampTextField;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"