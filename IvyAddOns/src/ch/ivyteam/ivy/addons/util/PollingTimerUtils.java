package ch.ivyteam.ivy.addons.util;

import ch.ivyteam.ivy.richdialog.widgets.components.RButton;

import com.ulcjava.base.application.ULCPollingTimer;
import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;

/**
 * A helper class to realize extra roundtrips (e.g. for progress
 * bars or auto-refresh) by using {@link ULCPollingTimer} instances.
 * <p>See UI-Refresh demo in IvyDemos project.
 * @author kvg
 */
public final class PollingTimerUtils {

	/** Do not instantiate */
	private PollingTimerUtils() {}

	/**
	 * Creates a new {@link ULCPollingTimer} instance that will click the given button forever,
	 * i.e. until stop() is called on it.
	 * @param delay the delay (in milliseconds) between clicks
	 * @param buttonToClick the button to click after each <code>delay</code> milliseconds
	 * @return the created {@link ULCPollingTimer} instance for the given button
	 */
	@SuppressWarnings("serial")
	public static final ULCPollingTimer clickForever(int delay, final RButton buttonToClick)
	{
	  ULCPollingTimer timer = new ULCPollingTimer(delay, new IActionListener() {
			public void actionPerformed(ActionEvent event) {
				buttonToClick.doClick();
			}
		  });
	  timer.setRepeats(true);
	  timer.start();
	  return timer;
	}

	/**
	 * Creates a new {@link ULCPollingTimer} instance that will click the given button once.
	 * This timer does not necessarily have to be stored/assigned somewhere.
	 * <p>If you want to reuse the created timer (i.e. to click once again) then
	 * simply invoke <code>start()</code> on the returned instance at a later point of time.
	 * @param buttonToClick the button to click once
	 * @return the created new {@link ULCPollingTimer} instance for the given button
	 * @deprecated use <code>ivy.rd.clickDeferred(RButton)</code> instead
	 */
	@SuppressWarnings("serial")
	public static final ULCPollingTimer clickOnce(final RButton buttonToClick)
	{
	  ULCPollingTimer timer = new ULCPollingTimer(0, new IActionListener() {
			public void actionPerformed(ActionEvent event) {
				buttonToClick.doClick();
			}
		  });
	  timer.setRepeats(false);
	  timer.start();
	  return timer;
	}
}