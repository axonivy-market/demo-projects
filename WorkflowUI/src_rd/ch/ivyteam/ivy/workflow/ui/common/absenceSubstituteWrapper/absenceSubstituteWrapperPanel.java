package ch.ivyteam.ivy.workflow.ui.common.absenceSubstituteWrapper;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementPanel;
import ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;

/**
 * RichDialog panel implementation for absenceSubstituteWrapperPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class absenceSubstituteWrapperPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RSplitPane SplitPane = null;
@EmbeddedRichDialog(AbsenceManagementPanel.class) private ULCContainer absence = null;
@EmbeddedRichDialog(SubstituteManagementPanel.class) private ULCContainer substitute = null;
  
  /**
   * Create a new instance of absenceSubstituteWrapperPanel
   */
  public absenceSubstituteWrapperPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes absenceSubstituteWrapperPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(562,510));
        this.add(getSplitPane(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
  }

/**
 * This method initializes SplitPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane	
 */
private RSplitPane getSplitPane() {
	if (SplitPane == null) {
		SplitPane = new RSplitPane();
		SplitPane.setName("SplitPane");
		SplitPane.setLeftComponent(getAbsence());
		SplitPane.setRightComponent(getSubstitute());
		SplitPane.setStyle("vertical_split");
	}
	return SplitPane;
}

/**
 * This method initializes absence	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.AbsenceManagement.AbsenceManagementPanel	
 */
private ULCContainer getAbsence()  {
	if (absence == null) {
		absence = RichDialogPanelFactory.create(AbsenceManagementPanel.class);
		absence.setName("absence");
	}
	return absence;
}

/**
 * This method initializes substitute	
 * 	
 * @return ch.ivyteam.ivy.workflow.ui.common.SubstituteManagement.SubstituteManagementPanel	
 */
private ULCContainer getSubstitute()  {
	if (substitute == null) {
		substitute = RichDialogPanelFactory.create(SubstituteManagementPanel.class);
		substitute.setName("substitute");
	}
	return substitute;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"