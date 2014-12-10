package ch.ivyteam.ivy.demo.portaldisplay.AdvancedPortlet;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import com.ulcjava.base.application.util.Font;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;

/**
 * <p>PortletOnePanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class AdvancedPortletPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RGridBagLayoutPane GridBagLayoutPane = null;
private RLabel Label = null;
private RLabel Label1 = null;
private RLabel imageLabel = null;
  
  /**
   * Create a new instance of PortletOnePanel
   */
  public AdvancedPortletPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes PortletOnePanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(419,366));
        this.add(getGridBagLayoutPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, 1.0, 1.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes GridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getGridBagLayoutPane() {
	if (GridBagLayoutPane == null) {
		GridBagLayoutPane = new RGridBagLayoutPane();
		GridBagLayoutPane.setName("GridBagLayoutPane");
		GridBagLayoutPane.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			GridBagLayoutPane.add(getLabel1(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(25,0,0,0), 0, 0));
			GridBagLayoutPane.add(getImageLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(25,0,0,0), 0, 0));
}
	return GridBagLayoutPane;
}

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel() {
	if (Label == null) {
		Label = new RLabel();
		Label.setText("<html>I am an advanced portlet!<br> I support refresh and I can be configured</html>");
		Label.setFont(new Font("Dialog", 1, 14));
		Label.setName("Label");
	}
	return Label;
}

/**
 * This method initializes Label1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel1() {
	if (Label1 == null) {
		Label1 = new RLabel();
		Label1.setText("I can show an image too.");
		Label1.setName("Label1");
	}
	return Label1;
}

/**
 * This method initializes imageLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getImageLabel() {
	if (imageLabel == null) {
		imageLabel = new RLabel();
		imageLabel.setText("\n");
		imageLabel.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/demo/portaldisplay/advanced/option1\")%>");
		imageLabel.setName("imageLabel");
	}
	return imageLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"