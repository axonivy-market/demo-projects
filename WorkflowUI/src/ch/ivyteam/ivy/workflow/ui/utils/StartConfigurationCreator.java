package ch.ivyteam.ivy.workflow.ui.utils;

import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.richdialog.exec.HtmlClientConfiguration;
import ch.ivyteam.ivy.richdialog.exec.HtmlClientConfiguration.HtmlClient;
import ch.ivyteam.ivy.richdialog.exec.IRichDialogContext;
import ch.ivyteam.ivy.richdialog.exec.ProcessStartConfiguration;
import ch.ivyteam.ivy.richdialog.exec.TaskStartConfiguration;
import ch.ivyteam.ivy.richdialog.exec.application.DisplayConfigurationFactory;
import ch.ivyteam.ivy.richdialog.exec.application.IDisplayConfiguration;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.workflow.IProcessStart;
import ch.ivyteam.ivy.workflow.ITask;

import com.ulcjava.base.application.ULCPollingTimer;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;


/**
 * @author tirib
 * @since August 2007
 *
 */
public class StartConfigurationCreator {
	
	/**
	 * 
	 * @param displayId: display's displayid used as destination for loading the task to start
	 * @param richDialogPanel: rich dialog (root panel)
	 * @param task: task to start
	 */
	public static void startTask(String displayId, IRichDialogPanel richDialogPanel, ITask task)
	{
		IDisplayConfiguration displayConfig;
		TaskStartConfiguration taskStartConfig;
		HtmlClientConfiguration htmlClientConfig;
		
		displayConfig = DisplayConfigurationFactory.createForThisWindow(displayId);
		htmlClientConfig = new HtmlClientConfiguration (HtmlClient.EmbeddedBrowserComponent);
		taskStartConfig = new TaskStartConfiguration(task, displayConfig, htmlClientConfig);
		Ivy.rd().startTask(taskStartConfig);
	}
	
	/**
	 * 
	 * @param displayId: display's displayid used as destination for loading the process to start
	 * @param richDialogPanel:  rich dialog (root panel)
	 * @param processStart: process to start
	 */
	public static void startProcess(String displayId, IRichDialogPanel richDialogPanel, IProcessStart processStart)
	{
		IDisplayConfiguration displayConfig;
		ProcessStartConfiguration processStartConfig;
		HtmlClientConfiguration htmlClientConfig;

		displayConfig = DisplayConfigurationFactory.createForThisWindow(displayId);
		htmlClientConfig = new HtmlClientConfiguration (HtmlClient.EmbeddedBrowserComponent);
		processStartConfig = new ProcessStartConfiguration(processStart, displayConfig, htmlClientConfig);
		
		Ivy.rd().startProcess(processStartConfig);
	}
	
	/**
	 * start multiple xpert.ivy processes on a given rich dialog parent (to a given display) 
	 * @param displayId: display's displayid used as destination for loading the process to start
	 * @param richDialogPanel:  rich dialog (root panel)
	 * @param processStarts some processes to start
	 */
	@SuppressWarnings("serial")
	public static void startMultipleProcesses(final IRichDialogContext rd, String displayId, IRichDialogPanel richDialogPanel, final List<IProcessStart> processStarts)
	{
		final IDisplayConfiguration displayConfig = DisplayConfigurationFactory.createForThisWindow(displayId);
		final HtmlClientConfiguration htmlClientConfig = new HtmlClientConfiguration (HtmlClient.EmbeddedBrowserComponent);
		
		final ULCPollingTimer[] timer = new ULCPollingTimer[1];
		IActionListener listener = new IActionListener(){
			private int fCounter = 0;
			public void actionPerformed(ActionEvent arg0){
				if (fCounter<processStarts.size())
				{
					try {
						Ivy.log().debug("Prepare process start config for {0}.", processStarts.get(fCounter).getName());
					} catch (EnvironmentNotAvailableException e) {
						e.printStackTrace();
					} catch (PersistencyException e) {
						e.printStackTrace();
					}
					ProcessStartConfiguration processStartConfig = new ProcessStartConfiguration(processStarts.get(fCounter), displayConfig, htmlClientConfig);
					rd.startProcess(processStartConfig);
					fCounter++;
				} else
				{
					if (timer!=null && timer[0] != null)
					{
						timer[0].stop();
					}
				}
			}};
		timer[0] = new ULCPollingTimer(0, listener);
		timer[0].setRepeats(true);
		timer[0].start();
	}

}
