/**
 * WaitForAsyncTasks.java
 */
package ch.ivyteam.ivy.addons.process.async;

import java.awt.Container;
import java.awt.GridBagConstraints;
import java.awt.Insets;
import java.util.Map;

import javax.swing.JLabel;
import javax.swing.JTextField;

import org.eclipse.core.runtime.IProgressMonitor;

import ch.ivyteam.ivy.addons.process.parameter.ProcessParameterMap;
import ch.ivyteam.ivy.process.extension.IProcessExtensionConfigurationEditorEnvironment;
import ch.ivyteam.ivy.process.extension.impl.AbstractProcessExtensionConfigurationEditor;
import ch.ivyteam.ivy.process.intermediateevent.AbstractProcessIntermediateEventBean;
import ch.ivyteam.ivy.process.intermediateevent.IProcessIntermediateEventBeanRuntime;
import ch.ivyteam.ivy.service.ServiceException;
import ch.ivyteam.ivy.workflow.ICase;

/**
 * This IntermediateEvent bean let's you execute processes asynchronous and wait for a signal
 * from the process that tells you that it's complete or just wait until the case for the process has ended.
 * 
 * @author hsp
 * @since Pilatus
 */
public class WaitForAsyncProcess extends AbstractProcessIntermediateEventBean {
	/** poll() will be called at this interval (ms) by default */
	private static final int DEFAULT_POLLING_TIME_INTERVAL = 60000;
	
	/** we delegate the work of poll to this class */
	private WaitForAsyncProcessChecker pollHandler = null;
	
	public WaitForAsyncProcess() {
		super("WaitForAsyncProcess", "I wait for triggered asynchronous processes.", ProcessParameterMap.class);
	}

	/**
	 * Register an asynchronous process with this bean. On a Trigger element call it this way:
	 * <code>out.eventId = WaitForAsyncProcess.registerProcess(triggeredTask.getCase(), in.eventId)</code>
	 * @param caseToRegister the case you want to register
	 * @param eventId eventId that belongs to the case
	 * @return the <code>eventId</code>
	 */
	public static String registerProcess(final ICase caseToRegister, final String eventId) {
		return WaitForAsyncProcessHelper.registerProcess(caseToRegister,
				eventId);
	}
	
	/**
	 * Use this method to signal the end of the process. 
	 * @param caseToEnd the case that called this method
	 * @param params a map with 2 entries: <code>PARAM_NAME</code> (name of the parameter) and 
	 * <code>PARAM</code> (the ProcessParameter object)
	 */
	@SuppressWarnings("unchecked")
	public static void signalEndOfProcess(final ICase caseToEnd, final Map params) {
		WaitForAsyncProcessHelper.signalEndOfProcess(caseToEnd, params);
	}
	
	
	public void stop(IProgressMonitor monitor) throws ServiceException {
		WaitForAsyncProcessHelper.stop();
		super.stop(monitor);
	}
	
	@Override
	public void initialize(IProcessIntermediateEventBeanRuntime runtime, String config) {
		super.initialize(runtime, config);
		pollHandler = new WaitForAsyncProcessChecker(runtime);
		/* 
		 * search for the POLLING_TIME_CONFIG_PROPERTY configuration
		 * and set it if it's greater than 0.
		 * otherwise use the DEFAULT_POLLING_TIME_INTERVAL
		 */
		final String[] strings = config.split("\n");
		for(String s : strings) {
			// search inside the configuration for the polling time property
			if(s.startsWith(Editor.POLLING_TIME_CONFIG_PROPERTY)) {
				final String pollingTime = s.substring(Editor.POLLING_TIME_CONFIG_PROPERTY.length() + 1).trim();
				// set the polling time of this IntermediateEvent
				if(pollingTime.length() == 0) {
					runtime.setPollTimeInterval(DEFAULT_POLLING_TIME_INTERVAL);
				} else {
					try {
						final int timeMS = Integer.parseInt(pollingTime);
						if(timeMS > 0) {
							runtime.setPollTimeInterval(timeMS);
						} else {
							runtime.setPollTimeInterval(DEFAULT_POLLING_TIME_INTERVAL);
						}
					} catch(NumberFormatException e) {
						runtime.setPollTimeInterval(DEFAULT_POLLING_TIME_INTERVAL);
					}
				}
			}
		} 
		
	}

	
	/* (non-Javadoc)
	 * @see ch.ivyteam.ivy.process.eventstart.IProcessStartEventBean#poll()
	 */
	@Override
	public void poll() {
		pollHandler.checkForFinishedProcesses();
	}

	

	
	
	public static class Editor extends
			AbstractProcessExtensionConfigurationEditor {

		/** polling time has to be at least this long */
		private static final int MIN_POLLING_TIME = 1000;

		/** name of the polling time configuration property */
		public static final String POLLING_TIME_CONFIG_PROPERTY = "pollingTime";

		/** textfield for polling time configuration */
		private JTextField fPollingTimeTextField = null;

		/*
		 * (non-Javadoc)
		 * 
		 * @seech.ivyteam.ivy.process.extension.impl.
		 * AbstractProcessExtensionConfigurationEditor
		 * #createEditorPanelContent(java.awt.Container,
		 * ch.ivyteam.ivy.process.extension
		 * .IProcessExtensionConfigurationEditorEnvironment)
		 */
		@Override
		protected void createEditorPanelContent(
				final Container editorPanel,
				final IProcessExtensionConfigurationEditorEnvironment editorEnvironment) {
			
			// label for the polling time configuration text field
			final JLabel pollingTimeLabel = new JLabel(
					"Polling time in ms (default " + DEFAULT_POLLING_TIME_INTERVAL + ". min "+ MIN_POLLING_TIME + ")");
			fPollingTimeTextField = new JTextField();

			
			editorPanel.add(pollingTimeLabel,
					new GridBagConstraints(0, 1, 1, 1, 0.0, 0.0,
							GridBagConstraints.NORTHWEST,
							GridBagConstraints.HORIZONTAL, new Insets(2, 5, 0,
									5), 0, 0));
			editorPanel.add(fPollingTimeTextField, new GridBagConstraints(1, 1,
					1, 1, 1.0, 0.0, GridBagConstraints.NORTHWEST,
					GridBagConstraints.HORIZONTAL, new Insets(0, 5, 5, 5), 0,
					0));
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @seech.ivyteam.ivy.process.extension.impl.
		 * AbstractProcessExtensionConfigurationEditor
		 * #loadUiDataFromConfiguration()
		 */
		@Override
		protected void loadUiDataFromConfiguration() {

			// ===> Add here your code to load data from the configuration to
			// the ui widgets <===
			// You can use the getBeanConfiguration() or
			// getBeanConfigurationProperty() methods to load the configuration
			fPollingTimeTextField.setText(getBeanConfigurationProperty(POLLING_TIME_CONFIG_PROPERTY));
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @seech.ivyteam.ivy.process.extension.impl.
		 * AbstractProcessExtensionConfigurationEditor
		 * #saveUiDataToConfiguration()
		 */
		@Override
		protected boolean saveUiDataToConfiguration() {

			// ===> Add here your code to save the data in the ui widgets to the
			// configuration <===
			// You can use the setBeanConfiguration() or
			// setBeanConfigurationProperty() methods to save the configuration
			
			final String pollingTime = fPollingTimeTextField.getText();
			// if there is on polling time set, set empty
			if (pollingTime.length() == 0) {
				setBeanConfigurationProperty(POLLING_TIME_CONFIG_PROPERTY, "");
				return true;
			}
			
			// otherwise ...
			try {
				// ... check if the polling time is at least MIN_POLLING_TIME
				if(Integer.parseInt(pollingTime) < MIN_POLLING_TIME) return false;
			} catch (NumberFormatException e) {
				return false;
			}
			
			setBeanConfigurationProperty(POLLING_TIME_CONFIG_PROPERTY, pollingTime);
			return true;
		}
		
	}
}
