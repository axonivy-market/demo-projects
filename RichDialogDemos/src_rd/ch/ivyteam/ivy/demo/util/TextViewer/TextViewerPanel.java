package ch.ivyteam.ivy.demo.util.TextViewer;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

/**
 * RichDialog panel implementation for TextViewerPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TextViewerPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RScrollPane scroller = null;
private RButton okButton = null;
private RTextArea text = null;
private RLabel infoLabel = null;
  
  /**
   * Create a new instance of TextViewerPanel
   */
  public TextViewerPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes TextViewerPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(264,222));
        this.add(getScroller(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getOkButton(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes scroller	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScroller() {
	if (scroller == null) {
		scroller = new RScrollPane();
		scroller.setName("scroller");
		scroller.setStyle("fill-both-border");
		scroller.setViewPortView(getText());
	}
	return scroller;
}

/**
 * This method initializes okButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getOkButton() {
	if (okButton == null) {
		okButton = new RButton();
		okButton.setText("Ok");
		okButton.setStyle("border-left-bottom-right");
		okButton.setName("okButton");
	}
	return okButton;
}

/**
 * This method initializes text	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getText() {
	if (text == null) {
		text = new RTextArea();
		text.setText("");
		text.setEditable(false);
		text.setName("text");
	}
	return text;
}

/**
 * This method initializes infoLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getInfoLabel() {
	if (infoLabel == null) {
		infoLabel = new RLabel();
		infoLabel.setText("Info about the displayed text:");
		infoLabel.setStyle("fill-horiz-north-border");
		infoLabel.setName("infoLabel");
	}
	return infoLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"