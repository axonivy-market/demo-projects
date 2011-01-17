package ch.ivyteam.ivy.workflow.ui.common.Header;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.util.Color;

/**
 * RichDialog panel implementation for HeaderPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class HeaderPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel iconLabel = null;
private RLabel titleLabel = null;
private RLabel textHtmlPane = null;
  
  /**
   * Create a new instance of HeaderPanel
   */
  public HeaderPanel()
  {
    super();
    initialize();
    
    // prettify ui components
    UIHelper.prettifyComponent(this);     
  }
  
  /**
   * This method initializes HeaderPanel
   * @return void
   */
  public void initialize()
  {
        this.setForeground(new Color(51, 51, 51));
        this.setStyleProperties("{/anchor \"NORTHWEST\"/weightX \"1\"}");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(412,51));
        this.add(getTitleLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTextHtmlPane(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 3, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes iconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getIconLabel() {
	if (iconLabel == null) {
		iconLabel = new RLabel();
		iconLabel.setName("iconLabel");
		iconLabel.setStyleProperties("{/insetsBottom \"0\"/fill \"BOTH\"}");
		iconLabel.setText("");
		iconLabel.setStyle("mainCaption");
	}
	return iconLabel;
}

/**
 * This method initializes titleLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTitleLabel() {
	if (titleLabel == null) {
		titleLabel = new RLabel();
		titleLabel.setName("titleLabel");
		titleLabel.setStyleProperties("{/insetsBottom \"0\"/weightX \"1\"}");
		titleLabel.setStyle("mainCaption");
		titleLabel.setText("Title");
	}
	return titleLabel;
}

/**
 * This method initializes textHtmlPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane	
 */
private RLabel getTextHtmlPane() {
	if (textHtmlPane == null) {
		textHtmlPane = new RLabel();
		textHtmlPane.setName("textHtmlPane");
		textHtmlPane.setStyleProperties("{/insetsTop \"0\"/weightX \"1\"}");
		textHtmlPane.setText("Text");
	}
	return textHtmlPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"