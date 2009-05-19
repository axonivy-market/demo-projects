package ch.ivyteam.ivy.demo.search.ListSearch;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RList;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;

import com.ulcjava.base.application.ClientContext;
import com.ulcjava.base.application.util.Color;
import com.ulcjava.base.shared.UlcEventCategories;
import com.ulcjava.base.shared.UlcEventConstants;

/**
 * RichDialog panel implementation for SearchTablePanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class ListSearchPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel titleLabel = null;
private RTextField searchField = null;
private RScrollPane scrollPane = null;
private RList resultList = null;
private RLabel searchLabel = null;
private RLabel resultLabel = null;
private RLabel infoLabel = null;
private RGridBagLayoutPane header = null;
/**
   * Create a new instance of SearchTablePanel
   */
  public ListSearchPanel()
  {
    super();
    initialize();
    ClientContext.setEventDeliveryMode(searchField, UlcEventCategories.KEY_EVENT_CATEGORY, UlcEventConstants.ASYNCHRONOUS_MODE);
  }
  
  /**
   * This method initializes SearchTablePanel
   * @return void
   */
  public void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(375,206));
        this.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/insetsLeft \"5\"}");
        this.add(getSearchField(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
        this.add(getScrollPane(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
        this.add(getSearchLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,5,0), 0, 0));
        this.add(getResultLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 2, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(5,5,5,5), 0, 0));
        this.add(getHeader(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 2, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes titleLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTitleLabel() {
	if (titleLabel == null) {
		titleLabel = new RLabel();
		titleLabel.setText("Search");
		titleLabel.setStyleProperties("{/font {/name \"Arial\"/size \"14\"/style \"BOLD\"}/anchor \"WEST\"/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"/fill \"BOTH\"/insetsLeft \"5\"/weightX \"1\"}");
		titleLabel.setIconUri("<%=ivy.cms.cr(\"/Images/search\")%>");
		titleLabel.setAlignmentY(0.0F);
		titleLabel.setBackground(new Color(239, 239, 239));
		titleLabel.setName("titleLabel");
	}
	return titleLabel;
}

/**
 * This method initializes searchField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getSearchField() {
	if (searchField == null) {
		searchField = new RTextField();
		searchField.setText("");
		searchField.setStyleProperties("{/fill \"HORIZONTAL\"/weightX \"1\"}");
		searchField.setName("searchField");
	}
	return searchField;
}

/**
 * This method initializes scrollPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScrollPane() {
	if (scrollPane == null) {
		scrollPane = new RScrollPane();
		scrollPane.setName("scrollPane");
		scrollPane.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		scrollPane.setViewPortView(getResultList());
	}
	return scrollPane;
}

/**
 * This method initializes resultList	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RList	
 */
private RList getResultList() {
	if (resultList == null) {
		resultList = new RList();
		resultList.setName("resultList");
	}
	return resultList;
}

/**
 * This method initializes searchLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSearchLabel() {
	if (searchLabel == null) {
		searchLabel = new RLabel();
		searchLabel.setText("Filter:");
		searchLabel.setName("searchLabel");
	}
	return searchLabel;
}

/**
 * This method initializes resultLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getResultLabel() {
	if (resultLabel == null) {
		resultLabel = new RLabel();
		resultLabel.setText("<Result text goes here>");
		resultLabel.setName("resultLabel");
	}
	return resultLabel;
}

/**
 * This method initializes infoLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getInfoLabel() {
	if (infoLabel == null) {
		infoLabel = new RLabel();
		infoLabel.setText("<Info text goes here>");
		infoLabel.setStyleProperties("{/anchor \"WEST\"/insetsBottom \"10\"/insetsTop \"0\"/fill \"HORIZONTAL\"/insetsRight \"5\"/insetsLeft \"5\"}");
		infoLabel.setName("infoLabel");
	}
	return infoLabel;
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
		header.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/fill \"BOTH\"/weightX \"1\"}");
		header.setOpaque(true);
		header.add(getTitleLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		header.add(getInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return header;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"