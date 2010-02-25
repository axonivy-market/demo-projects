package ui.task.TaskExecution;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTable;
import com.ulcjava.base.application.ULCTable;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;

/**
 * RichDialog panel implementation for PendenzenListePanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class TaskExecutionPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel captionLabel = null;
private RToolBar ToolBar = null;
private RButton resumeButton = null;
private RPopupMenu doPopupMenu = null;  //  @jve:decl-index=0:visual-constraint="669,13"
private RMenuItem resumeMenuItem = null;
private RHyperlink Hyperlink = null;
private RButton parkButton = null;
private RButton resetButton1 = null;
private RCardDisplay CardDisplay = null;
private RScrollPane ScrollPane = null;
private RButton notesButton = null;
  
  /**
   * Create a new instance of PendenzenListePanel
   */
  public TaskExecutionPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes PendenzenListePanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(632,408));
        this.add(getCaptionLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getToolBar(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getHyperlink(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes captionLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCaptionLabel() {
	if (captionLabel == null) {
		captionLabel = new RLabel();
		captionLabel.setStyle("basicwfui_caption");
		captionLabel.setName("captionLabel");
	}
	return captionLabel;
}

/**
 * This method initializes ToolBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RToolBar	
 */
private RToolBar getToolBar() {
	if (ToolBar == null) {
		ToolBar = new RToolBar();
		ToolBar.setName("ToolBar");
		ToolBar.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		ToolBar.add(getResumeButton());
		ToolBar.add(getNotesButton());
		ToolBar.add(getParkButton());
		ToolBar.add(getResetButton1());
	}
	return ToolBar;
}

/**
 * This method initializes resumeButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getResumeButton() {
	if (resumeButton == null) {
		resumeButton = new RButton();
		resumeButton.setStyle("basicwfui_toolbarbutton");
		resumeButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/details\")%><%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/info\")%>");
		resumeButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/details\")%>");
		resumeButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/taskDetails\")%>");
		resumeButton.setName("resumeButton");
	}
	return resumeButton;
}

/**
 * This method initializes doPopupMenu	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu	
 */
private RPopupMenu getDoPopupMenu() {
	if (doPopupMenu == null) {
		doPopupMenu = new RPopupMenu();
		doPopupMenu.setName("doPopupMenu");
		doPopupMenu.add(getResumeMenuItem());
	}
	return doPopupMenu;
}

/**
 * This method initializes resumeMenuItem	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.menus.RMenuItem	
 */
private RMenuItem getResumeMenuItem() {
	if (resumeMenuItem == null) {
		resumeMenuItem = new RMenuItem();
		resumeMenuItem.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/resume\")%>");
		resumeMenuItem.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/tasklist\")%>");
		resumeMenuItem.setName("resumeMenuItem");
	}
	return resumeMenuItem;
}

/**
 * This method initializes Hyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getHyperlink() {
	if (Hyperlink == null) {
		Hyperlink = new RHyperlink();
		Hyperlink.setName("Hyperlink");
		Hyperlink.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/task_48\")%>");
		Hyperlink.setStyleProperties("{/anchor \"CENTER\"}");
	}
	return Hyperlink;
}

/**
 * This method initializes parkButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getParkButton() {
	if (parkButton == null) {
		parkButton = new RButton();
		parkButton.setName("parkButton");
		parkButton.setStyle("basicwfui_toolbarbutton");
		parkButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/park\")%>");
		parkButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/taskPark\")%>");
		parkButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/park\")%>");
	}
	return parkButton;
}

/**
 * This method initializes resetButton1	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getResetButton1() {
	if (resetButton1 == null) {
		resetButton1 = new RButton();
		resetButton1.setName("resetButton1");
		resetButton1.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/reset\")%>");
		resetButton1.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/reset\")%>");
		resetButton1.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/taskReset\")%>");
		resetButton1.setStyle("basicwfui_toolbarbutton");
	}
	return resetButton1;
}

/**
 * This method initializes CardDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay	
 */
private RCardDisplay getCardDisplay() {
	if (CardDisplay == null) {
		CardDisplay = new RCardDisplay();
		CardDisplay.setName("CardDisplay");
		CardDisplay.setDisplayId("execution_display");
	}
	return CardDisplay;
}

/**
 * This method initializes ScrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScrollPane() {
	if (ScrollPane == null) {
		ScrollPane = new RScrollPane();
		ScrollPane.setName("ScrollPane");
		ScrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		ScrollPane.setViewPortView(getCardDisplay());
	}
	return ScrollPane;
}

/**
 * This method initializes notesButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getNotesButton() {
	if (notesButton == null) {
		notesButton = new RButton();
		notesButton.setStyle("basicwfui_toolbarbutton");
		notesButton.setText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/labels/task/notes\")%>");
		notesButton.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/basicwfui/images/notes\")%>");
		notesButton.setToolTipText("<%=ivy.cms.co(\"/ch/ivyteam/ivy/basicwfui/help/taskNotes\")%>");
		notesButton.setName("notesButton");
	}
	return notesButton;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"