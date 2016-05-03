package com.axonivy.connectivity.rest;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MultivaluedHashMap;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.client.authentication.HttpAuthenticationFeature;
import org.glassfish.jersey.filter.LoggingFilter;
import org.junit.Test;

import com.axonivy.connectivity.Person;


/**
 * Tests the REST interface of the {@link PersonService}.
 */
public class IntegrationTestRestfulPersonService 
{
	public static final String REST_USER = "restUser";
	
	@Test
	public void getListOfEntities()
	{
		Client httpClient = createAuthenticatedClient();
		
		httpClient.register(com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider.class);
	    Response response = httpClient.target(EngineUrl.rest()+"/person/list").request().get();
	    List<Person> persons = response.readEntity(new GenericType<ArrayList<Person>>() {});
	    assertThat(persons).isNotEmpty();
	}
	
	@Test
	public void putNewEntity()
	{
		Client httpClient = createAuthenticatedClient();
		
		MultivaluedMap<String, String> formData = new MultivaluedHashMap<>();
		formData.add("firstname", "Junit");
		formData.add("lastname", "Test");
		Entity<Form> entity = Entity.form(formData); 
		
	    Response response = httpClient.target(EngineUrl.rest()+"/person/add").request().put(entity);
	    String raw = response.readEntity(String.class);
	    assertThat(raw).isEqualTo("added user 'Person(id=4, firstname=Junit, lastname=Test)' sucessfully!");
	}
	
	@Test
	public void updateEntity()
	{
		Client httpClient = createAuthenticatedClient();
		
		httpClient.register(com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider.class);
		Person person = new Person();
		person.setId(2);
		person.setFirstname("Junit");
		person.setLastname("Test");
		Entity<Person> entity = Entity.json(person);
		
	    Response response = httpClient.target(EngineUrl.rest()+"/person/update").request().post(entity);
	    String raw = response.readEntity(String.class);
	    assertThat(raw).isEqualTo("updated user '"+person+"' sucessfully!");
	}

	private static Client createAuthenticatedClient() {
		Client httpClient = ClientBuilder.newClient();
	    HttpAuthenticationFeature feature = HttpAuthenticationFeature.basic(REST_USER, REST_USER);
	    httpClient.register(feature);
	    httpClient.register(new LoggingFilter());
		return httpClient;
	}

}
