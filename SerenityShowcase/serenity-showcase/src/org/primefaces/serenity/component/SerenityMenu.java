package org.primefaces.serenity.component;

import javax.faces.component.UIComponent;
import org.primefaces.component.menu.AbstractMenu;
import javax.faces.context.FacesContext;
import javax.faces.component.UINamingContainer;
import javax.faces.component.UIOutput;
import javax.faces.component.UIViewRoot;
import javax.faces.event.AbortProcessingException;
import javax.faces.event.ComponentSystemEvent;
import javax.faces.event.ComponentSystemEventListener;
import javax.faces.event.ListenerFor;
import javax.faces.event.PostAddToViewEvent;
import org.primefaces.component.api.Widget;

@ListenerFor(sourceClass = SerenityMenu.class, systemEventClass = PostAddToViewEvent.class)
public class SerenityMenu extends AbstractMenu implements Widget, ComponentSystemEventListener {

    public static final String COMPONENT_TYPE = "org.primefaces.component.SerenityMenu";
    public static final String COMPONENT_FAMILY = "org.primefaces.component";
    private static final String DEFAULT_RENDERER = "org.primefaces.component.SerenityMenuRenderer";
    private static final String[] LEGACY_RESOURCES = new String[]{"primefaces.css", "jquery/jquery.js", "jquery/jquery-plugins.js", "primefaces.js"};
    private static final String[] MODERN_RESOURCES = new String[]{"components.css", "jquery/jquery.js", "jquery/jquery-plugins.js", "core.js"};

    protected enum PropertyKeys {

        widgetVar, model, style, styleClass, closeDelay;

        String toString;

        PropertyKeys(String toString) {
            this.toString = toString;
        }

        PropertyKeys() {
        }

        public String toString() {
            return ((this.toString != null) ? this.toString : super.toString());
        }
    }

    public SerenityMenu() {
        setRendererType(DEFAULT_RENDERER);
    }

    public String getFamily() {
        return COMPONENT_FAMILY;
    }

    public java.lang.String getWidgetVar() {
        return (java.lang.String) getStateHelper().eval(PropertyKeys.widgetVar, null);
    }

    public void setWidgetVar(java.lang.String _widgetVar) {
        getStateHelper().put(PropertyKeys.widgetVar, _widgetVar);
    }

    public org.primefaces.model.menu.MenuModel getModel() {
        return (org.primefaces.model.menu.MenuModel) getStateHelper().eval(PropertyKeys.model, null);
    }

    public void setModel(org.primefaces.model.menu.MenuModel _model) {
        getStateHelper().put(PropertyKeys.model, _model);
    }

    public java.lang.String getStyle() {
        return (java.lang.String) getStateHelper().eval(PropertyKeys.style, null);
    }

    public void setStyle(java.lang.String _style) {
        getStateHelper().put(PropertyKeys.style, _style);
    }

    public java.lang.String getStyleClass() {
        return (java.lang.String) getStateHelper().eval(PropertyKeys.styleClass, null);
    }

    public void setStyleClass(java.lang.String _styleClass) {
        getStateHelper().put(PropertyKeys.styleClass, _styleClass);
    }

    public int getCloseDelay() {
        return (java.lang.Integer) getStateHelper().eval(PropertyKeys.closeDelay, 250);
    }

    public void setCloseDelay(int _closeDelay) {
        getStateHelper().put(PropertyKeys.closeDelay, _closeDelay);
    }

    public String resolveWidgetVar() {
        FacesContext context = getFacesContext();
        String userWidgetVar = (String) getAttributes().get("widgetVar");

        if (userWidgetVar != null) {
            return userWidgetVar;
        } else {
            return "widget_" + getClientId(context).replaceAll("-|" + UINamingContainer.getSeparatorChar(context), "_");
        }
    }

    @Override
    public void processEvent(ComponentSystemEvent event) throws AbortProcessingException {
        if (event instanceof PostAddToViewEvent) {
            FacesContext context = getFacesContext();
            UIViewRoot root = context.getViewRoot();

            boolean isPrimeConfig;
            try {
                isPrimeConfig = Class.forName("org.primefaces.config.PrimeConfiguration") != null;
            } catch (ClassNotFoundException e) {
                isPrimeConfig = false;
            }

            String[] resources = (isPrimeConfig) ? MODERN_RESOURCES : LEGACY_RESOURCES;

            for (String res : resources) {
                UIComponent component = context.getApplication().createComponent(UIOutput.COMPONENT_TYPE);
                if (res.endsWith("css")) {
                    component.setRendererType("javax.faces.resource.Stylesheet");
                } 
                else if (res.endsWith("js")) {
                    component.setRendererType("javax.faces.resource.Script");
                }

                component.getAttributes().put("library", "primefaces");
                component.getAttributes().put("name", res);

                root.addComponentResource(context, component);
            }
        }
    }
}
