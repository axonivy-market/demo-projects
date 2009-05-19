package ch.ivyteam.ivy.demo.process.ProcessStarter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.richdialog.exec.ProcessStartConfiguration;
import ch.ivyteam.ivy.richdialog.exec.application.DisplayConfigurationFactory;
import ch.ivyteam.ivy.richdialog.exec.application.IDisplayConfiguration;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;
import ch.ivyteam.ivy.workflow.IProcessStart;

import com.ulcjava.base.application.DefaultListModel;
import com.ulcjava.base.application.ULCList;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Font;
import com.ulcjava.base.application.util.Color;

/**
 * RichDialog panel implementation for StartAProcessPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ProcessStarterPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RButton startButton = null;
private ULCList startableProcessesList = null;
private RLabel titleLabel = null;
private RTabbedDisplay myTabbedDisplay = null;
private RHyperlink exitHyperlink = null;

	private Map<String, IProcessStart> processStarts;
	private RHyperlink closePanelHyperlink = null;
	private RLabel sepLabel = null;
	private RCheckBox showCheckBox = null;
	private RScrollPane myScrollPane = null;
	private RLabel infoLabel = null;
	private RGridBagLayoutPane header = null;
	private RLabel subtitleLabel = null;
	private RGridBagLayoutPane loginPanel = null;
	private RLabel loginLabel = null;
	private RTextField loginTextField = null;
	private RLabel passwordLabel = null;
	private RPasswordField passwordTextField = null;
	private RButton loginButton = null;
	private RLabel loginStatusValueLabel = null;
  
  /**
   * Create a new instance of StartAProcessPanel
   */
  public ProcessStarterPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes StartAProcessPanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(580,548));
        this.add(getStartButton(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.SOUTHWEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
        this.add(getExitHyperlink(), new com.ulcjava.base.application.GridBagConstraints(4, 3, 1, 1, 0.0, -1, com.ulcjava.base.application.GridBagConstraints.SOUTHEAST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,0,3,5), 0, 0));
        this.add(getMyTabbedDisplay(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 4, 4, 1.0, 1.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getClosePanelHyperlink(), new com.ulcjava.base.application.GridBagConstraints(2, 3, 1, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.SOUTHEAST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,0,3,5), 0, 0));
        this.add(getSepLabel(), new com.ulcjava.base.application.GridBagConstraints(3, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.SOUTHEAST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,0,3,5), 0, 0));
        this.add(getShowCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getMyScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 1, 1, -1, 1.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
        this.add(getInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.SOUTHWEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,5,3,0), 0, 0));
        this.add(getHeader(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 5, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLoginPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 5, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes startButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getStartButton() {
	if (startButton == null) {
		startButton = new RButton();
		startButton.setText("Start selected process");
		startButton.setIconUri("<%=ivy.cms.cr(\"/Images/play\")%>");
		startButton.setName("startButton");
	}
	return startButton;
}

/**
 * This method initializes startableProcessesList	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RList	
 */
private ULCList getStartableProcessesList() {
	if (startableProcessesList == null) {
		startableProcessesList = new ULCList();
		startableProcessesList.setName("startableProcessesList");
	}
	return startableProcessesList;
}

/**
 * This method initializes titleLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTitleLabel() {
	if (titleLabel == null) {
		titleLabel = new RLabel();
		titleLabel.setText("Start a process");
		titleLabel.setStyleProperties("{/insetsLeft \"5\"/insetsRight \"5\"/font {/name \"Arial\"/size \"24\"/style \"BOLD\"}/anchor \"WEST\"/insetsTop \"5\"/insetsBottom \"5\"/weightX \"1\"/fill \"HORIZONTAL\"}");
		titleLabel.setIconUri("<%=ivy.cms.cr(\"/Images/gear_run_large\")%>");
		titleLabel.setStyle("border-full");
		titleLabel.setName("titleLabel");
	}
	return titleLabel;
}

/**
 * This method initializes myTabbedDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay	
 */
private RTabbedDisplay getMyTabbedDisplay() {
	if (myTabbedDisplay == null) {
		myTabbedDisplay = new RTabbedDisplay();
		myTabbedDisplay.setName("myTabbedDisplay");
		myTabbedDisplay.setDisplayId("ch.ivyteam.processstarter.display");
	}
	return myTabbedDisplay;
}

/**
 * This method initializes exitHyperlink	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
 */
private RHyperlink getExitHyperlink() {
	if (exitHyperlink == null) {
		exitHyperlink = new RHyperlink();
		exitHyperlink.setText("Exit Process-Starter Application");
		exitHyperlink.setName("exitHyperlink");
	}
	return exitHyperlink;
}

	public void startSelectedProcess()
	{
		Object selected = getStartableProcessesList().getSelectedValue();
		if (selected != null)
		{
			IProcessStart start = processStarts.get(selected);
			if (start != null)
			{
				Ivy.rd().startProcess(
						new ProcessStartConfiguration(start, 
								DisplayConfigurationFactory.createForThisWindow("ch.ivyteam.processstarter.display", this)));
			}
			else
			{
				Ivy.log().warn("Unknown selected process start {0}, cannot start (skipping)", start);
			}
		}
	}
	
	/**
	 * Adds all available process starts (for the currently logged in user).
	 * @return the number of process starts added to list
	 */
	public int addProcessStarts()
	{
		DefaultListModel listModel = new DefaultListModel();
		List<String> startNames = new ArrayList<String>();
		
		try {
			processStarts = new HashMap<String, IProcessStart>();
			
			List<IProcessStart> starts = Ivy.session().getStartableProcessStarts();
			Ivy.log().info("Adding {0} process starts to list", starts.size());
			
			for (IProcessStart start : starts)
			{
				String name = start.getName();
				if (name == null || name.trim().length() == 0)
				{
					if (showCheckBox.isSelected())
					{
						name = start.getUserFriendlyRequestPath();
						processStarts.put(name, start);
						startNames.add(name);
					}
					else
					{
						// skip (if we don't have a name, then user won't know which process it is anyway)
						Ivy.log().warn("Process start without name: {0}, skipped", start);
					}
				}
				else
				{
					processStarts.put(name, start);
					startNames.add(name);
				}
			}
			
			// sort the names, before adding to list model
			Collections.sort(startNames);
			listModel.addAll(startNames.toArray(new Object[startNames.size()]));
			getStartableProcessesList().setModel(listModel);
			
			return startNames.size();
		} 
		catch (PersistencyException e) 
		{
			Ivy.log().error("Could not retrieve startable processes for list", e);
		}
		
		// none added
		return 0;
	}

	/**
	 * This method initializes closePanelHyperlink	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHyperlink	
	 */
	private RHyperlink getClosePanelHyperlink() {
		if (closePanelHyperlink == null) {
			closePanelHyperlink = new RHyperlink();
			closePanelHyperlink.setText("Close current panel");
			closePanelHyperlink.setName("closePanelHyperlink");
		}
		return closePanelHyperlink;
	}

	/**
	 * This method initializes sepLabel	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
	 */
	private RLabel getSepLabel() {
		if (sepLabel == null) {
			sepLabel = new RLabel();
			sepLabel.setText("|");
			sepLabel.setName("sepLabel");
		}
		return sepLabel;
	}

	/**
	 * This method initializes showCheckBox	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
	 */
	private RCheckBox getShowCheckBox() {
		if (showCheckBox == null) {
			showCheckBox = new RCheckBox();
			showCheckBox.setText("show unnamed process starts");
			showCheckBox.setStyleProperties("{/insetsRight \"5\"/insetsLeft \"5\"}");
			showCheckBox.setName("showCheckBox");
		}
		return showCheckBox;
	}

	/**
	 * This method initializes myScrollPane	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
	 */
	private RScrollPane getMyScrollPane() {
		if (myScrollPane == null) {
			myScrollPane = new RScrollPane();
			myScrollPane.setName("myScrollPane");
			myScrollPane.setStyleProperties("{/weightY \"1\"/weightX \"0\"}");
			myScrollPane.setViewPortView(getStartableProcessesList());
		}
		return myScrollPane;
	}

	/**
	 * This method initializes infoLabel	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
	 */
	private RLabel getInfoLabel() {
		if (infoLabel == null) {
			infoLabel = new RLabel();
			infoLabel.setText("Select a process:");
			infoLabel.setName("infoLabel");
		}
		return infoLabel;
	}

	/**
	 * This method initializes header	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
	 */
	private RGridBagLayoutPane getHeader() {
		if (header == null) {
			header = new RGridBagLayoutPane();
			header.setName("header");
			header.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/fill \"HORIZONTAL\"/weightX \"1\"}");
			header.add(getTitleLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			header.add(getSubtitleLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		}
		return header;
	}

	/**
	 * This method initializes subtitleLabel	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
	 */
	private RLabel getSubtitleLabel() {
		if (subtitleLabel == null) {
			subtitleLabel = new RLabel();
			subtitleLabel.setText("Start any process available on the server with appropriate user rights.");
			subtitleLabel.setStyle("border-left-right-bottom");
			subtitleLabel.setStyleProperties("{/anchor \"WEST\"}");
			subtitleLabel.setName("subtitleLabel");
		}
		return subtitleLabel;
	}

	/**
	 * This method initializes loginPanel	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
	 */
	private RGridBagLayoutPane getLoginPanel() {
		if (loginPanel == null) {
			loginPanel = new RGridBagLayoutPane();
			loginPanel.setName("loginPanel");
			loginPanel.setBorder(BorderFactory.createTitledBorder(null, "Login", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(12, 74, 124)));
			loginPanel.add(getLoginLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			loginPanel.add(getLoginTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			loginPanel.add(getPasswordLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			loginPanel.add(getPasswordTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			loginPanel.add(getLoginButton(), new com.ulcjava.base.application.GridBagConstraints(3, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
			loginPanel.add(getLoginStatusValueLabel(), new com.ulcjava.base.application.GridBagConstraints(3, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		}
		return loginPanel;
	}

	/**
	 * This method initializes loginLabel	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
	 */
	private RLabel getLoginLabel() {
		if (loginLabel == null) {
			loginLabel = new RLabel();
			loginLabel.setText("Login name:");
			loginLabel.setStyle("border-full");
			loginLabel.setStyleProperties("{/anchor \"WEST\"}");
			loginLabel.setName("loginLabel");
		}
		return loginLabel;
	}

	/**
	 * This method initializes loginTextField	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
	 */
	private RTextField getLoginTextField() {
		if (loginTextField == null) {
			loginTextField = new RTextField();
			loginTextField.setText("Developer");
			loginTextField.setStyle("border-full");
			loginTextField.setName("loginTextField");
		}
		return loginTextField;
	}

	/**
	 * This method initializes passwordLabel	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
	 */
	private RLabel getPasswordLabel() {
		if (passwordLabel == null) {
			passwordLabel = new RLabel();
			passwordLabel.setText("Password:");
			passwordLabel.setStyle("border-full");
			passwordLabel.setStyleProperties("{/anchor \"WEST\"/insetsTop \"0\"}");
			passwordLabel.setName("passwordLabel");
		}
		return passwordLabel;
	}

	/**
	 * This method initializes passwordTextField	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField	
	 */
	private RPasswordField getPasswordTextField() {
		if (passwordTextField == null) {
			passwordTextField = new RPasswordField();
			passwordTextField.setText("Developer");
			passwordTextField.setStyle("border-full");
			passwordTextField.setStyleProperties("{/insetsTop \"0\"}");
			passwordTextField.setName("passwordTextField");
		}
		return passwordTextField;
	}

	/**
	 * This method initializes loginButton	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
	 */
	private RButton getLoginButton() {
		if (loginButton == null) {
			loginButton = new RButton();
			loginButton.setText("Login");
			loginButton.setStyleProperties("{/anchor \"WEST\"/insetsBottom \"0\"/insetsTop \"0\"/insetsRight \"5\"/fill \"HORIZONTAL\"/insetsLeft \"5\"}");
			loginButton.setName("loginButton");
		}
		return loginButton;
	}

	/**
	 * This method initializes loginStatusValueLabel	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
	 */
	private RLabel getLoginStatusValueLabel() {
		if (loginStatusValueLabel == null) {
			loginStatusValueLabel = new RLabel();
			loginStatusValueLabel.setText("- not logged in -");
			loginStatusValueLabel.setStyle("border-full");
			loginStatusValueLabel.setName("loginStatusValueLabel");
		}
		return loginStatusValueLabel;
	}
}  //  @jve:decl-index=0:visual-constraint="10,10"