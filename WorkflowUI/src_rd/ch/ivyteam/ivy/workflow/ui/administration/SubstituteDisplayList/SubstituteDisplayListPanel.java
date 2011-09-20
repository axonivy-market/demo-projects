package ch.ivyteam.ivy.workflow.ui.administration.SubstituteDisplayList;

import ch.ivyteam.ivy.addons.common.technical.Separator.SeparatorPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane;
import ch.ivyteam.ivy.workflow.ui.administration.UserSubstituteDisplayList.UserSubstituteDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.common.Header.HeaderPanel;
import ch.ivyteam.ivy.workflow.ui.security.UserDisplayList.UserDisplayListPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;

import com.ulcjava.base.application.ULCContainer;

/**
 * RichDialog panel implementation for SubstituteManagementPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class SubstituteDisplayListPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
@EmbeddedRichDialog(HeaderPanel.class) private ULCContainer header = null;
private RButton exitButton = null;
private RBoxPane headerBoxPane = null;
private @EmbeddedRichDialog(UserDisplayListPanel.class) ULCContainer userDisplayListRDC = null;
private RGridBagLayoutPane substitutesAndAbsencesGridBagLayoutPane = null;
private @EmbeddedRichDialog(UserSubstituteDisplayListPanel.class) ULCContainer userSubstituteDisplayListRDC = null;
private RSplitPane usersVsSubstitutesAndAbsencesSplitPane = null;
private @EmbeddedRichDialog(SeparatorPanel.class) ULCContainer separatorRDC = null;
/**
   * Create a new instance of SubstituteManagementPanel
   */
  public SubstituteDisplayListPanel()
  {
    super();
    initialize();
    
    // prettify text fields
    UIHelper.prettifyComponent(this);    
  }
  
  /**
   * This method initializes SubstituteManagementPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(531,481));
        this.add(getHeaderBoxPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getUsersVsSubstitutesAndAbsencesSplitPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
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
		header.setPreferredSize(new com.ulcjava.base.application.util.Dimension(20,75));
		header.setStyleProperties("{/weightX \"1\"}");
	}
	return header;
}

/**
 * This method initializes exitButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getExitButton() {
	if (exitButton == null) {
		exitButton = new RButton();
		exitButton.setName("exitButton");
		exitButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/workflow/ui/common/images/close32\")%>");
		exitButton.setStyleProperties("{/insetsRight \"3\"}");
		exitButton.setStyle("toolBarButton");
		exitButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/workflow/ui/common/plainStrings/close\")%>");
		exitButton.setBorderPainted(false);
	}
	return exitButton;
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
		headerBoxPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		headerBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getHeader());
		headerBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER, getExitButton());
	}
	return headerBoxPane;
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
		userDisplayListRDC.setStyleProperties("{/weightX \"0.3\"}");
	}
	return userDisplayListRDC;
}

/**
 * This method initializes substitutesAndAbsencesGridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getSubstitutesAndAbsencesGridBagLayoutPane() {
	if (substitutesAndAbsencesGridBagLayoutPane == null) {
		substitutesAndAbsencesGridBagLayoutPane = new RGridBagLayoutPane();
		substitutesAndAbsencesGridBagLayoutPane.setName("substitutesAndAbsencesGridBagLayoutPane");
		substitutesAndAbsencesGridBagLayoutPane.setStyleProperties("{/fill \"BOTH\"/weightY \"0\"/weightX \"1\"}");
		substitutesAndAbsencesGridBagLayoutPane.add(getUserSubstituteDisplayListRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		substitutesAndAbsencesGridBagLayoutPane.add(getSeparatorRDC(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return substitutesAndAbsencesGridBagLayoutPane;
}

/**
 * This method initializes userSubstituteDisplayListRDC, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getUserSubstituteDisplayListRDC() {
	if (userSubstituteDisplayListRDC == null) {
		userSubstituteDisplayListRDC = RichDialogPanelFactory
				.create(UserSubstituteDisplayListPanel.class);
		userSubstituteDisplayListRDC.setName("userSubstituteDisplayListRDC");
		userSubstituteDisplayListRDC.setStyleProperties("{/weightY \"1\"}");
	}
	return userSubstituteDisplayListRDC;
}

/**
 * This method initializes usersVsSubstitutesAndAbsencesSplitPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RSplitPane	
 */
private RSplitPane getUsersVsSubstitutesAndAbsencesSplitPane() {
	if (usersVsSubstitutesAndAbsencesSplitPane == null) {
		usersVsSubstitutesAndAbsencesSplitPane = new RSplitPane();
		usersVsSubstitutesAndAbsencesSplitPane.setName("usersVsSubstitutesAndAbsencesSplitPane");
		usersVsSubstitutesAndAbsencesSplitPane.setLeftComponent(getUserDisplayListRDC());
		usersVsSubstitutesAndAbsencesSplitPane.setRightComponent(getSubstitutesAndAbsencesGridBagLayoutPane());
		usersVsSubstitutesAndAbsencesSplitPane.setStyleProperties("{/dividerLocation \"0.35\"/weightY \"1\"/weightX \"1\"}");
	}
	return usersVsSubstitutesAndAbsencesSplitPane;
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
}  //  @jve:decl-index=0:visual-constraint="10,10"