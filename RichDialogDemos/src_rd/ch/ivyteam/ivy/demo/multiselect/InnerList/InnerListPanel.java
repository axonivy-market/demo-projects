package ch.ivyteam.ivy.demo.multiselect.InnerList;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;

/**
 * RichDialog panel implementation for InnerListPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class InnerListPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel Label = null;
/**
   * Create a new instance of InnerListPanel
   */
  public InnerListPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes InnerListPanel
   * @return void
   */
  private void initialize()
  {
        this.setStyle("fill-both-border");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(147,48));
        this.add(getLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLabel() {
	if (Label == null) {
		Label = new RLabel();
		Label.setName("Label");
		Label.setStyleProperties("{/weightY \"1\"}");
		Label.setStyle("fill-horiz-north-border");
	}
	return Label;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"