/**
 * (c)2006-2007 by Soreco AG, CH-8603 Schwerzenbach. http://www.soreco.ch
 * All rights reserved.
 * 
 * This software is the confidential and proprietary information of 
 * Soreco AG. You shall not disclose such confidential information and 
 * shall use it only in accordance with the terms of the license 
 * agreement you entered into with Soreco.
 * 
 */

package ch.ivyteam.ivy.addons.filemanager;

import static java.lang.Math.floor;
import static java.lang.Math.round;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import ch.ivyteam.ivy.addons.docfactory.FileOperationMessage;
import ch.ivyteam.ivy.addons.util.RDCallbackMethodHandler;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;

import com.ulcjava.base.application.ClientContext;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCPollingTimer;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.util.IFileChooseHandler;
import com.ulcjava.base.application.util.IFileStoreHandler;
import com.ulcjava.base.shared.FileChooserConfig;


/**
 * @author ec<br>
 * FileDownloadHandler class<br>
 * A FileDownloadHandler Object manages the download process of a file from the Server to the client.<br>
 * To be usable with all its features, it has to be instanciated with a reference to its parent ULComponent implementing IRichDialogPanel.<br>
 * With such a reference, the FileDownloadHandler can communicate directly with its parent component through callback methods. <br>
 * The name of the callback methods has to be indicated in the constructor or with their setter methods (see further). <br>
 * (In the case of callback reference, its parent must be a RichDialogGridBagPanel).<br><br>
 * 
 * It relies on the ch.xpertline.ria.util.file.FileOperationMessage dataclass for returning the result of most Upload process actions.<br><br>
 * 
 * To be able to download a File from the server, you have first to select a File on the server FileSystem.<br>
 * The updownloadPane Rich Dialog provides a table where the user can choose this File. <br><br>
 * 
 * The user will be asked to choose a place on his client File system where to save the downloaded File. This is performed with a FileChooser.<br><br>
 * 
 * The source path on the Server is determined by an intern private String variable. <br>
 * The server path variable is given at the instantiation within the constructor, or can be later changed with the setServerPath method.
 * For security purposes, if the server path is set to null or points to the root of the server, it takes automatically a default value (�uploadedFiles�).
 * 
 */
public class FileDownloadHandler<T extends ULCComponent & IRichDialogPanel> {
	private String serverPath;
	private T ulcPane = null;
	private String errorMethodeName, downloadSuccessMethodeName, progressMethodName;
	private FileOperationMessage fileOperationMessage;
	final ULCPollingTimer timer =new ULCPollingTimer(100,null);
	
	public FileDownloadHandler(){
		this(null, "", "", "","");
	}
	
	/**
	 * @author ec new FileDownloadHandler 
	 * @param RichDialogGridBagPanel ulcPane<br>
	 * This ULCPane is important if you want that this Object can callback some specified methods of the Panel. 
	 * @param serverpath: the String representation of the serverpath entrypoint for the application
	 * 
	 */
	public FileDownloadHandler(final T ulcPane,
			String serverPath) {
		this(ulcPane,"", "","", serverPath);
		
	}
	
	/**
	 * @author ec new FileDownloadHandler 
	 * @param T ulcPane<br>
	 * This ULCPane is important if you want that this Object can callback some specified methods of the Panel.<br>
	 * It has to be an ULComponent implementing IRichDialogPanel. 
	 * @param String errorMethode
	 * The name of the methode that is used by the ulcPane to manage the download errors messages.
	 * Can be an empty String if no such method exits.
	 * @param String successMethode
	 * The name of the methode that is used by the ulcPane to manage the download success messages
	 * Can be an empty String if no such method exits.
	 * @param String progressMethode
	 * The name of the methode that is used by the ulcPane to show the progress of long tasks
	 * Can be an empty String if no such method exits.
	 * @param serverpath: the String representation of the serverpath entrypoint for the application. 
	 */
	public FileDownloadHandler(final T ulcPane, String errorMethode, String successMethode, 
			String progressMethod, String path) {
		if(ulcPane instanceof ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel)
        	this.ulcPane = ulcPane;
        else this.ulcPane=null;
		this.errorMethodeName=errorMethode.trim();
		this.downloadSuccessMethodeName= successMethode.trim();
		this.progressMethodName= progressMethod.trim();
		if(path==null || path.trim().equals("") || path.trim().equals("/")|| path.trim().equals("\\"))
            serverPath = "uploadedFiles";
        else
            serverPath = path;
        formatServerPath();
		this.fileOperationMessage = new FileOperationMessage();
		timer.setRepeats(false);
	}
	
	/**
	 * download a File directly to the client. The parameter is just the String name of the choosen File to download.<br>
	 * If the FileDownloadHandler was instanciated with a parent RD reference and callbackmethods names,<br>
	 * it will be able to communicate with its parent RD<br>
	 * No progress is shown for one File download.<br>
	 * @param final String choosedFileName : the choosen filename to download<br>
	 * This File has to be in the actual serverPath.<br>
	 * 
	 * 
	 */
	public FileOperationMessage download(final String choosedFileName) {
		fileOperationMessage.setType(FileOperationMessage.INFORMATION_MESSAGE);
		fileOperationMessage.setMessage("");
		fileOperationMessage.emptyFileList();
		
		final FileChooserConfig fcConfig = new FileChooserConfig();
		fcConfig.setDialogTitle("Choose a place to save the file on your computer");
		
		fcConfig.setMultiSelectionEnabled(false); // We accept just one file at time
		fcConfig.setApproveButtonText("Choose");

		fcConfig.setSelectedFile(choosedFileName);
		try {
			ClientContext.storeFile(new IFileStoreHandler() {
				public void onFailure(int reason, String description) {
					String msg = "";
					switch (reason) {
					case CANCELLED:
						msg = "The Download has failed. CAUSE: Action canceled.";
						break;
					case FAILED:
						msg = "The Download has failed. CAUSE: unknown";
						break;
					default:
						msg = "The Download has failed. CAUSE: unknown.";
						break;
					}
					fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
            		fileOperationMessage.setMessage(msg);
            		fileOperationMessage.emptyFileList();
            		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
				}

				public void prepareFile(OutputStream data) {
					try {
						formatServerPath();
						File serverDir = new File(serverPath);
						if((serverDir.exists() && !serverDir.isDirectory()) || !serverDir.exists()){
							fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
		            		fileOperationMessage.setMessage("The directory supposed to contain the File to download doesn't exit. "+serverPath);
		            		fileOperationMessage.emptyFileList();
		            		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
						}
						else {
							File f = new File(serverPath+choosedFileName);
							if(!f.exists()){
								fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			            		fileOperationMessage.setMessage("The file you try to download doesn't exit.");
			            		fileOperationMessage.emptyFileList();
			            		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
							}else{
								FileInputStream fis = new FileInputStream(f);
								byte b[] = new byte[1024]; 
			            		int c=0;
			            		while((c= fis.read(b)) != -1){
			            			data.write(b,0,c);
			            		}
			            		fis.close();
			            		
								fileOperationMessage.setType(FileOperationMessage.SUCCESS_MESSAGE);
			            		fileOperationMessage.addFile(f);
							}
						}
					} catch (IOException ioe) {
						fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
	            		fileOperationMessage.setMessage(ioe.getMessage());
	            		fileOperationMessage.emptyFileList();
	            		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
					}
				}

				public void onSuccess(String filePath, String fileName) {
					RDCallbackMethodHandler.callRDMethod(ulcPane, downloadSuccessMethodeName, new Object[] { fileOperationMessage });
				}
			}, fcConfig, ulcPane);
		} catch (Exception e) {
			fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
    		fileOperationMessage.setMessage(e.getMessage());
    		fileOperationMessage.emptyFileList();
    		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
		}
		return fileOperationMessage;
	}
	
	/**
	 * download a File directly to the client
	 * If the FileDownloadHandler was instanciated with a parent RD reference and callbackmethods names,<br>
	 * it will be able to communicate with its parent RD<br>
	 * No progress is shown for one File download.<br>
	 * @param final File file : the choosed File to download
	 * 
	 */
	public FileOperationMessage download(final File file) {
		fileOperationMessage.setType(FileOperationMessage.INFORMATION_MESSAGE);
		fileOperationMessage.setMessage("");
		fileOperationMessage.emptyFileList();
		
		final FileChooserConfig fcConfig = new FileChooserConfig();
		fcConfig.setDialogTitle("Choose a place to save the file on your computer");
		
		fcConfig.setMultiSelectionEnabled(false); // We accept just one file at time
		fcConfig.setApproveButtonText("Choose");

		fcConfig.setSelectedFile(file.getName());
		try {
			ClientContext.storeFile(new IFileStoreHandler() {
				public void onFailure(int reason, String description) {
					String msg = "";
					switch (reason) {
					case CANCELLED:
						msg = "The Download has failed. CAUSE: Action canceled.";
						break;
					case FAILED:
						msg = "The Download has failed. CAUSE: unknown";
						break;
					default:
						msg = "The Download has failed. CAUSE: unknown.";
						break;
					}
					fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
            		fileOperationMessage.setMessage(msg);
            		fileOperationMessage.emptyFileList();
            		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
				}

				public void prepareFile(OutputStream data) {
					try {
						formatServerPath();
						File serverDir = new File(serverPath);
						if((serverDir.exists() && !serverDir.isDirectory()) || !serverDir.exists()){
							fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
		            		fileOperationMessage.setMessage("The directory supposed to contain the File to download doesn't exit. "+serverPath);
		            		fileOperationMessage.emptyFileList();
		            		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
						}
						else {
							if(!file.exists()){
								fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			            		fileOperationMessage.setMessage("The file you try to download doesn't exit.");
			            		fileOperationMessage.emptyFileList();
			            		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
							}else{
								FileInputStream fis = new FileInputStream(file);
								byte b[] = new byte[1024]; 
			            		int c=0;
			            		while((c= fis.read(b)) != -1){
			            			data.write(b,0,c);
			            		}
			            		fis.close();
			            		
								fileOperationMessage.setType(FileOperationMessage.SUCCESS_MESSAGE);
			            		fileOperationMessage.addFile(file);
							}
						}
					} catch (IOException ioe) {
						fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
	            		fileOperationMessage.setMessage(ioe.getMessage());
	            		fileOperationMessage.emptyFileList();
	            		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
					}
				}

				public void onSuccess(String filePath, String fileName) {
					RDCallbackMethodHandler.callRDMethod(ulcPane, downloadSuccessMethodeName, new Object[] { fileOperationMessage });
				}
			}, fcConfig, ulcPane);
		} catch (Exception e) {
			fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
    		fileOperationMessage.setMessage(e.getMessage());
    		fileOperationMessage.emptyFileList();
    		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
		}
		return fileOperationMessage;
	}
	
	/**
	 * download a File directly to the client
	 * If the FileDownloadHandler was instanciated with a parent RD reference and callbackmethods names,<br>
	 * it will be able to communicate with its parent RD<br>
	 * No progress is shown for one File download.<br>
	 * @param final String choosedFileName : the choosed filename to download
	 * @param final String serverFilePath: the serverFilePath where is the file to download 
	 */
	public FileOperationMessage download(final String choosedFileName,final String serverFilePath) {
		
		fileOperationMessage.setType(FileOperationMessage.INFORMATION_MESSAGE);
		fileOperationMessage.setMessage("");
		fileOperationMessage.emptyFileList();
		
		FileChooserConfig fcConfig = new FileChooserConfig();
		fcConfig.setDialogTitle("Choose a place to save the file on your computer");
		
		fcConfig.setMultiSelectionEnabled(false); // We accept just one file at time
		fcConfig.setApproveButtonText("Choose");

		fcConfig.setSelectedFile(choosedFileName);
		try {
			ClientContext.storeFile(new IFileStoreHandler() {
				
				public void onFailure(int reason, String description) {
					String msg = "";
					switch (reason) {
					case CANCELLED:
						msg = "The Download has failed. CAUSE: Action canceled.";
						break;
					case FAILED:
						msg = "The Download has failed. CAUSE: unknown.";
						break;
					default:
						msg = "The Download has failed. CAUSE: unknown.";
						break;
					}
					fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
            		fileOperationMessage.setMessage(msg);
            		fileOperationMessage.emptyFileList();
            		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
				}

				public void prepareFile(OutputStream data) {
					try {
						String pathOnServer = formatServerPath(serverFilePath);
						
						File f = new File(pathOnServer);
						if(!f.exists()){
							fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
		            		fileOperationMessage.setMessage("The file you try to download doesn't exit.");
		            		fileOperationMessage.emptyFileList();
		            		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
						}else{
							FileInputStream fis = new FileInputStream(f);
							byte b[] = new byte[1024]; 
		            		int c=0;
		            		
		            		while((c= fis.read(b)) != -1){
		            			data.write(b,0,c);
		            		}
		            		fis.close();
							fileOperationMessage.setType(FileOperationMessage.SUCCESS_MESSAGE);
		            		fileOperationMessage.setMessage("The File was successfully downloaded.");
		            		fileOperationMessage.addFile(f);
						}
					} catch (IOException ioe) {
						fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
	            		fileOperationMessage.setMessage(ioe.getMessage());
	            		fileOperationMessage.emptyFileList();
	            		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
					}
				}

				public void onSuccess(String filePath, String fileName) {
					RDCallbackMethodHandler.callRDMethod(ulcPane, downloadSuccessMethodeName, new Object[] { fileOperationMessage });
				}
			}, fcConfig, ulcPane);
		} catch (Exception e) {
			fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
    		fileOperationMessage.setMessage(e.getMessage());
    		fileOperationMessage.emptyFileList();
    		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
		}
		return fileOperationMessage;
	}
	
	/**
	 * Methods to be able to download several Files <br>
	 * The download progress will be shown if a progressMethod was provided<br>
	 * A timer is then used to stop the download process 10 times to be able to update the RD parent.<br>
	 * @param files: a List<File> Object. The list of the files to be downloaded.
	 */
	public void downloadFiles(final List<File> files){
		ClientContext.setFileTransferMode(ClientContext.SYNCHRONOUS_MODE);
    	final FileChooserConfig fcConfig = new FileChooserConfig();
    	
		fcConfig.setDialogTitle("Choose a place to save the files on your computer");
		fcConfig.setFileSelectionMode(FileChooserConfig.DIRECTORIES_ONLY);
		fcConfig.setMultiSelectionEnabled(false); // We accept just one directory at time
		fcConfig.setApproveButtonText("Choose");
		ClientContext.chooseFile(new IFileChooseHandler(){

			public void onFailure(int reason, String description) {
				String msg = "";
				switch (reason) {
				case CANCELLED:
					msg = "The choice of a directory has failed. CAUSE: Action canceled.";
					break;
				case FAILED:
					msg = "The choice of a directory has failed. CAUSE: unknown.";
					break;
				default:
					msg = "The choice of a directory has failed. CAUSE: unknown.";
					break;
				}
				fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
        		fileOperationMessage.setMessage(msg);
        		fileOperationMessage.emptyFileList();
        		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
			}

			public void onSuccess(String[] arg0, String[] arg1) {
				
				final String path= arg0[0];
				final StringBuilder sb = new StringBuilder();
				
				cleanTimer();
				timer.addActionListener(new IActionListener() {
					private static final long serialVersionUID = 0L;
					boolean done=false;
					int nb= files.size();
					int step=round(nb/10); 
					int percentStep=10;
					int percentDone=0;
					int i=0, a=0;
					public void actionPerformed(ActionEvent arg0) {
						if(step<1){
							step=1;
							percentStep=(int) floor(100/nb);
						}
						while(!done && a<step){
							if(i<nb){
								if(!FileHandler.download(files.get(i), path))
									sb.append(files.get(i).getName()+"; ");
								a++;
								i++;
							}else
								done=true;
						}
						if(!done){
							a=0;
							if(percentDone<100)
								percentDone=percentDone+percentStep;
							RDCallbackMethodHandler.callRDMethod(ulcPane,progressMethodName, new Object[] { percentDone });
	                    		timer.restart(); // restart the timer because the file is not completely uploaded
						}else{
							if(sb.length()>0){
								RDCallbackMethodHandler.callRDMethod(ulcPane, progressMethodName, new Object[] { 100 });
								fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
		                        fileOperationMessage.setMessage("The following Files could'nt be downloaded: "+sb.toString());
		                        fileOperationMessage.emptyFileList();
		                        RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
							}else{
								fileOperationMessage.setType(FileOperationMessage.SUCCESS_MESSAGE);
		                        fileOperationMessage.setMessage("The Files were successfully downloaded.");
		                        fileOperationMessage.emptyFileList();
		                        Ivy.log().info("Download successful");
		                        RDCallbackMethodHandler.callRDMethod(ulcPane, downloadSuccessMethodeName, new Object[] { fileOperationMessage });
							}
						}//end if else
					}
				});
				timer.start();
			}
			
		}, fcConfig, ulcPane);
	}
	
	/**
	 * This methods allows the user to choose a directory on his FileSystem<br>
	 * The returned path can be used for further download place.<br>
	 * If the process is successfull, a success method will be called back. 
	 * @return fileOperationMessage. If successfull, it contains the path choosed as String in its Text filed,
	 * the File directory in the File field.<br>
	 * If the Type is FileOperationMessage.ERROR_MESSAGE, the File is null and the text contains an error message.
	 */
	public FileOperationMessage selectDirOnClient(){
		this.fileOperationMessage=new FileOperationMessage();
		this.fileOperationMessage.setType(FileOperationMessage.SUCCESS_MESSAGE);
    	final StringBuilder clientPath = new StringBuilder();
    	ClientContext.setFileTransferMode(ClientContext.SYNCHRONOUS_MODE);
    	final FileChooserConfig fcConfig = new FileChooserConfig();
    	
		fcConfig.setDialogTitle("Choose a directory on your computer");
		fcConfig.setFileSelectionMode(FileChooserConfig.DIRECTORIES_ONLY);
		fcConfig.setMultiSelectionEnabled(false); // We accept just one directory at time
		fcConfig.setApproveButtonText("Choose directory");
		ClientContext.chooseFile(new IFileChooseHandler(){

			public void onFailure(int reason, String description) {
				String msg = "";
				switch (reason) {
				case CANCELLED:
					msg = "The choice of a directory has failed. CAUSE: Action canceled.";
					break;
				case FAILED:
					msg = "The choice of a directory has failed. CAUSE: unknown.";
					break;
				default:
					msg = "The choice of a directory has failed. CAUSE: unknown.";
					break;
				}
				fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
        		fileOperationMessage.setMessage(msg);
        		fileOperationMessage.emptyFileList();
        		RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { fileOperationMessage });
			}

			public void onSuccess(String[] arg0, String[] arg1) {
				clientPath.append(arg0[0]);
				fileOperationMessage.setType(FileOperationMessage.SUCCESS_MESSAGE);
				fileOperationMessage.addFile(new File(arg0[0]));
				fileOperationMessage.setMessage(arg0[0]);
				RDCallbackMethodHandler.callRDMethod(ulcPane, downloadSuccessMethodeName, new Object[] { fileOperationMessage });
			}
			
		}, fcConfig, ulcPane);
		return fileOperationMessage;
    }

	/**
	 * Format the serverpath attribute of this object, so that it will contains the right File.separator
	 *
	 */
	private void formatServerPath(){
		if(serverPath!=null && !serverPath.equals("")){
			serverPath= serverPath.replace("\\",java.io.File.separator);
			serverPath= serverPath.replace("/",java.io.File.separator);
			
			if(serverPath.lastIndexOf(java.io.File.separator)!=serverPath.length()-1)
				serverPath = serverPath + java.io.File.separator;
		}
	}
	
	/**
	 * format a path parameter, so that it will contains the right File.separator
	 * @param path: the string to format
	 * @return String: returnedPath
	 */
	private String formatServerPath(String path){
		String returnedPath = path;
		if(path!=null && !path.equals("")){
			returnedPath= returnedPath.replace("\\",java.io.File.separator);
			returnedPath= returnedPath.replace("/",java.io.File.separator);
		}
		return returnedPath;
	}
	
	/**
	 * Set the serverpath entrypoint of this Object
	 * @param serverPath
	 */
	public void setServerPath(String serverPath){ this.serverPath= serverPath;}

	/**
     * Set the calling ULComponent implementing IRichDialogPanel 
     * @param ulcPane : ULComponent implementing IRichDialogPanel 
     */
    public void setUlcPane(T ulcPane)
    {
    	// Check if the given ulcPane implements ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel
        if(ulcPane instanceof ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel)
        	this.ulcPane = ulcPane;
        else this.ulcPane=null;
    }
    
    /**
     * Set the callback method name for the error handling.<br>
     * The callback methods are a way to interact with the process of the referenced Panel
     * that implements the following interface ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel
     * @param String errorMethodeName
     */
    public void setErrorMethodName(String errorMethodeName)
    {
        this.errorMethodeName = errorMethodeName.trim();
    }

    /**
     * Set the callback method name to get the prepared File for a future upload.<br>
     * The callback methods are a way to interact with the process of the referenced Panel
     * that implements the following interface ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel
     * @param String uploadSuccessMethodName
     */
    public void setDownloadSuccessMethodName(String downloadSuccessMethodeName)
    {
        this.downloadSuccessMethodeName = downloadSuccessMethodeName.trim();
    }
    
    /**
     * Set the callback method name to show the progress of the download<br>
     * The callback methods are a way to interact with the process of the referenced Panel
     * that implements the following interface ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel
     * @param String name: the name of the progress method
     */
    public void setProgressMethodName(String name)
    {
        this.progressMethodName = name.trim();
    }
    
    private void cleanTimer(){
		IActionListener [] ia = timer.getActionListeners();
		for(IActionListener i: ia){
			timer.removeActionListener(i);
		}
	}
    
}
