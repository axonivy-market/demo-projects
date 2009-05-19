package ch.ivyteam.ivy.demo.tabletree.FileBrowser;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RTableTree;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;

/**
 * RichDialog panel implementation for FileBrowserPanel.
 * @author <%=author%>
 * @since <%=date%>
 */
public class FileBrowserPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RLabel titleLabel = null;
private RLabel subtitleLabel = null;
private RGridBagLayoutPane titlePane = null;
private RLabel infoLabel = null;
private RScrollPane scroller = null;
private RTableTree fileTableTree = null;
private RComboBox driveComboBox = null;
private RLabel serverLabel = null;
private RGridBagLayoutPane selectorPane = null;
  
  /**
   * Create a new instance of FileBrowserPanel
   */
  public FileBrowserPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes FileBrowserPanel
   * @return void
   */
  private void initialize()
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(298,269));
        this.add(getTitlePane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getScroller(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 4, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getSelectorPane(), new com.ulcjava.base.application.GridBagConstraints(3, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes titleLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getTitleLabel() {
	if (titleLabel == null) {
		titleLabel = new RLabel();
		titleLabel.setText("File Browser");
		titleLabel.setIconUri("<%= ivy.cms.cr(\"/Images/harddisk_large\") %>");
		titleLabel.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/font {/name \"Arial\"/size \"28\"/style \"BOLD\"}/fill \"HORIZONTAL\"/weightX \"1\"}");
		titleLabel.setIconTextGap(20);
		titleLabel.setStyle("border-full");
		titleLabel.setName("titleLabel");
	}
	return titleLabel;
}

/**
 * This method initializes subtitleLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSubtitleLabel() {
	if (subtitleLabel == null) {
		subtitleLabel = new RLabel();
		subtitleLabel.setText("Let's you browse the contents of the server harddisk.");
		subtitleLabel.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/insetsTop \"0\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		subtitleLabel.setStyle("border-full");
		subtitleLabel.setName("subtitleLabel");
	}
	return subtitleLabel;
}

/**
 * This method initializes titlePane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getTitlePane() {
	if (titlePane == null) {
		titlePane = new RGridBagLayoutPane();
		titlePane.setName("titlePane");
		titlePane.setStyleProperties("{/backgroundColor {/b \"255\"/r \"255\"/g \"255\"}/fill \"HORIZONTAL\"}");
		titlePane.add(getTitleLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		titlePane.add(getSubtitleLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return titlePane;
}

/**
 * This method initializes infoLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getInfoLabel() {
	if (infoLabel == null) {
		infoLabel = new RLabel();
		infoLabel.setText("Browse drive ");
		infoLabel.setStyle("border-full");
		infoLabel.setStyleProperties("{/insetsLeft \"0\"}");
		infoLabel.setName("infoLabel");
	}
	return infoLabel;
}

/**
 * This method initializes scroller	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RScrollPane	
 */
private RScrollPane getScroller() {
	if (scroller == null) {
		scroller = new RScrollPane();
		scroller.setName("scroller");
		scroller.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"0\"/fill \"BOTH\"/insetsRight \"5\"/insetsLeft \"5\"/weightY \"1\"/weightX \"1\"}");
		scroller.setViewPortView(getFileTableTree());
	}
	return scroller;
}

/**
 * This method initializes fileTableTree	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTableTree	
 */
private RTableTree getFileTableTree() {
	if (fileTableTree == null) {
		fileTableTree = new RTableTree();
		fileTableTree.setName("fileTableTree");
		fileTableTree.setModelConfiguration("{/showTableheader true /autoTableheader false /showtooltip false /showIcons true /dynamicTreeLoadMode \"LOAD_FOR_RENDER_PARENT\"/version \"2.0\"/columns {{/patterns {{/result \"result=node.info.equalsIgnoreCase(\\\"drive\\\") ? \\r\\n(value as java.io.File).getAbsolutePath() :\\r\\n(value as java.io.File).getName()\"/version \"2.0\"/tooltip \"\"/icon \"result=\\\"/Images/\\\" + node.info\"/header \"Path\"/field \"\"/columnWidth \"300\"/patternMode \"ALL\"/patternValue \"default\"}}}{/patterns {{/result \"result=(value as java.io.File).isDirectory() ? (value as java.io.File).list().size().toString() + \\\" Files\\\" : (value as java.io.File).length().toString() + \\\" Bytes\\\"\"/version \"2.0\"/icon \"\"/header \"Size\"/patternMode \"ALL\"/patternValue \"default\"}}}}}");
	}
	return fileTableTree;
}

/**
 * This method initializes driveComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getDriveComboBox() {
	if (driveComboBox == null) {
		driveComboBox = new RComboBox();
		driveComboBox.setName("driveComboBox");
		driveComboBox.setModelConfiguration("{/result \"result=entry.getAbsolutePath()\"/version \"2.0\"/icon \"result=ivy.cms.cr(\\\"/Images/drive\\\")\"/tooltip \"\"/emptyTableText \"no drives found on server\"}");
		driveComboBox.setStyleProperties("{/anchor \"WEST\"}");
	}
	return driveComboBox;
}

/**
 * This method initializes serverLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getServerLabel() {
	if (serverLabel == null) {
		serverLabel = new RLabel();
		serverLabel.setText("on server.");
		serverLabel.setStyle("border-full");
		serverLabel.setStyleProperties("{/anchor \"WEST\"/fill \"HORIZONTAL\"/weightX \"1\"}");
		serverLabel.setName("serverLabel");
	}
	return serverLabel;
}

/**
 * This method initializes selectorPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getSelectorPane() {
	if (selectorPane == null) {
		selectorPane = new RGridBagLayoutPane();
		selectorPane.setName("selectorPane");
		selectorPane.setStyleProperties("{/insetsBottom \"5\"/insetsTop \"10\"/insetsRight \"5\"/insetsLeft \"5\"}");
		selectorPane.add(getDriveComboBox(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		selectorPane.add(getServerLabel(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		selectorPane.add(getInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return selectorPane;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"