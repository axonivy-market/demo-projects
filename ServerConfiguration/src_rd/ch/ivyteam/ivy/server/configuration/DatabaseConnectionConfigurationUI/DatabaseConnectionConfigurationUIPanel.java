package ch.ivyteam.ivy.server.configuration.DatabaseConnectionConfigurationUI;

import java.util.Map;

import ch.ivyteam.db.jdbc.ConnectionProperty;
import ch.ivyteam.db.jdbc.JdbcDriver;
import ch.ivyteam.ivy.richdialog.config.eventmapping.IWidgetEventAction;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.richdialog.rdpanels.RichDialogGridBagPanel;
import ch.ivyteam.ivy.richdialog.widgets.components.RCheckBox;
import ch.ivyteam.ivy.richdialog.widgets.components.RLabel;
import ch.ivyteam.ivy.richdialog.widgets.components.RPasswordField;
import ch.ivyteam.ivy.richdialog.widgets.components.RTextField;
import ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane;
import ch.ivyteam.ivy.richdialog.widgets.containers.RGridBagLayoutPane;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;
import com.ulcjava.base.application.ULCGridBagLayoutPane;
import com.ulcjava.base.application.event.IValueChangedListener;
import com.ulcjava.base.application.event.ValueChangedEvent;
import com.ulcjava.base.application.util.Insets;

/**
 * RichDialog panel implementation for DatabaseConnectionConfigurationUIPanel.
 * 
 * @author <%=author%>
 * @since <%=date%>
 */
public class DatabaseConnectionConfigurationUIPanel extends
		RichDialogGridBagPanel implements IRichDialogPanel
{
	/** Serial version id */
	private static final long serialVersionUID = 1L;

	private RCardPane contentCardPane = null;

	/** the selected jdbc driver */
	private JdbcDriver selectedJdbcDriver;  //  @jve:decl-index=0:
	
	
	/**
	 * Create a new instance of DatabaseConnectionConfigurationUIPanel
	 */
	public DatabaseConnectionConfigurationUIPanel()
	{
		super();
		initialize();					
	}

	/**
	 * This method initializes DatabaseConnectionConfigurationUIPanel
	 * 
	 * @return void
	 */
	public void initialize()
	{
		this
				.add(
						getContentCardPane(),
						new com.ulcjava.base.application.GridBagConstraints(
								0,
								0,
								1,
								1,
								-1,
								-1,
								com.ulcjava.base.application.GridBagConstraints.CENTER,
								com.ulcjava.base.application.GridBagConstraints.NONE,
								new com.ulcjava.base.application.util.Insets(0,
										0, 0, 0), 0, 0));
	}

	/**
	 * This method initializes contentCardPane
	 * 
	 * @return ch.ivyteam.ivy.richdialog.widgets.containers.RCardPane
	 */
	private RCardPane getContentCardPane()
	{
		if (contentCardPane == null)
		{
			contentCardPane = new RCardPane();
			contentCardPane.setName("contentCardPane");
			contentCardPane
					.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		}
		return contentCardPane;
	}

	public void setJdbcDrivers(JdbcDriver[] jdbcDrivers)
	{
		for (JdbcDriver driver : jdbcDrivers)
		{
			initConfigPanelFor(driver);
		}
		if (jdbcDrivers.length > 0)
		{
			setSelectedJdbcDriver(jdbcDrivers[0]);
		}
	}

	private void initConfigPanelFor(JdbcDriver driver)
	{
		RGridBagLayoutPane panel;
		RGridBagLayoutPane filler;
		int pos = 1;
		panel = new RGridBagLayoutPane();
		for (ConnectionProperty property : driver.getConnectionConfigurator()
				.getDatabaseConnectionProperties())
		{
			initComponentsFor(panel, property, pos++);
		}
		filler = new RGridBagLayoutPane();
		filler.setStyleProperties("{/fill \"BOTH\"/weightY \"1\"/weightX \"1\"}");
		panel.add(filler, new GridBagConstraints(1, pos, 3, 1, -1, -1, GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(0,0,0,0), 0, 0));
		panel.setName(driver.getName());
		contentCardPane.addCard(driver.getName(), panel);
	}

	private void initComponentsFor(RGridBagLayoutPane panel,
			ConnectionProperty property, int pos)
	{
		RLabel label;
		final RCheckBox defaultCheckBoxField;
		final RTextField textField;	
		RPasswordField passwordField;
		ULCComponent labelForComp;
		
		label = new RLabel();
		label.setText("<%=ivy.cms.co(\"/labels/connectionProperties/"
				+ property.getName().replace('.', '_') + "\")%>");
		label.setName("label");
		panel.add(label, new GridBagConstraints(1, pos, 1, 1, -1, -1, GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(0,0,0,0), 0, 0));
		if (property.isNumber())
		{
			textField = new RTextField();			
			textField.setValue(property.getDefaultValue());
			textField.setName("textField");
			if (property.getName() == "ch.ivyteam.jdbc.Port")
			{
				panel.add(textField, new GridBagConstraints(2, pos, 1, 1, -1, -1, GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(0,0,0,0), 0, 0));
				defaultCheckBoxField = new RCheckBox();
				defaultCheckBoxField.setText("<%=ivy.cms.co(\"/labels/default\")%>");
				defaultCheckBoxField.setSelected(true);
				defaultCheckBoxField.setName("defaultCheckBoxField");
				textField.setEnabled(false);
				defaultCheckBoxField.addValueChangedListener(new IValueChangedListener(){

					/**
					 * 
					 */
					private static final long serialVersionUID = -6801406838725159144L;

					public void valueChanged(ValueChangedEvent arg0)
					{
						textField.setEnabled(!defaultCheckBoxField.isSelected());
					}});
				panel.add(defaultCheckBoxField, new GridBagConstraints(3, pos, 1, 1, -1, -1, GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(0,0,0,0), 0, 0));
				getPanelAPI().addEventMapping(defaultCheckBoxField, "keyPressed", IWidgetEventAction.Type.VALUE_CHANGED);
			}
			else
			{
				panel.add(textField, new GridBagConstraints(2, pos, 2, 1, -1, -1, GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(0,0,0,0), 0, 0));
			}
			getPanelAPI().addEventMapping(textField, "keyPressed", IWidgetEventAction.Type.KEY);
			labelForComp = textField;
		}
		else if (property.isConfidential())
		{
			passwordField = new RPasswordField();
			passwordField.setName(""+pos);
			passwordField.setText(property.getDefaultValue());
			panel.add(passwordField, new GridBagConstraints(2, pos, 2, 1, -1, -1, GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(0,0,0,0), 0, 0));
			getPanelAPI().addEventMapping(passwordField, "keyPressed", IWidgetEventAction.Type.KEY);
			labelForComp = passwordField;
		}
		else
		{
			textField = new RTextField();
			textField.setName(""+pos);
			textField.setText(property.getDefaultValue());
			panel.add(textField, new GridBagConstraints(2, pos, 2, 1, -1, -1, GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(0,0,0,0), 0, 0));
			getPanelAPI().addEventMapping(textField, "keyPressed", IWidgetEventAction.Type.KEY);
			labelForComp = textField;
		}
		
		label.setLabelFor(labelForComp);
	}
	
	/**
	 * Gets the selected jdbc driver
	 * @return selected jdbc driver
	 */
	public JdbcDriver getSelectedJdbcDriver()
	{
		return selectedJdbcDriver;
	}
	
	/** 
	 * Sets the selected jdbc driver 
	 * @param jdbcDriver selected jdbc driver 
	 */
	public void setSelectedJdbcDriver(JdbcDriver jdbcDriver)
	{
		contentCardPane.setSelectedName(jdbcDriver.getName());
		selectedJdbcDriver = jdbcDriver;
	}
	
	/**
	 * Updates the connection properties with the values in the ui
	 * @param connectionProperties the connection properties
	 */
	public void updateToConnectionProperties(Map<ConnectionProperty, String> connectionProperties)
	{
		int pos = 1;
		for (ConnectionProperty property : selectedJdbcDriver.getConnectionConfigurator().getDatabaseConnectionProperties())
		{
			connectionProperties.put(property, getPropertyValue(property, pos));
			pos++;
		}
	}

	/**
	 * Updates the ui from the connection properties 
	 * @param connectionProperties the connection properties
	 * @param strict if strict all values are updated from the connection properties, if not strict only the values that are
	 * not driver specific are updated
	 */
	public void updateFromConnectionProperties(Map<ConnectionProperty, String> connectionProperties, boolean strict)
	{
		int pos = 1;
		for (ConnectionProperty property : selectedJdbcDriver.getConnectionConfigurator().getDatabaseConnectionProperties())
		{
			setPropertyValue(property, pos, connectionProperties.get(property), strict);
			pos++;
		}
	}

	/**
	 * Sets a property value
	 * @param property the property
	 * @param pos the vertical pos of the property components
	 * @param value the value
	 * @param strict if strict all values are updated from the connection properties, if not strict only the values that are
	 * not driver specific are updated
	 */
	private void setPropertyValue(ConnectionProperty property, int pos, String value, boolean strict) 
	{
		ULCGridBagLayoutPane container;		
		Integer intValue;
		if ((!strict) &&(property.isDriverSpecificValue()))
		{
			value = property.getDefaultValue();
		}
		if (value == null)
		{
			value = property.getDefaultValue();
			if (value == null)
			{
				value = "";
			}
		}
		
		container = (ULCGridBagLayoutPane)contentCardPane.getSelectedComponent();
		for (ULCComponent component : container.getComponents())
		{
			if (container.getConstraints(component).getGridY()==pos)
			{
				if (component instanceof RTextField)
				{
					if (property.isNumber())
					{
						try
						{
							intValue = Integer.parseInt(value);
							((RTextField)component).setValue(intValue);
						}
						catch(NumberFormatException ex)
						{}
					}
					else
					{
						((RTextField)component).setText(value);
					}
				}
				else if (component instanceof RPasswordField)
				{
					((RPasswordField)component).setText(value);
				}
				else if (component instanceof RCheckBox)
				{
					((RCheckBox)component).setSelected(value.equals(property.getDefaultValue()));
				}
			}
		}
	}

	/**
	 * Gets a property value
	 * @param property the property
	 * @param pos the horizontal pos of the property components
	 * @return the value
	 */
	private String getPropertyValue(ConnectionProperty property, int pos) 
	{
		ULCGridBagLayoutPane container;
		Object value = null;
		boolean isDefault = false;
		
		container = (ULCGridBagLayoutPane)contentCardPane.getSelectedComponent();
		for (ULCComponent component : container.getComponents())
		{
			if (container.getConstraints(component).getGridY()==pos)
			{
				if (component instanceof RTextField)
				{
					if (property.isNumber())
					{
						value = ((RTextField)component).getValue();	
					}
					else
					{
						value = ((RTextField)component).getText();
					}
					
				}
				else if (component instanceof RPasswordField)
				{
					value = ((RPasswordField)component).getText();
				}
				else if (component instanceof RCheckBox)
				{
					isDefault = ((RCheckBox)component).isSelected();
				}
			}
		}
		if (isDefault)
		{
			return property.getDefaultValue();
		}
		return value == null ? "" : value.toString();		
	}
}
