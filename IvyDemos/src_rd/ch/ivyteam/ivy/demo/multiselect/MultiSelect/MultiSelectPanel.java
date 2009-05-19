package ch.ivyteam.ivy.demo.multiselect.MultiSelect;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RBoxLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.demo.multiselect.InnerList.InnerListPanel;

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
private RLabel lblSubtitle = null;
private RLabel lblSubtitle2 = null;
private RLabel lblSubtitle3 = null;
private RGridBagLayoutPane content = null;
private RList listSource = null;
private RButton btnMove = null;
private RList listTarget = null;
private RGridBagLayoutPane header = null;
private RLabel lblTitle = null;
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
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(373,232));
         this.setStyleProperties("{/weightY \"1\"}");
         this.add(getHeader(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
         this.add(getContent(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
       this.add(getHeader(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes lblSubtitle	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLblSubtitle() {
	if (lblSubtitle == null) {
		lblSubtitle = new RLabel();
		lblSubtitle.setText("Shows how to handle a multi selection in a list box. This can be re-used for");
		lblSubtitle.setStyleProperties("{/horizontalAlignment \"LEFT\"/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"/horizontalTextPosition \"LEFT\"}");
		lblSubtitle.setName("lblSubtitle");
	}
	return lblSubtitle;
}

/**
 * This method initializes lblSubtitle2	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLblSubtitle2() {
	if (lblSubtitle2 == null) {
		lblSubtitle2 = new RLabel();
		lblSubtitle2.setText("table widgets too. Select some entries in the list to the left and click on the");
		lblSubtitle2.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		lblSubtitle2.setName("lblSubtitle2");
	}
	return lblSubtitle2;
}

/**
 * This method initializes lblSubtitle3	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLblSubtitle3() {
	if (lblSubtitle3 == null) {
		lblSubtitle3 = new RLabel();
		lblSubtitle3.setText("button with the arrow. The entries are then shown in the list to the left.");
		lblSubtitle3.setStyleProperties("{/horizontalAlignment \"LEFT\"/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"/horizontalTextPosition \"LEFT\"}");
		lblSubtitle3.setName("lblSubtitle3");
	}
	return lblSubtitle3;
}

/**
 * This method initializes content	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getContent() {
	if (content == null) {
		content = new RGridBagLayoutPane();
		content.setName("content");
		content.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		content.add(getListSource(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 2, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		content.add(getBtnMove(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		content.add(getListTarget(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		content.add(getInnerListPanel(), new com.ulcjava.base.application.GridBagConstraints(2, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		content.add(getListSource(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return content;
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
		listSource.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
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
		btnMove.setIconUri("<%=ivy.cms.cr(\"/Images/right\")%>");
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
		listTarget.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
	}
	return listTarget;
}

/**
 * This method initializes header	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getHeader() {
	if (header == null) {
		header = new RGridBagLayoutPane();
		header.setName("header");
		header.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		header.add(getLblSubtitle(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		header.add(getLblSubtitle2(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		header.add(getLblSubtitle3(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		header.add(getLblTitle(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return header;
}

/**
 * This method initializes lblTitle	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLblTitle() {
	if (lblTitle == null) {
		lblTitle = new RLabel();
		lblTitle.setText("Multi-Selection in a List widget");
		lblTitle.setStyleProperties("{/font {/name \"Dialog\"/size \"18\"/style \"BOLD\"}}");
		lblTitle.setIconUri("<%=ivy.cms.cr(\"/Images/multi_select\")%>");
		lblTitle.setName("lblTitle");
	}
	return lblTitle;
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
	}
	return innerListPanel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"