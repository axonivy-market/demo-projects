package htmlwfui.RIADialog2;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import com.ulcjava.base.application.util.Font;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RDatePicker;
import ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane;

/**
 * <p>RIADialog2Panel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class RIADialog2Panel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RButton Button = null;
private RLabel Label = null;
private RLabel Label1 = null;
private RRadioButton RadioButton = null;
private RRadioButton RadioButton1 = null;
private RHtmlPane HtmlPane = null;
private RLabel Label2 = null;
private RLabel Label3 = null;
private RLabel Label4 = null;
private RLabel Label5 = null;
/**
   * Create a new instance of RIADialog2Panel
   */
  public RIADialog2Panel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes RIADialog2Panel
   * @return void
   */
  private void initialize()
  {
        RFiller Filler = new RFiller();
        Filler.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(468,286));
        this.setStyleProperties("{/fill \"BOTH\"}");
        this.add(getButton(), new com.ulcjava.base.application.GridBagConstraints(5, 5, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLabel1(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getRadioButton(), new com.ulcjava.base.application.GridBagConstraints(3, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getRadioButton1(), new com.ulcjava.base.application.GridBagConstraints(5, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getHtmlPane(), new com.ulcjava.base.application.GridBagConstraints(4, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(Filler, new com.ulcjava.base.application.GridBagConstraints(6, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLabel2(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLabel3(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLabel4(), new com.ulcjava.base.application.GridBagConstraints(3, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLabel5(), new com.ulcjava.base.application.GridBagConstraints(3, 2, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes Button	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getButton() {
	if (Button == null) {
		Button = new RButton();
		Button.setText("Submit");
		Button.setName("Button");
	}
	return Button;
}

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel() {
	if (Label == null) {
		Label = new RLabel();
		Label.setText("Anfrage");
		Label.setFont(new Font("Dialog", 1, 12));
		Label.setStyleProperties("{/font \"name=Dialog\\nsize=20\\nstyle=PLAIN\"/insetsLeft \"5\"}");
		Label.setName("Label");
	}
	return Label;
}

/**
 * This method initializes Label1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel1() {
	if (Label1 == null) {
		Label1 = new RLabel();
		Label1.setText("Bestätigen?");
		Label1.setName("Label1");
	}
	return Label1;
}

/**
 * This method initializes RadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getRadioButton() {
	if (RadioButton == null) {
		RadioButton = new RRadioButton();
		RadioButton.setText("Ja");
		RadioButton.setName("RadioButton");
	}
	return RadioButton;
}

/**
 * This method initializes RadioButton1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getRadioButton1() {
	if (RadioButton1 == null) {
		RadioButton1 = new RRadioButton();
		RadioButton1.setText("Nein");
		RadioButton1.setName("RadioButton1");
	}
	return RadioButton1;
}

/**
 * This method initializes HtmlPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane	
 */
private RHtmlPane getHtmlPane() {
	if (HtmlPane == null) {
		HtmlPane = new RHtmlPane();
		HtmlPane.setFocusable(false);
		HtmlPane.setName("HtmlPane");
		HtmlPane.setText("");
	}
	return HtmlPane;
}

/**
 * This method initializes Label2	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel2() {
	if (Label2 == null) {
		Label2 = new RLabel();
		Label2.setText("Titel:");
		Label2.setName("Label2");
	}
	return Label2;
}

/**
 * This method initializes Label3	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel3() {
	if (Label3 == null) {
		Label3 = new RLabel();
		Label3.setText("Beschreibung:");
		Label3.setName("Label3");
	}
	return Label3;
}

/**
 * This method initializes Label4	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel4() {
	if (Label4 == null) {
		Label4 = new RLabel();
		Label4.setText("Label4");
		Label4.setName("Label4");
	}
	return Label4;
}

/**
 * This method initializes Label5	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel5() {
	if (Label5 == null) {
		Label5 = new RLabel();
		Label5.setText("Label5");
		Label5.setName("Label5");
	}
	return Label5;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"