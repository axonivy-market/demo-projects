package com.axonivy.connectivity.rest.sample.odata;

import javax.ws.rs.Priorities;
import javax.ws.rs.core.FeatureContext;
import javax.ws.rs.core.MediaType;

import org.odata.trippin.client.AnyOfMicrosoftODataSampleServiceModelsTripPinPersonConcurrency;
import org.odata.trippin.client.AnyOfMicrosoftODataSampleServiceModelsTripPinPersonGender;

import com.axonivy.connectivity.rest.json.OpenApiJsonFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;

/**
 * Some values in the converted TripPin ODATA spec are generated as empty interfaces without a matching impl. 
 * So let's mark them as skippable entities.
 * @since 9.2
 */
public class TripPinJsonFeature extends OpenApiJsonFeature
{
  @Override
  public boolean configure(FeatureContext context)
  {
    JacksonJsonProvider provider = new TripPinJson();
    configure(provider, context.getConfiguration());
    context.register(provider, Priorities.ENTITY_CODER); 
    return true;
  }
  
  private static class TripPinJson extends JaxRsClientJson
  {
    @Override
    public ObjectMapper locateMapper(Class<?> type, MediaType mediaType)
    {
      var mapper = super.locateMapper(type, mediaType);
      mapper.registerModule(new TypeCustomizations());
      return mapper;
    }
  }
  
  private static class TypeCustomizations extends SimpleModule
  {
    public TypeCustomizations()
    {
      nullify(AnyOfMicrosoftODataSampleServiceModelsTripPinPersonGender.class);
      nullify(AnyOfMicrosoftODataSampleServiceModelsTripPinPersonConcurrency.class);
    }
    
    @SuppressWarnings({"unchecked", "rawtypes"})
    private void nullify(Class<?> raw)
    {
      addDeserializer(raw, new Nullifier(raw));
    }
  }
}
