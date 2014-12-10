package ch.ivyteam.ivy.demo.util.Title;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import com.ulcjava.base.application.util.Color;

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
        RFiller lineFiller = new RFiller();
        lineFiller.setMinimumSize(new com.ulcjava.base.application.util.Dimension(1,1));
        lineFiller.setMaximumSize(new com.ulcjava.base.application.util.Dimension(1,1));
        lineFiller.setOpaque(true);
        lineFiller.setBackground(Color.gray);
        lineFiller.setPreferredSize(new com.ulcjava.base.application.util.Dimension(1,1));
        RFiller verticalFiller = new RFiller();
        verticalFiller.setStyle("verticalGlue");
          this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(400,80));
        this.setMinimumSize(new com.ulcjava.base.application.util.Dimension(0,80));
      this.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/opaque \"true\"}");
        this.add(getTitleLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSubtitleLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(lineFiller, new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, 1.0D, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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