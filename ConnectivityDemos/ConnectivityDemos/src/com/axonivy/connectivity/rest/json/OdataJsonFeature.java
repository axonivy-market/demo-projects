package com.axonivy.connectivity.rest.json;

import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.nio.charset.Charset;

import javax.ws.rs.Priorities;
import javax.ws.rs.core.FeatureContext;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;

import org.apache.commons.io.IOUtils;

import ch.ivyteam.ivy.rest.client.mapper.JsonFeature;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;

/**
 * Simple mapper that can consume OData services. <br/>
 * This mapper is a <b>sample implementation</b> that covers some often faced field problems while consuming OData services.<br/> 
 * There is no intention that this mapper completely covers all OData specifications.
 * 
 * <p>Sample JSON input:</p><pre> {
 *   "@odata.context":"http://services.odata.org/TripPinRESTierService/(S(5jklwgt1fhflbw1mxbymqdqe))/$metadata#People",
 *   "value":[{"UserName":"russellwhyte","FirstName":"Russell,...},{...}]
 * }"</pre>
 * 
 * <p>Sample JSON output:</p><pre>
 * [{"UserName":"russellwhyte","FirstName":"Russell,...},{...}]
 * </pre>
 * 
 * <p>Sample service: http://services.odata.org/TripPinRESTierService/(S(5jklwgt1fhflbw1mxbymqdqe))/People</p>
 * @see http://www.odata.org/
 * 
 * @since 6.7.1
 */
public class OdataJsonFeature extends JsonFeature 
{
	@Override
	public boolean configure(FeatureContext context) 
	{
		JacksonJsonProvider provider = new ODataMapperProvider();
		configure(provider, context.getConfiguration());
		context.register(provider, Priorities.ENTITY_CODER);
		return true;
	}

	private static class ODataMapperProvider extends JacksonJsonProvider 
	{
		private static final ObjectMapper rootMapper = new ObjectMapper();

		@Override
		public ObjectMapper locateMapper(Class<?> type, MediaType mediaType) {
			ObjectMapper mapper = super.locateMapper(type, mediaType);
			// odata provides fields starting with an upper case character!
			mapper.configure(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES, true);
			return mapper;
		}

		@Override
		public Object readFrom(Class<Object> type, Type genericType,
				Annotation[] annotations, MediaType mediaType,
				MultivaluedMap<String, String> httpHeaders,
				InputStream entityStream) throws IOException {
			InputStream inputStream = unwrapValueRoot(entityStream);
			return super.readFrom(type, genericType, annotations, mediaType, httpHeaders, inputStream);
		}

		private static InputStream unwrapValueRoot(InputStream entityStream)
				throws IOException, JsonProcessingException {
			JsonNode node = rootMapper.readTree(entityStream);
			node = manipulateJson(node);
			String json = rootMapper.writeValueAsString(node);
			InputStream inputStream = IOUtils.toInputStream(json, Charset.defaultCharset());
			return inputStream;
		}

		/**
		 * unwrap collections which store their value array in an internal 'value' field.
		 */
		private static JsonNode manipulateJson(JsonNode node) {
			if (node.has(Field.VALUE) && node.has(Field.CONTEXT)) {
				node = node.get(Field.VALUE);
			}
			return node;
		}
		
		/** Well known OData fields  */
		private interface Field{
			String VALUE = "value";
			String CONTEXT = "@odata.context";
		}
	}
}
