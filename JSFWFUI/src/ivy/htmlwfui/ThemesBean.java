package ivy.htmlwfui;

import org.primefaces.model.ScheduleModel;

public class ThemesBean {

	private java.util.List<String> themes;
	private String theme;
	
	public ThemesBean()
	{
		theme = "sunny";
		themes = new java.util.ArrayList<String>();
		themes.add("sunny");		
		themes.add("midnight");
		themes.add("dark-hive");
		themes.add("smoothness");
		themes.add("afterdark");
		themes.add("cruze");
		themes.add("eggplant");
	}
	
	public String getTheme() {
		return theme;
	}


	public void setTheme(String theme) {
		this.theme = theme;
	}


	public java.util.List<String> getThemes() {return themes;}
	

	
	
}
