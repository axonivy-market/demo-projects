package com.axonivy.connectivity.rest;

import java.util.List;

import javax.ws.rs.client.Entity;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.MultivaluedHashMap;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Response;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.rest.client.GenericTypes;

import com.axonivy.connectivity.Person;

/**
 * Shows how pre-configured REST Services can be called by using the {@link Ivy#rest} API.
 * 
 * @since 6.1.1
 */
public class PersonClient {

	/**
	 * GET request that returns a list of complex types.
	 */
	public static List<Person> getPersons()
	{
		return Ivy.rest().client("personService")
				.resolveTemplate("operation", "list")
				.request().get(GenericTypes.listOf(Person.class));
	}
	
	/**
	 * PUT request the accepts form parameters as input.
	 */
	public static Response add(String firstName, String lastName)
	{
		MultivaluedMap<String, String> formData = new MultivaluedHashMap<>();
		formData.add("firstname", firstName);
		formData.add("lastname", lastName);
		Entity<Form> entity = Entity.form(formData); 
		
		return Ivy.rest().client("personService")
			.resolveTemplate("operation", "add")
			.request().put(entity);
	}
	
	/**
	 * POST request that sends a complex type instance
	 */
	public static Response update(Person person)
	{
		return Ivy.rest().client("personService")
			.resolveTemplate("operation", "update")
			.request().post(Entity.json(person));
	}
	
}
