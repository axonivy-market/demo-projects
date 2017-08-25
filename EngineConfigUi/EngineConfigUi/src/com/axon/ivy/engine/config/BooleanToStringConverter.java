package com.axon.ivy.engine.config;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.ConverterException;
import javax.faces.convert.FacesConverter;

import org.apache.commons.codec.binary.StringUtils;

@FacesConverter(value = "booleanToStringConverter")
public class BooleanToStringConverter implements Converter
{
  @Override
  public Boolean getAsObject(FacesContext context, UIComponent component, String value)
          throws ConverterException
  {
    return StringUtils.equals(value, "true");
  }

  @Override
  public String getAsString(FacesContext context, UIComponent component, Object value)
          throws ConverterException
  {
    return value.toString();
  }
}