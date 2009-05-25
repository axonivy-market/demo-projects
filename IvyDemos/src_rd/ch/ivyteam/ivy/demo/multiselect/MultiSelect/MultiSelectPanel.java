package ch.ivyteam.ivy.demo.multiselect.MultiSelect;

import ch.ivyteam.ivy.demo.multiselect.InnerList.InnerListPanel;
import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

/**
 * RichDialog panel implementation for MultiSelectPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class MultiSelectPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RList listSource = null;
private RButton btnMove = null;
private RList listTarget = null;
private TitlePanel titlePanel = null;
private RScrollPane sourceScroller = null;
private RScrollPane targetScroller = null;
private InnerListPanel innerListPanel = null;
  
  /**
   * Create a new instance of MultiSelectPanel
   */
  public MultiSelectPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes MultiSelectPanel
   * @return void
   */
  private void initialize()
  {
    this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(483,245));
    this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
    this.add(getInnerListPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 3, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
    this.add(getSourceScroller(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
    this.add(getBtnMove(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
    this.add(getTargetScroller(), new com.ulcjava.base.application.GridBagConstraints(2, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes listSource	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RList	
 */
private RList getListSource() {
	if (listSource == null) {
		listSource = new RList();
		listSource.setName("listSource");
		listSource.setName("listSource");
	}
	return listSource;
}

/**
 * This method initializes btnMove	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton	
 */
private RButton getBtnMove() {
	if (btnMove == null) {
		btnMove = new RButton();
		btnMove.setName("btnMove");
		btnMove.setIconUri("<%=ivy.cms.cr(\"/ch/ivyteam/ivy/demo/icons/normal/right\")%>");
	}
	return btnMove;
}

/**
 * This method initializes listTarget	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RList	
 */
private RList getListTarget() {
	if (listTarget == null) {
		listTarget = new RList();
		listTarget.setName("listTarget");
	}
	return listTarget;
}

/**
 * This method initializes titlePanel	
 * 	
 * @return ch.ivyteam.ivy.demo.util.Title.TitlePanel	
 */
private TitlePanel getTitlePanel() {
	if (titlePanel == null) {
		titlePanel = new TitlePanel();
		titlePanel.setName("titlePanel");
		titlePanel.setStyle("fill-horiz");
	}
	return titlePanel;
}

/**
 * This method initializes sourceScroller	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getSourceScroller() {
	if (sourceScroller == null) {
		sourceScroller = new RScrollPane();
		sourceScroller.setName("sourceScroller");
		sourceScroller.setStyle("fill-both-border");
		sourceScroller.setViewPortView(getListSource());
	}
	return sourceScroller;
}

/**
 * This method initializes targetScroller	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getTargetScroller() {
	if (targetScroller == null) {
		targetScroller = new RScrollPane();
		targetScroller.setName("targetScroller");
		targetScroller.setStyle("fill-both-border");
		targetScroller.setViewPortView(getListTarget());
	}
	return targetScroller;
}

/**
 * This method initializes innerListPanel	
 * 	
 * @return ch.ivyteam.ivy.demo.multiselect.InnerList.InnerListPanel	
 */
private InnerListPanel getInnerListPanel() {
	if (innerListPanel == null) {
		innerListPanel = new InnerListPanel();
		innerListPanel.setName("innerListPanel");
		innerListPanel.setStyleProperties("{/insetsTop \"0\"}");
		innerListPanel.setStyle("fill-horiz-border");
	}
	return innerListPanel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"