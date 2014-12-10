package ch.ivyteam.ivy.demo.clientinvoking;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import org.apache.commons.io.IOUtils;

import ch.ivyteam.ivy.demo.clientinvoking.ClientInvoking.ClientInvokingPanel;
import ch.ivyteam.ivy.environment.Ivy;

import com.ulcjava.base.application.ClientContext;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.util.IFileLoadHandler;
import com.ulcjava.base.application.util.IFileStoreHandler;
import com.ulcjava.base.shared.FileChooserConfig;

/**
 * This class demonstrates how to read/write files on the local file system
 * Using RIA technology as in ivy RichDialogs has one drawback, access 
 * to the local machine is only given in strong boundaries, so one cannot access
 * the local file system or call local applications.
 * 
 * Here we show how to use the ULC mechanisms for reading and writing files on
 * the local machine. 
 * 
 * @author mda
 * @see  com.ulcjava.base.application.ClientContext#loadFile(IFileLoadHandler, FileChooserConfig, ULCComponent)
 * @see  com.ulcjava.base.application.ClientContext#storeFile(IFileStoreHandler, FileChooserConfig, ULCComponent)
 *
 */
public class FileHandling {	
	private static FileOpsResult result = new FileOpsResult();
	
	/**
	 * Reads a local file, transfers the content into a string on the ULC server
	 * and calls a method on the panel to show the value back again on the client.
	 * 
	 * As the reading/uploading part performed by ULC method calls is done asynchronously, the
	 * UI update to the RichDialog is made by invoking a callback method on the given RichDialog,
	 * which then renders responsible to update the textarea and label.
	 * 
	 * @param ulcPanel the panel on which the callback method (updateContent(FileOpsResult)) is defined 
	 */
	public static void readFile(final ClientInvokingPanel ulcPanel) 
	{					
		// prepare filechooser dialog
		FileChooserConfig fcConfig = new FileChooserConfig();
		fcConfig.setDialogTitle("Choose a file");
		
		// use ULC reading file method
		ClientContext.loadFile(new IFileLoadHandler()
		{
			public void onFailure(int reason, String description) {
				// set result object for callback
				String msg = "there was an error reading the file:\n";
				msg += description;
				result.setMessage(msg);
				Ivy.log().warn(msg);
				// perform callback
				try {
					ulcPanel.getPanelAPI().callMethod("updateContent", new Object[] {result});
				} catch (Exception e) {
					// no ops
					Ivy.log().error("Exception during callback to updateContent()", e);
				}
			}

			public void onSuccess(InputStream[] ins, String[] filePaths, String[] fileNames) {
				Ivy.log().info("Upload was success");
				if (ins.length == 0)
				{			
					// set result object for callback
					result.setFileContent("");
					result.setMessage("No file selected");
				}
				// loops over all files
				for (int i = 0; i < ins.length; i++)
				{
					try {
						// get the file line by line as a list of strings 
						List<?> lines = IOUtils.readLines(ins[i]);
						// load the list in a string
						String content = "";
						for (int j = 0; j < lines.size(); j++)
						{							
							content += (String) lines.get(j); 
						}
						// set result object for callback
						result.setFileContent(content);
						result.setMessage(filePaths[i] + fileNames[i] + " read succesfully");						
						Ivy.log().info("File content read successfully");
					} catch (IOException e) {
						// set result object for callback with error message
						String msg = "there was an error reading the file:\n";
						msg += e.getMessage();
						result.setFileContent("");
						result.setMessage(msg);
						Ivy.log().error("Exception when reading file content",e);
					}
				}
				// make callback
				try {
					ulcPanel.getPanelAPI().callMethod("updateContent", new Object[] {result});
				} catch (Exception e) {
					// no ops
					Ivy.log().error("Exception during callback to updateContent",e);
				}
			}				
		}, fcConfig, (ULCComponent) ulcPanel);			
	}
	
	/**
	 * Writes a file on the local file system
	 * 
	 * As the writing/downloading part performed by ULC method calls is done asynchronously, the
	 * UI update to the RichDialog is made by invoking a callback method on the given RichDialog,
	 * which then renders responsible to update the textarea and label.
	 * 
	 * @param fileContent the content of the file to write
	 * @param ulcPanel the panel on which the callback method (updateContent(FileOpsResult)) is defined 
	 */
	public static void writeFile(final String fileContent, final ClientInvokingPanel ulcPanel)
	{	
		// prepares file chooser dialog
		FileChooserConfig fcConfig = new FileChooserConfig();
		fcConfig.setDialogTitle("Choose a file");
		try
		{
			// the ULC method call
			ClientContext.storeFile(new IFileStoreHandler() {

				public void onFailure(int reason, String description) {
					// creates callback result object
					String msg = "Failure writing the file:\n";
					msg += description;
					result.setMessage(msg);
					result.setFileContent("");
					// performs callback
					try {
						ulcPanel.getPanelAPI().callMethod("updateContent", new Object[] {result});
					} catch (Exception e) {
						// no ops
					}
				}

				public void onSuccess(String filePath, String fileName) {
					// creates callback result object
					result.setMessage("Success writing the file to path " + filePath + " and name " + fileName);
					result.setFileContent("");
					// performs callback
					try {
						ulcPanel.getPanelAPI().callMethod("updateContent", new Object[] {result});
					} catch (Exception e) {
						// no ops
					}
				}

				public void prepareFile(OutputStream out) throws Exception {
					// writes content to file
					out.write(fileContent.getBytes());										
				}
				
			}, fcConfig, ulcPanel);
		}
		catch (Exception e)
		{
			String msg = "Error during file write:\n";
			msg += e.getMessage();
			result.setMessage(msg);
			result.setFileContent("");
		}		
	}
}

