package ch.ivyteam.ivy.server.configuration.system.properties.WebServerUI;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import com.ulcjava.base.application.ULCContainer;

/**
 * RichDialog panel implementation for WebServerUIPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class WebServerUIPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
@EmbeddedRichDialog(ProtocolSettingsPanel.class) private ULCContainer httpSettingsPane = null;
@EmbeddedRichDialog(ProtocolSettingsPanel.class) private ULCContainer httpsSettingsPane = null;
@EmbeddedRichDialog(ProtocolSettingsPanel.class) private ULCContainer ajpSettingsPane = null;
  
  /**
   * Create a new instance of WebServerUIPanel
   */
  public WebServerUIPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes WebServerUIPanel
   * @return void
   */
  public void initialize()
  {
        RFiller vFiller = new RFiller();
        vFiller.setStyle("verticalGlue");
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(307,218));
        this.add(getHttpSettingsPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getHttpsSettingsPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getAjpSettingsPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(vFiller, new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getHttpSettingsPane(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes httpSettingsPane	
 * 	
 * @return ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsPanel	
 */
private ULCContainer getHttpSettingsPane()  {
	if (httpSettingsPane == null) {
		httpSettingsPane = RichDialogPanelFactory.create(ProtocolSettingsPanel.class);
		httpSettingsPane.setName("httpSettingsPane");
		httpSettingsPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
	}
	return httpSettingsPane;
}

/**
 * This method initializes httpsSettingsPane	
 * 	
 * @return ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsPanel	
 */
private ULCContainer getHttpsSettingsPane()  {
	if (httpsSettingsPane == null) {
		httpsSettingsPane = RichDialogPanelFactory.create(ProtocolSettingsPanel.class);
		httpsSettingsPane.setName("httpsSettingsPane");
		httpsSettingsPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
	}
	return httpsSettingsPane;
}

/**
 * This method initializes ajpSettingsPane	
 * 	
 * @return ch.ivyteam.ivy.server.configuration.system.properties.ProtocolSettings.ProtocolSettingsPanel	
 */
private ULCContainer getAjpSettingsPane()  {
	if (ajpSettingsPane == null) {
		ajpSettingsPane = RichDialogPanelFactory.create(ProtocolSettingsPanel.class);
		ajpSettingsPane.setName("ajpSettingsPane");
		ajpSettingsPane.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
	}
	return ajpSettingsPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"