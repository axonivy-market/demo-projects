package ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTesterUI;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.exception.ExceptionUtils;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.server.configuration.Configuration;
import ch.ivyteam.ivy.server.configuration.system.db.ConnectionState;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabase;
import ch.ivyteam.ivy.server.configuration.system.db.SystemDatabaseConnectionTester;

import com.ulcjava.base.application.ULCPollingTimer;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.util.Color;

/**
 * RichDialog panel implementation for SystemDatabaseConnectionTesterUIPanel.
 * 
 * @author <%=author%>
 * @since <%=date%>
 */
public class SystemDatabaseConnectionTesterUIPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RTextArea stateTextArea = null;
private RScrollPane stateScrollPane = null;


private List<RButton> buttonsToEnableIfWrongDbVersion = new ArrayList<RButton>();  //  @jve:decl-index=0:
private List<RButton> buttonsToEnableIfConnectionEstablished = new ArrayList<RButton>();  //  @jve:decl-index=0:

private SystemDatabaseConnectionTester tester;  //  @jve:decl-index=0:

private ULCPollingTimer timer;
private RButton refreshButton = null;
private RLabel connectionStateLabel = null;

  
  /**
	 * Create a new instance of SystemDatabaseConnectionTesterUIPanel
	 */
  public SystemDatabaseConnectionTesterUIPanel()
  {
    super();
    initialize();
  }
  
  /**
	 * This method initializes SystemDatabaseConnectionTesterUIPanel
	 * 
	 * @return void
	 */
  public void initialize()
  {
        this.add(getStateScrollPane(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getRefreshButton(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getConnectionStateLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		createUlcPollingTimer();
  }
  
	/** 
	 * Creates a ulc polling timer 
	 */
	private void createUlcPollingTimer() {
		timer = new ULCPollingTimer(500, null);
		timer.setRepeats(false);
		timer.addActionListener(new IActionListener() {
			
			private static final long serialVersionUID = 2204342330586687777L;

			public void actionPerformed(ActionEvent event) {
		    	 try
		    	 {
			    	 timer.restart();
			    	    	 
			    	 if (tester != null)
			    	 { 
			    		 getConnectionStateLabel().setText(tester.getConnectionState().toString());
			    		 switch (tester.getConnectionState())
			    		 {
			    		 	case NOT_CONNECTED:
			    		 		refreshButton.setIconUri("<%=ivy.cms.cr(\"/Icons/connectionstates/unknown\")%>");
			    		 		stateTextArea.setText("<%=ivy.cms.co(\"/labels/connectionstates/unknown\")%>");
			    		 		break;
			    		 	case CONNECTED:
			    		 		refreshButton.setIconUri("<%=ivy.cms.cr(\"/Icons/connectionstates/ok\")%>");
			    		 		stateTextArea.setText("<%=ivy.cms.co(\"/labels/connectionstates/ok\")%>");
			    		 		break;
			    		 	case CONNECTED_NO_TABLES:
			    		 		refreshButton.setIconUri("<%=ivy.cms.cr(\"/Icons/connectionstates/fail\")%>");
			    		 		stateTextArea.setText("<%=ivy.cms.co(\"/labels/connectionstates/noTables\")%>");
			    		 		break;
			    		 	case CONNECTED_NO_DATABASE_OR_SCHEMA:
			    		 		refreshButton.setIconUri("<%=ivy.cms.cr(\"/Icons/connectionstates/fail\")%>");
			    		 		stateTextArea.setText("<%=ivy.cms.co(\"/labels/connectionstates/noDatabaseOrSchema\")%>");
			    		 		break;
			    		 	case CONNECTED_WRONG_OLDER_VERSION:
			    		 	case CONNECTED_WRONG_NEWER_VERSION:
			    		 		refreshButton.setIconUri("<%=ivy.cms.cr(\"/Icons/connectionstates/fail\")%>");
			    		 		stateTextArea.setText("<%=ivy.cms.co(\"/labels/connectionstates/wrongVersion\")%>");
			    		 		getPanelAPI().callMethod("setSystemDatabaseVersion", new Object[]{ new Integer(tester.getSystemDatabaseVersion()) });
			    		 		break;
			    		 	case CONNECTING:
			    		 		refreshButton.setIconUri("<%=ivy.cms.cr(\"/Icons/connectionstates/connecting\")%>");
			    		 		stateTextArea.setText("<%=ivy.cms.co(\"/labels/connectionstates/connecting\")%>");
			    		 		break;
			    		 	case CONNECTION_FAILED:
			    		 		refreshButton.setIconUri("<%=ivy.cms.cr(\"/Icons/connectionstates/fail\")%>");
			    		 		stateTextArea.setText("<%=ivy.cms.co(\"/labels/connectionstates/fail\")%>\n"+getErrorMessage(tester.getConnectionError()));
			    		 		break;		    		 		
			    		 }
			    		 stateTextArea.setCaretPosition(0);
			    		 for (RButton button : buttonsToEnableIfWrongDbVersion)
			    		 {
			    			 boolean enablement = (tester.getConnectionState() == ConnectionState.CONNECTED_WRONG_OLDER_VERSION);
			    			 button.setEnabled(enablement);			    			 
			    		 }
			    		 for (RButton button : buttonsToEnableIfConnectionEstablished)
			    		 {
			    			 boolean enablement = (tester.getConnectionState()==ConnectionState.CONNECTED ||
			    			 	tester.getConnectionState()==ConnectionState.CONNECTED_WRONG_OLDER_VERSION ||
			    			 	tester.getConnectionState()==ConnectionState.CONNECTED_WRONG_NEWER_VERSION ||
			    			 	tester.getConnectionState()==ConnectionState.CONNECTED_NO_TABLES);
			    			 button.setEnabled(enablement);
			    		 }
			    		 
			    	 }
			     }
		    	 catch(Throwable th)
		    	 {
		    		 th.printStackTrace();
		    	 }
			}});
	}

protected String getErrorMessage(Throwable connectionError) 
{
	StringBuilder builder = new StringBuilder(1000);
	if (connectionError.getMessage() != null)
	{
		builder.append(connectionError.getMessage());
		builder.append("\n");
	}
	builder.append(ExceptionUtils.getStackTrace(connectionError));
	return builder.toString();
}

/**
 * This method initializes stateTextArea
 * 
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea
 */
private RTextArea getStateTextArea() {
	if (stateTextArea == null) {
		stateTextArea = new RTextArea();
		stateTextArea.setText("RTextArea");
		stateTextArea.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		stateTextArea.setEditable(false);
		stateTextArea.setDisabledTextColor(Color.lightGray);
		stateTextArea.setRows(5);
		stateTextArea.setName("stateTextArea");
	}
	return stateTextArea;
}

/**
 * This method initializes stateScrollPane
 * 
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane
 */
private RScrollPane getStateScrollPane() {
	if (stateScrollPane == null) {
		stateScrollPane = new RScrollPane();
		stateScrollPane.setName("stateScrollPane");
		stateScrollPane.setViewPortView(getStateTextArea());
	}
	return stateScrollPane;
}

public void addButtonToEnableIfWrongDbVersionInternal(RButton button)
{
	buttonsToEnableIfWrongDbVersion.add(button);
}

public void addButtonToEnableIfConnectionEstablishedInternal(RButton button)
{
	buttonsToEnableIfConnectionEstablished.add(button);
}

	public void setServerConfigurationInternal(Configuration configuration)
	{
		tester = SystemDatabase.getSystemDatabase().getConnectionTester();
		timer.start();
	}
	
	public void configurationChangedInternal()
	{
		if (tester != null)
		{
			tester.configurationChanged();
		}
	}
	
	public void reset()
	{
		if (tester != null)
		{
			tester.reset();
		}
	}

	/**
	 * This method initializes refreshButton	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
	 */
	private RButton getRefreshButton() {
		if (refreshButton == null) {
			refreshButton = new RButton();
			refreshButton.setIconUri("<%=ivy.cms.cr(\"/Icons/connectionstates/unknown\")%>");
			refreshButton.setToolTipText("Retry to connect to database");
			refreshButton.setStyleProperties("{/anchor \"NORTH\"/insetsTop \"0\"/insetsRight \"5\"/insetsLeft \"0\"}");
			refreshButton.setName("refreshButton");
		}
		return refreshButton;
	}

	/**
	 * This method initializes connectionStateLabel	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
	 */
	private RLabel getConnectionStateLabel() {
		if (connectionStateLabel == null) {
			connectionStateLabel = new RLabel();
			connectionStateLabel.setText("connectionStateLabel");
			connectionStateLabel.setStyleProperties("{/fill \"HORIZONTAL\"}");
			connectionStateLabel.setName("connectionStateLabel");
		}
		return connectionStateLabel;
	}
}  // @jve:decl-index=0:visual-constraint="10,10"
