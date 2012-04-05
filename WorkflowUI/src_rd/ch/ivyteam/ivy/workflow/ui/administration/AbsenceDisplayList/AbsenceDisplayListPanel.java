package ch.ivyteam.ivy.workflow.ui.administration.AbsenceDisplayList;

import ch.ivyteam.ivy.addons.common.technical.Separator.SeparatorPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.workflow.ui.administration.UserAbsenceDisplayList.UserAbsenceDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.ULCContainer;

/**
 * RichDialog panel implementation for AbsenceManagementPanel.
 * @author <%=author%>
 * @since <%=date%> 
 */
public class AbsenceDisplayListPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
@EmbeddedRichDialog(HeaderPanel.class) private ULCContainer header = null;
private RBoxPane headerBoxPane = null;
private RSplitPane usersAndAbsencesSplitPane = null;
private @EmbeddedRichDialog(UserDisplayListPanel.class) ULCContainer userDisplayListRDC = null;
private RGridBagLayoutPane absencesGridBagLayoutPane = null;
private @EmbeddedRichDialog(SeparatorPanel.class) ULCContainer separatorRDC = null;
private @EmbeddedRichDialog(UserAbsenceDisplayListPanel.class) ULCContainer userAbsenceDisplayListRDC = null;
/**
   * Create a new instance of AbsenceManagementPanel
   */
  public AbsenceDisplayListPanel()
  {
    super();
    initialize();
    
    // prettify text fields
    UIHelper.prettifyComponent(this);    
  }
  
  /**
   * This method initializes AbsenceManagementPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(523,469));
        this.add(getHeaderBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getUsersAndAbsencesSplitPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes header	
 * 	
 * @return ch.xpertline.common.ria.component.Header.HeaderPanel	
 */
private ULCContainer getHeader()  {
	if (header == null) {
		header = RichDialogPanelFactory.create(HeaderPanel.class);
		header.setName("header");
		header.setToolTipText("\n");
		header.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,75));
		header.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
	}
	return header;
}

/**
 * This method initializes headerBoxPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane	
 */
private RBoxPane getHeaderBoxPane() {
	if (headerBoxPane == null) {
		headerBoxPane = new RBoxPane();
		headerBoxPane.setName("headerBoxPane");
		headerBoxPane.setStyleProperties("{/weightX \"1\"}");
		headerBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getHeader());
	}
	return headerBoxPane;
}

/**
 * This method initializes usersAndAbsencesSplitPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane	
 */
private RSplitPane getUsersAndAbsencesSplitPane() {
	if (usersAndAbsencesSplitPane == null) {
		usersAndAbsencesSplitPane = new RSplitPane();
		usersAndAbsencesSplitPane.setName("usersAndAbsencesSplitPane");
		usersAndAbsencesSplitPane.setLeftComponent(getUserDisplayListRDC());
		usersAndAbsencesSplitPane.setRightComponent(getAbsencesGridBagLayoutPane());
		usersAndAbsencesSplitPane.setStyleProperties("{/dividerLocation \"0.35\"/weightY \"1\"/weightX \"1\"}");
	}
	return usersAndAbsencesSplitPane;
}

/**
 * This method initializes userDisplayListRDC, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getUserDisplayListRDC() {
	if (userDisplayListRDC == null) {
		userDisplayListRDC = RichDialogPanelFactory
				.create(UserDisplayListPanel.class);
		userDisplayListRDC.setName("userDisplayListRDC");
	}
	return userDisplayListRDC;
}

/**
 * This method initializes absencesGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getAbsencesGridBagLayoutPane() {
	if (absencesGridBagLayoutPane == null) {
		absencesGridBagLayoutPane = new RGridBagLayoutPane();
		absencesGridBagLayoutPane.setName("absencesGridBagLayoutPane");
		absencesGridBagLayoutPane.add(getSeparatorRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		absencesGridBagLayoutPane.add(getUserAbsenceDisplayListRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return absencesGridBagLayoutPane;
}

/**
 * This method initializes separatorRDC, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getSeparatorRDC() {
	if (separatorRDC == null) {
		separatorRDC = RichDialogPanelFactory.create(SeparatorPanel.class);
		separatorRDC.setName("separatorRDC");
		separatorRDC.setStyleProperties("{/weightX \"1\"}");
	}
	return separatorRDC;
}

/**
 * This method initializes userAbsenceDisplayListRDC, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getUserAbsenceDisplayListRDC() {
	if (userAbsenceDisplayListRDC == null) {
		userAbsenceDisplayListRDC = RichDialogPanelFactory
				.create(UserAbsenceDisplayListPanel.class);
		userAbsenceDisplayListRDC.setName("userAbsenceDisplayListRDC");
		userAbsenceDisplayListRDC.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");
	}
	return userAbsenceDisplayListRDC;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"