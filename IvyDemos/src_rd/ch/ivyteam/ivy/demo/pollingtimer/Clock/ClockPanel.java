package ch.ivyteam.ivy.demo.pollingtimer.Clock;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;

import com.ulcjava.base.application.ULCPollingTimer;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;

/**
 * RichDialog panel implementation for ManyClientStresserPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ClockPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel Label = null;
private RButton Button = null;
private RButton Button1 = null;

private ULCPollingTimer timer = null;  //  @jve:decl-index=0:
private RLabel Label1 = null;
private RTextField TextField = null;
private RCheckBox CheckBox = null;
private TitlePanel titlePanel = null;
private RFlowLayoutPane buttonPane = null;
private RGridBagLayoutPane centerPane = null;
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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(295,215));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(163,237));
        this.add(getTitlePanel(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);
        this.add(getCenterPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
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
		Label.setStyleProperties("{/insetsLeft \"2\"/insetsRight \"2\"/font {/name \"Tahoma\"/size \"18\"/style \"PLAIN\"}/insetsTop \"2\"/insetsBottom \"2\"/horizontalAlignment \"CENTER\"/weightX \"1\"/fill \"HORIZONTAL\"}");
		Label.setName("Label");
		Label.setStyle("fill-horiz-north-border");
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

@SuppressWarnings("serial")
public ULCPollingTimer getTimer() {
	if (timer == null) {
		timer = new ULCPollingTimer(1000, new IActionListener() 
		{
			public void actionPerformed(ActionEvent event)
			{
				DateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
		        getLabel().setText("Current time: " + timeFormat.format(new Date()));
			}
		});
	}
	return timer;
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
		Label1.setStyle("border-top-left-bottom");
		Label1.setName("Label1");
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
		TextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		TextField.setMandatory(true);
		TextField.setValidation("NumberIntPositive");
		TextField.setStyle("border-all");
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
		CheckBox.setStyle("border-top-right-bottom");
		CheckBox.setName("CheckBox");
	}
	return CheckBox;
}

/**
 * This method initializes titlePanel	
 * 	
 * @return ch.ivyteam.ivy.demo.util.Title.TitlePanel	
 */
private TitlePanel getTitlePanel() {
	if (titlePanel == null) {
		titlePanel = new TitlePanel();
		titlePanel.setName("titlePanel");
		titlePanel.setStyle("fill-horiz");
	}
	return titlePanel;
}

/**
 * This method initializes buttonPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane	
 */
private RFlowLayoutPane getButtonPane() {
	if (buttonPane == null) {
		buttonPane = new RFlowLayoutPane();
		buttonPane.setName("buttonPane");
		buttonPane.setName("southPane");
		buttonPane.add(getButton());
		buttonPane.add(getButton1());
	}
	return buttonPane;
}

/**
 * This method initializes centerPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getCenterPane() {
	if (centerPane == null) {
		RFiller vertFiller = new RFiller();
		vertFiller.setStyle("verticalGlue");
		centerPane = new RGridBagLayoutPane();
		centerPane.setName("centerPane");
		centerPane.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		centerPane.add(getLabel1(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		centerPane.add(getTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		centerPane.add(getCheckBox(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		centerPane.add(getButtonPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		centerPane.add(vertFiller, new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return centerPane;
}
}  //  @jve:decl-index=0:visual-constraint="16,10"