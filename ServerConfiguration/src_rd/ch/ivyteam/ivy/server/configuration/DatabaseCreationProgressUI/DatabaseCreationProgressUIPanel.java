package ch.ivyteam.ivy.server.configuration.DatabaseCreationProgressUI;

import com.ulcjava.base.application.ULCPollingTimer;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.util.Dimension;

import ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RProgressBar;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseCreator;

/**
 * RichDialog panel implementation for DatabaseCreationProgressUIPanel.
 * 
 * @author <%=author%>
 * @since <%=date%>
 */
public class DatabaseCreationProgressUIPanel extends RichDialogGridBagPanel
		implements IRichDialogPanel {
	/** Serial version id */
	private static final long serialVersionUID = 1L;

	private RLabel infoLabel = null;

	private RProgressBar progressBar = null;

	private RLabel progressLabel = null;

	private RButton cancelButton = null;

	private SystemDatabaseCreator creator;  //  @jve:decl-index=0:

	private ULCPollingTimer timer;  //  @jve:decl-index=0:

	/**
	 * Create a new instance of DatabaseCreationProgressUIPanel
	 */
	public DatabaseCreationProgressUIPanel() {
		super();
		initialize();
	}

	/**
	 * This method initializes DatabaseCreationProgressUIPanel
	 * 
	 * @return void
	 */
	public void initialize() {
		this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(480,100));
		this
				.add(
						getInfoLabel(),
						new com.ulcjava.base.application.GridBagConstraints(
								0,
								0,
								1,
								1,
								-1,
								-1,
								com.ulcjava.base.application.GridBagConstraints.CENTER,
								com.ulcjava.base.application.GridBagConstraints.NONE,
								new com.ulcjava.base.application.util.Insets(0,
										0, 0, 0), 0, 0));
		this
				.add(
						getProgressBar(),
						new com.ulcjava.base.application.GridBagConstraints(
								0,
								1,
								1,
								1,
								-1,
								-1,
								com.ulcjava.base.application.GridBagConstraints.CENTER,
								com.ulcjava.base.application.GridBagConstraints.NONE,
								new com.ulcjava.base.application.util.Insets(0,
										0, 0, 0), 0, 0));
		this
				.add(
						getProgressLabel(),
						new com.ulcjava.base.application.GridBagConstraints(
								0,
								2,
								1,
								1,
								-1,
								-1,
								com.ulcjava.base.application.GridBagConstraints.CENTER,
								com.ulcjava.base.application.GridBagConstraints.NONE,
								new com.ulcjava.base.application.util.Insets(0,
										0, 0, 0), 0, 0));
		this
				.add(
						getCancelButton(),
						new com.ulcjava.base.application.GridBagConstraints(
								0,
								3,
								1,
								1,
								-1,
								-1,
								com.ulcjava.base.application.GridBagConstraints.CENTER,
								com.ulcjava.base.application.GridBagConstraints.NONE,
								new com.ulcjava.base.application.util.Insets(0,
										0, 0, 0), 0, 0));

		createUlcPollingTimer();
	}

	/** 
	 * Creates a ulc polling timer 
	 */
	private void createUlcPollingTimer() {
		timer = new ULCPollingTimer(500, null);
		timer.setRepeats(false);
		timer.addActionListener(new IActionListener() {
		
		     /**
			 * 
			 */
			private static final long serialVersionUID = -4370382652507823364L;

			public void actionPerformed(ActionEvent event) {
		    	 if (creator.isRunning())
		    	 {
		              progressLabel.setText(creator.getProgressText());
		              progressBar.setValue(creator.getProgress());
		              timer.restart();		    		 
		    	 }
		    	 else
		    	 {
		    		 progressBar.setValue(creator.getProgress());
		    		 if (creator.getError()!=null)
		    		 {		    			 			           
		    			 progressLabel.setText("Error: "+creator.getError().getMessage());
		    		 }
		    		 else
		    		 {
		    			 progressLabel.setText("Successful");
		    		 }
		    		 cancelButton.setText("Ok");		    	
		    	 }
		     }});
	}

	/**
	 * This method initializes infoLabel
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel
	 */
	private RLabel getInfoLabel() {
		if (infoLabel == null) {
			infoLabel = new RLabel();
			infoLabel.setText("<%=ivy.cms.co(\"/labels/creatingSysDb\")%>");
			infoLabel.setName("infoLabel");
		}
		return infoLabel;
	}

	/**
	 * This method initializes progressBar
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RProgressBar
	 */
	private RProgressBar getProgressBar() {
		if (progressBar == null) {
			progressBar = new RProgressBar();
			progressBar.setName("progressBar");
			progressBar.setStyleProperties("{/insetsRight \"5\"/insetsLeft \"5\"}");
		}
		return progressBar;
	}

	/**
	 * This method initializes progressLabel
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel
	 */
	private RLabel getProgressLabel() {
		if (progressLabel == null) {
			progressLabel = new RLabel();
			progressLabel.setText("<%=ivy.cms.co(\"/labels/startingSysDbCreation\")%>");
			progressLabel.setName("progressLabel");
		}
		return progressLabel;
	}

	/**
	 * This method initializes cancelButton
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton
	 */
	private RButton getCancelButton() {
		if (cancelButton == null) {
			cancelButton = new RButton();
			cancelButton.setText("<%=ivy.cms.co(\"/labels/Cancel\")%>");
			cancelButton.setStyleProperties("{/anchor \"EAST\"/marginRight \"20\"/marginLeft \"20\"/insetsRight \"5\"}");
			cancelButton.setName("cancelButton");
		}
		return cancelButton;
	}
	
	/**
	 * Starts the system database creation 
	 * @param databaseConnectionConfiguration
	 * @param databaseCreationParameters
	 */
	public void startSystemDatabaseCreation(DatabaseConnectionConfiguration databaseConnectionConfiguration, List<String> databaseCreationParameters)
	{
		creator = SystemDatabaseCreator.createSystemDatabaseCreator(databaseConnectionConfiguration, databaseCreationParameters);
		progressBar.setMaximum(creator.getMaxProgress());
		creator.start();
		timer.start();
        progressLabel.setText(creator.getProgressText());
        progressBar.setValue(creator.getProgress());
	}
	
	/**
	 * Gets the created database connection configuration
	 * @return created database connection configuration
	 */
	public DatabaseConnectionConfiguration getCreatedDatabaseConnectionConfiguration()
	{
		return creator.getCreatedDatabaseConnectionConfiguration();
	}
}  //  @jve:decl-index=0:visual-constraint="10,10"
