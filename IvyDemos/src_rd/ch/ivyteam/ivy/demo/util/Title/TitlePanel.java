package ch.ivyteam.ivy.demo.util.Title;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;

/**
 * RichDialog panel implementation for WizardTitlePanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TitlePanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel titleLabel = null;
private RLabel subtitleLabel = null;
  
  /**
   * Create a new instance of WizardTitlePanel
   */
  public TitlePanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes WizardTitlePanel
   * @return void
   */
  private void initialize()
  {
        RFiller verticalFiller = new RFiller();
        verticalFiller.setStyle("verticalGlue");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(305,175));
        this.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/opaque \"true\"}");
        this.add(getTitleLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSubtitleLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes titleLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTitleLabel() {
	if (titleLabel == null) {
		titleLabel = new RLabel();
		titleLabel.setText("<title>");
		titleLabel.setStyleProperties("{/font {/name \"Arial\"/size \"24\"/style \"BOLD\"}/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		titleLabel.setStyle("border-full");
		titleLabel.setName("titleLabel");
	}
	return titleLabel;
}

/**
 * This method initializes subtitleLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSubtitleLabel() {
	if (subtitleLabel == null) {
		subtitleLabel = new RLabel();
		subtitleLabel.setText("<subtitle>");
		subtitleLabel.setStyle("border-left-right-bottom");
		subtitleLabel.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"}");
		subtitleLabel.setName("subtitleLabel");
	}
	return subtitleLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"