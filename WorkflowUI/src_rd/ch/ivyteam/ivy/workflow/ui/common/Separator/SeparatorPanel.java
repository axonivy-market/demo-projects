package ch.ivyteam.ivy.workflow.ui.common.Separator;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.application.BorderFactory;

/**
 * RichDialog panel implementation for SeparatorPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
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
    
    // prettify ui components
    UIHelper.prettifyComponent(this);     
  }
  
  /**
   * This method initializes SeparatorPanel
   * @return void
   */
  private void initialize()
  {
        RFiller horizontalFiller = new RFiller();
        horizontalFiller.setStyle("separatorFiller");
        horizontalFiller.setStyleProperties("{/insetsTop \"0\"/insetsRight \"3\"}");
        horizontalFiller.setBorder(BorderFactory.createLineBorder(Color.gray, 1));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(320,30));
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
		separatorLabel.setStyle("smallTitle");
		separatorLabel.setStyleProperties("{/anchor \"CENTER\"/insetsTop \"0\"}");
		separatorLabel.setText("Separator");
	}
	return separatorLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"