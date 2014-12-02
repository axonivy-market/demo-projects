package ch.ivyteam.ivy.server.configuration.system.db.ConvertSystemDatabaseUI;

import ch.ivyteam.db.jdbc.DatabaseConnectionConfiguration;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RProgressBar;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConverter;

import com.ulcjava.base.application.ULCPollingTimer;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;



/**
 * RichDialog panel implementation for ConvertSystemDatabaseUIPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ConvertSystemDatabaseUIPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel notImplementedLabel = null;
private RButton okButton = null;
private RProgressBar convertProgressBar = null;
private RLabel logLabel = null;

private ULCPollingTimer timer;  
private SystemDatabaseConverter databaseConverter;
  
  /**
   * Create a new instance of ConvertSystemDatabaseUIPanel
   */
  public ConvertSystemDatabaseUIPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ConvertSystemDatabaseUIPanel
   * @return void
   */
  public void initialize()
  {
        this.add(getNotImplementedLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getOkButton(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getConvertProgressBar(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLogLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        
        createUlcPollingTimer();
  }

/**
 * This method initializes notImplementedLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getNotImplementedLabel() {
	if (notImplementedLabel == null) {
		notImplementedLabel = new RLabel();
		notImplementedLabel.setName("notImplementedLabel");
		notImplementedLabel.setText("<%=ivy.cms.co(\"/labels/convertSysDb\")%>");
	}
	return notImplementedLabel;
}

/**
 * This method initializes okButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getOkButton() {
	if (okButton == null) {
		okButton = new RButton();
		okButton.setText("<%=ivy.cms.co(\"/labels/Cancel\")%>");
		okButton.setStyleProperties("{/anchor \"SOUTHEAST\"/insetsBottom \"5\"/insetsRight \"5\"}");
		okButton.setName("okButton");
	}
	return okButton;
}

/**
 * This method initializes convertProgressBar	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RProgressBar	
 */
private RProgressBar getConvertProgressBar() {
	if (convertProgressBar == null) {
		convertProgressBar = new RProgressBar();
		convertProgressBar.setName("convertProgressBar");
		convertProgressBar.setStyleProperties("{/insetsRight \"5\"/insetsLeft \"5\"}");
	}
	return convertProgressBar;
}

/**
 * This method initializes logLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLogLabel() {
	if (logLabel == null) {
		logLabel = new RLabel();
		logLabel.setName("logLabel");
		logLabel.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		logLabel.setText("<%=ivy.cms.co(\"/labels/startingSysDbConvert\")%>");
	}
	return logLabel;
}

/**
 * Starts the system database creation 
 * @param databaseConnectionConfiguration
 * @param databaseCreationParameters
 */
public void startSystemDatabaseConversion(DatabaseConnectionConfiguration databaseConnectionConfiguration,
		int dbVersion)
{	
	databaseConverter = SystemDatabaseConverter.createSystemDatabaseConverter(databaseConnectionConfiguration, dbVersion);
    
    getConvertProgressBar().setMaximum(databaseConverter.getMaxProgress());
    databaseConverter.start();
    timer.start();
    getLogLabel().setText(databaseConverter.getProgressText());
    getConvertProgressBar().setValue(databaseConverter.getProgress());
}

/** 
 * Creates a ulc polling timer 
 */
private void createUlcPollingTimer() {
	timer = new ULCPollingTimer(500, null);
	timer.setRepeats(false);
	timer.addActionListener(new IActionListener() 
	{	
		private static final long serialVersionUID = -4370382652507823364L;

		public void actionPerformed(ActionEvent event) 
		{
			if (databaseConverter.isRunning())
	    	 {
	              getLogLabel().setText(databaseConverter.getProgressText());
	              getConvertProgressBar().setValue(databaseConverter.getProgress());
	              timer.restart();		    		 
	    	 }
	    	 else
	    	 {
	    		 getConvertProgressBar().setValue(databaseConverter.getProgress());
	    		 if (databaseConverter.getError()!=null)
	    		 {		    			 			           
	    			 getLogLabel().setText("Failure while System Database conversion: " + databaseConverter.getError().getMessage());
	    		 }
	    		 else
	    		 {	    			 
	    			 getLogLabel().setText("System Database conversion successful");
	    		 }
	    		 getOkButton().setText("Ok");		    		 
	    	 }
	     }
	});
}

}