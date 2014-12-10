package ch.ivyteam.ivy.demo.dynamicrd.ContactDemo;

import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;

import com.ulcjava.base.application.ULCContainer;

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
@EmbeddedRichDialog(TitlePanel.class) private ULCContainer titlePanel = null;
private RButton Button = null;
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
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getButton(), new com.ulcjava.base.application.GridBagConstraints(2, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTabbedDisplay(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		TabbedDisplay.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
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
private ULCContainer getTitlePanel()  {
	if (titlePanel == null) {
		titlePanel = RichDialogPanelFactory.create(TitlePanel.class);
		titlePanel.setName("titlePanel");
		titlePanel.setStyle("fill-horiz");
		titlePanel.setName("titlePanel");
	}
	return titlePanel;
}

/**
 * This method initializes Button	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getButton()
{
  if (Button == null)
  {
    Button = new RButton();
    Button.setText("Launch DynamicDialog manager ...");
    Button.setStyleProperties("{/anchor \"EAST\"}");
    Button.setName("Button");
  }
  return Button;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"