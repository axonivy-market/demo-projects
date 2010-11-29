package ch.ivyteam.ivy.addons.dynamicrd.DynamicDialog;

import java.util.List;

import ch.ivyteam.ivy.addons.cmscontext.Cms;
import ch.ivyteam.ivy.addons.util.AddonsException;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.scripting.objects.Time;

import com.ulcjava.base.application.GridBagConstraints;
import com.ulcjava.base.application.ULCComponent;

/**
 * This is the implementation of fields that choose their widget at run time. The widget is drawn after a call
 * to setComponent.
 * 
 * @author Patrick Joly, TI-Informatique
 * @since 08.04.2010
 */
public class LazyField extends FieldComponent
{
  private FieldComponent realComponent;

  private ComplexComponent parentContainer;

  private GridBagConstraints constraints;

  /**
   * Constructs a new LazyField object.
   * 
   * @param panel dynamic dialog panel
   * @param parentContainer parent container
   * @param parameters parameters
   * @param index position when component is in a list
   */
  protected LazyField(DynamicDialogPanel panel, ComplexComponent parentContainer,
          LazyFieldParameters parameters, int index)
  {
    super(panel, parentContainer, parameters, index);

    this.parentContainer = parentContainer;
  }

  /**
   * Select the widget that is used to represent the field.
   * 
   * @param widgetName name of the widget
   * @param clazz java type of the attribute
   * @param additionnalCmsUri additionnal CMS uri where parameters of the component are searched
   */
  public final void setComponent(String widgetName, Class<?> clazz, String additionnalCmsUri)
  {
    List<String> cmsContext;
    ComponentParameters realParameters;

    try
    {
      cmsContext = Cms.getCmsContexts(getParameters().getCmsContexts());
      if (additionnalCmsUri != null)
      {
        cmsContext.add(additionnalCmsUri);
      }
      realParameters = ComponentParameterFactory.createParametersComponent(getParameters().getName(), clazz,
              parentContainer.getParameters(), cmsContext, getParameters().getFullName(), -1, null, null,
              widgetName);

      realComponent = ComponentFactory.createComponent(getPanel(), parentContainer, realParameters, -1);

      super.addComponent(realComponent.getFieldComponent(), constraints);

      realComponent.postInitializeField();
      setLabel(realParameters.getTitle());
    }
    catch (AddonsException e)
    {
      throw new DynamicDialogException(e);
    }
  }

  @Override
  protected final ULCComponent getFieldComponent()
  {
    return realComponent == null ? null : realComponent.getFieldComponent();
  }

  @Override
  public final FieldComponentParameters getParameters()
  {
    return realComponent == null ? (FieldComponentParameters) getComponentParameters() : realComponent
            .getParameters();
  }

  @Override
  public final String[] getSelectedRecord()
  {
    return realComponent == null ? null : realComponent.getSelectedRecord();
  }

  @Override
  public final String getText()
  {
    return realComponent == null ? null : realComponent.getText();
  }

  @Override
  public final Object getValue()
  {
    return realComponent == null ? null : realComponent.getValue();
  }

  @Override
  public final Boolean getValueAsBoolean()
  {
    return realComponent == null ? null : realComponent.getValueAsBoolean();
  }

  @Override
  public final Date getValueAsDate()
  {
    return realComponent == null ? null : realComponent.getValueAsDate();
  }

  @Override
  public final DateTime getValueAsDateTime()
  {
    return realComponent == null ? null : realComponent.getValueAsDateTime();
  }

  @Override
  public final Duration getValueAsDuration()
  {
    return realComponent == null ? null : realComponent.getValueAsDuration();
  }

  @Override
  public final Number getValueAsNumber()
  {
    return realComponent == null ? null : realComponent.getValueAsNumber();
  }

  @Override
  public final String getValueAsString()
  {
    return realComponent == null ? null : realComponent.getValueAsString();
  }

  @Override
  public final Time getValueAsTime()
  {
    return realComponent == null ? null : realComponent.getValueAsTime();
  }

  @Override
  public final void setKeyValue(List<String[]> keyValue)
  {
    if (realComponent != null)
    {
      realComponent.setKeyValue(keyValue);
    }
  }

  @Override
  public final void setValue(Object value, String text)
  {
    if (realComponent != null)
    {
      realComponent.setValue(value, text);
    }
  }

  @Override
  public final void setValueAsBoolean(Boolean b, String text)
  {
    if (realComponent != null)
    {
      realComponent.setValueAsBoolean(b, text);
    }
  }

  @Override
  public final void setValueAsDate(Date value, String text)
  {
    if (realComponent != null)
    {
      realComponent.setValueAsDate(value, text);
    }
  }

  @Override
  public final void setValueAsDateTime(DateTime d, String text)
  {
    if (realComponent != null)
    {
      realComponent.setValueAsDateTime(d, text);
    }
  }

  @Override
  public final void setValueAsDuration(Duration d, String text)
  {
    if (realComponent != null)
    {
      realComponent.setValueAsDuration(d, text);
    }
  }

  @Override
  public final void setValueAsNumber(Number n, String text)
  {
    if (realComponent != null)
    {
      realComponent.setValueAsNumber(n, text);
    }
  }

  @Override
  public final void setValueAsString(String s, String text)
  {
    if (realComponent != null)
    {
      realComponent.setValueAsString(s, text);
    }
  }

  @Override
  public final void setValueAsTime(Time t, String text)
  {
    if (realComponent != null)
    {
      realComponent.setValueAsTime(t, text);
    }
  }

  @Override
  public final boolean validate()
  {
    validationDone(true);
    return realComponent == null ? true : realComponent.validate();
  }

  @Override
  public final ULCComponent getLastMainComponent()
  {
    return realComponent == null ? null : realComponent.getLastMainComponent();
  }

  @Override
  public final ULCComponent getMainComponent()
  {
    return realComponent == null ? null : realComponent.getMainComponent();
  }

  @Override
  public final boolean isFocusable()
  {
    return realComponent == null ? false : realComponent.isFocusable();
  }

  @Override
  public final void setFocusable(boolean value)
  {
    if (realComponent != null)
    {
      realComponent.setFocusable(value);
    }
  }

  @Override
  protected final void applyFieldStyles()
  {
    if (realComponent != null)
    {
      realComponent.applyStyles();
    }
  }

  @Override
  protected final void addComponent(ULCComponent fieldComponent, GridBagConstraints constraints)
  {
    this.constraints = constraints;
  }

  @Override
  protected final void updateIconAndBackground(boolean valid)
  {
    if (realComponent != null)
    {
      super.updateIconAndBackground(valid);
    }
  }

  @Override
  protected final boolean isEditable()
  {
    return false;
  }

  @Override
  protected void postInitializeField()
  {
    // Nothing to do
  }

  @Override
  protected boolean isBackgroundColorChangedAllowed()
  {
    return realComponent == null ? false : realComponent.isBackgroundColorChangedAllowed();
  }
}