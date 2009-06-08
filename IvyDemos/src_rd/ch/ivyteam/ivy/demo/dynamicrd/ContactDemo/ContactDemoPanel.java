package ch.ivyteam.ivy.demo.dynamicrd.ContactDemo;

import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;

/**
 * RichDialog panel implementation for ContactPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ContactDemoPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTabbedDisplay TabbedDisplay = null;
private TitlePanel titlePanel = null;
/**
   * Create a new instance of ContactPanel
   */
  public ContactDemoPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ContactPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(597,345));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(396,287));
        this.add(getTabbedDisplay(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 3, 1, 1.0, 1.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes TabbedDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay	
 */
private RTabbedDisplay getTabbedDisplay() {
	if (TabbedDisplay == null) {
		TabbedDisplay = new RTabbedDisplay();
		TabbedDisplay.setName("TabbedDisplay");
		TabbedDisplay.setDisplayId("contactDemo_display");
		TabbedDisplay.setName("TabbedDisplay");
	}
	return TabbedDisplay;
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
		titlePanel.setName("titlePanel");
	}
	return titlePanel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"