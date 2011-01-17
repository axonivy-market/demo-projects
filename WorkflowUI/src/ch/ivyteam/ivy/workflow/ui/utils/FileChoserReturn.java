/**
 * 
 */
package ch.ivyteam.ivy.workflow.ui.utils;

/**
 * @author tisea
 * 
 */
public class FileChoserReturn {
	private Boolean success;

	private String filePath;

	
	/**
	 * Constructor default
	 */
	public FileChoserReturn() {
		super();
		success = true;
		filePath = "";
	}


	/**
	 * Constructor with parameters
	 * @param filePath
	 * @param success
	 */
	public FileChoserReturn(String aFilePath, Boolean aSuccess) {
		super();
		this.filePath = aFilePath;
		this.success = aSuccess;
	}


	/**
	 * @return the filePath
	 */
	public String getFilePath() {
		return filePath;
	}


	/**
	 * @param filePath the filePath to set
	 */
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}


	/**
	 * @return the success
	 */
	public Boolean getSuccess() {
		return success;
	}


	/**
	 * @param success the success to set
	 */
	public void setSuccess(Boolean success) {
		this.success = success;
	}

	
	
}
