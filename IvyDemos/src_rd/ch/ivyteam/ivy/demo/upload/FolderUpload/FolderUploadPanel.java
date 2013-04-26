package ch.ivyteam.ivy.demo.upload.FolderUpload;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

import com.ulcjava.base.application.ClientContext;
import com.ulcjava.base.application.ULCPollingTimer;
import com.ulcjava.base.application.ULCTextField;
import com.ulcjava.base.application.ULCLabel;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.util.IFileChooseHandler;
import com.ulcjava.base.application.util.IFileLoadHandler;
import com.ulcjava.base.shared.FileChooserConfig;
import com.ulcjava.base.shared.FileChooserConfig.FileFilterConfig;

import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextArea;

/**
 * <p>FolderUploadPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class FolderUploadPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel openLabel = null;
private RButton loadButton = null;
private RScrollPane scroller = null;
private RLabel statusLabel = null;
private RButton cancelBttn = null;
private String choosedClientFilePath = "";  //  @jve:decl-index=0:
private ULCPollingTimer timer;  //  @jve:decl-index=0:
private boolean running = false;
private IActionListener timerListener;
private RTextArea statusTextArea = null;
/**
   * Create a new instance of FolderUploadPanel
   */
  public FolderUploadPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes FolderUploadPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(311,211));
        this.add(getOpenLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLoadButton(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getScroller(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getStatusLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getCancelBttn(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes openLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getOpenLabel() {
	if (openLabel == null) {
		openLabel = new RLabel();
		openLabel.setName("openLabel");
		openLabel.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/fill \"HORIZONTAL\"/insetsLeft \"5\"/weightX \"1\"}");
		openLabel.setText("Press button to upload a folder.");
	}
	return openLabel;
}

/**
 * This method initializes loadButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getLoadButton() {
	if (loadButton == null) {
		loadButton = new RButton();
		loadButton.setName("loadButton");
		loadButton.setIconUri("<%= ivy.cms.cr(\"/ch/ivyteam/ivy/demo/icons/normal/arrow_up\") %>");
		loadButton.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/fill \"HORIZONTAL\"/insetsRight \"5\"/insetsLeft \"5\"}");
		loadButton.setText("Upload");
	}
	return loadButton;
}

/**
 * This method initializes scroller	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScroller() {
	if (scroller == null) {
		scroller = new RScrollPane();
		scroller.setName("scroller");
		scroller.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		scroller.setViewPortView(getStatusTextArea());
	}
	return scroller;
}

/**
 * This method initializes statusLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getStatusLabel() {
	if (statusLabel == null) {
		statusLabel = new RLabel();
		statusLabel.setName("statusLabel");
		statusLabel.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/fill \"HORIZONTAL\"/insetsLeft \"5\"/weightX \"1\"}");
		statusLabel.setText("Nothing uploaded yet.");
	}
	return statusLabel;
}

public void startPollingTimer(String methodName) {
	running = true;
	if(methodName.equals("Compressing"))
	{
		createUlcPollingTimer("timerForCompressing");
	}
	
	if(methodName.equals("Uploading"))
	{
		createUlcPollingTimer("timerForUploading");
	} 
	
	if(methodName.equals("Decompressing"))
	{
		createUlcPollingTimer("timerForDecompressing");
	} 
	
	timer.addActionListener(timerListener);
	timer.start();
}

public void createUlcPollingTimer(final String methodName) {
	timer = new ULCPollingTimer(500, null);
	timer.setRepeats(false);
	timerListener = new IActionListener() {
	
	     /**
		 * 
		 */
		private static final long serialVersionUID = -4370382652507823364L;

		public void actionPerformed(ActionEvent event) {
			try
			{
				if (running)
				{
					getPanelAPI().callMethod(methodName, new Object[0]);
				}
			}
			catch(Exception ex)
			{
				Ivy.log().error("Cannot call timer method", ex);
			}		    	 
	     }};
}

/**
 * Stops the polling timer
 */
public void stopPollingTimer()
{
	running = false;
	timer.stop();
	timer.removeActionListener(timerListener);
}

/**
 * Restarts the polling timer
 */
public void restartPollingTimer()
{
	timer.restart();
}

/**
 * Lets the user select a file on the client, then uploads the selected file ocntent
 * to the file specified as a parameter. The latter is done in an ULC callback, if <code>storeInFile</code>
 * is <code>true</code> then the method "fileUploaded(boolean, File, String)" will be called, otherwise
 * the method "iconCreated(boolean, ULCIcon, String)" will be called.
 * @param storeInFile if the uploaded contents should be stored in a file or returned as an ULCIcon directly
 */
public void chooseClientFile() 
{					
	// prepare filechooser dialog
	FileChooserConfig fcConfig = new FileChooserConfig();
	fcConfig.setDialogType(FileChooserConfig.OPEN_DIALOG);
	fcConfig.setDialogTitle("Choose a file");
	fcConfig.setFileSelectionMode(FileChooserConfig.DIRECTORIES_ONLY);
	fcConfig.setMultiSelectionEnabled(false);
	FileFilterConfig filter = new FileChooserConfig.FileFilterConfig(new String[]{ "zip", "iar", "wav", "mp3", "mp4" }, "*.zip,*.iar,*.wav,*.mp3,*.mp4");
	fcConfig.addFileFilterConfig(filter);

	// use ULC reading file method
	ClientContext.chooseFile(new IFileChooseHandler() {
		
		@Override
		public void onSuccess(String[] filePaths, String[] fileNames) {
			String msg = "";
			if (filePaths.length >= 1) {
				choosedClientFilePath = filePaths[0];
				Ivy.log().info("Client File Path: " + choosedClientFilePath);
				try {
					getPanelAPI().callMethod("updateChoosedFilePath", new Object[] {choosedClientFilePath} );
					getPanelAPI().callMethod("uploadFolder", new Object[] {choosedClientFilePath});
					} catch (InvocationTargetException e) {
					e.printStackTrace();
				} catch (NoSuchMethodException e) {
					e.printStackTrace();
				}
			}				
		}

		@Override
		public void onFailure(int reason, String description) {
			String msg;
			if (reason == IFileLoadHandler.CANCELLED) {
				msg = "User cancelled operation";
			} else if (reason == IFileLoadHandler.FAILED) {
				msg = "File choose failed: " + description;
			} else {
				msg = "Unknown failure: " + description;
			}
			Ivy.log().info(msg);
		}
	}, fcConfig, this);
}



/**
 * This method initializes cancelBttn	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getCancelBttn() {
	if (cancelBttn == null) {
		cancelBttn = new RButton();
		cancelBttn.setEnabled(false);
		cancelBttn.setToolTipText("Click to cancel the uploading.");
		cancelBttn.setText("Cancel");
		cancelBttn.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/fill \"HORIZONTAL\"/insetsRight \"5\"/insetsLeft \"5\"}");
		cancelBttn.setName("cancelBttn");
	}
	return cancelBttn;
}

/**
 * This method initializes statusTextArea	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextArea	
 */
private RTextArea getStatusTextArea()
{
	if (statusTextArea == null)
	{
		statusTextArea = new RTextArea();
		statusTextArea.setText("");
		statusTextArea.setName("statusTextArea");
	}
	return statusTextArea;
}
}