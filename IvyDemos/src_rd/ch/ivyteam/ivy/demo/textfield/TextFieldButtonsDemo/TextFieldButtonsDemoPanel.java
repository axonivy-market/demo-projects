package ch.ivyteam.ivy.demo.textfield.TextFieldButtonsDemo;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;
import java.util.Random;

import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.demo.util.Title.TitlePanel;
import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.EmbeddedRichDialog;
import ch.ivyteam.ivy.richdialog.exec.panel.RichDialogPanelFactory;
import com.ulcjava.base.application.ULCContainer;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;

import com.ulcjava.base.application.event.ActionEvent;
import com.ulcjava.base.application.event.IActionListener;
import com.ulcjava.base.application.util.Dimension;
import com.ulcjava.base.application.util.ULCIcon;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane;
import ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane;
import ch.ivyteam.ulc.vwidget.server.ULCVSearchField;

/**
 * <p>TextFieldButtonsDemoPanel is a rich dialog panel implementation.
 *
 * <p>Please note that a rich dialog panel is not an instance of a Swing 
 * container, but of an ULCContainer. As such it can not be run 
 * or instantiated outside the ULC framework.
 */
@SuppressWarnings("all")
public class TextFieldButtonsDemoPanel extends RichDialogGridBagPanel 
implements IRichDialogPanel 
{ 
  /** Serial version id */
  private static final long serialVersionUID = 1L;
private @EmbeddedRichDialog(TitlePanel.class) ULCContainer titlePanel = null;
private RTextField textFieldWithFileIcon = null;
private RTextField textFieldWithCmsIcon = null;
private RLabel fileIconLabel = null;
private RLabel cmsIconLabel = null;
private RLabel clearButtonLabel = null;
private RTextField textFieldWithClearButton = null;
private RLabel actionLabel = null;
private RTextField actionTextField = null;

private int counter = 0;
private Locale locale;
private RCardPane CardPane = null;
private RHtmlPane titleHtmlPane = null;
private RHtmlPane iconHtmlPane = null;
private RHtmlPane ActionListenerHtmlPane = null;
private RHtmlPane clearHtmlPane = null;
private RHtmlPane searchFieldHtmlPane = null;
private RLabel searchFieldLabel = null;
private ULCVSearchField searchField = null;
private RLabel searchResultLabel = null;

/**
   * Create a new instance of TextFieldButtonsDemoPanel
 * @throws MalformedURLException 
 * @throws EnvironmentNotAvailableException 
   */
  public TextFieldButtonsDemoPanel() throws EnvironmentNotAvailableException, MalformedURLException
  {
    super();
    initialize();
    locale = Ivy.session().getContentLocale();
  }
  
  /**
   * This method initializes TextFieldButtonsDemoPanel
   * @return void
 * @throws MalformedURLException 
 * @throws EnvironmentNotAvailableException 
   */
  private void initialize() throws EnvironmentNotAvailableException, MalformedURLException
  {
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(694,573));
        this.setPreferredSize(new com.ulcjava.base.application.util.Dimension(1302,578));
        this.add(getTitlePanel(), new com.ulcjava.base.application.GridBagConstraints(0, 0, 3, 1, 1.0, 0.0, com.ulcjava.base.application.GridBagConstraints.NORTH, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getFileIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 3, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,0,0), 0, 0));
        this.add(getTextFieldWithFileIcon(), new com.ulcjava.base.application.GridBagConstraints(1, 3, 1, 1, 0.8, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(5,5,0,5), 0, 0));
        this.add(getTextFieldWithCmsIcon(), new com.ulcjava.base.application.GridBagConstraints(1, 4, 1, 1, 0.8, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(5,5,0,5), 0, 0));
        this.add(getCmsIconLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,0,0), 0, 0));
        this.add(getClearButtonLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 8, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,0,0), 0, 0));
        this.add(getTextFieldWithClearButton(), new com.ulcjava.base.application.GridBagConstraints(1, 8, 1, 1, 1.0, 0.0, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.BOTH, new com.ulcjava.base.application.util.Insets(5,5,0,5), 0, 0));
        this.add(getActionLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,0,0), 0, 0));
        this.add(getActionTextField(), new com.ulcjava.base.application.GridBagConstraints(1, 6, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(5,5,0,5), 0, 0));
        this.add(getCardPane(), new com.ulcjava.base.application.GridBagConstraints(0, 13, 2, 1, 1.0, 1.0, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
        this.add(getTitleHtmlPane(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 2, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(10,5,0,5), 0, 0));
        this.add(getIconHtmlPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 2, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(20,5,0,5), 0, 0));
        this.add(getActionListenerHtmlPane(), new com.ulcjava.base.application.GridBagConstraints(0, 5, 2, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(20,5,0,5), 0, 0));
        this.add(getClearHtmlPane(), new com.ulcjava.base.application.GridBagConstraints(0, 7, 2, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(20,5,0,5), 0, 0));
        this.add(getSearchFieldHtmlPane(), new com.ulcjava.base.application.GridBagConstraints(0, 9, 4, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(20,5,0,5), 0, 0));
        this.add(getSearchFieldLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 10, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,0,5), 0, 0));
        this.add(getSearchField(), new com.ulcjava.base.application.GridBagConstraints(1, 10, 1, 1, 1.0, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.HORIZONTAL, new com.ulcjava.base.application.util.Insets(5,5,0,5), 0, 0));
        this.add(getSearchResultLabel(), new com.ulcjava.base.application.GridBagConstraints(1, 12, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.WEST, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(5,5,0,0), 0, 0));
  }

/**
 * This method initializes titlePanel, an embedded RichDialog.
 * The created object might have a different type than the declared
 * class due to overriding.
 * @returns com.ulcjava.base.application.ULCContainer 
 */
private ULCContainer getTitlePanel() {
	if (titlePanel == null) {
		titlePanel = RichDialogPanelFactory.create(TitlePanel.class);
		titlePanel.setName("titlePanel");
	}
	return titlePanel;
}

/**
 * This method initializes textFieldWithFileIcon	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTextFieldWithFileIcon() {
	if (textFieldWithFileIcon == null) {
		textFieldWithFileIcon = new RTextField();
		textFieldWithFileIcon.setLeadingIcon(new ULCIcon(getClass().getResource("/twitter-blue.jpg")));
		textFieldWithFileIcon.setLeadingIconMouseOver(new ULCIcon(getClass().getResource("/twitter-t.jpg")));
		textFieldWithFileIcon.setLeadingIconTooltip("Tweet it out");
		textFieldWithFileIcon.setName("textFieldWithFileIcon");
	}
	return textFieldWithFileIcon;
}

/**
 * This method initializes textFieldWithCmsIcon	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 * @throws MalformedURLException 
 * @throws EnvironmentNotAvailableException 
 */
private RTextField getTextFieldWithCmsIcon() throws EnvironmentNotAvailableException, MalformedURLException {
	if (textFieldWithCmsIcon == null) {
		textFieldWithCmsIcon = new RTextField();
		textFieldWithCmsIcon.setName("textFieldWithCmsIcon");

		textFieldWithCmsIcon.setTrailingIconUri("/ch/ivyteam/ivy/demo/icons/normal/linkedin");
		textFieldWithCmsIcon.setTrailingIconMouseOverUri("/ch/ivyteam/ivy/demo/icons/normal/xing");
		textFieldWithCmsIcon.setTrailingIconTooltip("Do your social business networking");
	}
	return textFieldWithCmsIcon;
}

/**
 * This method initializes fileIconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getFileIconLabel() {
	if (fileIconLabel == null) {
		fileIconLabel = new RLabel();
		fileIconLabel.setText("Leading icon loaded from a file");
		fileIconLabel.setName("fileIconLabel");
	}
	return fileIconLabel;
}

/**
 * This method initializes cmsIconLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getCmsIconLabel() {
	if (cmsIconLabel == null) {
		cmsIconLabel = new RLabel();
		cmsIconLabel.setText("Trailing icon loaded from CMS");
		cmsIconLabel.setName("cmsIconLabel");
	}
	return cmsIconLabel;
}

/**
 * This method initializes clearButtonLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getClearButtonLabel() {
	if (clearButtonLabel == null) {
		clearButtonLabel = new RLabel();
		clearButtonLabel.setText("Use a pre-configured trailing clear button");
		clearButtonLabel.setName("clearButtonLabel");
	}
	return clearButtonLabel;
}

/**
 * This method initializes textFieldWithClearButton	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 */
private RTextField getTextFieldWithClearButton() {
	if (textFieldWithClearButton == null) {
		textFieldWithClearButton = new RTextField();
		textFieldWithClearButton.setPromptText("Type something top see the clear button");
		textFieldWithClearButton.setName("textFieldWithClearButton");
		textFieldWithClearButton.setUseTrailingIconForClear(true);
	}
	return textFieldWithClearButton;
}

/**
 * This method initializes actionLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getActionLabel() {
	if (actionLabel == null) {
		actionLabel = new RLabel();
		actionLabel.setText("Text field with an action event for the trailing icon");
	}
	return actionLabel;
}

/**
 * This method initializes actionTextField	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RTextField	
 * @throws MalformedURLException 
 * @throws EnvironmentNotAvailableException 
 */
private RTextField getActionTextField() throws EnvironmentNotAvailableException, MalformedURLException {
	if (actionTextField == null) {
		actionTextField = new RTextField();
		actionTextField.setText("0 times clicked");
		actionTextField.setName("actionTextField");
		actionTextField.setTrailingIconUri("/ch/ivyteam/ivy/demo/icons/normal/plus");
		actionTextField.addTrailingIconListener(new IActionListener() {
			@Override
			public void actionPerformed(ActionEvent event) {
				counter++;
				actionTextField.setText(counter + " times clicked");
			}
		});
	}
	return actionTextField;
}

/**
 * This method initializes CardPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane	
 */
private RCardPane getCardPane() {
	if (CardPane == null) {
		CardPane = new RCardPane();
		CardPane.setName("CardPane");
	}
	return CardPane;
}

/**
 * This method initializes titleHtmlPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane	
 */
private RHtmlPane getTitleHtmlPane() {
	if (titleHtmlPane == null) {
		titleHtmlPane = new RHtmlPane();
		titleHtmlPane.setFocusable(false);
		titleHtmlPane.setName("titleHtmlPane");
		titleHtmlPane.setText("In the text field you can use a <b>leading icon and a trailing icon</b>. For both icons you can set a <b>mouse over icon</b> and you can define an <b>action listener</b> that is called when the user clicks on icon. There is only a programmatic API support for the icons, so all configurations must be done in the property view or in the Java source file of the Rich Dialog. ");
	}
	return titleHtmlPane;
}

/**
 * This method initializes iconHtmlPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane	
 */
private RHtmlPane getIconHtmlPane() {
	if (iconHtmlPane == null) {
		iconHtmlPane = new RHtmlPane();
		iconHtmlPane.setFocusable(false);
		iconHtmlPane.setName("iconHtmlPane");
		iconHtmlPane.setText("The icons can either be set from a file or from CMS. Go to the property view and check the properties <b>leadingIcon, leadingIconUri, leadingIconMouseOver and leadingIconMouseOverUri</b> (respectively the same for the trailing icon) to see how to do it.");
	}
	return iconHtmlPane;
}

/**
 * This method initializes ActionListenerHtmlPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane	
 */
private RHtmlPane getActionListenerHtmlPane() {
	if (ActionListenerHtmlPane == null) {
		ActionListenerHtmlPane = new RHtmlPane();
		ActionListenerHtmlPane.setFocusable(false);
		ActionListenerHtmlPane.setName("ActionListenerHtmlPane");
		ActionListenerHtmlPane.setText("The action that should happen when the user clicks on the icon must be implemented in the Java source file. Use <b>addTrailingIconListener(IActionListener listener)</b> for that.");
	}
	return ActionListenerHtmlPane;
}

/**
 * This method initializes clearHtmlPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane	
 */
private RHtmlPane getClearHtmlPane() {
	if (clearHtmlPane == null) {
		clearHtmlPane = new RHtmlPane();
		clearHtmlPane.setFocusable(false);
		clearHtmlPane.setName("clearHtmlPane");
		clearHtmlPane.setText("In the internet you often find text fields with a button at the end that clears the current text in the content. We pre-defined this for you, use <b>setUseTrailingIconForClear(true)</b> to get this behaviour.");
	}
	return clearHtmlPane;
}

/**
 * This method initializes searchFieldHtmlPane	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RHtmlPane	
 */
private RHtmlPane getSearchFieldHtmlPane() {
	if (searchFieldHtmlPane == null) {
		searchFieldHtmlPane = new RHtmlPane();
		searchFieldHtmlPane.setFocusable(false);
		searchFieldHtmlPane.setName("searchFieldHtmlPane");
		searchFieldHtmlPane.setText("We pre-defined too a search field that uses the clear button and does have a leading search button. " +
				"A search event is fired when the user:	<ul>" +
				"		<li>clicks on the search button</li>" +
				"		<li>presses ENTER</li>" +
				"		<li>waits to type for a configurable delay (this happens only after a configurable number of characters have been inserted by the user)</li>" +
				"</ul>" +
				"Use <b>addSearchListener(IActionListener listener)</b> to define what should be searched. ");
	}
	return searchFieldHtmlPane;
}

/**
 * This method initializes searchFieldLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSearchFieldLabel() {
	if (searchFieldLabel == null) {
		searchFieldLabel = new RLabel();
		searchFieldLabel.setText("Use a pre-configured search field");
		searchFieldLabel.setName("searchFieldLabel");
	}
	return searchFieldLabel;
}

/**
 * This method initializes searchField	
 * 	
 * @return ch.ivyteam.ulc.vwidget.server.ULCVSearchField	
 */
private ULCVSearchField getSearchField() {
	if (searchField == null) {
		searchField = new ULCVSearchField();
		searchField.setText("");
		searchField.setName("searchField");
		searchField.setPreferredSize(new Dimension(200, 32));
		
		final Random rand = new Random();
		searchField.addSearchListener(new IActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent event) {
				
				searchResultLabel.setText(rand.nextInt(100) + " hits found");
			}
		});
	}
	return searchField;
}

/**
 * This method initializes searchResultLabel	
 * 	
 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
 */
private RLabel getSearchResultLabel() {
	if (searchResultLabel == null) {
		searchResultLabel = new RLabel();
		searchResultLabel.setText("0 hits found");
		searchResultLabel.setName("searchResultLabel");
	}
	return searchResultLabel;
}
}  //  @jve:decl-index=0:visual-constraint="10,10"