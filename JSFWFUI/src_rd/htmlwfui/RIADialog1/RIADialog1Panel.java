package htmlwfui.RIADialog1;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RTextFieldCellWidget;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBorderLayoutPane;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCBevelBorder;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;

/**
 * <p>RIADialog1Panel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class RIADialog1Panel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RButton Button = null;
private RTextFieldCellWidget TextFieldCellWidget = null;
private RLabel Titel = null;
private RLabel Beschreibung = null;
private RTextArea TextArea2 = null;
private RLabel Label = null;
/**
   * Create a new instance of RIADialog1Panel
   */
  public RIADialog1Panel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes RIADialog1Panel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(637,315));
        this.add(getButton(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTextFieldCellWidget(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTitel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getBeschreibung(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTextArea2(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.EAST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
 * This method initializes TextFieldCellWidget	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.customrenderers.RTextFieldCellWidget	
 */
private RTextFieldCellWidget getTextFieldCellWidget() {
	if (TextFieldCellWidget == null) {
		TextFieldCellWidget = new RTextFieldCellWidget();
		TextFieldCellWidget.setText("TextFieldCellWidget");
		TextFieldCellWidget.setValueAsString("TextFieldCellWidget");
		TextFieldCellWidget.setBorder(BorderFactory.createBevelBorder(ULCBevelBorder.RAISED));
		TextFieldCellWidget.setStyleProperties("{/insetsRight \"10\"/fill \"HORIZONTAL\"/weightY \"0\"/weightX \"1\"}");
		TextFieldCellWidget.setMandatory(true);
		TextFieldCellWidget.setDisabledTextColor(new Color(160, 160, 160));
		TextFieldCellWidget.setName("TextFieldCellWidget");
	}
	return TextFieldCellWidget;
}

/**
 * This method initializes Titel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTitel() {
	if (Titel == null) {
		Titel = new RLabel();
		Titel.setText("Titel");
		Titel.setName("Titel");
	}
	return Titel;
}

/**
 * This method initializes Beschreibung	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getBeschreibung() {
	if (Beschreibung == null) {
		Beschreibung = new RLabel();
		Beschreibung.setText("Beschreibung");
		Beschreibung.setName("Beschreibung");
	}
	return Beschreibung;
}

/**
 * This method initializes TextArea2	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getTextArea2() {
	if (TextArea2 == null) {
		TextArea2 = new RTextArea();
		TextArea2.setText("TextArea2");
		TextArea2.setBackground(Color.white);
		TextArea2.setColumns(10);
		TextArea2.setBorder(BorderFactory.createBevelBorder(ULCBevelBorder.RAISED));
		TextArea2.setRows(5);
		TextArea2.setStyleProperties("{/insetsBottom \"10\"/insetsRight \"10\"/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		TextArea2.setMandatory(true);
		TextArea2.setName("TextArea2");
	}
	return TextArea2;
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
		Label.setStyleProperties("{/font \"name=Dialog\\nsize=20\\nstyle=PLAIN\"/insetsLeft \"5\"}");
		Label.setName("Label");
	}
	return Label;
}
}  //  @jve:decl-index=0:visual-constraint="12,13"