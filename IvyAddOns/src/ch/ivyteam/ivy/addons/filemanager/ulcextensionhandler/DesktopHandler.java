package ch.ivyteam.ivy.addons.filemanager.ulcextensionhandler;

import java.io.File;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.addons.filemanager.EmailContainer;
import ch.ivyteam.ivy.addons.util.RDCallbackMethodHandler;
import ch.ivyteam.ivy.environment.Ivy;
import ch.xpertline.ulc.server.headless.ULCXJava6Desktop;



/**
 * @author ec<br>
 * This class implements the ch.xpertline.ulc.server.headless.ULCXDesktop ULC Extension.<br>
 * This extension allows using the JDIC Desktop Object.
 * A DesktopHandler Object can communicate some informations with a parent Rich Dialog IRichDialogPanel<br>
 * with the help of callback methods. Those methods are Rich Dialog's methods, that are going to be called<br>
 * if the following conditions are filled:<br>
 * - the indicated parent Rich Dialog is not null,<br>
 * - the methods are declared in the public rich dialog interface.
 *
 */
public class DesktopHandler<T extends IRichDialogPanel> {
	/** The parent Rich Dialog where the DesktopHandler object is used*/
	protected T parentRD;
	/** The callback method from the parent Rich Dialog that is called in case of error.<br>
	 * This method has to accept a String (message) as parameter.*/
	
	String errorMethodName;
	/** The callback method from the parent Rich Dialog that is called when the UIXDesktop Client Object<br>
	 * returns if a given File is editable or not.<br>
	 * Usefull if you want to edit a file at client side,<br> 
	 * but you don't know if an edition programm is associated with this file Type at client side.<br>
	 * If the file is not editable, than you still have a chance to open it in read only mode (openFile method).<br>
	 * This method has to accept a boolean as parameter.*/
	String isFileEditableCallbackMethod;
	/** The callback method from the parent Rich Dialog that is called when the UIXDesktop Client Object<br>
	 * returns if a given File is printable or not.<br>
	 * This method has to accept a boolean as parameter.*/
	String isFilePrintableCallbackMethod;
	/** the file separator at client side: "/" by Unix systems and "\" by Windows systems, default is the windows' one */
	private String clientFileSeparator = "\\";
	/** the ULCXDesktop object*/
	ULCXJava6Desktop javaDesktop=null;
	
	private long time;


	/**
	 * Default constructor
	 *
	 */
	public DesktopHandler(){
    	this(null,"","","");
    }
    
	/**
	 * Constructor with a reference to the parent RD and its error callback method name
	 * @param parent: the RD Panel that extends the ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel interface
	 * @param errorMethodName: the error callback method name as String 
	 */
    public DesktopHandler(T parent, String _errorMethodName){
    	this(parent,_errorMethodName,"","", true);
    }
    
    /**
	 * Constructor with a reference to the parent RD and its error, isFileEditable, isFilePrintable callback method name
	 * @param parent: the RD Panel that extends the ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel interface
	 * @param errorMethodName: the error callback method name as String 
	 * @param isFileEditableCallbackMethod: Callback method to indicate if a File is editable
	 * @param isFilePrintableCallbackMethod: Callback method to indicate if a File is printable 
	 */
    public DesktopHandler(T parent, String _errorMethodName,String _isFileEditableCallbackMethod, String _isFilePrintableCallbackMethod){
    	this(parent,_errorMethodName,_isFileEditableCallbackMethod,_isFilePrintableCallbackMethod, true);
    }
    
    /**
	 * Constructor with a reference to the parent RD and its error, isFileEditable, isFilePrintable callback method name
	 * @param parent: the RD Panel that extends the ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel interface
	 * @param errorMethodName: the error callback method name as String 
	 * @param isFileEditableCallbackMethod: Callback method to indicate if a File is editable
	 * @param isFilePrintableCallbackMethod: Callback method to indicate if a File is printable 
	 */
    public DesktopHandler(T parent, String _errorMethodName,String _isFileEditableCallbackMethod, String _isFilePrintableCallbackMethod, boolean _useJava6){
    	this.parentRD=parent;
    	this.errorMethodName=_errorMethodName!=null?_errorMethodName:"";
    	this.isFileEditableCallbackMethod = _isFileEditableCallbackMethod!=null?_isFileEditableCallbackMethod:"";
    	this.isFilePrintableCallbackMethod = _isFilePrintableCallbackMethod!=null?_isFilePrintableCallbackMethod:"";
    	
    
    		javaDesktop = new ULCXJava6Desktop();
    		javaDesktop.addOnDesktopExceptionListener(new ULCXJava6Desktop.OnDesktopExceptionListener(){
    			public void desktopException(ULCXJava6Desktop.OnDesktopExceptionEvent event) {
    				sendErrorMessage(event.getDesktopExceptionMessage());
    			}
    		});
    		
    		javaDesktop.addIsFileEditableReturnListener(new ULCXJava6Desktop.IsFileEditableReturnListener(){
    			public void fileEditable(ULCXJava6Desktop.IsFileEditableReturnEvent event) {
    				Boolean b = event.getIsFileEditable();
    				sendIsFileEditable(b);
    			}
    		});
    		
    		javaDesktop.addIsFilePrintableReturnListener(new ULCXJava6Desktop.IsFilePrintableReturnListener(){
    			public void filePrintable(ULCXJava6Desktop.IsFilePrintableReturnEvent event) {
    				Boolean b = event.getIsFilePrintable();
    				sendIsFilePrintable(b);
    			}
    		});
    	
    }
    
    /**
     * Open a File at Client side in read only mode
     * @param _file the java.io.File to open
     */
    public void openFile(File _file){
    		javaDesktop.openFile(_file);
    }
    
    /**
     * Open a File at Client Side with the default editing program for that file extension
     * @param _file the java.io.File to edit
     */
    public void editFile(File _file){
    		javaDesktop.editFile(_file);
    }
    
    /**
     * Open the default mailing program at client side
     *
     */
    public void mail(){
    		javaDesktop.mail();
    }
    
    /**
     * Open the default mailing program at client side with pre filled fields
     * @param _subject: subject of the mail
     * @param _body: body of the mail
     * @param _to: destination addresses of the email (, or ; separated)
     * @param _cc: copy addresses of the email (, or ; separated)
     * @param _bcc: invisible copy addresses of the email (, or ; separated)
     * @param _attachments: The attachments are Files that must be present at client side
     */
    public void mailMessage(String _subject, String _body, String _to, String _cc, String _bcc, String _attachments){
    		javaDesktop.mailMessage(_subject, _body, _to, _cc, _bcc, _attachments);
    }
    
    /**
     * Open the default mailing program at client side with pre filled fields.<br>
     * An EmailContainer Object is given as parameter. This Class is an Ivy DataClass:<b>
     * ch.ivyteam.ivy.addons.filemanager.EmailContainer and it contains all the fields necessary to build a complete EMail.
     * @param _mailContainer
     */
    public void mailMessage(EmailContainer _mailContainer){
    	if(_mailContainer !=null){
    		String to ="";
    		String cc="";
    		String bcc="";
    		String attach = "";
    		for(String s:_mailContainer.getTo()){to+=s+";";}
    		for(String s:_mailContainer.getCc()){cc+=s+";";}
    		for(String s:_mailContainer.getBcc()){bcc+=s+";";}
    		for(java.io.File f:_mailContainer.getAttachments()){attach+=f.getPath()+";";}
    			javaDesktop.mailMessage(
        				_mailContainer.getSubject(),
        				_mailContainer.getBody(),
        				to,
        				cc,
        				bcc,
        				attach);
    	}else{
    		this.mail();
    	}
    }
    
    /**
     * Opens the default user Browser at the www address
     * @param _www : the www address
     */
    public void browse(String _www){
    	//minimum www check
    	if(! _www.trim().startsWith("http://")&& ! _www.trim().startsWith("https://") && ! _www.trim().startsWith("ftp://")){
    		_www = "http://"+_www;
    	}
    		javaDesktop.browse(_www);
    }

    /**
     * Calls the isFileEditable method from the ULCXDesktop object.<br>
     * As soon as this object gets the client response,<br>
     * the isFileEditable call back method from the parent RDC <br>
     * is going to be called with true if the file is editable,<br>
     * else with false.<br>
     * @param _file the java.io.File that is going to be check whether it is editable or not.
     */
    public void isFileEditable(java.io.File _file){
    		javaDesktop.isFileEditable(_file);
    }
    
    /**
     * Calls the isFilePrintable method from the ULCXDesktop object.<br>
     * As soon as this object gets the client response,<br>
     * the isFilePrintable call back method from the parent RDC <br>
     * is going to be called with true if the file is Printable,<br>
     * else with false.<br>
     * @param _file the java.io.File that is going to be check wether it is Printable or not.
     */
    public void isFilePrintable(java.io.File _file){
    		javaDesktop.isFilePrintable(_file);
    }
    
    /**
     * tries to print a File
     * @param _file
     */
    public void print(java.io.File _file){
    		javaDesktop.print(_file);
    }

    /**
     * get the call back error method name
     * @return callback error method name
     */
	public String getErrorMethodName() {
		return errorMethodName;
	}

	/**
	 * Set the call back error method name
	 * @param _errorMethodName
	 */
	public void setErrorMethodName(String _errorMethodName) {
		this.errorMethodName = _errorMethodName;
	}

	/**
	 * Return a reference to the RD parent from this FileDownloadHandler
	 * @return Parent RD
	 */
	public T getParentRD() {
		return parentRD;
	}

	/**
	 * set the RD parent from this FileDownloadHandler
	 * @param _parentRD
	 */
	public void setParentRD(T _parentRD) {
		this.parentRD = _parentRD;
	}
	
	/**
	 * send error message to the parent RD if an error method name was given.
	 * @param msg
	 */
	public final void sendErrorMessage(String msg){
		Ivy.log().error(msg);
		RDCallbackMethodHandler.callRDMethod(this.parentRD, this.errorMethodName, new Object[] { msg });
	}
	
	/**
	 * Tries to call the RDC parent callback method to tell if a File is editable or not.
	 * @param b, boolean true if the file is editable, else false.
	 */
	public final void sendIsFileEditable(Boolean b){
		/*We use a temporary workaround here, because for some reasons the UI Desktop objects sends its editable event always twice */
		long l=1000;
		if(this.time>0)
		{
			//Ivy.log().info("Elapsed Time in milliseconds: " +(this.time - System.currentTimeMillis()));
			l=System.currentTimeMillis()-this.time;
		}
		if(l>500){
			RDCallbackMethodHandler.callRDMethod(this.parentRD, this.isFileEditableCallbackMethod, new Object[] { b });
		}
		this.time=System.currentTimeMillis();
	}
	
	/**
	 * Tries to call the RDC parent callback method to tell if a File is printable or not.
	 * @param b, boolean true if the file is printable, else false.
	 */
	public final void sendIsFilePrintable(Boolean b){
		RDCallbackMethodHandler.callRDMethod(this.parentRD, this .isFilePrintableCallbackMethod, new Object[] { b });
	}

	/**
	 * @return the isFileEditableCallbackMethod
	 */
	public String getIsFileEditableCallbackMethod() {
		return isFileEditableCallbackMethod;
	}

	/**
	 * @param _isFileEditableCallbackMethod the isFileEditableCallbackMethod to set
	 */
	public void setIsFileEditableCallbackMethod(String _isFileEditableCallbackMethod) {
		this.isFileEditableCallbackMethod = _isFileEditableCallbackMethod;
	}

	/**
	 * @return the isFilePrintableCallbackMethod
	 */
	public String getIsFilePrintableCallbackMethod() {
		return isFilePrintableCallbackMethod;
	}

	/**
	 * @param _isFilePrintableCallbackMethod the isFilePrintableCallbackMethod to set
	 */
	public void setIsFilePrintableCallbackMethod(
			String _isFilePrintableCallbackMethod) {
		this.isFilePrintableCallbackMethod = _isFilePrintableCallbackMethod;
	}

	/**
	 * 
	 * @return @return the client file separator
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
