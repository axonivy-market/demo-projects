package ch.ivyteam.ivy.demo.upload.ImageUpload;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.commons.io.IOUtils;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.scripting.objects.File;
import ch.ivyteam.util.GuidUtil;

import com.ulcjava.base.application.ClientContext;
import com.ulcjava.base.application.ULCLabel;
import com.ulcjava.base.application.ULCTextField;
import com.ulcjava.base.application.util.IFileLoadHandler;
import com.ulcjava.base.application.util.ULCIcon;
import com.ulcjava.base.shared.FileChooserConfig;
import com.ulcjava.base.shared.FileChooserConfig.FileFilterConfig;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;

/**
 * RichDialog panel implementation for UploadPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ImageUploadPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel openLabel = null;
private RButton loadButton = null;
private RScrollPane scroller = null;
private RLabel showLabel = null;
private RLabel statusLabel = null;
private RCheckBox storeFileCheckBox = null;
private RCheckBox useFilterCheckBox = null;
  
  /**
   * Create a new instance of UploadPanel
   */
  public ImageUploadPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes UploadPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(331,211));
        this.add(getOpenLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLoadButton(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getScroller(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getStatusLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getStoreFileCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getUseFilterCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,5,5), 0, 0));
  }

/**
 * This method initializes openLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getOpenLabel() {
	if (openLabel == null) {
		openLabel = new RLabel();
		openLabel.setText("Press button to upload an image.");
		openLabel.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/fill \"HORIZONTAL\"/insetsLeft \"5\"/weightX \"1\"}");
		openLabel.setName("openLabel");
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
		loadButton.setText("Upload");
		loadButton.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/fill \"HORIZONTAL\"/insetsRight \"5\"/insetsLeft \"5\"}");
		loadButton.setIconUri("<%= ivy.cms.cr(\"/Images/arrowUp\") %>");
		loadButton.setName("loadButton");
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
		scroller.setViewPortView(getShowLabel());
	}
	return scroller;
}

/**
 * This method initializes showLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getShowLabel() {
	if (showLabel == null) {
		showLabel = new RLabel();
		showLabel.setText("");
		showLabel.setHorizontalAlignment(ULCTextField.CENTER);
		showLabel.setHorizontalTextPosition(ULCLabel.CENTER);
		showLabel.setIconUri("<%= ivy.cms.cr(\"/Images/unknown\") %>");
		showLabel.setName("showLabel");
	}
	return showLabel;
}

/**
 * Lets the user select a file on the client, then uploads the selected file ocntent
 * to the file specified as a parameter. The latter is done in an ULC callback, if <code>storeInFile</code>
 * is <code>true</code> then the method "fileUploaded(boolean, File, String)" will be called, otherwise
 * the method "iconCreated(boolean, ULCIcon, String)" will be called.
 * @param storeInFile if the uploaded contents should be stored in a file or returned as an ULCIcon directly
 */
public void readImageFromClient(final boolean storeInFile, boolean useFilters) 
{					
	// prepare filechooser dialog
	FileChooserConfig fcConfig = new FileChooserConfig();
	fcConfig.setDialogType(FileChooserConfig.OPEN_DIALOG);
	fcConfig.setDialogTitle("Choose a file");
	fcConfig.setFileSelectionMode(FileChooserConfig.FILES_ONLY);
	fcConfig.setMultiSelectionEnabled(false);
	
	if (useFilters)
	{
		FileFilterConfig filter = new FileChooserConfig.FileFilterConfig(new String[]{ "jpg", "png", "gif" }, "*.jpg,*.png,*.gif");
		fcConfig.addFileFilterConfig(filter);
	}
	
	// use ULC reading file method
	ClientContext.loadFile(new IFileLoadHandler()
	{
		public void onFailure(int reason, String description) 
		{
			String msg;
			if (reason == IFileLoadHandler.CANCELLED)
			{
				msg = "User cancelled operation";
			}
			else if (reason == IFileLoadHandler.FAILED)
			{
				msg = "File upload failed: "+description;
			}
			else
			{
				msg = "Unknown failure: "+description;
			}
			
			// perform callback
			try 
			{
				if (storeInFile)
				{
					getPanelAPI().callMethod("fileUploaded", new Object[] {Boolean.FALSE, null, msg});
				}
				else
				{
					getPanelAPI().callMethod("iconCreated", new Object[] {Boolean.FALSE, null, msg});
				}
			} 
			catch (Exception e) 
			{
				Ivy.log().error("Error during callback after failed file upload", e);
			}
		}

		public void onSuccess(InputStream[] ins, String[] filePaths, String[] fileNames) 
		{
			String msg;
			boolean success = false;
			File file = null;
			ULCIcon icon = null;
			
			if (ins.length == 0)
			{			
				msg = "No file data available";
			}
			else
			{
				if (ins.length > 1)
				{
					Ivy.log().warn("Multiple files were uploaded, only first one will be stored");
				}
				
				OutputStream out = null;
				try 
				{
					if (storeInFile)
					{
						// write to file passed as argument
						file = new File(GuidUtil.generateID(), true);
						out = new FileOutputStream(file.getJavaFile());
						IOUtils.copy(ins[0], out);
						success = true;
						msg = "Temp file ("+file.getPath()+") stored successfully.";
					}
					else
					{
						out = new ByteArrayOutputStream();
						IOUtils.copy(ins[0], out);
						icon = new ULCIcon(((ByteArrayOutputStream) out).toByteArray());
						success = true;
						msg = "Icon created successfully.";
					}
				}
				catch (IOException e) 
				{
					Ivy.log().error("File upload failed", e);
					msg = "File upload failed: "+e.getMessage();
				}
				finally
				{
					IOUtils.closeQuietly(ins[0]);
					IOUtils.closeQuietly(out);
				}
			}
			
			// perform callback
			try 
			{
				if (storeInFile)
				{
					getPanelAPI().callMethod("fileUploaded", new Object[] { success, file, msg });
				}
				else
				{
					getPanelAPI().callMethod("iconCreated", new Object[] { success, icon, msg });
				}
			} 
			catch (Exception e) 
			{
				Ivy.log().error("Error during callback after successful file upload", e);
			}
		}				
	}, fcConfig, this);			
}

/**
 * This method initializes statusLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getStatusLabel() {
	if (statusLabel == null) {
		statusLabel = new RLabel();
		statusLabel.setText("Nothing uploaded yet.");
		statusLabel.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/fill \"HORIZONTAL\"/insetsLeft \"5\"/weightX \"1\"}");
		statusLabel.setName("statusLabel");
	}
	return statusLabel;
}

/**
 * This method initializes storeFileCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getStoreFileCheckBox() {
	if (storeFileCheckBox == null) {
		storeFileCheckBox = new RCheckBox();
		storeFileCheckBox.setText("Store in File");
		storeFileCheckBox.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"}");
		storeFileCheckBox.setToolTipText("If checked, then the uploaded image will be stored in a temporary file.<br>\nIf left unchecked, then the uploaded image will be turned directly into an icon.");
		storeFileCheckBox.setName("storeFileCheckBox");
	}
	return storeFileCheckBox;
}

/**
 * This method initializes useFilterCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getUseFilterCheckBox() {
	if (useFilterCheckBox == null) {
		useFilterCheckBox = new RCheckBox();
		useFilterCheckBox.setText("Use Filter");
		useFilterCheckBox.setName("useFilterCheckBox");
	}
	return useFilterCheckBox;
}

}  //  @jve:decl-index=0:visual-constraint="10,10"