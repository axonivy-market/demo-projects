package ch.ivyteam.serenity;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean
@SessionScoped
public class GuestPreferences {

    private String layout = "lime";

    private String theme = "lime";

    private boolean darkMenu = true;
    
    private boolean orientationRTL = false;
    
    private boolean horizontal = false;

	public String getTheme() {
    	return theme;
    }

    public void setTheme(String theme) {
    	this.theme = theme;
    }

    public String getLayout() {
        return layout;
    }

    public void setLayout(String layout) {
        this.layout = layout;
    }

    public boolean isDarkMenu() {
        return darkMenu;
    }

    public void setDarkMenu(boolean darkMenu) {
        this.darkMenu = darkMenu;
    }
    
    public boolean isOrientationRTL() {
    	return orientationRTL;
    }
    
    public void setOrientationRTL(boolean orientationRTL) {
    	this.orientationRTL = orientationRTL;
    }
    
    public boolean isHorizontal() {
    	return horizontal;
    }
    
    public void setHorizontal(boolean horizontal) {
    	this.horizontal = horizontal;
    }
}
