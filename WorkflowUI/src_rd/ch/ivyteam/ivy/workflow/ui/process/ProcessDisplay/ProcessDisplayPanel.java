package ch.ivyteam.ivy.workflow.ui.process.ProcessDisplay;

import java.lang.reflect.InvocationTargetException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;
import ch.ivyteam.ivy.scripting.objects.Date;

import com.ulcjava.base.application.ULCPollingTimer;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.event.ISelectionChangedListener;
import com.ulcjava.base.application.event.SelectionChangedEvent;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

/**
 * <p>ProcessDisplayPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class ProcessDisplayPanel extends RichDialogBorderPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RCardDisplay centerCardDisplay = null;
private ULCPollingTimer timer;  //  @jve:decl-index=0:
/**
   * Create a new instance of ProcessDisplayPanel
   */
  public ProcessDisplayPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes ProcessDisplayPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(525,388));
        this.add(getCenterCardDisplay(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
        
        // start the timer
        startPollingTimer();
  }

/**
 * This method initializes centerCardDisplay	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay	
 */
private RCardDisplay getCenterCardDisplay() {
	if (centerCardDisplay == null) {
		centerCardDisplay = new RCardDisplay();
		centerCardDisplay.setName("centerCardDisplay");
		centerCardDisplay.setName("centerCardDisplay");
		centerCardDisplay.setName("centerCardDisplay");
	}
	return centerCardDisplay;
}

private void startPollingTimer()
{
	  timer = new ULCPollingTimer(500, new IActionListener() {
	     public void actionPerformed(ActionEvent event) {
	    	 if (centerCardDisplay.getSelectedPanel() != null)
	    	 {
	    		 try {
					getPanelAPI().callMethod("_getRichDialogStartedTask", new Object[]{getCenterCardDisplay().getSelectedPanel()});
				} catch (InvocationTargetException e) {
					e.printStackTrace();
				} catch (NoSuchMethodException e) {
					e.printStackTrace();
				} 
	    	 }
	     }
	 });
	 timer.start();	 
}

public ULCPollingTimer getPollingTimer()
{
	return timer;
}

}  //  @jve:decl-index=0:visual-constraint="10,10"