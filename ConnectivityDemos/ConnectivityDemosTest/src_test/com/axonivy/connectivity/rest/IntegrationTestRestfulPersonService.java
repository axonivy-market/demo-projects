package com.axonivy.connectivity.rest;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.Link;
import javax.ws.rs.core.MultivaluedHashMap;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Response;

import org.apache.http.HttpStatus;
import org.glassfish.jersey.client.authentication.HttpAuthenticationFeature;
import org.glassfish.jersey.filter.LoggingFilter;
import org.junit.Test;

import com.axonivy.connectivity.Person;
import com.fasterxml.jackson.databind.JsonNode;
import javax.ws.rs.core.Response.Status;


/**
 * Tests the REST interface of the {@link PersonService}.
 */
public class IntegrationTestRestfulPersonService 
{
	public static final String REST_USER = "restUser";
	
	@Test
	public void getListOfEntities()
	{
	    Response response = getPersonsClient().request().get();
	    List<Person> persons = response.readEntity(new GenericType<ArrayList<Person>>() {});
	    assertThat(persons).isNotEmpty();
	}
	
	@Test
	public void filterListOfEntities()
	{
	    Response response = getPersonsClient().queryParam("name", "Weiss").request().get();
	    List<Person> persons = response.readEntity(new GenericType<ArrayList<Person>>() {});
	    assertThat(persons).hasSize(1);
	}
	
	@Test
	public void putNewEntity()
	{
		Entity<Form> entity = createFormPerson(); 
	    Response response = getPersonsClient().request().put(entity);
	    assertThat(response.getStatus()).isEqualTo(HttpStatus.SC_CREATED);
	    assertThat(response.getLink("createdPerson")).isNotNull();
	    JsonNode node = response.readEntity(JsonNode.class);
	    assertThat(node.get("id").asInt()).isEqualTo(4);
	}

	private Entity<Form> createFormPerson() {
		MultivaluedMap<String, String> formData = new MultivaluedHashMap<>();
		formData.add("firstname", "Junit");
		formData.add("lastname", "Test");
		Entity<Form> entity = Entity.form(formData);
		return entity;
	}
	
	@Test
	public void updateEntity()
	{
		Person person = new Person();
		person.setId(2);
		person.setFirstname("Junit");
		person.setLastname("Test");
		Entity<Person> entity = Entity.json(person);
		
	    Response response = getPersonsClient().path(String.valueOf(person.getId()))
	    		.request().post(entity);
	    assertThat(response.getStatus()).isEqualTo(Status.OK.getStatusCode());
	}
	
	@Test
	public void deleteEntity()
	{
		Link personLink = getPersonsClient().request().put(createFormPerson()).getLink("createdPerson");
		assertThat(personLink).isNotNull();
		
		Person createdPerson = createAuthenticatedClient().target(personLink).request().get(Person.class);
		
		Response response = getPersonsClient().path(String.valueOf(createdPerson.getId())).request().delete();
		assertThat(response.readEntity(Person.class)).isNotNull();
	}

	private static WebTarget getPersonsClient() 
	{
		return createAuthenticatedClient().target(EngineUrl.rest()+"/persons");
	}

	private static Client createAuthenticatedClient() {
		Client httpClient = ClientBuilder.newClient();
	    HttpAuthenticationFeature feature = HttpAuthenticationFeature.basic(REST_USER, REST_USER);
	    httpClient.register(com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider.class);
	    httpClient.register(feature);
	    httpClient.register(new LoggingFilter());
		return httpClient;
	}

}
