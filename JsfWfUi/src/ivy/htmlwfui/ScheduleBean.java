package ivy.htmlwfui;

import java.util.Date;

import org.primefaces.model.DefaultScheduleEvent;
import org.primefaces.model.DefaultScheduleModel;
import org.primefaces.model.ScheduleModel;

public class ScheduleBean {

	private ScheduleModel model;

	public ScheduleBean() {
		model = new DefaultScheduleModel();
		Date from= new Date();
		Date to= new Date();
		to.setHours(to.getHours()+1);
		model.addEvent(new DefaultScheduleEvent("Task XYZ", from, to));
	}

	public ScheduleModel getModel() {
		return model;
	}
}
