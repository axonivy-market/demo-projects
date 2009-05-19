package ch.ivyteam.ivy.demo.pollingtimer.Clock;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.ulcjava.base.application.ULCPollingTimer;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCBevelBorder;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import com.ulcjava.base.application.border.ULCSoftBevelBorder;

/**
 * RichDialog panel implementation for ManyClientStresserPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ClockPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel Label = null;
private RButton Button = null;
private RButton Button1 = null;

private ULCPollingTimer timer = null;  //  @jve:decl-index=0:
private RBoxPane BoxPane = null;
private RGridBagLayoutPane GridBagLayoutPane = null;
private RLabel Label1 = null;
private RTextField TextField = null;
private RCheckBox CheckBox = null;
  
  /**
   * Create a new instance of ManyClientStresserPanel
   */
  public ClockPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ManyClientStresserPanel
   * @return void
   */
  private void initialize()
  {
        this.add(getButton(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButton1(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getBoxPane(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel() {
	if (Label == null) {
		Label = new RLabel();
		Label.setText("Current time: ");
		Label.setStyleProperties("{/horizontalAlignment \"CENTER\"/font {/name \"Tahoma\"/size \"18\"/style \"PLAIN\"}/insetsBottom \"2\"/insetsTop \"2\"/fill \"HORIZONTAL\"/insetsRight \"2\"/insetsLeft \"2\"/weightX \"1\"}");
		Label.setName("Label");
	}
	return Label;
}

/**
 * This method initializes Button	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getButton() {
	if (Button == null) {
		Button = new RButton();
		Button.setText("Start Timer");
		Button.setName("Button");
	}
	return Button;
}

/**
 * This method initializes Button1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getButton1() {
	if (Button1 == null) {
		Button1 = new RButton();
		Button1.setText("Stop Timer");
		Button1.setName("Button1");
	}
	return Button1;
}

public ULCPollingTimer getTimer() {
	if (timer == null) {
		timer = new ULCPollingTimer(1000, new IActionListener() 
		{
			public void actionPerformed(ActionEvent event)
			{
				DateFormat timeFormat = new SimpleDateFormat("hh:mm:ss");
		        getLabel().setText("Current time: " + timeFormat.format(new Date()));
			}
		});
	}
	return timer;
}

/**
 * This method initializes BoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getBoxPane() {
	if (BoxPane == null) {
		BoxPane = new RBoxPane();
		BoxPane.setName("BoxPane");
		BoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		BoxPane.setBorder(new ULCSoftBevelBorder(ULCSoftBevelBorder.LOWERED));
		BoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getLabel());
	}
	return BoxPane;
}

/**
 * This method initializes GridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getGridBagLayoutPane() {
	if (GridBagLayoutPane == null) {
		GridBagLayoutPane = new RGridBagLayoutPane();
		GridBagLayoutPane.setName("GridBagLayoutPane");
		GridBagLayoutPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		GridBagLayoutPane.setBorder(new ULCSoftBevelBorder(ULCSoftBevelBorder.LOWERED));
		GridBagLayoutPane.add(getLabel1(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		GridBagLayoutPane.add(getCheckBox(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return GridBagLayoutPane;
}

/**
 * This method initializes Label1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel1() {
	if (Label1 == null) {
		Label1 = new RLabel();
		Label1.setText("Interval: ");
		Label1.setName("Label1");
	}
	return Label1;
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
		TextField.setValidationConfiguration("#\n#Wed Apr 30 10:03:43 CEST 2008\nversion=1.0\nvalidationConfigName=NumberIntPositive\nmandatory=true\n");
		TextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		TextField.setName("TextField");
	}
	return TextField;
}

/**
 * This method initializes CheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getCheckBox() {
	if (CheckBox == null) {
		CheckBox = new RCheckBox();
		CheckBox.setText("Repeat timer");
		CheckBox.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		CheckBox.setName("CheckBox");
	}
	return CheckBox;
}
}