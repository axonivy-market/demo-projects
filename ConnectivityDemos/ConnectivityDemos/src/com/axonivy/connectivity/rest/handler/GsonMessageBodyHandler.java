package com.axonivy.connectivity.rest.handler;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.ext.MessageBodyReader;
import javax.ws.rs.ext.MessageBodyWriter;
import javax.ws.rs.ext.Provider;

import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 * Transforms JSON into Java objects and vice versa.
 * 
 * <p>
 * It uses {@link Gson} as serialization layer and is a good alternative, when
 * the {@link JacksonJsonProvider} is not able to serialize a complex response.
 * </p>
 * 
 * <p>
 * Copied from http://eclipsesource.com/blogs/2012/11/02/integrating-gson-into-a-jax-rs-based-application/
 * </p>
 */
@Provider
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public final class GsonMessageBodyHandler implements MessageBodyWriter<Object>, MessageBodyReader<Object> {

	private static final String UTF_8 = "UTF-8";
	private Gson gson;

	private Gson getGson() {
		if (gson == null) {
			final GsonBuilder gsonBuilder = new GsonBuilder();
			gson = gsonBuilder.create();
		}
		return gson;
	}

	@Override
	public boolean isReadable(Class<?> type, Type genericType,
			java.lang.annotation.Annotation[] annotations, MediaType mediaType) {
		return true;
	}

	@Override
	public Object readFrom(Class<Object> type, Type genericType,
			Annotation[] annotations, MediaType mediaType,
			MultivaluedMap<String, String> httpHeaders, InputStream entityStream) {
		try {
			InputStreamReader streamReader = new InputStreamReader(
					entityStream, UTF_8);
			try {
				Type jsonType;
				if (type.equals(genericType)) {
					jsonType = type;
				} else {
					jsonType = genericType;
				}
				return getGson().fromJson(streamReader, jsonType);
			} finally {
				streamReader.close();
			}
		} catch (IOException ex) {
			throw new RuntimeException("Failed to read '" + type + "'.", ex);
		}
	}

	@Override
	public boolean isWriteable(Class<?> type, Type genericType,
			Annotation[] annotations, MediaType mediaType) {
		return true;
	}

	@Override
	public long getSize(Object object, Class<?> type, Type genericType,
			Annotation[] annotations, MediaType mediaType) {
		return -1;
	}

	@Override
	public void writeTo(Object object, Class<?> type, Type genericType,
			Annotation[] annotations, MediaType mediaType,
			MultivaluedMap<String, Object> httpHeaders,
			OutputStream entityStream) throws IOException,
			WebApplicationException {
		OutputStreamWriter writer = new OutputStreamWriter(entityStream, UTF_8);
		try {
			Type jsonType;
			if (type.equals(genericType)) {
				jsonType = type;
			} else {
				jsonType = genericType;
			}
			getGson().toJson(object, jsonType, writer);
		} finally {
			writer.close();
		}
	}
}
