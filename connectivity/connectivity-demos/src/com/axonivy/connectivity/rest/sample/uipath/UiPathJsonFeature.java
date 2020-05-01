package com.axonivy.connectivity.rest.sample.uipath;

import javax.ws.rs.Priorities;
import javax.ws.rs.core.FeatureContext;
import javax.ws.rs.core.MediaType;

import com.axonivy.connectivity.rest.json.OdataJsonFeature.ODataMapperProvider;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;

import ch.ivyteam.ivy.rest.client.mapper.JsonFeature;

public class UiPathJsonFeature extends JsonFeature
{
  @Override
  public boolean configure(FeatureContext context)
  {
    JacksonJsonProvider provider = new UiPathOData();
    configure(provider, context.getConfiguration());
    context.register(provider, Priorities.ENTITY_CODER); 
    return true;
  }

  private static class UiPathOData extends ODataMapperProvider
  {
    @Override
    public ObjectMapper locateMapper(Class<?> type, MediaType mediaType)
    {
      ObjectMapper mapper = super.locateMapper(type, mediaType);
      // generated beans from (swagger-codegen-plugin) generate java8 time attributes.
      mapper.registerModule(new com.fasterxml.jackson.datatype.jsr310.JavaTimeModule());
      return mapper;
    }
  }
}
