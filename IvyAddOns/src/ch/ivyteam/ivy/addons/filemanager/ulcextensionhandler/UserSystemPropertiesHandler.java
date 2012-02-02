/**
 * 
 */
package ch.ivyteam.ivy.addons.filemanager.ulcextensionhandler;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.Map.Entry;

//import ch.ivyteam.ivy.environment.Ivy;
import ch.xpertline.ulc.server.headless.ULCUserSystemProperties;
import ch.xpertline.ulc.server.headless.ULCUserSystemProperties.UserSystemPropertiesEvent;
import ch.xpertline.ulc.server.headless.ULCUserSystemProperties.UserSystemPropertiesListener;
import ch.ivyteam.ivy.addons.util.RDCallbackMethodHandler;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;


/**
 * @author ec<br>
 * The UserSystemPropertiesHandler is used to be able to retrieve the User system properties<br>
 * from his java VM with the help from its java.lang.System class.<br>
 * It uses an ULC extension: ULCUserSystemProperties.
 * 
 */
public class UserSystemPropertiesHandler<T extends IRichDialogPanel> {
	final ULCUserSystemProperties usp = new ULCUserSystemProperties();
	final HashMap<String,String> properties = new HashMap<String,String>();
	protected T parentRD;
	public String getUserNameCallBack="", getUserTempDirCallBack="", getClientFileSeparatorCallBack="";
	
	/**
	 * Basic constructor, no callbackMethods
	 *
	 */
	public UserSystemPropertiesHandler(){
		this(null,"","");
	}
	
	/**
	 * Constructor with reference to parent Rich Dialog and to Callback Methods for userName and userTempDir<br>
	 * It retrieves automatically the user system properties by calling the ULCUserSystemProperties.retrieveUserSystemProperties() method.<br>
	 * @param parent, the Parent RD implementing the IRichDialog Interface
	 * @param getUserNameCallBack, the name of the callback method for getting the userName
	 * @param getUserTempDirCallBack, the name of the callback method for getting the userTempDir
	 */
	public UserSystemPropertiesHandler(T parent, String getUserNameCallBack, String getUserTempDirCallBack){
		this.parentRD=parent;
		this.getUserNameCallBack= getUserNameCallBack;
		this.getUserTempDirCallBack=getUserTempDirCallBack;
		//This event is fired as soon as the Client half object returns its System properties
		usp.addUserSystemPropertiesListener(
				new UserSystemPropertiesListener(){
					public void userProperties(UserSystemPropertiesEvent event){
						//As soon we receive the properties, we set them
						setProperties(event.getSystemProperties());
					}
			});
		usp.retrieveUserSystemProperties();
	}
	
	/**
	 * Constructor with reference to parent Rich Dialog and to Callback Methods for userName and userTempDir<br>
	 * It retrieves automatically the user system properties by calling the ULCUserSystemProperties.retrieveUserSystemProperties() method.<br>
	 * @param _parent, the Parent RD implementing the IRichDialog Interface
	 * @param _getUserNameCallBack, the name of the callback method for getting the userName
	 * @param _getUserTempDirCallBack, the name of the callback method for getting the userTempDir
	 * @param _getClientFileSeparatorCallBack, the name of the callback method for getting the ClientFileSeparator
	 */
	public UserSystemPropertiesHandler(T _parent, String _getUserNameCallBack, String _getUserTempDirCallBack, String _getClientFileSeparatorCallBack){
		this.parentRD=_parent;
		this.getUserNameCallBack= _getUserNameCallBack;
		this.getUserTempDirCallBack=_getUserTempDirCallBack;
		this.getClientFileSeparatorCallBack = _getClientFileSeparatorCallBack;
		//This event is fired as soon as the Client half object returns its System properties
		usp.addUserSystemPropertiesListener(
				new UserSystemPropertiesListener(){
					public void userProperties(UserSystemPropertiesEvent event){
						//As soon we receive the properties, we set them
						setProperties(event.getSystemProperties());
					}
			});
		usp.retrieveUserSystemProperties();
	}
	
	/**
	 * Method used to call the user Java VM System Object to refresh the Properties
	 */
	public void resetProperties(){
		usp.retrieveUserSystemProperties();
	}
	
	/**
	 * This method is called as soon as the Properties are delivered by the User Java VM<br>
	 * It resets all the Properties List.
	 * @param prop
	 */
	private synchronized void setProperties(HashMap<String,String> prop){
		properties.clear();
		properties.putAll(prop);
		// the call back methods allow sending the username and tempDir to the parent Rich Dialog,
		// as soon as they are available.
		if(properties.containsKey("user.name"))
		{
			RDCallbackMethodHandler.callRDMethod(this.parentRD, this.getUserNameCallBack, new Object[] { properties.get("user.name") });
		}
		
		if(properties.containsKey("java.io.tmpdir"))
		{
			RDCallbackMethodHandler.callRDMethod(this.parentRD, this.getUserTempDirCallBack, new Object[] { properties.get("java.io.tmpdir") });
		}
		
		if(properties.containsKey("file.separator"))
		{
			RDCallbackMethodHandler.callRDMethod(this.parentRD, this.getClientFileSeparatorCallBack, new Object[] { properties.get("file.separator") });
		}

	}
	
	/**
	 * Get the number of properties
	 * @return number of properties
	 */
	public int getPropertiesSize(){
		return this.properties.size();
	}
	
	/**
	 * returns the Properties in form of String [][]
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public synchronized String [][] getProperties(){
		String [][] prop = new String[properties.size()][2];
		Set<Entry<String, String>> set = properties.entrySet();
		Iterator it = set.iterator();

		for (int i=0; i<properties.size(); i++){
			Entry<String, String> e= (Entry<String, String>) it.next();
			prop[i][0]=e.getKey();
			prop[i][1]=e.getValue();
			//Ivy.log().debug(e.getKey()+": "+e.getValue());
		}
		
		return prop;
	}
	
	/**
	 * @return the user temp directory (Propertie java.io.tmpdir)
	 */
	public String getUserTempDir(){
		String userDir = null;
		if(properties.containsKey("java.io.tmpdir"))
			userDir=properties.get("java.io.tmpdir");
		return userDir;
	}
	
	/**
	 * @return the user name (Propertie user.name)
	 */
	public String getUserName(){
		String userDir = null;
		if(properties.containsKey("user.name"))
			userDir=properties.get("user.name");
		
		return userDir;
	}
	
	/**
	 * 
	 * @return the client side File separator "\" on windows and "/" on Unix - Mac OS Systems
	 */
	public String getClientFileSeparator(){
		String sep=null;
		if(properties.containsKey("file.separator"))
		{
			sep=properties.get("file.separator");
		}
		return sep;
	}
	
	/**
	 * @return the user home directory (Propertie user.home)
	 */
	public String getUserHomeDir(){
		String userDir = null;
		if(properties.containsKey("user.home"))
			userDir=properties.get("user.home");
		return userDir;
	}
	
	
}
