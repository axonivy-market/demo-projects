package ch.ivyteam.ivy.workflow.ui.utils;

public class UniqueDisplayIdFactory {
	
	  public static synchronized String buildTaskListDisplayId(){
		    return "" + System.currentTimeMillis();
		    }
}
