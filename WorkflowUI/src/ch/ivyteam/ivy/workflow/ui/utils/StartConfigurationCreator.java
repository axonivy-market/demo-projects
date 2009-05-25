/**
 * 
 */
package ch.ivyteam.ivy.workflow.ui.utils;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.ProcessStartConfiguration;
import ch.ivyteam.ivy.richdialog.exec.TaskStartConfiguration;
import ch.ivyteam.ivy.richdialog.exec.application.DisplayConfigurationFactory;
import ch.ivyteam.ivy.richdialog.exec.application.IDisplayConfiguration;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.workflow.IProcessStart;
import ch.ivyteam.ivy.workflow.ITask;


/**
 * @author tirib
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

		displayConfig = DisplayConfigurationFactory.createForSelfWindow(displayId, richDialogPanel);
		taskStartConfig = new TaskStartConfiguration(task, displayConfig);
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

		displayConfig = DisplayConfigurationFactory.createForSelfWindow(displayId, richDialogPanel);
		processStartConfig = new ProcessStartConfiguration(processStart, displayConfig);
		
		Ivy.rd().startProcess(processStartConfig);
	}

}
