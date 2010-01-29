package ch.ivyteam.ivy.demo.dynamicrd.DynamicDialogWrapper;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.DynamicDialogPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

/**
 * RichDialog panel implementation for ContactPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class DynamicDialogWrapperPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RButton Button = null;
@EmbeddedRichDialog(DynamicDialogPanel.class) private ULCContainer dynamicDialogPanel = null;
  
  /**
   * Create a new instance of ContactPanel
   */
  public DynamicDialogWrapperPanel()
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
        this.add(getButton(), com.ulcjava.base.application.ULCBorderLayoutPane.SOUTH);
        this.add(getDynamicDialogPanel(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes Button	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getButton() {
	if (Button == null) {
		Button = new RButton();
		Button.setText("Close this DynamicDialog and show serialized data of business object");
		Button.setStyle("border-all");
		Button.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/demo/icons/normal/arrow_up\") %>");
		Button.setName("Button");
	}
	return Button;
}

/**
 * This method initializes dynamicDialogPanel	
 * 	
 * @return ch.xpertline.ticommon.ria.binaryComponents.DynamicDialog.DynamicDialogPanel	
 */
private ULCContainer getDynamicDialogPanel() 
{
  if (dynamicDialogPanel == null)
  {
    dynamicDialogPanel = RichDialogPanelFactory.create(DynamicDialogPanel.class);
    dynamicDialogPanel.setName("dynamicDialogPanel");
  }
  return dynamicDialogPanel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"