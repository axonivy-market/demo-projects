package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.DynamicDialogCacheEntry;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.Invocation;
import ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.internal.TreeNode;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.addons.util.StringUtil;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.IRichDialogContext;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;

import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCFrame;
import com.ulcjava.base.application.ULCRootPane;
import com.ulcjava.base.application.event.FocusEvent;
import com.ulcjava.base.application.event.IFocusListener;
import com.ulcjava.base.application.util.Dimension;

/**
 * RichDialog panel implementation for DynamicDialogNewPanel.
 * 
 * @author <%=author%>
 * @since <%=date%>
 */
public class DynamicDialogPanel extends RichDialogGridBagPanel implements IRichDialogPanel
{
  private Map<String, Component> componentMap;

  private List<Component> componentList;

  private List<String> cmsContext;

  private Class ddObjectClass; // @jve:decl-index=0:

  private TreeNode<ComponentParameters> parameterTree;

  private IRichDialogContext rdContext; // @jve:decl-index=0:

  private String dbConfig;

  private String prefix;

  private String ddMethodParameter;

  private Set<String> controllers;

  /** Serial version id */
  private static final long serialVersionUID = 1L;

  private RButton closeButton = null;

  private RButton reloadButton = null;

  private Class<? extends Object> clazz;

  private RCardDisplay controllerCardDisplay = null;

  private List<IRichDialogPanel> dialogPanels = null;

  private Map<String, Object> inexistantAttributeValues;

  private ULCComponent focusReceiverComponent;

  private Map<String, Class<?>> classMap;

  /**
   * Create a new instance of DynamicDialogPanel
   */
  public DynamicDialogPanel()
  {
    super();

    controllers = new HashSet<String>();
    inexistantAttributeValues = new HashMap<String, Object>();

    initialize();
  }

  /**
   * This method initializes DynamicDialogNewPanel
   * 
   * @return void
   */
  private void initialize()
  {
    this.setStyleProperties("{/weightY \"1\"/weightX \"1\"}");

    this.add(getCloseButton(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1,
            com.ulcjava.base.application.GridBagConstraints.CENTER,
            com.ulcjava.base.application.GridBagConstraints.NONE,
            new com.ulcjava.base.application.util.Insets(0, 0, 0, 0), 0, 0));
    this.add(getReloadButton(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1,
            com.ulcjava.base.application.GridBagConstraints.CENTER,
            com.ulcjava.base.application.GridBagConstraints.NONE,
            new com.ulcjava.base.application.util.Insets(0, 0, 0, 0), 0, 0));
    this.add(getControllerDisplay(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1,
            com.ulcjava.base.application.GridBagConstraints.CENTER,
            com.ulcjava.base.application.GridBagConstraints.NONE,
            new com.ulcjava.base.application.util.Insets(0, 0, 0, 0), 0, 0));
  }

  public void start(Object value, IRichDialogContext rdContext, DynamicDialogCacheEntry entry)
          throws AddonsException
  {
    this.ddObjectClass = value.getClass();
    this.rdContext = rdContext;

    this.cmsContext = entry.getCmsContexts();
    this.classMap = entry.getClassMap();
    this.dbConfig = entry.getDbConfig();
    this.parameterTree = entry.getParameterTree();

    constructUI(value);

    ULCRootPane root;
    ULCFrame frame;

    this.getParent().setPreferredSize(this.getPreferredSize());
    root = this.getRootPane();

    if (root instanceof ULCFrame)
    {
      frame = (ULCFrame) root;
      if (frame.getSize().equals(new Dimension(0, 0)))
      {
        frame.pack();
        frame.setLocationRelativeTo(null);
      }
    }
  }

  @Deprecated
  public void start(String prefix, Object value, StaticRelation staticRelation, IRichDialogContext rdContext)
          throws AddonsException
  {
    ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog.StaticRelation.Item item;

    this.prefix = prefix;
    this.ddObjectClass = value.getClass();
    this.rdContext = rdContext;

    item = staticRelation.get(prefix);
    this.cmsContext = item.cmsContexts;
    this.parameterTree = item.attributeDetail;
    this.dbConfig = item.dbConfig;

    constructUI(value);
  }
  
  public static DynamicDialogCacheEntry constructParameters(Class clazz, List<String> cmsContext,
          String defaultDBConfig, String prefix, final Map<String, Class<?>> classMap)
  {
    TreeNode<ComponentParameters> parameterTree;
    try
    {
      parameterTree = DynamicDialogParametersBuilder.build(clazz, cmsContext,
              new ArrayList<TreeNode<ComponentParameters>>(), defaultDBConfig, prefix, classMap);
    }
    catch (AddonsException e)
    {
      throw new DynamicDialogException(e);
    }

    return new DynamicDialogCacheEntry(defaultDBConfig, parameterTree, cmsContext, classMap, clazz);
  }

  private void constructUI(Object value) throws AddonsException
  {
    clazz = value.getClass();
    componentMap = new HashMap<String, Component>();
    componentList = new ArrayList<Component>();

    add(getFocusReceiverComponent());

    controllers.clear();
    this.getControllerDisplay().removeAll();

    DynamicDialogBuilder.build(parameterTree, this, new Position(0, 1), componentMap, componentList, -1);

    for (String controller : controllers)
    {
      try
      {
        this.getPanelAPI().callMethod("loadController", new Object[] {controller});
      }
      catch (InvocationTargetException e)
      {
        throw new DynamicDialogException(e);
      }
      catch (NoSuchMethodException e)
      {
        throw new DynamicDialogException(e);
      }
    }

    callInit(componentList);

    applyStyles(componentList);
    setTabulationOrder();

    setDDValue(value);

    callPostStartup(componentList);
  }

  private ULCComponent getFocusReceiverComponent()
  {
    if (focusReceiverComponent == null)
    {
      focusReceiverComponent = new RButton();
      focusReceiverComponent.setPreferredSize(new Dimension(0, 0));
      focusReceiverComponent.addFocusListener(new IFocusListener()
        {
          private static final long serialVersionUID = 7951844947976547151L;

          public void focusGained(FocusEvent arg0)
          {
            // Nothing to do
          }

          public void focusLost(FocusEvent arg0)
          {
            focusReceiverComponent.setFocusable(false);
            focusReceiverComponent.setVisible(false);
          }
        });
    }
    return focusReceiverComponent;
  }

  public void applyStyles(List<Component> componentList)
  {
    for (Component component : componentList)
    {
      component.applyStyles();
    }
  }

  private void construct(Object value) throws AddonsException
  {
    parameterTree = constructParameters(ddObjectClass, cmsContext, dbConfig, prefix, classMap)
            .getParameterTree();
    constructUI(value);
  }

  public void setTabulationOrder()
  {
    // Doesn't work if there is a DatePicker
    // Component last;
    //
    // last = null;
    // for (Component component : componentList)
    // {
    // if (component.isFocusable())
    // {
    // if (last != null)
    // {
    // last.getLastMainComponent().setNextFocusableComponent(component.getMainComponent());
    // }
    // last = component;
    // }
    // }
  }

  protected void callInit(List<Component> componentList)
  {
    for (Component component : componentList)
    {
      if (component.isMethodCallAllowed())
      {
        if (component instanceof FieldComponent)
        {
          FieldComponent fieldComponent;

          fieldComponent = (FieldComponent) component;

          if (!fieldComponent.getDefaultValue().equals(""))
          {
            fieldComponent.useDefaultValue();
          }
        }
        if (!component.getParameters().getInitMethod().equals(""))
        {
          component.init();
        }
      }
    }
  }

  private void callPostStartup(List<Component> componentList)
  {
    for (Component component : componentList)
    {
      if (component.isMethodCallAllowed())
      {
        if (!component.getParameters().getPostStartupMethod().equals(""))
        {
          component.postStartup();
        }
      }
    }
  }

  public void setDDValue(Object value) throws AddonsException
  {
    setDDValue(value, false);
  }

  private void setDDValue(Object value, boolean construction) throws AddonsException
  {
    DynamicDialogMapper.setValue(value, componentMap, inexistantAttributeValues, getPrefix(), !construction,
            getClassMap());
  }

  public void reload() throws AddonsException
  {
    Object value;
    value = getDDValue();
    for (ULCComponent c : getComponents())
    {
      if (c != getCloseButton() && c != getReloadButton())
      {
        this.remove(c);
      }
    }
    construct(value);
  }

  public Object getDDValue()
  {
    return DynamicDialogMapper.getValue(componentMap, inexistantAttributeValues, ddObjectClass, getPrefix(),
            getClassMap());
  }

  public Class getDDObjectClass()
  {
    return this.ddObjectClass;
  }

  public String getPrefix()
  {
    return prefix == null ? "" : prefix;
  }

  public String[] getCmsContext()
  {
    return cmsContext.toArray(new String[] {});
  }

  public Component getDDComponent(String fullName)
  {
    return componentMap.get(StringUtil.cleanUpPath(fullName));
  }

  public FieldComponent getDDFieldComponent(String fullName)
  {
    Component component;
    FieldComponent fieldComponent;

    fieldComponent = null;

    component = getDDComponent(fullName);
    if (component instanceof FieldComponent)
    {
      fieldComponent = (FieldComponent) component;
    }

    return fieldComponent;
  }

  public Boolean isDDValid()
  {
    return validate(false, false);
  }

  public Boolean isDDBlocked()
  {
    return !validate(true, false);
  }

  public void ddValidate()
  {
    validate(false, false);
  }

  public Boolean isDDValid(String prefix)
  {
    return validate(false, false, prefix);
  }

  public Boolean isDDBlocked(String prefix)
  {
    return !validate(true, false, prefix);
  }

  public void ddValidate(String prefix)
  {
    validate(false, false, prefix);
  }

  protected void clearDDValidation(String prefix)
  {
    for (Component component : componentList)
    {
      if (component.getFullName().startsWith(prefix))
      {
        if (component instanceof FieldComponent)
        {
          FieldComponent fieldComponent = (FieldComponent) component;

          fieldComponent.clearValidation();
          fieldComponent.updateIconAndBackground(true);
        }
      }
    }
  }

  protected void requestFocus(String prefix)
  {
    for (Component component : componentList)
    {
      if (component.getFullName().startsWith(prefix))
      {
        if (component instanceof FieldComponent)
        {
          FieldComponent fieldComponent = (FieldComponent) component;

          fieldComponent.requestFocus();
          break;
        }
      }
    }
  }

  public void setDDFocusOnFirstError()
  {
    validate(false, true);
  }

  private Boolean validate(boolean checkBlocking, boolean setFocus)
  {
    return validate(checkBlocking, setFocus, "");
  }

  private Boolean validate(boolean checkBlocking, boolean setFocus, String prefix)
  {
    Boolean result;

    result = true;
    for (Component component : componentList)
    {
      if (component.getFullName().startsWith(prefix))
      {
        if (component instanceof FieldComponent)
        {
          FieldComponent fieldComponent = (FieldComponent) component;

          if (fieldComponent.isVisible() && !fieldComponent.validate())
          {
            result = checkBlocking ? !fieldComponent.getParameters().isValidationBlocking() : false;

            if (!result && setFocus)
            {
              fieldComponent.requestFocus();
            }
          }
        }
      }
    }
    return result;
  }

  protected IRichDialogContext getRdContext()
  {
    return rdContext;
  }

  public void setDefaultDBConfig(String dbConfig)
  {
    this.dbConfig = dbConfig;
  }

  public String getDefaultDBConfig()
  {
    return dbConfig;
  }

  public void clearDDMethodParameter()
  {
    ddMethodParameter = null;
  }

  public void setDDMethodParameter(String s)
  {
    ddMethodParameter = s;

  }

  public String getDDMethodParameter()
  {
    return ddMethodParameter;
  }

  // public void dispose()
  // {
  // ULCFrame frame;
  // ULCRootPane root;
  //
  // root = this.getRootPane();
  //
  // root.setName("root");
  // if (root instanceof ULCFrame)
  // {
  // frame = (ULCFrame) root;
  // frame.setName("frame");
  // frame.dispose();
  // }
  // }

  /**
   * This method initializes closeButton
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton
   */
  public RButton getCloseButton()
  {
    if (closeButton == null)
    {
      closeButton = new RButton();
      closeButton.setText("closeButton");
      closeButton.setName("closeButton");
      closeButton.setPreferredSize(new Dimension(0, 0));
      closeButton.setVisible(false);
    }
    return closeButton;
  }

  /**
   * This method initializes Button
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton
   */
  public RButton getReloadButton()
  {
    if (reloadButton == null)
    {
      reloadButton = new RButton();
      reloadButton.setText("reloadButton");
      reloadButton.setName("reloadButton");
      reloadButton.setPreferredSize(new Dimension(0, 0));
      reloadButton.setVisible(false);
    }
    return reloadButton;
  }

  protected Map<String, Component> getComponentMap()
  {
    return componentMap;
  }

  protected Map<String, Component> getComponentParameterMap()
  {
    return componentMap;
  }

  public List<Component> getComponentList()
  {
    return componentList;
  }

  public Class<?> getDisplayedClass()
  {
    return clazz;
  }

  /**
   * This method initializes CardDisplay
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay
   */
  public RCardDisplay getControllerDisplay()
  {
    if (controllerCardDisplay == null)
    {
      controllerCardDisplay = new RCardDisplay();
      controllerCardDisplay.setDisplayId("DDControllerDisplay");
      controllerCardDisplay.setVisible(false);
      controllerCardDisplay.setName("controllerCardDisplay");
    }
    return controllerCardDisplay;
  }

  protected void addController(String controller)
  {
    if (controller != null && !controller.equals(""))
    {
      controllers.add(controller);
    }
  }

  protected void invoke(String method, String fullName)
  {
    Object[] params;
    String[] splitResult;

    if (method != null && !method.equals(""))
    {
      if (dialogPanels == null)
      {
        dialogPanels = Invocation.getInvocationTargets(this);
      }

      clearDDMethodParameter();
      if (method.contains(":"))
      {
        splitResult = method.split(":", 2);
        setDDMethodParameter(splitResult[1]);
        method = splitResult[0];
      }
      try
      {
        params = new Object[] {this, fullName};
        Invocation.invoke(method, params, dialogPanels);
      }
      catch (InvocationTargetException e)
      {
        try
        {
          params = new Object[] {fullName};
          Invocation.invoke(method, params, dialogPanels);
        }
        catch (InvocationTargetException e2)
        {
          try
          {
            Invocation.invoke(method, new Object[0], dialogPanels);
          }
          catch (InvocationTargetException e3)
          {
            Ivy.log().debug("Unable to invoke method : " + method);
          }
        }
      }
    }
  }

  protected final Map<String, Object> getInexistantAttributeValues()
  {
    return inexistantAttributeValues;
  }

  public Map<String, Class<?>> getClassMap()
  {
    return classMap;
  }

  public TreeNode<ComponentParameters> getParameterTree()
  {
    return parameterTree;
  }
}