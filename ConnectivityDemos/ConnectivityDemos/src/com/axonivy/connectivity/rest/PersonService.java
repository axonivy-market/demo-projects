package com.axonivy.connectivity.rest;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Singleton;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import com.axonivy.connectivity.Person;

/**
 * Simple RESTful service. The REST interface is defined by the JAX-RS annotations on the methods and it's path.<br/>
 * 
 * The simplest external URL in a designer will be: <code>http://localhost:8081/ivy/api/designer/person/list</code>.
 * 
 * <p><b>Authentication</b><br/>
 * - Consumers of this service must be authenticated with HTTP-BASIC. In the Designer any 'Test User' of the application is valid.</br/>
 * - The @Path() annotation on the class must contain the '{applicationName}' property or users will not be able to authenticate </p>
 * 
 * @since 6.1.1
 */
@Singleton
@Path("{applicationName}/person")
public class PersonService {

	private List<Person> persons = new ArrayList<>();
	
	public PersonService()
	{
		addNewPerson("Bruno", "Bütler");
		addNewPerson("Reto", "Weiss");
		addNewPerson("Renato", "Stalder");
		addNewPerson("Reguel", "Wermelinger");
	}
	
	@GET @Path("list")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Person> getPersons()
	{
		return persons;
	}
	
	@PUT @Path("add")
	public Response add(@FormParam("firstname") String firstname, @FormParam("lastname") String lastname)
	{
		Person person = addNewPerson(firstname, lastname);
		return Response.status(Status.OK)
					.entity("added user '"+person+"' sucessfully!")
					.build();
	}

	@POST @Path("update")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response update(Person person)
	{
		Integer id = person.getId();
		Person existing = persons.get(id);
		if (existing == null)
		{
			return Response.status(Status.NOT_MODIFIED)
					.entity("user with id '"+id+"' does not exist.")
					.build();
		}
		
		persons.set(id, person);
		return Response.status(Status.OK)
				.entity("updated user '"+person+"' sucessfully!")
				.build();
	}
	
	private Person addNewPerson(String firstname, String lastname) 
	{
		Person person = new Person();
		person.setFirstname(firstname);
		person.setLastname(lastname);
		person.setId(persons.size());
		persons.add(person);
		return person;
	}
}
