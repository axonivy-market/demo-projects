package ch.ivyteam.ivy.workflow.ui.restricted.technical.StandaloneWorkflowUIWindow;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogBorderPanel;
import ch.ivyteam.ivy.richdialog.util.RichDialogUtil;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane;
import ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay;
import ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay;
import ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderPanel;
import ch.ivyteam.ivy.workflow.ui.utils.UIHelper;
import ch.ivyteam.ivy.workflow.ui.utils.UserSessionAttributesHelper;

import com.ulcjava.base.application.ULCContainer;
import com.ulcjava.base.application.ULCFrame;
import com.ulcjava.base.application.ULCRootPane;
import com.ulcjava.base.application.event.ISelectionChangedListener;
import com.ulcjava.base.application.event.IWindowListener;
import com.ulcjava.base.application.event.WindowEvent;

/**
 * RichDialog panel implementation for WorkflowUIWindowPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class StandaloneWorkflowUIWindowPanel extends RichDialogBorderPanel implements IRichDialogPanel
{
  /** Serial version id */
  private static final long serialVersionUID = 1L;

  @EmbeddedRichDialog(UserSessionHeaderPanel.class)
  private ULCContainer userSessionHeaderRDC = null;

  private RTabbedDisplay workflowUIWindowCenterDisplay = null;

  private RBoxPane headerBoxPane = null;

  private RCardDisplay workflowUIWindowNorthDisplay = null;
  
  private IWindowListener fWindowListeners[];

  private ULCFrame fFrame;

  /**
   * Create a new instance of WorkflowUIWindowPanel
   */
  public StandaloneWorkflowUIWindowPanel()
  {
    super();
    initialize();

    // prettify ui components
    UIHelper.prettifyComponent(this);
  }

  /**
   * This method initializes WorkflowUIWindowPanel
   * @return void
   */
  private void initialize()
  {
    this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(1024, 768));
    this.add(getWorkflowUIWindowCenterDisplay(), com.ulcjava.base.application.ULCBorderLayoutPane.CENTER);
    this.add(getHeaderBoxPane(), com.ulcjava.base.application.ULCBorderLayoutPane.NORTH);

    // set the flag to false in order to have "Workflow" as selected index 0
    UserSessionAttributesHelper.setWorkflowUISessionInitialized(false);
  }

  /**
   * This method initializes userSessionHeaderRDC
   * 
   * @return ch.ivyteam.ivy.workflow.ui.security.UserSessionHeader.UserSessionHeaderPanel
   */
  private ULCContainer getUserSessionHeaderRDC()
  {
    if (userSessionHeaderRDC == null)
    {
      userSessionHeaderRDC = RichDialogPanelFactory.create(UserSessionHeaderPanel.class);
      userSessionHeaderRDC.setName("userSessionHeaderRDC");
      userSessionHeaderRDC.setStyleProperties("{/anchor \"EAST\"}");
    }
    return userSessionHeaderRDC;
  }

  /**
   * This method initializes workflowUIWindowCenterDisplay
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.displays.RTabbedDisplay
   */
  private RTabbedDisplay getWorkflowUIWindowCenterDisplay()
  {
    if (workflowUIWindowCenterDisplay == null)
    {
      workflowUIWindowCenterDisplay = new RTabbedDisplay();
      workflowUIWindowCenterDisplay.setName("workflowUIWindowCenterDisplay");
      workflowUIWindowCenterDisplay.addSelectionChangedListener(new ISelectionChangedListener()
        {
          /**
			 * 
			 */
          private static final long serialVersionUID = -3559903885274816649L;

          public void selectionChanged(com.ulcjava.base.application.event.SelectionChangedEvent e)
          {
            Ivy.log().debug(
                    "selectionChanged to : "
                            + (workflowUIWindowCenterDisplay.getSelectedIndex() < 0 ? ""
                                    : workflowUIWindowCenterDisplay.getTitleAt(workflowUIWindowCenterDisplay
                                            .getSelectedIndex())));

            Ivy.log().debug(
                            "workflowUIWindowTabbedDisplay.getSelectedIndex() != 0 && !UserSessionAttributesHelper.isWorkflowUISessionInitialized(): "
                                    + workflowUIWindowCenterDisplay.getSelectedIndex() != 0 + "&&"
                                    + !UserSessionAttributesHelper.isWorkflowUISessionInitialized());

            if (workflowUIWindowCenterDisplay.getSelectedIndex() > 0
                    && !UserSessionAttributesHelper.isWorkflowUISessionInitialized())
            {
              // this is an initialization
              // set the attribute value on the session
              UserSessionAttributesHelper.setWorkflowUISessionInitialized(true);

              // set Workflow (1st tab) as selected tab
              workflowUIWindowCenterDisplay.setSelectedIndex(0);

              Ivy.log().debug("Now selected index is: " + workflowUIWindowCenterDisplay.getSelectedIndex());
            }
          }
        });
    }
    return workflowUIWindowCenterDisplay;
  }


  @SuppressWarnings("restriction")
  private ULCFrame getFFrame()
  {
    if (fFrame == null)
    {
      ULCRootPane root = RichDialogUtil.getUlcRootPane(this);
      fFrame = (ULCFrame) root;
      fFrame.setName("fFrame");
    }
    
    return fFrame;
  }
  
  
  public void setUpCloseHandler()
  {

    final ULCFrame frame = getFFrame();
    
    // store the actual listeners
    fWindowListeners = frame.getWindowListeners();
        
    frame.setDefaultCloseOperation(ULCFrame.DO_NOTHING_ON_CLOSE);

    // remove the actual listeners and apply WFUI specific
    for (int i=0; i<fWindowListeners.length; i++)
    {
      frame.removeWindowListener(fWindowListeners[i]);  
    }
        
    frame.addWindowListener(new IWindowListener()
      {
        private static final long serialVersionUID = 1L;

        public void windowClosing(WindowEvent event)
        {
          String rdMethodName = "_windowClosingRequested";
          getPanelAPI().getRuntimeLogger().info(
                  "Window '{0}' attempt to close; calling the {1} RD method.", frame.getTitle(), rdMethodName);
          try
          {
            getPanelAPI().callMethod(rdMethodName, new Object[0]);
          }
          catch (Throwable e1)
          {
            e1.printStackTrace();
          }
        }
      });
  }
  
  
  public void restoreDefaultCloseUpHandler()
  {
    // remove the existing one and apply the "default Ivy" listeners
    IWindowListener listeners[] = fFrame.getWindowListeners();
    for (int i=0; i<listeners.length; i++)
    {
      fFrame.removeWindowListener(listeners[i]);
    }
    
    for (int i = 0; i < fWindowListeners.length; i++)
    {
      fFrame.addWindowListener(fWindowListeners[i]);
    }
  }
  

  /**
   * This method initializes headerBoxPane
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.containers.RBoxPane
   */
  private RBoxPane getHeaderBoxPane()
  {
    if (headerBoxPane == null)
    {
      headerBoxPane = new RBoxPane();
      headerBoxPane.setName("headerBoxPane");
      headerBoxPane.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}}");
      headerBoxPane.set(1, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_LEFT_CENTER,
              getUserSessionHeaderRDC());
      headerBoxPane.set(0, 0, 1, 1, com.ulcjava.base.shared.IDefaults.BOX_EXPAND_TOP,
              getWorkflowUIWindowNorthDisplay());
    }
    return headerBoxPane;
  }

  /**
   * This method initializes workflowUIWindowNorthDisplay
   * 
   * @return ch.ivyteam.ivy.richdialog.widgets.displays.RCardDisplay
   */
  private RCardDisplay getWorkflowUIWindowNorthDisplay()
  {
    if (workflowUIWindowNorthDisplay == null)
    {
      workflowUIWindowNorthDisplay = new RCardDisplay();
      workflowUIWindowNorthDisplay.setName("workflowUIWindowNorthDisplay");
      workflowUIWindowNorthDisplay
              .setPreferredSize(new com.ulcjava.base.application.util.Dimension(1024, 40));
      workflowUIWindowNorthDisplay.setOpaque(false);
      workflowUIWindowNorthDisplay.setStyleProperties("{/weightX \"1\"}");
    }
    return workflowUIWindowNorthDisplay;
  }

} // @jve:decl-index=0:visual-constraint="10,10"