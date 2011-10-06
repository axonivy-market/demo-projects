/**
 * This class allows calling a method on a RichDialog Panel from a java class or a java Object.
 *  
 */
package ch.ivyteam.ivy.addons.util;

import java.lang.reflect.InvocationTargetException;

import com.ulcjava.base.application.ULCComponent;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;

/**
 * @author ec
 * This Class is an utility class to be able to communicate from a java context with a method in a Rich Dialog.<br>
 * The RD method has to be declared in the RD public Interface.
 */
public abstract class RDCallbackMethodHandler {
	/**
	 * This method allows invoking a method on a RichDialog Panel from a java class or a java Object.<br>
	 *<br>
	 * @param rdPanel : the RD panel that which method has to be called back.<br>
	 *  The RDPanel has to implement ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel (RGridbagLayoutPane...)
	 * @param methodName : the method that has to be called back
	 * @param parameters : array of the parameters that have to be passed to the method
	 * @return null if the call back method couldn't be called, or an array of Object that the Method in the RD interface should return.<br>
	 * If the called method is void, it returns an empty array.
	 */
	public static Object[] callRDMethod(IRichDialogPanel rdPanel, String methodName, Object[] parameters){
		Object[] ret = null;
		
			if(rdPanel!=null && methodName !=null && methodName.trim().length()>0){
				try {
					
					ret = rdPanel.getPanelAPI().callMethod(methodName, parameters);
					
				} catch (InvocationTargetException _ex) {
					Ivy.log().error("InvocationTargetException in RDCallbackMethodHandler called from IRichDialogPanel "+rdPanel.getName()+" on following callback method "+methodName+" ,"+_ex.getMessage());
				} catch (NoSuchMethodException _ex) {
					Ivy.log().error("NoSuchMethodException in RDCallbackMethodHandler called from IRichDialogPanel "+rdPanel.getName()+" on following callback method "+methodName+" ,"+_ex.getMessage());
				}catch(Exception _ex){
					Ivy.log().error("Exception in RDCallbackMethodHandler called from IRichDialogPanel "+rdPanel.getName()+" on following callback method "+methodName+" ,"+_ex.getMessage());
				}catch(Error _ex){
					Ivy.log().error("Error in RDCallbackMethodHandler called from IRichDialogPanel "+rdPanel.getName()+" on following callback method "+methodName+" ,"+_ex.getMessage());
				}
			}else{
				Ivy.log().info("One of the parameters was invalid in RDCallbackMethodHandler called from IRichDialogPanel...");
			
			}
		
		return ret;
	}
	
	/**
	 * This method allows invoking a method on a ULCComponent Panel from a java class or a java Object.<br>
	 *<br>
	 * @param rdPanel : the RD panel that which method has to be called back.<br>
	 *  The RDPanel has to implement ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel (RGridbagLayoutPane...)
	 *  If this is not an IRichDialogPanel, the result will be null.
	 * @param methodName : the method that has to be called back
	 * @param parameters : array of the parameters that have to be passed to the method
	 * @return null if the call back method couldn't be called, or an array of Object that the Method in the RD interface should return.<br>
	 * If the called method is void, it returns an empty array.
	 */
	public static Object[] callRDMethodFromULCComponent(ULCComponent rdPanel, String methodName, Object[] parameters){
		Object[] ret = null;
		if(rdPanel!=null && methodName !=null && methodName.trim().length()>0){
			if(!(rdPanel instanceof IRichDialogPanel)) {
				String s []= {"Not an IRichDialogPanel."};
				return s;
			}
			else{
				IRichDialogPanel iRich = (IRichDialogPanel)rdPanel;
				try {
					ret = iRich.getPanelAPI().callMethod(methodName, parameters);
					
				} catch (InvocationTargetException _ex) {
					Ivy.log().error("InvocationTargetException in RDCallbackMethodHandler called from ULCComponent "+rdPanel.getName()+" on following callback method "+methodName+" ,"+_ex.getMessage());
				} catch (NoSuchMethodException _ex) {
					Ivy.log().error("NoSuchMethodException in RDCallbackMethodHandler called from ULCComponent "+rdPanel.getName()+" on following callback method "+methodName+" ,"+_ex.getMessage());
				}catch(Exception _ex){
					Ivy.log().error("Exception in RDCallbackMethodHandler called from ULCComponent "+rdPanel.getName()+" on following callback method "+methodName+" ,"+_ex.getMessage());
				}catch(Error _ex){
					Ivy.log().info("Error in RDCallbackMethodHandler called from ULCComponent "+rdPanel.getName()+" on following callback method "+methodName+" ,"+_ex.getMessage());
				}
			}
		}
		return ret;
	}
}
