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
package ch.ivyteam.htmldialog.demo.theme;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import org.apache.commons.lang3.StringUtils;

import ch.ivyteam.ivy.jsf.primefaces.theme.IvyPrimefacesThemeResolver;

@ManagedBean
@SessionScoped
public class GuestPreferences implements Serializable {

    private static final long serialVersionUID = -64663298861770279L;
    private String theme = "serenity-ivy";
    private List<String> themes;

    public GuestPreferences()
    {
      IvyPrimefacesThemeResolver themeResolver = new IvyPrimefacesThemeResolver();
      themes = new ArrayList<>();
      themes.add(theme);
      themes.addAll(themeResolver.getPrimefacesAdditionalThemes());
    }

    public List<String> getThemes()
    {
      return themes;
    }

    public String getTheme()
    {
      return theme;
    }

    public void setTheme(String theme)
    {
      this.theme = theme;
    }

    public String getLayout()
    {
      return StringUtils.removeStart(theme, "serenity-");
    }

}
