package ch.ivyteam.ivy.addons.filemanager.ulcextensionhandler;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import ch.xpertline.ulc.server.headless.ULCFileCoupleChecker;
import ch.xpertline.ulc.server.headless.ULCFileCoupleChecker.ReturnFilesChecksumsEvent;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.addons.filemanager.FileCouple;
import ch.ivyteam.ivy.addons.filemanager.FileHandler;
import ch.ivyteam.ivy.addons.util.RDCallbackMethodHandler;
import ch.ivyteam.ivy.environment.Ivy;

import org.apache.commons.lang.StringUtils;

/**
 * @author ec<br>
 * @since 01.01.2010
 * This java class implements the ch.xpertline.ulc.server.headless.ULCFileCoupleChecker ULC extension.<br>
 * This extension manage the File checking between a Client and the server while File editing.<br>
 * 
 */
public class FileCoupleChecker<T extends IRichDialogPanel>{
	/**
	 * The ULC half object of the FileCoupleChecker ULC/UI couple.
	 * This FileCoupleChecker ULC half object gets the hash (Client edited File path / Client edited File checksum)<br>
	 * of the edited files whenever a File has changed at the client side.<br>
	 * The checking if Files have been modified occurs at client side periodically. See the variable checkPeriod. 
	 * Every changed File is then uploaded on the server and replaces the old server File Version.
	 */ 
	ULCFileCoupleChecker fcc= null;
	
	/**
	 * The parent Rich dialog that uses this FileCoupleChecker.
	 * Used to call its "FileModified" callback method whenever a File was modified.
	 */ 
	protected T parentRD;
	
	/**
	 * The parent RD fileModified callback method name. If this method's name is not an empty String or null,<br>
	 * it will be called back whenever a File is modified. It sends the jaav.io.File object that was modified to the RD.
	 */
	String fileModifiedMethodName;
	
	/**
	 * HashMap coming from the UI half object when Files are modified at client side.<br>
	 *  it contains key/value pairs: file path at client side / checksum
	 */
	final HashMap<String, Long> hash = new HashMap<String, Long>();
	
	/**
	 * Hashmap from the edited Files at server side
	 */
	HashMap<String, Long> serverFileCheckSumHashMap = new HashMap<String, Long>();
	
	/**
	 * The List of the FileCouple taht represents Client side/Server side Files Couples that are edited.
	 */
	final ArrayList<FileCouple> fileCouples = new ArrayList<FileCouple>();

	/**
	 * The period of the check for modified Files at client side. Per default 3000 ms (3 Seconds)
	 */
	int checkPeriod = 3000;

	/**
	 * the file separator at client side: "/" by Unix systems and "\" by Windows systems, default is the windows' one
	 */
	String clientFileSeparator="\\";

	/**
	 * Default constructor
	 *
	 */
	public FileCoupleChecker() {
		this(null, "");
	}

	/**
	 * Constructor with a reference to its parent Rich Dialog and its errormethod callback name
	 * @param parentRD: the Rich Dialog Panel that implements this object
	 * @param fileModifiedMethodName: the RD error method name that should be called back in case of an error.
	 */
	public FileCoupleChecker(T parentRD, String fileModifiedMethodName) {
		//initializes the parent Rich Dialog
		this.parentRD = parentRD;
		// initializes the RD File Modified Callback method
		this.fileModifiedMethodName = fileModifiedMethodName;
		// initializes the ULCFileCoulpeChecker half Object
		fcc= new ULCFileCoupleChecker();
		// add the Listener responsible for listening to the files' modifications at client side (UI side)
		fcc.addReturnFilesChecksumsListener(new ULCFileCoupleChecker.ReturnFilesChecksumsListener(){
			// everytime a File has changed on the client, the server ULC half object gets a hashMap of the changed Files to upload
			public synchronized void filesChecksum(ReturnFilesChecksumsEvent event) {
				hash.clear();
				hash.putAll(event.getFilesChecksums());
				//after the HashMap of the changed client Files was updated, we upload those files on the server. 
				Ivy.log().info("File changed reported");
				uploadChangedFiles();
			}
		});
	}
	
	/**
	 * This method is responsible for uploading the Files that have changed on the Client
	 *
	 */
	public synchronized void uploadChangedFiles(){
		// We put all the Client Files path in a Set to be able to iterate it.
		Set<String> filesSet= hash.keySet();
		Iterator<String> filesIterator = filesSet.iterator();

		search:
			while(filesIterator.hasNext()){
				// for each changed File at client side, we search it in the fileCouples List. 
				// If we find it we replace the corresponding server File by automatically uploading the client File.
				File f = new File(filesIterator.next());
				//org.apache.commons.lang.StringUtils.replace(sample, "\"", "\"\"")
				String fPath = f.getPath().contains("\\")?StringUtils.replace(f.getPath(),"\\", this.clientFileSeparator):
					(f.getPath().contains("/")?StringUtils.replace(f.getPath(),"/", this.clientFileSeparator):
						f.getPath());
				Ivy.log().info("File changed reported: "+fPath);
				for(int i =0; i<fileCouples.size(); i++)
				{
					String fcPath= fileCouples.get(i).getClientFile().getPath().contains("\\")?
							StringUtils.replace(fileCouples.get(i).getClientFile().getPath(),"\\", this.clientFileSeparator):
								(fileCouples.get(i).getClientFile().getPath().contains("/")?
										StringUtils.replace(fileCouples.get(i).getClientFile().getPath(),"/", this.clientFileSeparator):
											fileCouples.get(i).getClientFile().getPath());
							Ivy.log().info("File changed reported: "+fcPath);
							if(fPath.equals(fcPath))
							{
								String dirpath = null;
								try{
									dirpath= FileHandler.getFileDirectoryPath(fileCouples.get(i).getServerFile());
								}catch(Exception _ex){
									Ivy.log().error(_ex.getMessage(), _ex);
								}
								if(dirpath!=null){
									FileHandler.upload(f, dirpath);
									RDCallbackMethodHandler.callRDMethod(this.parentRD, this.fileModifiedMethodName, new Object[] { fileCouples.get(i).getServerFile() });
								}
								continue search;
							}
				}
			}
	}
	
	/**
	 * Set the FileCouple list with the given list
	 * An hashMap of Client File Path/corresponding checksum on the server will be sent to the client half Object<br>
	 * The Client Half Object UIFileCoupleChecker will restart its check routine.
	 * @param list
	 */
	public synchronized void setFileCouples(List<FileCouple> list ){
		fileCouples.clear();
		serverFileCheckSumHashMap.clear();
		fileCouples.addAll(list);
		for(int i=0; i<fileCouples.size(); i++){
			fileCouples.get(i).setServerFileAdler32(FileHandler.getAdler32(fileCouples.get(i).getServerFile()));
			String fcPath= fileCouples.get(i).getClientFile().getPath().contains("\\")?StringUtils.replace(fileCouples.get(i).getClientFile().getPath(),"\\", this.clientFileSeparator):
				(fileCouples.get(i).getClientFile().getPath().contains("/")?StringUtils.replace(fileCouples.get(i).getClientFile().getPath(),"/", this.clientFileSeparator):
					fileCouples.get(i).getClientFile().getPath());
			serverFileCheckSumHashMap.put(fcPath, fileCouples.get(i).getServerFileAdler32().longValue());
		}
		fcc.setFileChecksumMap(serverFileCheckSumHashMap);
	}
	
	/**
	 * get the callback method name that should be called on the Rich Dialog whenever a File is modified
	 * @return
	 */
	public String getFileModifiedMethodName() {
		return fileModifiedMethodName;
	}

	
	/**
	 * 
	 * @param fileModifiedMethodName
	 */
	public void setFileModifiedMethodName(String fileModifiedMethodName) {
		this.fileModifiedMethodName = fileModifiedMethodName;
	}

	/**
	 * Returns the last stand of the FileCouples with the actualisated checksums for the Files on the server
	 * @return the ArrayList of the FileCouple that are currently edited.
	 */
	public ArrayList<FileCouple> computeFileServerChecksum(){
		for(int i=0; i<fileCouples.size(); i++){
			fileCouples.get(i).setServerFileAdler32(FileHandler.getAdler32(fileCouples.get(i).getServerFile()));
		}
		return fileCouples;
	}
	
	/**
	 * 
	 * @return
	 */
	public int getCheckPeriod() {
		return checkPeriod;
	}
	
	/**
	 * 
	 * @param checkPeriod
	 */
	public void setCheckPeriod(int checkPeriod) {
		this.checkPeriod = checkPeriod;
		fcc.resetCheckPeriod(checkPeriod);
	}
	
	/**
	 * 
	 *
	 */
	public void restartFileCheck(){
		fcc.restartClientTimer();
	}
	
	/**
	 * 
	 *
	 */
	public void stopFileCheck(){
		fcc.stopClientTimer();
	}

	/**
	 * 
	 * @return the client file separator used by the FileCoupleChecker.<br>
	 * the file separator at client side: "/" by Unix systems and "\" by Windows systems, default is the windows' one
	 */
	public String getClientFileSeparator() {
		return clientFileSeparator;
	}
	/**
	 * set the client file separator to use
	 * @param _clientFileSeparator
	 */
	public void setClientFileSeparator(String _clientFileSeparator) {
		if(_clientFileSeparator == null || _clientFileSeparator.trim().length()==0)
		{
			_clientFileSeparator ="\\";
		}
		this.clientFileSeparator = _clientFileSeparator;
	}


}
