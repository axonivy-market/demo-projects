package ch.ivyteam.ivy.demo.lookuptextfield.FileSearch;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLookupTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

/**
 * RichDialog panel implementation for FileSearchPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class FileSearchPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private TitlePanel titlePanel = null;
private RLabel infoLabel = null;
private RLookupTextField fileLookupTextField = null;
private RLabel pathLabel = null;
private RButton showButton = null;
  
  /**
   * Create a new instance of FileSearchPanel
   */
  public FileSearchPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes FileSearchPanel
   * @return void
   */
  private void initialize()
  {
        RFiller filler = new RFiller();
        filler.setStyle("verticalGlue");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(419,237));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
        this.add(getFileLookupTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
        this.add(filler, new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getPathLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.NORTHWEST, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,5,5,5), 0, 0));
        this.add(getShowButton(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
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
		titlePanel.setPreferredSize(null);
		titlePanel.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/opaque \"true\"/fill \"HORIZONTAL\"}");
	}
	return titlePanel;
}

/**
 * This method initializes infoLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getInfoLabel() {
	if (infoLabel == null) {
		infoLabel = new RLabel();
		infoLabel.setText("What file are you looking for?");
		infoLabel.setName("infoLabel");
	}
	return infoLabel;
}

/**
 * This method initializes fileLookupTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLookupTextField	
 */
private RLookupTextField getFileLookupTextField() {
	if (fileLookupTextField == null) {
		fileLookupTextField = new RLookupTextField();
		fileLookupTextField.setText("");
		fileLookupTextField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		fileLookupTextField.setName("fileLookupTextField");
	}
	return fileLookupTextField;
}

/**
 * This method initializes pathLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getPathLabel() {
	if (pathLabel == null) {
		pathLabel = new RLabel();
		pathLabel.setText("No file selected yet.");
		pathLabel.setName("pathLabel");
	}
	return pathLabel;
}

/**
 * This method initializes showButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getShowButton() {
	if (showButton == null) {
		showButton = new RButton();
		showButton.setText("Show");
		showButton.setName("showButton");
	}
	return showButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"