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

import ch.ivyteam.ivy.addons.filemanager.DocumentOnServer;
import ch.ivyteam.ivy.addons.filemanager.ReturnedMessage;
import ch.ivyteam.ivy.addons.util.RDCallbackMethodHandler;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.scripting.objects.List;

import com.ulcjava.base.application.ClientContext;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCPollingTimer;
import com.ulcjava.base.shared.FileChooserConfig;

import java.io.*;
import java.util.ArrayList;

import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.util.IFileLoadHandler;

/**
 * 
 * @author Emmanuel Comba<br><br>
 * The public Class FileUploadHandler eases the java.io.File upload process from a client machine to the server. <br>
 * It gives also methods for general java.io.File management at the server side.<br>
 * To be usable with all its features, it has to be instanciated with a reference to its parent ULComponent implementing IRichDialogPanel.<br>
 * With such a reference, the FileUploadHandler can communicate directly with its parent component through callback methods.<br>
 * The name of the callback methods has to be indicated in the constructor or with their setter methods. <br>
 * (In the case of callback reference, its parent must be a ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel).<br><br>
 * 
 * It relies on the ch.ivyteam.ivy.addons.filemanager.ReturnedMessage dataclass for returning the result of most Upload process actions.<br><br>
 * 
 * An Upload process beginns with the choose of a java.io.File to Upload within a FileChooser Component.<br>
 * This Filechooser reflects the client side java.io.File system.<br>
 * 
 * The destination path on the Server is determined by an intern private String variable. The server path variable is given at the instantiation within the constructor, or can be later changed with the setServerPath method.
 * For security purposes, if the server path is set to null or points to the root of the server, it takes automatically a default value (“uploadedFiles”).
 * <br>
 */
public class FileUploadHandler<T extends ULCComponent & IRichDialogPanel>
{
    private java.io.File uploadedFile;
    private String serverPath;
    private String serverFilePath;
    private String errorMethodeName;
    private String uploadSuccessMethodName;
    private String askIfOverWriteFileMethodName;
    private String progressMethodName;
    private ReturnedMessage returnedMessage;
    
    private String MULTIFILE_UPLOAD_WINDOW_TITLE = Ivy.cms().co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/windowTitles/chooseSomeFileToUpload");
    private String SINGLEFILE_UPLOAD_WINDOW_TITLE = Ivy.cms().co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/windowTitles/chooseOneFileToUpload");
    private String UPLOAD_BUTTON = Ivy.cms().co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/buttonLabels/upload") ;
    private String ACTION_CANCELLED = Ivy.cms().co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/messages/information/actionCancelled");
    private String FILESIZE_TOO_BIG = Ivy.cms().co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/messages/error/fileTooBig");
    private String ERROR_UNKOWN= Ivy.cms().co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/messages/error/errorUnknown");
    private String UPLOAD_SUCCESSFUL= Ivy.cms().co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/messages/information/uploadSuccess");
    private String FILE_ALREADY_EXISTS= Ivy.cms().co("/ch/ivyteam/ivy/addons/filemanager/fileManagement/messages/information/fileAlreadyExists");
    
    
    
    private T ulcPane;
    ULCPollingTimer timer =null;
	
    /**
     * Constructor for FileUploadHandler<br>
     * A FileUploadHandler Object allows an ULCApplication to manage FileUploads from the client to the server<br>
     *
     */
    public FileUploadHandler()
    {
        this(null, "", "", "","", "");
    }
    /**
     * @param String filePath : this is the entry point into the server Filesystem
     */
    public FileUploadHandler(String filePath)
    {
        this(null, "", "", "","", filePath);
    }
   
    /**
     * @param T ulcPane: the ULComponent implementing IRichDialogPanel that instanciates this Object<br>
     * @param String errorMethode: the name of the method of the IRichDialogPanel Rich Dialog interface <br>
     * that manages error occured during the Upload process<br>
     * @param String successMethode: the name of the method of the IRichDialogPanel Rich Dialog interface <br>
     * that is called back if the Upload process succeed<br>
     * @param  String uploadSuccessMethodName: the name of the method of the IRichDialogPanel Rich Dialog interface<br>
     * that is called back to get the uploaded java.io.File<br>
     * @param String askForChangeMethod: the name of the method of the IRichDialogPanel Rich Dialog interface<br>
     * that is called back when a java.io.File to be uploaded already exits on the server<br>
     * @param String progressMethod: the name of the method of the IRichDialogPanel Rich Dialog interface<br>
     * that is called back to follow the progress of the java.io.File Upload and download.<br>
     * @param String filePath : this is the entry point into the server Filesystem<br>
     * <b>Important :</b>if the filepath is null or is an empty String, it is going to be set to "uploadedFiles".
     * 
     */
    public FileUploadHandler(T ulcPane, String errorMethode, String uploadSuccessMethode, String askForChangeMethod, String progressMethod, String filePath)
    {
    	//Check if the given ulcPane implements ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel
        if(ulcPane instanceof IRichDialogPanel)
        	this.ulcPane = ulcPane;
        else this.ulcPane=null;
        // setting the callback methods names
        errorMethodeName = errorMethode.trim();
        uploadSuccessMethodName =  uploadSuccessMethode.trim();
        askIfOverWriteFileMethodName = askForChangeMethod.trim();
        progressMethodName=progressMethod.trim();
        //Initilisation of the returnedMessage Object
        returnedMessage = new ReturnedMessage();
        returnedMessage.setFiles(List.create(java.io.File.class));
        //Checking the given server path
        if(filePath==null || filePath.trim().equals("") || filePath.trim().equals("/")|| filePath.trim().equals("\\"))
            serverPath = "uploadedFiles";
        else
            serverPath = filePath;
        formatServerPath();
        timer=new ULCPollingTimer(100,null);
        timer.setRepeats(false);
    }
    
	/**
	 * This method allows uploading one java.io.File from the client Filesystem to the server Filesystem.<br>
	 * The user is prompted to choose a java.io.File to upload by a FileChooser.<br>
	 * The upload process is interrupted 10 times with an ULCPollingTimer to be able to update the UI for progress (ProgressBar...)<br>
	 * <b>Important: </b>if the java.io.File already exists on the server, the Upload process will be aborded and a callback method will be called.<br>
	 * If the FileUploadHandler was instanciated with a reference to a IRichDialogPanel, this method will try to call the following<br>
	 * callback methods if they were also referenced:<br>
	 * <ul>
	 * <li>errorMethodeName, it will be called when an error occurs with an errorMessage as parameter,
	 * <li>askIfOverWriteFileMethodName, it will be called if the file to be uploaded already exists on the server. <br>
	 * A FILE Object reference to the choosen java.io.File on the client and <br>
	 * the String path of the java.io.File on the server will be send back to the IRichDialogPanel. <br>
	 * You can then let the user choose if the existing java.io.File has to be overwritten.<br>
	 * <li>progressMethod: the upload progress will be shown with the use of this method at RD parent side
	 * <li>a uploadSuccessMethodName, it will be called if the Upload succeeds, it sends the java.io.File object that was Uploaded.
	 * </ul>
	 * @return ReturnedMessage returnedMessage <br>
	 * This Object contains the type of message (FileHandler.ERROR_MESSAGE, FileHandler.Information_MESSAGE or FileHandler.SUCCESS_MESSAGE),<br>
	 * the message text as String and the java.io.File that was choosen for the Upload.<br>
	 * If the returnedMessage Type is ERROR, the java.io.File object may be null. So always check this java.io.File before use in your process.
	 */
    public ReturnedMessage upload()
    {
    	returnedMessage.setType(FileHandler.INFORMATION_MESSAGE);
        returnedMessage.setText("");
        returnedMessage.setFile(null);
        uploadedFile = null;
        
        FileChooserConfig fcConfig = new FileChooserConfig();
        fcConfig.setDialogTitle(SINGLEFILE_UPLOAD_WINDOW_TITLE);
        fcConfig.setFileSelectionMode(FileChooserConfig.FILES_ONLY);
        fcConfig.setApproveButtonText(UPLOAD_BUTTON);
        fcConfig.setMultiSelectionEnabled(false);
        ClientContext.setFileTransferMode(ClientContext.SYNCHRONOUS_MODE);
        ClientContext.loadFile(new IFileLoadHandler(){
        	public void onFailure(int reason, String description)
            {
            	onFailureCall(reason);
                
            }
        	
        	public void onSuccess(InputStream ins[], String filePaths[], String fileNames[]){
            	try{
            		final BufferedInputStream preparedFile = new BufferedInputStream(ins[0]);
            		serverFilePath = fileNames[0];
            		
            		formatServerPath();
            		serverFilePath = (new StringBuilder(String.valueOf(serverPath))).append(serverFilePath).toString();
            		final java.io.File serverFile = new java.io.File(serverFilePath);
            		if(serverFile.exists()){
            			Ivy.log().debug("File exists: "+serverFilePath.toString());
            			returnedMessage.setType(FileHandler.INFORMATION_MESSAGE);
                        returnedMessage.setText(FILE_ALREADY_EXISTS);
                        returnedMessage.setFile(serverFile);
                        RDCallbackMethodHandler.callRDMethod(ulcPane, askIfOverWriteFileMethodName, new Object[] { returnedMessage });
            		}// end if
            		else{
	            		uploadedFile = serverFile;
	            		final BufferedOutputStream server = new BufferedOutputStream(new FileOutputStream(serverFile));
	            		final java.io.File choosedFile= new java.io.File(filePaths[0]);
	            		final String fileName = fileNames[0];
	            		cleanTimer();
	            		timer.addActionListener(new IActionListener() {
							private static final long serialVersionUID = -3025252014358720080L;
		            		byte b[] = new byte[1024];
		            		int progressUnit = 10; // 10 Kb
		            		int totalKBUploaded =0 ;
		            		int intRead;
		            		boolean done=false;
							@SuppressWarnings("unchecked")
							public void actionPerformed(ActionEvent arg0) {
								int progressDone =0;
								try{
									while(!done && progressDone< progressUnit){	
										if((intRead= preparedFile.read(b)) != -1){
					            			server.write(b,0,intRead);
					            			progressDone++;
					            			totalKBUploaded++;
										}else{ 
											done=true;
											server.close();
										}
		     	            		}
									if(!done){
										progressDone=0;
									}
								}catch(IOException e){
									done=true;
									try {
										server.close();
									} catch (IOException e1) {
										e1.printStackTrace();
									}
									callPanelErrorMethode(e.getMessage());
								}// end try/catch
								if(!done){
									String s = fileName+" "+totalKBUploaded+" Kb uploaded";
									RDCallbackMethodHandler.callRDMethod(ulcPane, progressMethodName, new Object[] { s });
	 	                    		timer.restart(); // restart the timer because the file is not completely uploaded
								}else{
									try{
										String s = fileName+" upload finished";
										List lFiles = List.create(Class.forName("java.io.File"));
										lFiles.add(serverFile);
										returnedMessage.setType(FileHandler.SUCCESS_MESSAGE);
				                        returnedMessage.setText(UPLOAD_SUCCESSFUL+" "+choosedFile.getName());
				                        returnedMessage.setFile(serverFile);
				                        RDCallbackMethodHandler.callRDMethod(ulcPane, progressMethodName, new Object[] { s });
				                        callPanelUploadSuccessMethod(lFiles);
				                        
									}catch(Exception e){
										callPanelErrorMethode(e.getMessage());
									}
								}//end if else
							}// end of actionPerformed
	            		});// end of timer
	            		timer.start();
	            		
            		}// end of else
            	}// end of try	
            	catch(IOException ioe){
            		callPanelErrorMethode(ioe.getMessage());
            	}catch(Exception e) { 
            		callPanelErrorMethode(e.getMessage());
            	}
            }
        }, fcConfig, ulcPane);// end of ClientContext.loadFile
        return returnedMessage;
    }
    
    /**
	 * This method allows uploading one java.io.File from the client Filesystem to the server Filesystem.<br>
	 * The user is prompted to choose a java.io.File to upload by a FileChooser.<br>
	 * The upload process is interrupted 10 times with an ULCPollingTimer to be able to update the UI for progress (ProgressBar...)<br>
	 * <b>Important: </b>if the java.io.File already exists on the server, the Upload process will be aborded and a callback method will be called.<br>
	 * If the FileUploadHandler was instanciated with a reference to a IRichDialogPanel, this method will try to call the following<br>
	 * callback methods if they were also referenced:<br>
	 * <ul>
	 * <li>errorMethodeName, it will be called when an error occurs with an errorMessage as parameter,
	 * <li>askIfOverWriteFileMethodName, it will be called if the file to be uploaded already exists on the server. <br>
	 * A FILE Object reference to the choosen java.io.File on the client and <br>
	 * the String path of the java.io.File on the server will be send back to the IRichDialogPanel. <br>
	 * You can then let the user choose if the existing java.io.File has to be overwritten.<br>
	 * <li>progressMethod: the upload progress will be shown with the use of this method at RD parent side
	 * <li>a uploadSuccessMethodName, it will be called if the Upload succeeds, it sends the java.io.File object that was Uploaded.
	 * </ul>
	 * @return ReturnedMessage returnedMessage <br>
	 * This Object contains the type of message (FileHandler.ERROR_MESSAGE, FileHandler.Information_MESSAGE or FileHandler.SUCCESS_MESSAGE),<br>
	 * the message text as String and the java.io.File that was choosen for the Upload.<br>
	 * If the returnedMessage Type is ERROR, the java.io.File object may be null. So always check this java.io.File before use in your process.
	 */
    public ReturnedMessage uploadMultiFile(boolean multipleFile)
    {
    	
    	returnedMessage.setType(FileHandler.INFORMATION_MESSAGE);
        returnedMessage.setText("");
        returnedMessage.setFile(null);
        uploadedFile = null;
        final boolean multiFile= multipleFile;
        FileChooserConfig fcConfig = new FileChooserConfig();
        fcConfig.setFileSelectionMode(FileChooserConfig.FILES_ONLY);
        if(multiFile)
        	fcConfig.setDialogTitle(MULTIFILE_UPLOAD_WINDOW_TITLE);
        else
        	fcConfig.setDialogTitle(SINGLEFILE_UPLOAD_WINDOW_TITLE); 
        fcConfig.setMultiSelectionEnabled(multiFile);        
        fcConfig.setApproveButtonText(UPLOAD_BUTTON);
        //fcConfig.addFileFilterConfig(arg0)
        ClientContext.setFileTransferMode(ClientContext.SYNCHRONOUS_MODE);
        ClientContext.loadFile(new IFileLoadHandler(){
        	public void onFailure(int reason, String description)
            {
        		onFailureCall(reason);
            }
        	
        	@SuppressWarnings("unchecked")
			public void onSuccess(InputStream ins[], String filePaths[], String fileNames[]){
        		final int n = ins.length;
        		final InputStream fIns[] = ins;
        		//final String fFilePaths[] = filePaths;
        		final String fFileNames[]= fileNames;
        		formatServerPath();
        		
        		try{
        			List<java.io.File> existingFiles =(List<java.io.File>)  List.create(Class.forName("java.io.File"));
        			List<java.io.File> allChoosedFiles =(List<java.io.File>) List.create(Class.forName("java.io.File"));
        			for(int i = 0; i<filePaths.length;i++){
        				allChoosedFiles.add(new java.io.File(filePaths[i]));
        			}
        			//we check if we will overwrite some files
    				for(int i=0; i<n;i++){
    					String fileOnServer = serverPath + fFileNames[i];
    					java.io.File serverFile = new java.io.File(fileOnServer);
    					if(serverFile.exists()){
    						existingFiles.add(allChoosedFiles.get(i)); 
	            		}// end if
    				}
    				if(existingFiles.size()>0){ // we try to call the callback method from the RDC to ask if we overwrite 
    					callPanelAskIfOverwriteFiles(allChoosedFiles, existingFiles);
    				}
    				else{ ///we can upload without asking for overwriting files
    					cleanTimer();
    					timer.addActionListener(new IActionListener() {
    						private static final long serialVersionUID = -3025252014358720080L;
		            		byte b[] = new byte[1024];
		            		int progressUnit = 10; // 10 Kb
		            		int totalKBUploaded =0 ;
		            		int intRead;
		            		boolean done=false;
		            		int fileNumber = 0;
		            		//we read the first File
		            		BufferedInputStream preparedFile = new BufferedInputStream(fIns[0]);
		            		ArrayList<java.io.File> files= new ArrayList<java.io.File>();
		            		//we prepare the first File on the server
		            		String fileOnServer = serverPath + fFileNames[0];
		            		String fileName= fFileNames[0];
        					java.io.File serverFile = new java.io.File(fileOnServer);
        					
        					BufferedOutputStream server = new BufferedOutputStream(new FileOutputStream(serverFile));
	            			public void actionPerformed(ActionEvent arg0) {
	            				int progressDone=0;
	            				while(!done && progressDone< progressUnit){
	            					try{
		            					if((intRead= preparedFile.read(b)) != -1){
					            			server.write(b,0,intRead);
					            			progressDone++;
					            			totalKBUploaded++;
										}else{ 
											//we close the current File
											server.close();
											//if we are at the last File then we are done
											if(fileNumber==n-1){
//												we add the last uploaded File to the list
												files.add(serverFile);
												//and we are done
												done=true;
											}else{
												//we add the last uploaded File to the list
												files.add(serverFile);
												//we get the next file to upload
												fileNumber=fileNumber+1;
												preparedFile = new BufferedInputStream(fIns[fileNumber]);
												fileOnServer = serverPath + fFileNames[fileNumber];
												serverFile = new java.io.File(fileOnServer);
												server = new BufferedOutputStream(new FileOutputStream(serverFile));
												fileName= fFileNames[fileNumber];
												totalKBUploaded =0 ;
											}
										}
	            					}catch(Exception e) {
	            						done=true;
	            						callPanelErrorMethode(e.getMessage());
	            	            	}
	            				}
	            				
	            				if(!done){
									String s = fileName+" "+totalKBUploaded+" Kb uploaded";
									RDCallbackMethodHandler.callRDMethod(ulcPane, progressMethodName, new Object[] { s });
	 	                    		timer.restart(); // restart the timer because the file is not completely uploaded
								}else{
									try{
										String s = fileName+" upload finished";
										List lFiles = List.create(Class.forName("java.io.File"));
										lFiles.addAll(files);			
										returnedMessage.setType(FileHandler.SUCCESS_MESSAGE);
				                        returnedMessage.setText(UPLOAD_SUCCESSFUL);
				                        returnedMessage.setFile(serverFile);
				                        RDCallbackMethodHandler.callRDMethod(ulcPane, progressMethodName, new Object[] { s });
				                        callPanelUploadSuccessMethod(lFiles);
									}catch(Exception e){
										callPanelErrorMethode(e.getMessage());
									}
								}//end if else	
	            			}// end of actionPerformed
	            		});// end of timer
    					timer.start();
    				}// end of file doesn't exists
    			}catch(IOException ioe){
    				callPanelErrorMethode(ioe.getMessage());
	            }catch(Exception e) { 
	            	callPanelErrorMethode(e.getMessage());
   	            }
        			
        		
            }//end of onSuccess
        }, fcConfig, ulcPane);// end of ClientContext.loadFile
        return returnedMessage;
    }
    
    /**
	 * This method allows uploading one java.io.File from the client Filesystem to the server Filesystem Without showing any Progress.<br>
	 * The user is prompted to choose a java.io.File to upload by a FileChooser.<br>
	 * <b>Important: </b>if the java.io.File already exists on the server, the Upload process will be aborded and a callback method will be called.<br>
	 * If the FileUploadHandler was instanciated with a reference to a IRichDialogPanel, this method will try to call the following<br>
	 * callback methods if they were also referenced:<br>
	 * <ul>
	 * <li>errorMethodeName, it will be called when an error occurs with an errorMessage as parameter,
	 * <li>askIfOverWriteFileMethodName, it will be called if the file to be uploaded already exists on the server. <br>
	 * A FILE Object reference to the choosen java.io.File on the client and <br>
	 * the String path of the java.io.File on the server will be send back to the IRichDialogPanel. <br>
	 * You can then let the user choose if the existing java.io.File has to be overwritten.<br>
	 * <li>a uploadSuccessMethodName, it will be called if the Upload succeeds, it sends the java.io.File object that was Uploaded.
	 * </ul>
	 * @return ReturnedMessage returnedMessage <br>
	 * This Object contains the type of message (FileHandler.ERROR_MESSAGE, FileHandler.Information_MESSAGE or FileHandler.SUCCESS_MESSAGE),<br>
	 * the message text as String and the java.io.File that was choosen for the Upload.<br>
	 * If the returnedMessage Type is ERROR, the java.io.File object may be null. So always check this java.io.File before use in your process.
	 */
    public ReturnedMessage uploadWithoutShowingProgress()
    {
    	returnedMessage.setType(FileHandler.INFORMATION_MESSAGE);
        returnedMessage.setText("");
        returnedMessage.setFile(null);
        uploadedFile = null;
        
        FileChooserConfig fcConfig = new FileChooserConfig();
        fcConfig.setDialogTitle(SINGLEFILE_UPLOAD_WINDOW_TITLE);
        fcConfig.setApproveButtonText(UPLOAD_BUTTON);
        fcConfig.setFileSelectionMode(FileChooserConfig.FILES_ONLY);
        fcConfig.setMultiSelectionEnabled(false);
        ClientContext.setFileTransferMode(ClientContext.ASYNCHRONOUS_MODE);
        ClientContext.loadFile(new IFileLoadHandler(){
        	public void onFailure(int reason, String description)
            {
        		onFailureCall(reason);
                
            }
        	
        	@SuppressWarnings("unchecked")
			public void onSuccess(InputStream ins[], String filePaths[], String fileNames[]){
            	try{
            		final BufferedInputStream preparedFile = new BufferedInputStream(ins[0]);
            		serverFilePath = fileNames[0];
            		
            		formatServerPath();
            		serverFilePath = (new StringBuilder(String.valueOf(serverPath))).append(serverFilePath).toString();
            		Ivy.log().debug("File to upload: "+serverFilePath.toString());
            		final java.io.File serverFile = new java.io.File(serverFilePath);
            		if(serverFile.exists()){
            			Ivy.log().debug("File exists: "+serverFilePath.toString());
            			uploadedFile=new java.io.File(filePaths[0]);
            			returnedMessage.setType(FileHandler.INFORMATION_MESSAGE);
                        returnedMessage.setText(FILE_ALREADY_EXISTS);
                        returnedMessage.setFile(serverFile);
                        RDCallbackMethodHandler.callRDMethod(ulcPane, askIfOverWriteFileMethodName, new Object[] { returnedMessage });
            		}// end if
            		else{
            			Ivy.log().debug("File doesn't exist: "+serverFilePath.toString());
	            		uploadedFile = serverFile;
	            		final BufferedOutputStream server = new BufferedOutputStream(new FileOutputStream(serverFile));
	            		//final java.io.File choosedFile= new java.io.File(filePaths[0]);
	            		int intRead;
	            		byte b[] = new byte[1024];
	            		while((intRead= preparedFile.read(b)) != -1){
					        server.write(b,0,intRead);
        				}
        				server.close();    			
						
        				try{
							
							List lFiles = List.create(Class.forName("java.io.File"));
							lFiles.add(serverFile);			
	                        callPanelUploadSuccessMethod(lFiles);
						}catch(Exception e){
							callPanelErrorMethode(e.getMessage());
						}
					}//end if else
	
            	}// end of try	
            	catch(IOException ioe){
            		callPanelErrorMethode(ioe.getMessage());
            	}catch(Exception e) { 
            		callPanelErrorMethode(e.getMessage());
            	}
            }
        }, fcConfig, ulcPane);// end of ClientContext.loadFile
        return returnedMessage;
    }
    
    /**
     * This method allows uploading one or more java.io.File from the client Filesystem to the server Filesystem Without showing any Progress.<br>
	 * The user is prompted to choose one or more java.io.File to upload by a FileChooser.<br>
	 * <b>Important: </b>if one of the choosen java.io.File already exists on the server, the Upload process will be aborded for this File and a callback method will be called.<br>
	 * If the FileUploadHandler was instanciated with a reference to a IRichDialogPanel, this method will try to call the following<br>
	 * callback methods if they were also referenced:<br>
	 * <ul>
	 * <li>errorMethodeName, it will be called when an error occurs with an errorMessage as parameter,
	 * <li>askIfOverWriteFileMethodName, it will be called if the file to be uploaded already exists on the server. <br>
	 * A FILE Object reference to the choosen java.io.File on the client and <br>
	 * the String path of the java.io.File on the server will be send back to the IRichDialogPanel. <br>
	 * You can then let the user choose if the existing java.io.File has to be overwritten.<br>
	 * <li>a uploadSuccessMethodName, it will be called if the Upload succeeds, it sends the java.io.File object that was Uploaded.
	 * </ul>
	 * @param multiFile: type is boolean. If true, multi File upload is setted, else the user can upload just one File at a time.
	 * @return ReturnedMessage returnedMessage <br>
	 * This Object contains the type of message (FileHandler.ERROR_MESSAGE, FileHandler.Information_MESSAGE or FileHandler.SUCCESS_MESSAGE),<br>
	 * the message text as String and the java.io.File that was choosen for the Upload.<br>
	 * In this case, the File Object has no signification because it contains just the last File uploaded
     */
    public ReturnedMessage uploadWithoutShowingProgress(final boolean multiFile){
    	
    	returnedMessage.setType(FileHandler.INFORMATION_MESSAGE);
        returnedMessage.setText("");
        returnedMessage.setFile(null);
        returnedMessage.getFiles().clear();
        uploadedFile = null;
        
        FileChooserConfig fcConfig = new FileChooserConfig();
        
        if(multiFile)
        	fcConfig.setDialogTitle(MULTIFILE_UPLOAD_WINDOW_TITLE);
        else
        	fcConfig.setDialogTitle(SINGLEFILE_UPLOAD_WINDOW_TITLE);
        
        fcConfig.setApproveButtonText(UPLOAD_BUTTON);
        fcConfig.setFileSelectionMode(FileChooserConfig.FILES_ONLY);
        fcConfig.setMultiSelectionEnabled(multiFile);
        ClientContext.setFileTransferMode(ClientContext.ASYNCHRONOUS_MODE);
        
    	ClientContext.loadFile(new IFileLoadHandler(){
        	public void onFailure(int reason, String description)
            {
        		onFailureCall(reason);
            }
        	
        	@SuppressWarnings("unchecked")
			public void onSuccess(InputStream ins[], String filePaths[], String fileNames[]){
        		int n = ins.length;
        		for(int i=0; i<n; i++){
        			try{
	            		final BufferedInputStream preparedFile = new BufferedInputStream(ins[i]);
	            		serverFilePath = fileNames[i];
	            		
	            		formatServerPath();
	            		serverFilePath = FileHandler.formatPath((new StringBuilder(String.valueOf(serverPath))).append(serverFilePath).toString());
	            		Ivy.log().debug("File to upload: "+serverFilePath.toString());
	            		final java.io.File serverFile = new java.io.File(serverFilePath);
	            		if(serverFile.exists())
	            		{
	            			Ivy.log().debug("File exists: "+serverFilePath.toString());
	            			uploadedFile=new java.io.File(filePaths[i]);
	            			returnedMessage.setType(FileHandler.INFORMATION_MESSAGE);
	                        returnedMessage.setText(FILE_ALREADY_EXISTS);
	                        returnedMessage.setFile(serverFile);
	                        RDCallbackMethodHandler.callRDMethod(ulcPane, askIfOverWriteFileMethodName, new Object[] { returnedMessage });
	            		}// end if
	            		else
	            		{
	            			Ivy.log().debug("File doesn't exist: "+serverFilePath.toString());
		            		uploadedFile = serverFile;
		            		final BufferedOutputStream server = new BufferedOutputStream(new FileOutputStream(serverFile));
		            		//final java.io.File choosedFile= new java.io.File(filePaths[i]);
		            		int intRead;
		            		byte b[] = new byte[1024];
		            		while((intRead= preparedFile.read(b)) != -1){
						        server.write(b,0,intRead);
	        				}
	        				server.close();    			
							
	        				try
	        				{
								List lFiles = List.create(Class.forName("java.io.File"));
								lFiles.add(serverFile);			
		                        callPanelUploadSuccessMethod(lFiles);
							}catch(Exception e){
								callPanelErrorMethode(e.getMessage());
							}
						}//end if else
		
	            	}// end of try	
	            	catch(IOException ioe){
	            		callPanelErrorMethode(ioe.getMessage());
	            	}catch(Exception e) { 
	            		callPanelErrorMethode(e.getMessage());
	            	}
        		}
            	
            }
        }, fcConfig, ulcPane);// end of ClientContext.loadFile
        
        return returnedMessage;
    }
    /**
	 * This method allows to upload a java.io.File from the client Filesystem to the server Filesystem.<br>
	 * The upload process is interrupted 10 times with an ULCPollingTimer to be able to update the UI for progress (ProgressBar...)<br>
	 * The user is prompt to choose a java.io.File to upload by a FileChooser.<br>
	 * <b>Important: </b>This method doesn't check if the java.io.File already exists. The existing java.io.File will be then overwritten.<br>
	 * If the FileUploadHandler was instanciated with a reference to a IRichDialogPanel, this method will try to call the following<br>
	 * callback methods if they were also referenced:<br>
	 * <ul>
	 * <li>errorMethodeName, it will be called when an error occurs with a returnedMessage Object as parameter,
	 * <li>progressMethod: the upload progress will be shown with the use of this method at RD parent side
	 * <li>a uploadSuccessMethodName, it will be called if the Upload succeeds, it sends a returnedMessage Object with a reference to the java.io.File object that was Uploaded.
	 * </ul>
	 * @return ReturnedMessage returnedMessage <br>
	 * This Object contains the type of message (FileHandler.ERROR_MESSAGE, FileHandler.Information_MESSAGE or FileHandler.SUCCESS_MESSAGE),<br>
	 * the message text as String and the java.io.File that was choosen for the Upload.<br>
	 * If the returnedMessage Type is ERROR, the java.io.File object may be null. So always check this java.io.File before use in your process.
	 */
    public ReturnedMessage forceUpload()
    {
    	uploadedFile=null;
    	returnedMessage.setType(FileHandler.INFORMATION_MESSAGE);
        returnedMessage.setText("");
        returnedMessage.setFile(null);
        FileChooserConfig fcConfig = new FileChooserConfig();
        fcConfig.setDialogTitle(SINGLEFILE_UPLOAD_WINDOW_TITLE);
        fcConfig.setApproveButtonText(UPLOAD_BUTTON);
        fcConfig.setFileSelectionMode(FileChooserConfig.FILES_ONLY);
        fcConfig.setMultiSelectionEnabled(false);
        ClientContext.loadFile(new IFileLoadHandler() {
            public void onFailure(int reason, String description)
            {
            	onFailureCall(reason);
            }

            public void onSuccess(InputStream ins[], String filePaths[], String fileNames[]){
            	try{
            		final BufferedInputStream preparedFile = new BufferedInputStream(ins[0]);
            		serverFilePath = fileNames[0];
            		formatServerPath();
            		serverFilePath = (new StringBuilder(String.valueOf(serverPath))).append(serverFilePath).toString();
            		final java.io.File serverFile = new java.io.File(serverFilePath);
            		uploadedFile = serverFile;
            		final BufferedOutputStream server = new BufferedOutputStream(new FileOutputStream(serverFile));
            		final java.io.File choosedFile= new java.io.File(filePaths[0]);
            		final String fileName = fileNames[0];
            		cleanTimer();
            		timer.addActionListener(new IActionListener() {
						private static final long serialVersionUID = -3025252014358720080L;
	            		byte b[] = new byte[1024];
	            		int progressUnit = 10; // 10 Kb
	            		int totalKBUploaded =0 ;
	            		int intRead;
	            		boolean done=false;
						@SuppressWarnings("unchecked")
						public void actionPerformed(ActionEvent arg0) {
							int progressDone =0;
							try{
								while(!done && progressDone< progressUnit){	
									if((intRead= preparedFile.read(b)) != -1){
				            			server.write(b,0,intRead);
				            			progressDone++;
				            			totalKBUploaded++;
									}else{ 
										done=true;
										server.close();
									}
	     	            		}
								if(!done){
									progressDone=0;
								}
							}catch(IOException e){
								done=true;
								try {
									server.close();
								} catch (IOException e1) {
									e1.printStackTrace();
								}
								callPanelErrorMethode(e.getMessage());
							}// end try/catch
							if(!done){
								String s = fileName+" "+totalKBUploaded+" Kb uploaded";
								RDCallbackMethodHandler.callRDMethod(ulcPane, progressMethodName, new Object[] { s });
 	                    		timer.restart(); // restart the timer because the file is not completely uploaded
							}else{
								String s = fileName+" upload finished";
								returnedMessage.setType(FileHandler.SUCCESS_MESSAGE);
		                        returnedMessage.setText(UPLOAD_SUCCESSFUL+" "+choosedFile.getName());
		                        returnedMessage.setFile(serverFile);
		                        RDCallbackMethodHandler.callRDMethod(ulcPane, progressMethodName, new Object[] { s });
		                        try{
									List lFiles = List.create(Class.forName("java.io.File"));
									lFiles.add(serverFile);			
			                        callPanelUploadSuccessMethod(lFiles);
								}catch(Exception e){
									callPanelErrorMethode(e.getMessage());
								}
							}//end if else
						}// end of actionPerformed
            		});// end of timer
            		timer.start();
            	}// end of try	
            	catch(IOException ioe){
            		callPanelErrorMethode(ioe.getMessage());
            	}
            	catch(Exception exception) {
            		callPanelErrorMethode(exception.getMessage());
            	}
            }
        }, fcConfig, ulcPane);
        return returnedMessage;
    }
    
    /**
     * This method allows to choose a java.io.File from the client Filesystem for a future upload.<br>
     * The user is prompt to choose a java.io.File to upload by a FileChooser.<br>
     * If the FileUploadHandler was instanciated with a reference to a IRichDialogPanel, this method will try to call the following<br>
     * callback methods if they were also referenced:<br>
     * <ul>
	 * <li>errorMethodeName, it will be called when an error occurs with a returnedMessage Object as parameter,
	 * </ul>
	 * @return ReturnedMessage returnedMessage <br>
	 * This Object contains the type of message (FileHandler.ERROR_MESSAGE, FileHandler.Information_MESSAGE or FileHandler.SUCCESS_MESSAGE),<br>
	 * the message text as String and the java.io.File that was choosen for the Upload.<br>
	 * If the returnedMessage Type is ERROR, the java.io.File object may be null. So always check this java.io.File before use in your process.
     */
    public ReturnedMessage prepareUpload()
    {
    	returnedMessage.setType(FileHandler.INFORMATION_MESSAGE);
        returnedMessage.setText("");
        returnedMessage.setFile(null);
    	uploadedFile=null;
    	FileChooserConfig fcConfig = new FileChooserConfig();
    	fcConfig.setDialogTitle(SINGLEFILE_UPLOAD_WINDOW_TITLE);
        fcConfig.setApproveButtonText(UPLOAD_BUTTON);
        fcConfig.setFileSelectionMode(FileChooserConfig.FILES_ONLY);
    	ClientContext.loadFile(new IFileLoadHandler(){

    		public void onFailure(int reason, String description)
    		{
    			onFailureCall(reason);
    		}

    		public void onSuccess(InputStream ins[], String filePaths[], String fileNames[])
    		{
    			try{
    				uploadedFile = new java.io.File(filePaths[0]);
    				returnedMessage.setType(FileHandler.SUCCESS_MESSAGE);
            		returnedMessage.setText("The java.io.File was successfully prepared for future upload or use.");
            		returnedMessage.setFile(uploadedFile);
    			}
    			catch(Exception exception) { 
    				callPanelErrorMethode(exception.getMessage());
	        	}
    		}
    	}, fcConfig, ulcPane);// end of ClientContext.loadFile
    	return returnedMessage;
    }
    
    /**
     * static method that prepares a list of choosed Files for future upload
     * @return the list of choosed java.io.File
     */
    public ArrayList<java.io.File> prepareFilesForUpload(final ULCComponent panel, final String callbackMethodName){
    	final ArrayList<java.io.File> files = new ArrayList<java.io.File>();
    	
    	FileChooserConfig fcConfig = new FileChooserConfig();
    	fcConfig.setDialogTitle(MULTIFILE_UPLOAD_WINDOW_TITLE);
        fcConfig.setApproveButtonText(UPLOAD_BUTTON); 
        fcConfig.setFileSelectionMode(FileChooserConfig.FILES_ONLY);
        fcConfig.setMultiSelectionEnabled(true);
        ClientContext.setFileTransferMode(ClientContext.SYNCHRONOUS_MODE);
        
        ClientContext.loadFile(new IFileLoadHandler(){

    		public void onFailure(int reason, String description)
    		{
    			onFailureCall(reason);
    		}

    		public void onSuccess(InputStream ins[], String filePaths[], String fileNames[])
    		{
    			Ivy.log().info("Number of Files choosed: "+filePaths.length);
    			try{
    				for(int i=0; i<filePaths.length; i++){
    					Ivy.log().info(filePaths[i]);
    					files.add(new java.io.File(filePaths[i]));
    				}
    				RDCallbackMethodHandler.callRDMethodFromULCComponent(panel, callbackMethodName, new Object[] { files });
    			}
    			catch(Exception exception) { 
    				callPanelErrorMethode(exception.getMessage());
	        	}
    		}
    	}, fcConfig, panel);// end of ClientContext.loadFile
    	return files;
    
    }
   
    /**
     * This method allows to upload a java.io.File from the client Filesystem to the server Filesystem.<br>
     * The uploaded java.io.File is given as input parameter. No Filechooser appears.<br>
     * The upload process is interrupted 10 times with an ULCPollingTimer to be able to update the UI for progress (ProgressBar...)<br>
     * This method doesn't check if the java.io.File exists<br>
     * If the FileUploadHandler was instanciated with a reference to a IRichDialogPanel, this method will try to call the following<br>
     * callback methods if they were also referenced:<br>
     * <ul>
	 * <li>errorMethodeName, it will be called when an error occurs with a returnedMessage Object as parameter,
	 * <li>progressMethod: the upload progress will be shown with the use of this method at RD parent side
	 * <li>a uploadSuccessMethodName, it will be called if the Upload succeeds, it sends a returnedMessage Object <br>
	 * with a reference to the java.io.File object that was Uploaded.
	 * </ul>
	 * @return ReturnedMessage returnedMessage <br>
	 * This Object contains the type of message (FileHandler.ERROR_MESSAGE, FileHandler.Information_MESSAGE or FileHandler.SUCCESS_MESSAGE),<br>
	 * the message text as String and the java.io.File that was choosen for the Upload.<br>
	 * If the returnedMessage Type is ERROR, the java.io.File object may be null. So always check this java.io.File before use in your process.
     */
    public ReturnedMessage uploadPreparedUpload(final java.io.File f)
    {
    	returnedMessage.setType(FileHandler.INFORMATION_MESSAGE);
        returnedMessage.setText("");
        returnedMessage.setFile(null);
		String filePath = f.getPath();
		ClientContext.loadFile(new IFileLoadHandler(){
			public void onFailure(int reason, String description)
			{
				onFailureCall(reason);
			}

			public void onSuccess(InputStream ins[], String filePaths[], String fileNames[])
			{
				try{
					uploadedFile = f;
					final String fileName= f.getName();
					final BufferedInputStream preparedFile = new BufferedInputStream(ins[0]);
					serverFilePath = uploadedFile.getName();
					formatServerPath();
					serverFilePath = (new StringBuilder(String.valueOf(serverPath))).append(serverFilePath).toString();
					final java.io.File serverFile = new java.io.File(serverFilePath);
					uploadedFile = new java.io.File(serverFilePath);
					final BufferedOutputStream server = new BufferedOutputStream(new FileOutputStream(serverFile));
					cleanTimer();
					timer.addActionListener(new IActionListener() {
						private static final long serialVersionUID = -3025252014358720080L;
	            		byte b[] = new byte[1024];
	            		int progressUnit = 10; // 10 Kb
	            		int totalKBUploaded =0 ;
	            		int intRead;
	            		boolean done=false;
						@SuppressWarnings("unchecked")
						public void actionPerformed(ActionEvent arg0) {
							int progressDone =0;
							try{
								while(!done && progressDone< progressUnit){	
									if((intRead= preparedFile.read(b)) != -1){
				            			server.write(b,0,intRead);
				            			progressDone++;
				            			totalKBUploaded++;
									}else{ 
										done=true;
										server.close();
									}
	     	            		}
								if(!done){
									progressDone=0;
								}
							}catch(IOException e){
								done=true;
								try {
									server.close();
								} catch (IOException e1) {
									e1.printStackTrace();
								}
								callPanelErrorMethode(e.getMessage());
							}// end try/catch
							if(!done){
								String s = fileName+" "+totalKBUploaded+" Kb uploaded";
								RDCallbackMethodHandler.callRDMethod(ulcPane, progressMethodName, new Object[] { s });
 	                    		timer.restart(); // restart the timer because the file is not completely uploaded
							}else{
								String s = fileName+" upload finished";
								returnedMessage.setType(FileHandler.SUCCESS_MESSAGE);
		                        returnedMessage.setText(UPLOAD_SUCCESSFUL);
		                        returnedMessage.setFile(serverFile);
		                        RDCallbackMethodHandler.callRDMethod(ulcPane, progressMethodName, new Object[] { s });
		                        try{
									
									List lFiles = List.create(Class.forName("java.io.File"));
									lFiles.add(serverFile);			
			                        callPanelUploadSuccessMethod(lFiles);
								}catch(Exception e){
									callPanelErrorMethode(e.getMessage());
								}
							}//end if else
						}// end of actionPerformed
            		});// end of timer
            		timer.start();
            		
        	}// end of try
				catch(Exception exception) { 
					callPanelErrorMethode(exception.getMessage());
				}
			}
		}, filePath);// end of ClientContext.loadFile
    	return returnedMessage;
    }
    
    public void uploadPreparedFiles(List<java.io.File> choosedFiles){
    	
    	ClientContext.setFileTransferMode(ClientContext.SYNCHRONOUS_MODE);
    	
    	if(choosedFiles != null && choosedFiles.size()>0){
    		//final java.io.File filesToUpload [] = choosedFiles.toArray();
    		final List<java.io.File> files = choosedFiles;
    		String filePath = choosedFiles.get(0).getPath();
    		final java.io.File f = choosedFiles.get(0);
	        ClientContext.loadFile(new IFileLoadHandler(){
	        	public void onFailure(int reason, String description)
	            {
	        		onFailureCall(reason);
	            }
	        	
	        	@SuppressWarnings("unchecked")
				public void onSuccess(InputStream ins[], String filePaths[], String fileNames[]){
	        		try{
						uploadedFile = f;
						final String fileName= f.getName();
						final BufferedInputStream preparedFile = new BufferedInputStream(ins[0]);
						serverFilePath = uploadedFile.getName();
						formatServerPath();
						serverFilePath = (new StringBuilder(String.valueOf(serverPath))).append(serverFilePath).toString();
						final java.io.File serverFile = new java.io.File(serverFilePath);
						uploadedFile = new java.io.File(serverFilePath);
						final BufferedOutputStream server = new BufferedOutputStream(new FileOutputStream(serverFile));
						cleanTimer();
						timer.addActionListener(new IActionListener() {
							private static final long serialVersionUID = -3025252014358720080L;
		            		byte b[] = new byte[1024];
		            		int progressUnit = 10; // 10 Kb
		            		int totalKBUploaded =0 ;
		            		int intRead;
		            		boolean done=false;
							public void actionPerformed(ActionEvent arg0) {
								int progressDone =0;
								try{
									while(!done && progressDone< progressUnit){	
										if((intRead= preparedFile.read(b)) != -1){
					            			server.write(b,0,intRead);
					            			progressDone++;
					            			totalKBUploaded++;
										}else{ 
											done=true;
											server.close();
										}
		     	            		}
									if(!done){
										progressDone=0;
									}
								}catch(IOException e){
									done=true;
									try {
										server.close();
									} catch (IOException e1) {
										e1.printStackTrace();
									}
									callPanelErrorMethode(e.getMessage());
								}// end try/catch
								if(!done){
									String s = fileName+" "+totalKBUploaded+" Kb uploaded";
									RDCallbackMethodHandler.callRDMethod(ulcPane, progressMethodName, new Object[] { s });
	 	                    		timer.restart(); // restart the timer because the file is not completely uploaded
								}else{
									String s = fileName+" upload finished";
									returnedMessage.setType(FileHandler.SUCCESS_MESSAGE);
			                        returnedMessage.setText(UPLOAD_SUCCESSFUL);
			                        returnedMessage.setFile(serverFile);
			                        RDCallbackMethodHandler.callRDMethod(ulcPane, progressMethodName, new Object[] { s });
									List lFiles;
									try {
										lFiles = List.create(Class.forName("java.io.File"));
										lFiles.add(serverFile);
										RDCallbackMethodHandler.callRDMethod(ulcPane, uploadSuccessMethodName, new Object[] { lFiles });
									} catch (ClassNotFoundException e) {
										
										e.printStackTrace();
									}
									
			                        // try recursivity
			                        if(files.size()>1){
			                        	files.remove(0);
			                        	uploadPreparedFiles(files);
			                        }
			                        
								}//end if else
							}// end of actionPerformed
	            		});// end of timer
	            		timer.start();
	    				
	    			}catch(IOException ioe){
	    				callPanelErrorMethode(ioe.getMessage());
		            }catch(Exception e) { 
		            	callPanelErrorMethode(e.getMessage());
	   	            }
	        			
	        		
	            }//end of onSuccess
	        }, filePath);// end of ClientContext.loadFile
    	}
    }
    /**
     * This method allows to upload a java.io.File from the client Filesystem to the server Filesystem.<br>
     * The uploaded java.io.File is given as input parameter. No Filechooser appears.<br>
     * The upload process is interrupted 10 times with an ULCPollingTimer to be able to update the UI for progress (ProgressBar...)<br>
     * This method doesn't check if the java.io.File exists<br>
     * If the FileUploadHandler was instanciated with a reference to a IRichDialogPanel, this method will try to call the following<br>
     * callback methods if they were also referenced:<br>
     * <ul>
	 * <li>errorMethodeName, it will be called when an error occurs with a returnedMessage Object as parameter,
	 * <li>progressMethod: the upload progress will be shown with the use of this method at RD parent side
	 * <li>a uploadSuccessMethodName, it will be called if the Upload succeeds, it sends a returnedMessage Object <br>
	 * with a reference to the java.io.File object that was Uploaded.
	 * </ul>
	 * @return ReturnedMessage returnedMessage <br>
	 * This Object contains the type of message (FileHandler.ERROR_MESSAGE, FileHandler.Information_MESSAGE or FileHandler.SUCCESS_MESSAGE),<br>
	 * the message text as String and the java.io.File that was choosen for the Upload.<br>
	 * If the returnedMessage Type is ERROR, the java.io.File object may be null. So always check this java.io.File before use in your process.
     */
    public ReturnedMessage uploadPreparedUploadWithoutShowingProgress(final java.io.File f)
    {
    	returnedMessage.setType(FileHandler.INFORMATION_MESSAGE);
        returnedMessage.setText("");
        returnedMessage.setFile(null);
		String filePath = f.getPath();
		ClientContext.loadFile(new IFileLoadHandler(){
			public void onFailure(int reason, String description)
			{
				onFailureCall(reason);
			}

			@SuppressWarnings("unchecked")
			public void onSuccess(InputStream ins[], String filePaths[], String fileNames[])
			{
				try{
					uploadedFile = f;
					final BufferedInputStream preparedFile = new BufferedInputStream(ins[0]);
					serverFilePath = uploadedFile.getName();
					formatServerPath();
					serverFilePath = (new StringBuilder(String.valueOf(serverPath))).append(serverFilePath).toString();
					final java.io.File serverFile = new java.io.File(serverFilePath);
					uploadedFile = new java.io.File(serverFilePath);
					final BufferedOutputStream server = new BufferedOutputStream(new FileOutputStream(serverFile));
					byte b[] = new byte[1024];
	            	int intRead;
	            	while((intRead= preparedFile.read(b)) != -1){
	            		server.write(b,0,intRead);
				    }
	            	server.close();
					returnedMessage.setType(FileHandler.SUCCESS_MESSAGE);
		            returnedMessage.setText(UPLOAD_SUCCESSFUL+" "+f.getName());
		            returnedMessage.setFile(serverFile);
		            RDCallbackMethodHandler.callRDMethod(ulcPane, progressMethodName, new Object[] { 100 });
		            try{
						
						List lFiles = List.create(Class.forName("java.io.File"));
						lFiles.add(serverFile);			
                        callPanelUploadSuccessMethod(lFiles);
					}catch(Exception e){
						callPanelErrorMethode(e.getMessage());
					}
					
            		
				}// end of try
				catch(Exception exception) { 
					callPanelErrorMethode(exception.getMessage());
				}
			}
		}, filePath);// end of ClientContext.loadFile
    	return returnedMessage;
    }
    
    /**
     * This method allows to upload  java.io.File objects from the client Filesystem to the server Filesystem.<br>
     * The uploaded java.io.Files are given as input parameter. No Filechooser appears.<br>
     * This method doesn't check if the java.io.Files exist<br>
     * The File transfer is ASYNCHRONOUS<br>
     * If the FileUploadHandler was instanciated with a reference to a IRichDialogPanel, this method will try to call the following<br>
     * callback methods if they were also referenced:<br>
     * <ul>
	 * <li>errorMethodeName, it will be called when an error occurs with a returnedMessage Object as parameter (List of files empty),
	 * <li>a uploadSuccessMethodName, it will be called if the Upload succeeds, it sends a returnedMessage Object with the List of java.io.Files that were successfully uploaded<br>
	 * </ul>
	 * @return ReturnedMessage returnedMessage <br>
	 * This Object contains the type of message (FileHandler.ERROR_MESSAGE, FileHandler.Information_MESSAGE or FileHandler.SUCCESS_MESSAGE),<br>
	 * the message text as String and the List of java.io.Files that were successfully uploaded.<br>
     */
    public ReturnedMessage uploadPreparedFilesWithoutShowingProgress(final List<java.io.File> files)
    {
    	returnedMessage.setType(FileHandler.SUCCESS_MESSAGE);
        returnedMessage.setText("");
        returnedMessage.setFile(null);
        returnedMessage.setFiles(List.create(java.io.File.class));
        ClientContext.setFileTransferMode(ClientContext.ASYNCHRONOUS_MODE);
		if(files!=null && files.size()>0){
			String filePath = files.get(0).getPath();
			ClientContext.loadFile(new IFileLoadHandler(){
				public void onFailure(int reason, String description)
				{
					onFailureCall(reason);
				}
				public void onSuccess(InputStream ins[], String filePaths[], String fileNames[])
				{
					for(java.io.File f: files)
					{
						try
						{
							uploadedFile = f;
							final BufferedInputStream preparedFile = new BufferedInputStream(ins[0]);
							serverFilePath = uploadedFile.getName();
							formatServerPath();
							serverFilePath = (new StringBuilder(String.valueOf(serverPath))).append(serverFilePath).toString();
							final java.io.File serverFile = new java.io.File(serverFilePath);
							uploadedFile = new java.io.File(serverFilePath);
							final BufferedOutputStream server = new BufferedOutputStream(new FileOutputStream(serverFile));
							byte b[] = new byte[1024];
							int intRead;
							while((intRead= preparedFile.read(b)) != -1)
							{
								server.write(b,0,intRead);
							}
							server.close();
							returnedMessage.getFiles().add(serverFile);
						}// end of try
						catch(Exception exception) { 
							Ivy.log().error(exception);
						}
					}//end of for
					callPanelUploadSuccessMethod(returnedMessage);
				}
			}, filePath);// end of ClientContext.loadFile
		}
    	return returnedMessage;
    }
    
    /**
     * 
     * For private use only
     * Format the serverPath of this FileUploadHandler Object.<br>
     * Puts the right java.io.File.separator depending on the System.
     * If the Directory doesn't exit on the server Filesystem, it will attempt to create it.<br>
     * It puts a java.io.File.separator character at the end of the path, to be sure taht the java.io.File path will be correct.
     */
    private void formatServerPath()
    {
        if(serverPath == null || serverPath.equals("")){
        serverPath = serverPath.replace("\\", java.io.File.separator);
        serverPath = serverPath.replace("/", java.io.File.separator);
        }
        java.io.File serverDir = new java.io.File(serverPath);
        if(serverDir.exists() && !serverDir.isDirectory() || !serverDir.exists())
            serverDir.mkdirs();
        if(serverPath.lastIndexOf(java.io.File.separator) != serverPath.length() - 1) 
        	serverPath=serverPath+java.io.File.separator;
    }

    /**
     * Set the calling ULComponent implementing IRichDialogPanel 
     * @param T ulcPane
     * If the ulcPane parameter is not an instance of IRichDialogPanel, then it will be set to null
     */
    public void setUlcPane(T ulcPane)
    {
    	// Check if the given ulcPane implements ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel
        if(ulcPane instanceof IRichDialogPanel)
        	this.ulcPane = ulcPane;
        else this.ulcPane=null;
    }

    /**
     * Set the serverPath<br>
     * The serverPath is the path on the server Filesystem where the UploadHandler has to work on.
     * @param String serverPath
     */
    public void setServerPath(String path)
    {
    	if(path==null || path.trim().equals("") || path.trim().equals("/")|| path.trim().equals("\\"))
            this.serverPath = "uploadedFiles";
    	else this.serverPath=path.trim();
        formatServerPath();
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
     * Set the callback method name to get the java.io.File back from a success upload.<br>
     * The callback methods are a way to interact with the process of the referenced Panel
     * that implements the following interface ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel
     * @param String uploadSuccessMethodName
     */
    public void setUploadSuccessMethodName(String uploadSuccessMethodName)
    {
        this.uploadSuccessMethodName = uploadSuccessMethodName.trim();
    }

    /**
     * @deprecated
     * Set the callback method name to ask if a java.io.File should be overwriten or not.<br>
     * The callback methods are a way to interact with the process of the referenced Panel
     * that implements the following interface ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel
     * @param String askIfOverWriteFileMethodName
     */
    public void setAskForChangeFileMethodName(String askForChangeFileMethodName)
    {
        this.askIfOverWriteFileMethodName = askForChangeFileMethodName.trim();
    }

    /**
     *
     * Set the callback method name to show upload progress.<br>
     * The callback methods are a way to interact with the process of the referenced Panel
     * that implements the following interface ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel
     * @param String progressMethodName
     */
    public void setProgressMethodName(String progressMethodName)
    {
        this.progressMethodName = progressMethodName.trim();
    }
 
    /**
     * Allows to delete a java.io.File
     * @param String filepath: the Filepath of the java.io.File to delete.
     * If the FileUploadHandler was instanciated with a reference to a IRichDialogPanel, this method will try to call the following<br>
     * callback methods if they were also referenced:<br>
     * <ul>
	 * <li>errorMethodeName, it will be called when an error occurs with a returnedMessage Object as parameter,<br>
	 * In case of an error, the reference to the deleted java.io.File in the returnedMessage Object will be always null.<br>
	 * If the file is a directory, this is considered as an error and this method returns a returnMessage with ERROR_MESSAGE as Type and the directory won’t be deleted.
	 * </ul>
     * @return ReturnedMessage
     */
    public ReturnedMessage deleteFile(String filepath)
    {
    	returnedMessage.setType(FileHandler.ERROR_MESSAGE);
        returnedMessage.setText("Begin of the method delete.");
        returnedMessage.setFile(null);
        returnedMessage = FileHandler.deleteFile(filepath);
        
        if(returnedMessage.getType().intValue()==FileHandler.ERROR_MESSAGE)
        {
        	RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { returnedMessage });
        }
        return returnedMessage;
    }
    
    /**
     * Allows to delete a java.io.File and its directory if no files anymore
     * @param String filepath: the Filepath of the java.io.File to delete.
     * If the FileUploadHandler was instanciated with a reference to a RichDialogGridBagPanel, this method will try to call the following<br>
     * callback methods if they were also referenced:<br>
     * <ul>
	 * <li>errorMethodeName, it will be called when an error occurs with a returnedMessage Object as parameter,<br>
	 * In case of an error, the reference to the deleted java.io.File in the returnedMessage Object will be always null.
	 * If the file is a directory, this is considered as an error and this method returns a returnMessage with ERROR_MESSAGE as Type and the directory won’t be deleted.
	 * </ul>
     * @return ReturnedMessage
     */
    public ReturnedMessage deleteFileAndDirectoryIfNoFile(String filepath)
    {
    	java.io.File fileToDelete = new java.io.File(filepath);
    	String dirPath = FileHandler.getFileDirectoryPath(fileToDelete);
    	returnedMessage.setType(FileHandler.ERROR_MESSAGE);
        returnedMessage.setText("Begin of the method delete.");
        returnedMessage.setFile(null);
        returnedMessage = FileHandler.deleteFile(filepath);
        
        if(returnedMessage.getType().intValue()==FileHandler.ERROR_MESSAGE)
        	RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { returnedMessage });
        else{
        	java.util.ArrayList <DocumentOnServer> docList= FileHandler.getDocumentsInPathAll(dirPath);
        	if(docList.size()<1){
        		ReturnedMessage rm = new ReturnedMessage();
        		rm= FileHandler.deleteDirectory(dirPath);
        		if(rm.getType().intValue()==FileHandler.ERROR_MESSAGE){
        			returnedMessage.setType(rm.getType());
        			returnedMessage.setText(returnedMessage.getText()+ " BUT " +rm.getText());
        		}
        	}
        }
        return returnedMessage;
    }
    
    /**
     * 
     *For internal use only
     */
    private void cleanTimer(){
    	if(timer == null)
    		timer=new ULCPollingTimer(100,null);
		IActionListener [] ia = timer.getActionListeners();
		for(IActionListener i: ia){
			timer.removeActionListener(i);
		}
		//timer.setDelay(100);
	}
    
    private void callPanelErrorMethode(String s){
    	if(ulcPane!= null && errorMethodeName!= null && errorMethodeName.trim().length()>0){
	    	returnedMessage.setType(FileHandler.ERROR_MESSAGE);
			returnedMessage.setText(s);
			returnedMessage.setFile(null);
			RDCallbackMethodHandler.callRDMethod(ulcPane, errorMethodeName, new Object[] { returnedMessage });
    	}
    }
    
    private void onFailureCall(int reason){
    	String msg;
    	switch(reason)
        {
        case 1:
            msg = ACTION_CANCELLED;
            break;
        case 2:
            msg = ERROR_UNKOWN;
            break;
        case 3:
            msg = FILESIZE_TOO_BIG;
            break;
        default:
            msg = ERROR_UNKOWN;
            break;
        }
    	Ivy.log().error(msg);
    	callPanelErrorMethode(msg);
    }
    
    private void callPanelAskIfOverwriteFiles(List<java.io.File> allChoosedFiles, List<java.io.File> filesToOverWrite){
    	if(ulcPane!= null && askIfOverWriteFileMethodName!= null && askIfOverWriteFileMethodName.trim().length()>0){
			RDCallbackMethodHandler.callRDMethod(ulcPane, askIfOverWriteFileMethodName, new Object[] { allChoosedFiles, filesToOverWrite});
    	}
    }
   
    private void callPanelUploadSuccessMethod(List<java.io.File> l){
    	if(ulcPane != null && this.uploadSuccessMethodName!=null && this.uploadSuccessMethodName.trim().length()>0 && l!=null){
    		RDCallbackMethodHandler.callRDMethod(ulcPane, uploadSuccessMethodName, new Object[] { l });
    	}
    
    }
    
    /**
     * 
     * @param r
     */
    private void callPanelUploadSuccessMethod(ReturnedMessage r){
    	if(ulcPane != null && this.uploadSuccessMethodName!=null && this.uploadSuccessMethodName.trim().length()>0 && r!=null){
    		RDCallbackMethodHandler.callRDMethod(ulcPane, uploadSuccessMethodName, new Object[] { r });
    	}
    
    }
    
    /**
     * Test Method for Bug 
     */
    public void testUpload(){

    	FileChooserConfig fcConfig= new FileChooserConfig();
    	fcConfig.setFileSelectionMode(FileChooserConfig.FILES_ONLY);
    	fcConfig.setMultiSelectionEnabled(false);

    	ClientContext.loadFile(
    	 new com.ulcjava.base.application.util.IFileLoadHandler(){
    		public void onFailure(int reason, String description){
    			//do something
    		}
    		
    		public void onSuccess(InputStream ins[], String filePaths[], String fileNames[]){
    			//do something
    		}
    	 },fcConfig,null);
    }
	public String getAskIfOverWriteFileMethodName() {
		return askIfOverWriteFileMethodName;
	}
	public void setAskIfOverWriteFileMethodName(String askIfOverWriteFileMethodName) {
		this.askIfOverWriteFileMethodName = askIfOverWriteFileMethodName;
	}
	public String getServerPath() {
		return serverPath;
	}
	public String getServerFilePath() {
		return serverFilePath;
	}
	public void setServerFilePath(String serverFilePath) {
		this.serverFilePath = serverFilePath;
	}
	public String getErrorMethodeName() {
		return errorMethodeName;
	}
	public void setErrorMethodeName(String errorMethodeName) {
		this.errorMethodeName = errorMethodeName;
	}
	public String getUploadSuccessMethodName() {
		return uploadSuccessMethodName;
	}
	public String getProgressMethodName() {
		return progressMethodName;
	}
  
}
