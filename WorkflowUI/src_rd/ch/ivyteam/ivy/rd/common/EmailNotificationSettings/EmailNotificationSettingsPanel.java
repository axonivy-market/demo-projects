package ch.ivyteam.ivy.rd.common.EmailNotificationSettings;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import com.ulcjava.base.application.BorderFactory;
import com.ulcjava.base.application.border.ULCTitledBorder;
import com.ulcjava.base.application.util.Font;
import com.ulcjava.base.application.util.Color;
import ch.ivyteam.ivy.richdialog.widgets.containers.RFlowLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RButtonGroup;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RFiller;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.menus.RPopupMenu;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;

/**
 * <p>EmailNotificationSettingsPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class EmailNotificationSettingsPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private RRadioButton appSettingsRadioButton = null;
private RRadioButton customSettingsRadioButton = null;
private RButtonGroup settingsButtonGroup = null;  //  @jve:decl-index=0:visual-constraint="38,360"
private RLabel whenLabel = null;
private RCheckBox doNotSendCheckBox = null;
private RCheckBox alwaysSendCheckBox = null;
private RGridBagLayoutPane dailySummaryPane = null;
private RLabel dailySummaryLabel = null;
private RCheckBox monCheckBox = null;
private RCheckBox tueCheckBox = null;
private RCheckBox wedCheckBox = null;
private RCheckBox thuCheckBox = null;
private RCheckBox friCheckBox = null;
private RCheckBox satCheckBox = null;
private RCheckBox sunCheckBox = null;
private RGridBagLayoutPane whenPanel = null;
private RGridBagLayoutPane whatSettingsPanel = null;
private RLabel whatLabel = null;
private RLabel languageLabel = null;
private RComboBox languageComboBox = null;
private RGridBagLayoutPane languagePanel = null;
/**
   * Create a new instance of EmailNotificationSettingsPanel
   */
  public EmailNotificationSettingsPanel()
  {
    super();
    initialize();
  }
  
  /**
   * This method initializes EmailNotificationSettingsPanel
   * @return void
   */
  private void initialize()
  {
        RFiller verticalFiller = new RFiller();
        verticalFiller.setStyle("verticalGlue");
        this.setBorder(BorderFactory.createTitledBorder(null, "<%=ivy.cms.co(\"/ch/ivyteam/ivy/rd/common/EmailNotificationSettings/labels/title\")%>", ULCTitledBorder.DEFAULT_JUSTIFICATION, ULCTitledBorder.DEFAULT_POSITION, new Font("Tahoma", Font.PLAIN, 11), new Color(23, 64, 140)));
        this.add(getWhenLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getWhenPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(verticalFiller, new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getWhatSettingsPanel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getLanguagePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
  }

/**
 * This method initializes appSettingsRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getAppSettingsRadioButton() {
	if (appSettingsRadioButton == null) {
		appSettingsRadioButton = new RRadioButton();
		appSettingsRadioButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/rd/common/EmailNotificationSettings/labels/useAppDefault\") %>");
		appSettingsRadioButton.setSelected(true);
		appSettingsRadioButton.setName("appSettingsRadioButton");
		appSettingsRadioButton.setMargin(new com.ulcjava.base.application.util.Insets(0,0,0,0));
		appSettingsRadioButton.setStyleProperties("{/fill \"NONE\"/insetsLeft \"15\"}");
		appSettingsRadioButton.setGroup(getSettingsButtonGroup());
	}
	return appSettingsRadioButton;
}

/**
 * This method initializes customSettingsRadioButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RRadioButton	
 */
private RRadioButton getCustomSettingsRadioButton() {
	if (customSettingsRadioButton == null) {
		customSettingsRadioButton = new RRadioButton();
		customSettingsRadioButton.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/rd/common/EmailNotificationSettings/labels/useCustom\") %>");
		customSettingsRadioButton.setName("customSettingsRadioButton");
		customSettingsRadioButton.setMargin(new com.ulcjava.base.application.util.Insets(0,0,0,0));
		customSettingsRadioButton.setStyleProperties("{/anchor \"NORTHWEST\"/fill \"NONE\"}");
		customSettingsRadioButton.setGroup(getSettingsButtonGroup());
	}
	return customSettingsRadioButton;
}

/**
 * This method initializes settingsButtonGroup	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButtonGroup	
 */
private RButtonGroup getSettingsButtonGroup() {
	if (settingsButtonGroup == null) {
		settingsButtonGroup = new RButtonGroup();
	}
	return settingsButtonGroup;
}

/**
 * This method initializes whenLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getWhenLabel() {
	if (whenLabel == null) {
		whenLabel = new RLabel();
		whenLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/rd/common/EmailNotificationSettings/labels/whenSendQuestion\") %>");
		whenLabel.setStyleProperties("{/insetsBottom \"0\"/insetsTop \"5\"/insetsLeft \"0\"}");
		whenLabel.setStyle("fill-horiz-north");
		whenLabel.setName("whenLabel");
	}
	return whenLabel;
}

/**
 * This method initializes doNotSendCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getDoNotSendCheckBox() {
	if (doNotSendCheckBox == null) {
		doNotSendCheckBox = new RCheckBox();
		doNotSendCheckBox.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/rd/common/EmailNotificationSettings/labels/sendNever\") %>");
		doNotSendCheckBox.setMargin(new com.ulcjava.base.application.util.Insets(0,0,0,0));
		doNotSendCheckBox.setStyleProperties("{/anchor \"WEST\"}");
		doNotSendCheckBox.setStyle("fill-horiz-north");
		doNotSendCheckBox.setName("doNotSendCheckBox");
	}
	return doNotSendCheckBox;
}

/**
 * This method initializes alwaysSendCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getAlwaysSendCheckBox() {
	if (alwaysSendCheckBox == null) {
		alwaysSendCheckBox = new RCheckBox();
		alwaysSendCheckBox.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/rd/common/EmailNotificationSettings/labels/sendEveryTime\") %>");
		alwaysSendCheckBox.setMargin(new com.ulcjava.base.application.util.Insets(0,0,0,0));
		alwaysSendCheckBox.setStyleProperties("{/anchor \"WEST\"}");
		alwaysSendCheckBox.setStyle("fill-horiz-north");
		alwaysSendCheckBox.setName("alwaysSendCheckBox");
	}
	return alwaysSendCheckBox;
}

/**
 * This method initializes dailySummaryPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getDailySummaryPane() {
	if (dailySummaryPane == null) {
		dailySummaryPane = new RGridBagLayoutPane();
		dailySummaryPane.setName("dailySummaryPane");
		dailySummaryPane.setStyleProperties("{/anchor \"WEST\"/fill \"NONE\"}");
		dailySummaryPane.setStyle("fill-horiz");
		dailySummaryPane.setName("dailySummaryPane");
		dailySummaryPane.add(getDailySummaryLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		dailySummaryPane.add(getMonCheckBox(), new com.ulcjava.base.application.GridBagConstraints(1, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		dailySummaryPane.add(getTueCheckBox(), new com.ulcjava.base.application.GridBagConstraints(2, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		dailySummaryPane.add(getWedCheckBox(), new com.ulcjava.base.application.GridBagConstraints(3, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		dailySummaryPane.add(getThuCheckBox(), new com.ulcjava.base.application.GridBagConstraints(4, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		dailySummaryPane.add(getFriCheckBox(), new com.ulcjava.base.application.GridBagConstraints(5, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		dailySummaryPane.add(getSatCheckBox(), new com.ulcjava.base.application.GridBagConstraints(6, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		dailySummaryPane.add(getSunCheckBox(), new com.ulcjava.base.application.GridBagConstraints(7, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return dailySummaryPane;
}

/**
 * This method initializes dailySummaryLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getDailySummaryLabel() {
	if (dailySummaryLabel == null) {
		dailySummaryLabel = new RLabel();
		dailySummaryLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/rd/common/EmailNotificationSettings/labels/dailySummary\") %>");
		dailySummaryLabel.setStyleProperties("{/anchor \"WEST\"/insetsRight \"5\"}");
		dailySummaryLabel.setName("dailySummaryLabel");
	}
	return dailySummaryLabel;
}

/**
 * This method initializes monCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getMonCheckBox() {
	if (monCheckBox == null) {
		monCheckBox = new RCheckBox();
		monCheckBox.setMargin(new com.ulcjava.base.application.util.Insets(0,0,0,0));
		monCheckBox.setText("<%= ch.ivyteam.util.date.Weekday.MONDAY.getShortLocalizedName(ivy.session.getContentLocale()) %>");
		monCheckBox.setName("monCheckBox");
	}
	return monCheckBox;
}

/**
 * This method initializes tueCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getTueCheckBox() {
	if (tueCheckBox == null) {
		tueCheckBox = new RCheckBox();
		tueCheckBox.setText("<%= ch.ivyteam.util.date.Weekday.TUESDAY.getShortLocalizedName(ivy.session.getContentLocale()) %>");
		tueCheckBox.setMargin(new com.ulcjava.base.application.util.Insets(0,0,0,0));
		tueCheckBox.setName("tueCheckBox");
	}
	return tueCheckBox;
}

/**
 * This method initializes wedCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getWedCheckBox() {
	if (wedCheckBox == null) {
		wedCheckBox = new RCheckBox();
		wedCheckBox.setText("<%= ch.ivyteam.util.date.Weekday.WEDNESDAY.getShortLocalizedName(ivy.session.getContentLocale()) %>");
		wedCheckBox.setMargin(new com.ulcjava.base.application.util.Insets(0,0,0,0));
		wedCheckBox.setName("wedCheckBox");
	}
	return wedCheckBox;
}

/**
 * This method initializes thuCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getThuCheckBox() {
	if (thuCheckBox == null) {
		thuCheckBox = new RCheckBox();
		thuCheckBox.setText("<%= ch.ivyteam.util.date.Weekday.THURSDAY.getShortLocalizedName(ivy.session.getContentLocale()) %>");
		thuCheckBox.setMargin(new com.ulcjava.base.application.util.Insets(0,0,0,0));
		thuCheckBox.setName("thuCheckBox");
	}
	return thuCheckBox;
}

/**
 * This method initializes friCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getFriCheckBox() {
	if (friCheckBox == null) {
		friCheckBox = new RCheckBox();
		friCheckBox.setText("<%= ch.ivyteam.util.date.Weekday.FRIDAY.getShortLocalizedName(ivy.session.getContentLocale()) %>");
		friCheckBox.setMargin(new com.ulcjava.base.application.util.Insets(0,0,0,0));
		friCheckBox.setName("friCheckBox");
	}
	return friCheckBox;
}

/**
 * This method initializes satCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getSatCheckBox() {
	if (satCheckBox == null) {
		satCheckBox = new RCheckBox();
		satCheckBox.setText("<%= ch.ivyteam.util.date.Weekday.SATURDAY.getShortLocalizedName(ivy.session.getContentLocale()) %>");
		satCheckBox.setMargin(new com.ulcjava.base.application.util.Insets(0,0,0,0));
		satCheckBox.setName("satCheckBox");
	}
	return satCheckBox;
}

/**
 * This method initializes sunCheckBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox	
 */
private RCheckBox getSunCheckBox() {
	if (sunCheckBox == null) {
		sunCheckBox = new RCheckBox();
		sunCheckBox.setText("<%= ch.ivyteam.util.date.Weekday.SUNDAY.getShortLocalizedName(ivy.session.getContentLocale()) %>");
		sunCheckBox.setMargin(new com.ulcjava.base.application.util.Insets(0,0,0,0));
		sunCheckBox.setName("sunCheckBox");
	}
	return sunCheckBox;
}

/**
 * This method initializes whenPanel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getWhenPanel() {
	if (whenPanel == null) {
		whenPanel = new RGridBagLayoutPane();
		whenPanel.setName("whenPanel");
		whenPanel.setStyleProperties("{/insetsLeft \"15\"}");
		whenPanel.add(getDoNotSendCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		whenPanel.add(getAlwaysSendCheckBox(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		whenPanel.add(getDailySummaryPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return whenPanel;
}

/**
 * This method initializes whatSettingsPanel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getWhatSettingsPanel() {
	if (whatSettingsPanel == null) {
		whatSettingsPanel = new RGridBagLayoutPane();
		whatSettingsPanel.setName("whatSettingsPanel");
		whatSettingsPanel.add(getWhatLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		whatSettingsPanel.add(getAppSettingsRadioButton(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.NORTHWEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		whatSettingsPanel.add(getCustomSettingsRadioButton(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.NORTHWEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return whatSettingsPanel;
}

/**
 * This method initializes whatLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getWhatLabel() {
	if (whatLabel == null) {
		whatLabel = new RLabel();
		whatLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/rd/common/EmailNotificationSettings/labels/whatSettingsUse\") %>");
		whatLabel.setStyle("fill-horiz-north");
		whatLabel.setStyleProperties("{/insetsBottom \"0\"/insetsTop \"5\"/insetsLeft \"0\"}");
		whatLabel.setName("whatLabel");
	}
	return whatLabel;
}

/**
 * This method initializes Label	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getLanguageLabel() {
	if (languageLabel == null) {
		languageLabel = new RLabel();
		languageLabel.setText("<%= ivy.cms.co(\"/ch/ivyteam/ivy/rd/common/EmailNotificationSettings/labels/whichLanguageUse\") %>");
		languageLabel.setStyle("fill-horiz-north");
		languageLabel.setStyleProperties("{/insetsBottom \"0\"/insetsTop \"3\"/insetsLeft \"0\"}");
		languageLabel.setName("languageLabel");
	}
	return languageLabel;
}

/**
 * This method initializes ComboBox	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RComboBox	
 */
private RComboBox getLanguageComboBox() {
	if (languageComboBox == null) {
		languageComboBox = new RComboBox();
		languageComboBox.setName("languageComboBox");
		languageComboBox.setModelConfiguration("{/result \"result=IF(entry.getVariant().equals(\\\"APPLICATION_DEFAULT\\\"),\\nivy.cms.co(\\\"/ch/ivyteam/ivy/rd/common/EmailNotificationSettings/labels/useAppDefault\\\") + \\\" (\\\"+ entry.getDisplayLanguage(ivy.session.contentLocale) + \\\")\\\",\\nentry.getDisplayName(ivy.session.contentLocale))\"/version \"3.0\"/icon \"\"/tooltip \"result=IF(entry.getVariant().equals(\\\"APPLICATION_DEFAULT\\\"),\\nivy.cms.co(\\\"/ch/ivyteam/ivy/rd/common/EmailNotificationSettings/labels/useAppDefault\\\") + \\\" (\\\"+ entry.getDisplayLanguage(ivy.session.contentLocale) + \\\")\\\",\\nentry.getDisplayName(ivy.session.contentLocale))\"}");
		languageComboBox.setStyleProperties("{/anchor \"NORTHWEST\"/fill \"NONE\"/insetsLeft \"15\"}");
	}
	return languageComboBox;
}

/**
 * This method initializes GridBagLayoutPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
 */
private RGridBagLayoutPane getLanguagePanel() {
	if (languagePanel == null) {
		languagePanel = new RGridBagLayoutPane();
		languagePanel.setName("languagePanel");
		languagePanel.add(getLanguageLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		languagePanel.add(getLanguageComboBox(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.NORTHWEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}
	return languagePanel;
}

}  //  @jve:decl-index=0:visual-constraint="10,10"