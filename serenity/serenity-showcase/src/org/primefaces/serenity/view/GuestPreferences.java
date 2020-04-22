/*
 * Copyright 2009-2014 PrimeTek.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.primefaces.serenity.view;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean
@SessionScoped
public class GuestPreferences implements Serializable {

    private String layout = "moody";
        
    private String theme = "bluegrey";
    
    private boolean darkMenu;

    private boolean horizontal = false;
    
    private boolean orientationRTL;

    private List<ComponentTheme> componentThemes = new ArrayList<ComponentTheme>();

    private List<LayoutTheme> layoutThemes = new ArrayList<LayoutTheme>();

    private List<LayoutSpecialTheme> layoutSpecialThemes = new ArrayList<LayoutSpecialTheme>();

    @PostConstruct
    public void init() {    
        componentThemes.add(new ComponentTheme("Blue Amber", "blue","blue-amber.svg"));
        componentThemes.add(new ComponentTheme("Blue Grey Green", "bluegrey","bluegrey-green.svg"));
        componentThemes.add(new ComponentTheme("Brown Cyan", "brown","brown-cyan.svg"));
        componentThemes.add(new ComponentTheme("Cyan Amber", "cyan","cyan-amber.svg"));
        componentThemes.add(new ComponentTheme("Deep Orange Cyan", "deeporange","deeporange-cyan.svg"));
        componentThemes.add(new ComponentTheme("Deep Purple Orange", "deeppurple","deeppurple-orange.svg"));
        componentThemes.add(new ComponentTheme("Green Brown", "green","green-brown.svg"));
        componentThemes.add(new ComponentTheme("Grey Indigo", "grey","grey-indigo.svg"));
        componentThemes.add(new ComponentTheme("Indigo Pink", "indigo","indigo-pink.svg"));
        componentThemes.add(new ComponentTheme("Light Blue Blue Grey", "lightblue","lightblue-bluegrey.svg"));
        componentThemes.add(new ComponentTheme("Light Green Purple", "lightgreen","lightgreen-purple.svg"));
        componentThemes.add(new ComponentTheme("Lime Blue Grey", "lime","lime-bluegrey.svg"));
        componentThemes.add(new ComponentTheme("Orange Indigo", "orange","orange-indigo.svg"));
        componentThemes.add(new ComponentTheme("Pink Amber", "pink","pink-amber.svg"));
        componentThemes.add(new ComponentTheme("Purple Pink", "purple","purple-pink.svg"));
        componentThemes.add(new ComponentTheme("Teal Red", "teal","teal-red.svg"));
        componentThemes.add(new ComponentTheme("Yellow teal", "yellow","yellow-teal.svg"));

        layoutThemes.add(new LayoutTheme("Amber Pink", "amber","amber-pink.png"));
        layoutThemes.add(new LayoutTheme("Blue Amber", "blue","blue-amber.png"));
        layoutThemes.add(new LayoutTheme("Blue Grey Green", "bluegrey","bluegrey-green.png"));
        layoutThemes.add(new LayoutTheme("Brown Cyan", "brown","brown-cyan.png"));
        layoutThemes.add(new LayoutTheme("Cyan Amber", "cyan","cyan-amber.png"));
        layoutThemes.add(new LayoutTheme("Deep Orange Cyan", "deeporange","deeporange-cyan.png"));
        layoutThemes.add(new LayoutTheme("Deep Purple Orange", "deeppurple","deeppurple-orange.png"));
        layoutThemes.add(new LayoutTheme("Green Brown", "green","green-brown.png"));
        layoutThemes.add(new LayoutTheme("Grey Indigo", "grey","grey-indigo.png"));
        layoutThemes.add(new LayoutTheme("Indigo Pink", "indigo","indigo-pink.png"));
        layoutThemes.add(new LayoutTheme("Light Blue Blue Grey", "lightblue","lightblue-bluegrey.png"));
        layoutThemes.add(new LayoutTheme("Light Green Purple", "lightgreen","lightgreen-purple.png"));
        layoutThemes.add(new LayoutTheme("Lime Blue Grey", "lime","lime-bluegrey.png"));
        layoutThemes.add(new LayoutTheme("Orange Indigo", "orange","orange-indigo.png"));
        layoutThemes.add(new LayoutTheme("Pink Amber", "pink","pink-amber.png"));
        layoutThemes.add(new LayoutTheme("Purple Pink", "purple","purple-pink.png"));
        layoutThemes.add(new LayoutTheme("Teal Red", "teal","teal-red.png"));
        layoutThemes.add(new LayoutTheme("Yellow teal", "yellow","yellow-teal.png"));

        layoutSpecialThemes.add(new LayoutSpecialTheme("Reflection", "reflection","reflection.png"));
        layoutSpecialThemes.add(new LayoutSpecialTheme("Moody", "moody","moody.png"));
        layoutSpecialThemes.add(new LayoutSpecialTheme("Cityscape", "cityscape","cityscape.png"));
        layoutSpecialThemes.add(new LayoutSpecialTheme("Cloudy", "cloudy","cloudy.png"));
        layoutSpecialThemes.add(new LayoutSpecialTheme("Storm", "storm","storm.png"));
        layoutSpecialThemes.add(new LayoutSpecialTheme("Palm", "palm","palm.png"));
        layoutSpecialThemes.add(new LayoutSpecialTheme("Flatiron", "flatiron","flatiron.png"));
        layoutSpecialThemes.add(new LayoutSpecialTheme("Panaroma", "panaroma","panaroma.png"));
        layoutSpecialThemes.add(new LayoutSpecialTheme("Horizon", "horizon","horizon.png"));
    }

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
        return this.horizontal;
    }

    public void setHorizontal(boolean value) {
        this.horizontal = value;
    }

    public List<ComponentTheme> getComponentThemes() {
        return componentThemes;
    }

    public List<LayoutTheme> getLayoutThemes() {
        return layoutThemes;
    }

    public List<LayoutSpecialTheme> getLayoutSpecialThemes() {
        return layoutSpecialThemes;
    }
    
    public class ComponentTheme {
        String name;
        String file;
        String image;

        public ComponentTheme(String name, String file, String image) {
            this.name = name;
            this.file = file;
            this.image = image;
        }

        public String getName() {
            return this.name;
        }

        public String getFile() {
            return this.file;
        }

         public String getImage() {
            return this.image;
        }
    }

        public class LayoutTheme {
        String name;
        String file;
        String image;

        public LayoutTheme(String name, String file, String image) {
            this.name = name;
            this.file = file;
            this.image = image;
        }

        public String getName() {
            return this.name;
        }

        public String getFile() {
            return this.file;
        }

         public String getImage() {
            return this.image;
        }
    }
    public class LayoutSpecialTheme {
        String name;
        String file;
        String image;

        public LayoutSpecialTheme(String name, String file, String image) {
            this.name = name;
            this.file = file;
            this.image = image;
        }

        public String getName() {
            return this.name;
        }

        public String getFile() {
            return this.file;
        }

         public String getImage() {
            return this.image;
        }
    }
}
