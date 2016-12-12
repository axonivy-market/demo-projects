package ch.ivyteam.ivy.server.configuration.DatabaseCreationParameterUI;

import java.util.Map;

import ch.ivyteam.db.jdbc.ConnectionProperty;
import ch.ivyteam.ivy.persistence.db.DatabaseCreationParameter;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RButton;
import ch.ivyteam.ivy.richdialog.widgets.components.RComboBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridLayoutPane;
import ch.ivyteam.ivy.scripting.objects.List;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCTextComponent;
import com.ulcjava.base.application.ULCTextField;
import com.ulcjava.base.application.util.Insets;

/**
 * RichDialog panel implementation for DatabaseCreationParameterUIPanel.
 * 
 * @author <%=author%>
 * @since <%=date%>
 */
public class DatabaseCreationParameterUIPanel extends RichDialogGridBagPanel
		implements IRichDialogPanel {
	/** Serial version id */
	private static final long serialVersionUID = 1L;

	private RGridBagLayoutPane databaseCreationParametersPane = null;

	private RButton createButton = null;

	private RButton cancelButton = null;

	private RGridLayoutPane buttonPane = null;

	private RLabel infoLabel = null;

	/**
	 * Create a new instance of DatabaseCreationParameterUIPanel
	 */
	public DatabaseCreationParameterUIPanel() {
		super();
		initialize();
	}

	/**
	 * This method initializes DatabaseCreationParameterUIPanel
	 * 
	 * @return void
	 */
	public void initialize() {
		
		this.add(getDatabaseCreationParametersPane(), new com.ulcjava.base.application.GridBagConstraints(0, 2, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		this.add(getButtonPane(), new com.ulcjava.base.application.GridBagConstraints(0, 4, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
		this.add(getInfoLabel(), new com.ulcjava.base.application.GridBagConstraints(0, 1, 1, 1, -1, -1, com.ulcjava.base.application.GridBagConstraints.CENTER, com.ulcjava.base.application.GridBagConstraints.NONE, new com.ulcjava.base.application.util.Insets(0,0,0,0), 0, 0));
	}

	/**
	 * This method initializes databaseCreationParametersPane
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane
	 */
	private RGridBagLayoutPane getDatabaseCreationParametersPane() {
		if (databaseCreationParametersPane == null) {
			databaseCreationParametersPane = new RGridBagLayoutPane();
			databaseCreationParametersPane
					.setName("databaseCreationParametersPane");
			databaseCreationParametersPane
					.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		}
		return databaseCreationParametersPane;
	}

	/**
	 * This method initializes createButton
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton
	 */
	private RButton getCreateButton() {
		if (createButton == null) {
			createButton = new RButton();
			createButton.setText("<%=ivy.cms.co(\"/labels/createDb\")%>");
			createButton.setStyleProperties("{/insetsBottom \"5\"}");
			createButton.setDefaultCapable(true);
			createButton.setName("createButton");
		}
		return createButton;
	}

	/**
	 * This method initializes cancelButton
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RButton
	 */
	private RButton getCancelButton() {
		if (cancelButton == null) {
			cancelButton = new RButton();
			cancelButton.setName("cancelButton");
			cancelButton.setStyleProperties("{/insetsBottom \"5\"/insetsRight \"5\"}");
			cancelButton.setText("<%=ivy.cms.co(\"/labels/Cancel\")%>");
		}
		return cancelButton;
	}

	/**
	 * Sets the database creation parameters
	 * @param databaseCreationParameters the database creation parameters
	 * @param connectionProperties the connection properties
	 */
	public void setDatabaseCreationParameters(List<DatabaseCreationParameter> databaseCreationParameters, Map<ConnectionProperty, String> connectionProperties)
	{
		RLabel noParameterslabel;
		String defaultValue;
		int pos = 1;
		if (!databaseCreationParameters.isEmpty())
		{
			for (DatabaseCreationParameter parameter : databaseCreationParameters)
			{
				defaultValue = connectionProperties.get(parameter.getConnectionPropertyThatHoldsDefaultValue());
				initComponentsFor(parameter, pos++, defaultValue);
			}
		}
		else
		{			
			noParameterslabel = new RLabel();
			noParameterslabel.setText("<%=ivy.cms.co(\"/labels/databaseCreationParameters/NoParameters\")%>");
			noParameterslabel.setName("label");
			databaseCreationParametersPane.add(noParameterslabel, new GridBagConstraints(1, pos, 1, 1, -1, -1, GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(0,0,0,0), 0, 0));
		}
	}
	
	public List<String> getDatabaseCreationParameters()
	{
		String value = null;
		int pos;
		List<String> results = List.create(String.class);
			
		for (ULCComponent component : databaseCreationParametersPane.getComponents())
		{
			value = null;
			if (component instanceof ULCTextField)
			{
				value = ((ULCTextField)component).getText();
			}	
			else if (component instanceof RComboBox)
			{
				value = (String)((RComboBox)component).getSelectedItem();
			}
			if (value != null)
			{
				pos = databaseCreationParametersPane.getConstraints(component).getGridY();
					if (pos-1 < results.size())
				{
					results.set(pos-1, value);
				}
				else
				{
					results.add(pos-1, value);
				}
			}
		}
		return results;
	}

	/**
	 * Initializes the components for a database creation parameter
	 * @param parameter the parameter
	 * @param pos the pos
	 * @param defaultValue the defaultValue
	 */
	private void initComponentsFor(DatabaseCreationParameter parameter, int pos, String defaultValue)
	{
		RLabel label;
		final ULCTextField textField;
		final RComboBox comboBox;

		label = new RLabel();
		label.setText("<%=ivy.cms.co(\"/labels/databaseCreationParameters/"
				+ parameter.getName()+ "\")%>");
		label.setName("label");
		databaseCreationParametersPane.add(label, new GridBagConstraints(1, pos, 1, 1, -1, -1, GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(0,0,0,0), 0, 0));
		if (parameter.getValues() != null)
		{
			comboBox = new RComboBox(parameter.getValues());
			comboBox.setName("comboBox");
			databaseCreationParametersPane.add(comboBox, new GridBagConstraints(2, pos, 2, 1, -1, -1, GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(0,0,0,0), 0, 0));
		}
		else
		{
			ConnectionProperty property = parameter.getConnectionPropertyThatHoldsDefaultValue();
			if (property != null && property.isConfidential())
			{
				textField = new RPasswordField();
			}
			else
			{
				textField = new RTextField();
			}
			if (defaultValue != null && !defaultValue.trim().isEmpty())
			{
				textField.setText(defaultValue);
			}
			textField.setColumns(20);
			databaseCreationParametersPane.add(textField, new GridBagConstraints(2, pos, 2, 1, -1, -1, GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(0,0,0,0), 0, 0));
		}
		databaseCreationParametersPane.repaint();
	}

	/**
	 * This method initializes buttonPane	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane	
	 */
	private RGridLayoutPane getButtonPane() {
		if (buttonPane == null) {
			buttonPane = new RGridLayoutPane();
			buttonPane.setHgap(5);
			buttonPane.setName("buttonPane");
			buttonPane.setStyleProperties("{/anchor \"EAST\"/insetsBottom \"5\"/insetsTop \"5\"/insetsRight \"5\"}");
			buttonPane.add(getCreateButton());
			buttonPane.add(getCancelButton());
		}
		return buttonPane;
	}

	/**
	 * This method initializes infoLabel	
	 * 	
	 * @return ch.ivyteam.ivy.richdialog.widgets.components.RLabel	
	 */
	private RLabel getInfoLabel() {
		if (infoLabel == null) {
			infoLabel = new RLabel();
			infoLabel.setText("<%=ivy.cms.co(\"/labels/createDbInfo\")%>\t");
			infoLabel.setStyleProperties("{/insetsBottom \"5\"/insetsRight \"5\"}");
			infoLabel.setName("infoLabel");
		}
		return infoLabel;
	}

} // @jve:decl-index=0:visual-constraint="10,10"
