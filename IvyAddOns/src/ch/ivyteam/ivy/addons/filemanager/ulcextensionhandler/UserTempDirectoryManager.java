package ch.ivyteam.ivy.addons.filemanager.ulcextensionhandler;

import ch.ivyteam.ivy.addons.filemanager.FileHandler;
import ch.ivyteam.ivy.addons.util.RDCallbackMethodHandler;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;

import ch.xpertline.ulc.server.headless.ULCTempFileDirectoryManager;
import ch.xpertline.ulc.server.headless.ULCTempFileDirectoryManager.TempFileDirectoryManagerEvent;
import ch.xpertline.ulc.server.headless.ULCTempFileDirectoryManager.TempFileDirectoryManagerListener;


/**
 * @author ec
 * This Class implements the ULCExtension allowing to create and delete directories into the client default temp directory.
 * @param <T> 
 */
public class UserTempDirectoryManager<T extends IRichDialogPanel> {
	
	// The ULCExtension object responsible for managing the temp directories at client Side
	ULCTempFileDirectoryManager tempFileDirectoryManager = null; 
	// This directory is the directory under the client default temp where we work. 
	// If it is empty Stirng, we work at the root of the client default temp dir.
	private String baseTempDir=""; 
	// Ivy Panel RDC callback method to inform the calling RDC Process when a temp directory was made. 
	// This method has to take the new temp dir path as String parameter.
	private String rDCCallbackToGetNewCreatedTempDirPath=""; 
	// Ivy Panel RDC callback method to inform the calling RDC Process when an error occured. 
	// This method has to take the error as String parameter.
	private String rDCCallbackError="";
	// the newest created directory path
	private String returnedDirPath="";
	// the calling IRichDialogPanel
	protected T parentRD;
	

	/**
	 * Default constructor
	 *
	 */
	public UserTempDirectoryManager(){
		this("", null, "", "");
	}
	
	
	/**
	 * Constructor with baseTempDir. The baseTempdir is the path within the client temp directory where you are going to work.<br>
	 * if it is null or empty String, you are going to work at the root of the client temp directory.
	 * 
	 * @param baseTempDir
	 */
	public UserTempDirectoryManager(String baseTempDir) {
		this(baseTempDir, null, "", "");
	}
	
	/**
	 * Constructor with baseTempDir, parent RDC panel where this UserTempDirectoryManager Object is used,<br>
	 * callbackToGetNewCreatedTempDirPath the name of the method of the parent RDC to call when a new directory was created,<br>
	 * callbackError the name of the method of the parent RDC to call when a new directory creation failed.<br><br>
	 * 
	 * With this constructor you have a full working UserTempDirectoryManager that can call Rich Dialog's callback methods.<br><br>
	 * @param baseTempDir : path within the client temp directory where you are going to work<br>
	 * if it is null or empty String, you are going to work at the root of the client temp directory.<br>
	 * @param parent : parent RDC (IRichDialogPanel) panel where this UserTempDirectoryManager Object is used<br>
	 * @param callbackToGetNewCreatedTempDirPath : the name of the method of the parent RDC to call when a new directory was created<br>
	 * @param callbackError : the name of the method of the parent RDC to call when a new directory creation failed<br>
	 * 
	 */
	public UserTempDirectoryManager(String baseTempDir,T parent, String callbackToGetNewCreatedTempDirPath, String callbackError) {
		super();
		this.getTempFileDirectoryManager();
		if(baseTempDir != null && !baseTempDir.trim().equalsIgnoreCase("")){
			this.baseTempDir = baseTempDir;
			this.formatBaseTempDir();
		}
		rDCCallbackToGetNewCreatedTempDirPath = callbackToGetNewCreatedTempDirPath;
		rDCCallbackError = callbackError;
		this.parentRD = parent;
		this.makeBaseTempDir();
	}
	
	/********************************** MOST IMPORTANT GETTER AND SETTER AND UTILITY METHODS ***********************************/
	
	/**
	 * @return the name of the method of the parent RDC to call when a new directory was created
	 */
	public String getRDCCallbackToGetNewCreatedTempDirPath() {
		return rDCCallbackToGetNewCreatedTempDirPath;
	}

	/**
	 * set the name of the method of the parent RDC to call when a new directory was created
	 * @param callbackToGetNewCreatedTempDirPath
	 */
	public void setRDCCallbackToGetNewCreatedTempDirPath(
			String callbackToGetNewCreatedTempDirPath) {
		rDCCallbackToGetNewCreatedTempDirPath = callbackToGetNewCreatedTempDirPath;
	}

	/**
	 * if the ULCTempFileDirectoryManager is null, creates it, and register to its management event.
	 * This event is launched whenever a new directory is created in the client temp dir path.
	 * @return the ULCTempFileDirectoryManager
	 */
	public ULCTempFileDirectoryManager getTempFileDirectoryManager() {
		
		if(this.tempFileDirectoryManager == null){
			this.tempFileDirectoryManager = new ULCTempFileDirectoryManager();
			this.tempFileDirectoryManager.addTempFileDirectoryManagerListener(new TempFileDirectoryManagerListener(){
				public void tempDirExists(TempFileDirectoryManagerEvent event) {
					if(event.getTempDirExists()){
						returnedDirPath= event.getPathInTemp();
						RDCallbackMethodHandler.callRDMethod(parentRD, rDCCallbackToGetNewCreatedTempDirPath, new Object[]{event.getPathInTemp()});
						
					}else{
						RDCallbackMethodHandler.callRDMethod(parentRD, rDCCallbackError, new Object[]{event.getPathInTemp()});
					}
					
				}
				
			});
		
		}
		return this.tempFileDirectoryManager;
	}

	/**
	 * allows setting the the ULCTempFileDirectoryManager
	 * @param tempFileDirectoryManager
	 */
	public void setTempFileDirectoryManager(
			ULCTempFileDirectoryManager tempFileDirectoryManager) {
		this.tempFileDirectoryManager = tempFileDirectoryManager;
	}

	/**
	 * make the base temp directory in the client side default temp directory
	 *
	 */
	public void makeBaseTempDir(){
		if(this.tempFileDirectoryManager==null)
			this.getTempFileDirectoryManager();
		
		this.tempFileDirectoryManager.makeDirectory(this.baseTempDir);
		
	}
	
	/**
	 * make the base temp directory in the client side default temp directory.<br>
	 * The base temp dir is given as parameter
	 * @param _baseTempDir String
	 */
	public void makeBaseTempDir(String _baseTempDir){
		this.setBaseTempDir(_baseTempDir);
		if(this.tempFileDirectoryManager==null)
			this.getTempFileDirectoryManager();
		
		this.tempFileDirectoryManager.makeDirectory(this.baseTempDir);
	}
	
	/**
	 * try to create a new directory into the Client temp directory.<br>
	 * @param dir : the path od the new directory. It is going to be created into the Client temp directory + the baseTempDir.
	 */
	public void makeTempDir(String dir){
		if(tempFileDirectoryManager==null) this.getTempFileDirectoryManager();
		this.tempFileDirectoryManager.makeDirectory(this.baseTempDir+dir);
	}
	
	/**
	 * delete the given directory and all its children (other directories or files)<br>
	 * the directory to delete is denoted by its path under the Client temp directory + baseTempDir.
	 * @param dir
	 */
	public void deleteTempDir(String dir){
		if(tempFileDirectoryManager==null) this.getTempFileDirectoryManager();
		this.tempFileDirectoryManager.deleteAllUnderDirectory(this.baseTempDir+dir);
		
	}
	
	/**
	 * private use: format the baseTempDir to be sure we have a EndSeparator at the end.
	 * At client side, the right OS File.Separator is going to be used.
	 *
	 */
	private void formatBaseTempDir(){
		if(this.baseTempDir != null && !this.baseTempDir.trim().equalsIgnoreCase(""))
			this.baseTempDir = FileHandler.formatPathWithEndSeparator(this.baseTempDir, false);
	}
	
	
	/******************************** REST OF GETTER AND SETTER ***************************************/
	
	/**
	 * @return the base temp directory in the uclient default temp directory
	 * 
	 * 
	 */
	public String getBaseTempDir() {
		return baseTempDir;
	}


	/**
	 * 
	 * @param baseTempDir
	 */
	public void setBaseTempDir(String baseTempDir) {
		this.baseTempDir = baseTempDir;
		this.formatBaseTempDir();
	}
	

	/**
	 * @return the rDCCallbackError
	 */
	public String getRDCCallbackError() {
		return rDCCallbackError;
	}


	/**
	 * @param callbackError the rDCCallbackError to set
	 */
	public void setRDCCallbackError(String callbackError) {
		rDCCallbackError = callbackError;
	}


	/**
	 * @return the returnedDirPath
	 */
	public String getReturnedDirPath() {
		return returnedDirPath;
	}


	/**
	 * @return the parentRD
	 */
	public T getParentRD() {
		return parentRD;
	}


	/**
	 * @param parentRD the parentRD to set
	 */
	public void setParentRD(T parentRD) {
		this.parentRD = parentRD;
	}
	

}
