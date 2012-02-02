package ch.ivyteam.ivy.addons.common.technical.Separator;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;

import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.util.Color;

/**
 * <p>SeparatorPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class SeparatorPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel separatorLabel = null;
  
  /**
   * Create a new instance of SeparatorPanel
   */
  public SeparatorPanel()
  {
    super();
    initialize();
  }
    
  
  /**
   * This method initializes SeparatorPanel
   * @return void
   */
  private void initialize()
  {
        RFiller horizontalFiller = new RFiller();
        horizontalFiller.setStyle("separatorFiller");
        horizontalFiller.setStyleProperties("{/anchor \"CENTER\"/maximumSizeHeight \"1\"/fill \"HORIZONTAL\"/insetsLeft \"5\"/minimumSizeHeight \"1\"/preferredSizeHeight \"1\"/weightX \"1\"}");
        horizontalFiller.setBorder(BorderFactory.createLineBorder(Color.lightGray, 1));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(290,30));
        this.add(getSeparatorLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(horizontalFiller, new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes separatorLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSeparatorLabel() {
	if (separatorLabel == null) {
		separatorLabel = new RLabel();
		separatorLabel.setName("separatorLabel");
		separatorLabel.setStyle("separatorLabel");
		separatorLabel.setText("Separator");
	}
	return separatorLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"