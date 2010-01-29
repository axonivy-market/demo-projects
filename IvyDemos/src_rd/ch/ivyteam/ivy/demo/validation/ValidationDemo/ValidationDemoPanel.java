package ch.ivyteam.ivy.demo.validation.ValidationDemo;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.demo.validation.AddressMain.AddressMainPanel;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

/**
 * RichDialog panel implementation for ValidationDemoPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ValidationDemoPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
@EmbeddedRichDialog(TitlePanel.class) private ULCContainer titlePanel = null;
@EmbeddedRichDialog(AddressMainPanel.class) private ULCContainer addressMainPanel = null;
  
  /**
   * Create a new instance of ValidationDemoPanel
   */
  public ValidationDemoPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ValidationDemoPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(462,606));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, 0.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAddressMainPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, 0.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		titlePanel.setBorder(BorderFactory.createLineBorder(Color.gray, 1));
		titlePanel.setStyle("fill-horiz");
	}
	return titlePanel;
}

/**
 * This method initializes addressMainPanel	
 * 	
 * @return ch.ivyteam.ivy.demo.validation.AddressMain.AddressMainPanel	
 */
private ULCContainer getAddressMainPanel()  {
	if (addressMainPanel == null) {
		addressMainPanel = RichDialogPanelFactory.create(AddressMainPanel.class);
		addressMainPanel.setName("addressMainPanel");
		addressMainPanel.setStyle("fill-both-border");
	}
	return addressMainPanel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"