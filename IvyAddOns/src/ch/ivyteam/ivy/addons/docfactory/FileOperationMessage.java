package ch.ivyteam.ivy.addons.docfactory;

import java.io.File;
import java.util.ArrayList;

import ch.ivyteam.ivy.scripting.objects.List;


/**
 * @author ec
 * @since 27.10.2009
 * THis class describes an object that can be returned after any operation on or about Files (java.io.File)<br>
 * Such an operation can be an Upload, download, a letter generation with a document factory...
 *
 */
public class FileOperationMessage {
	
	/** the message that is returned by the operation*/
	private String message;
	/** the Files taht can be implied, created ect... by the operation*/
	private List<java.io.File> files;
	/** the type of the message (SUCCESS_MESSAGE, ERROR_MESSAGE, INFORMATION_MESSAGE)*/
	private int type;
	/** */
	public static final int SUCCESS_MESSAGE = 1;
	/** */
    public static final int ERROR_MESSAGE = 2;
    /** */
    public static final int INFORMATION_MESSAGE = 3;
    
    
	/**
	 * Constructor
	 * Generates the FileOperationMessage object with empty message, empty File List<br>
	 * and as an information message
	 */
	public FileOperationMessage() {
		this("", List.create(java.io.File.class), 3);
		
	}

	/**
	 * Constructor with the message, the List of the Files and the type
	 * @param _message
	 * @param _files
	 * @param _type
	 */
	public FileOperationMessage(String _message, List<File> _files, int _type) {
		super();
		if(_message!= null)
		{
			this.message = _message;
		}else
		{
			this.message = "";
		}
		
		if(_files != null)
		{
			this.files = _files;
		}else
		{
			this.files= List.create(java.io.File.class);
		}
		
		if( 0 <_type &&  _type < 4)
		{// if type indicated supported
			this.type = _type;
		}
		else
		{ //type indicated not supported, we set the type to Information's one
			this.type=3;
		}
		
	}

	/**
	 * @return the files
	 */
	public List<java.io.File> getFiles() {
		if(this.files==null)
		{
			this.files= List.create(java.io.File.class);
		}
		return files;
	}

	/**
	 * @param _files the files to set
	 */
	public void setFiles(List<java.io.File> _files) {
		if(_files != null)
		{
			this.files.clear();
			this.files.addAll(_files);
		}else
		{
			this.files= List.create(java.io.File.class);
		}
	}

	/**
	 * Clears the files List
	 */
	public void emptyFileList(){
		if(this.files==null)
		{
			this.files= List.create(java.io.File.class);
		}
		else
		{
			this.files.clear();
		}
	
	}
	
	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	/**
	 * @return the type
	 */
	public int getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(int type) {
		this.type = type;
	}
    
	/**
	 * add a file to the list
	 * @param _file
	 */
    public void addFile(java.io.File _file){
    	if(_file !=null)
    	{
    		this.files.add(_file); 
    	}
    }
    
    /**
     * add files to the list
     * @param _files
     */
    public void addFiles(ArrayList<java.io.File> _files){
    	if(this.files==null)
		{
			this.files= List.create(java.io.File.class);
		}
    	if(_files!=null)
    	{
    		this.files.addAll(_files);
    	}
    }
	

}
