package com.axonivy.connectivity.rest;

import java.util.ArrayList;
import java.util.Arrays;
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

import org.apache.commons.lang.StringUtils;

@Singleton
@Path("{applicationName}/person")
public class PersonService {

	private List<Person> persons = new ArrayList<>();
	
	public PersonService()
	{
		Person bb = new Person("Bruno", "Bütler");
		Person rwei = new Person("Reto", "Weiss");
		Person rs = new Person("Renato", "Stalder");
		Person rew = new Person("Reguel", "Wermelinger");
		persons.addAll(Arrays.asList(bb,rwei,rs,rew));
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
		Person person = new Person(firstname, lastname);
		persons.add(person);
		 
		return Response.status(Status.OK)
					.entity("added user '"+person+"' sucessfully!")
					.build();
	}
	
	@POST @Path("update")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response update(Person person)
	{
		return Response.status(Status.OK)
				.entity("updated user '"+person+"' sucessfully!")
				.build();
	}
	
	public static class Person
	{
		public final String firstname;
		public final String lastname;
		
		public Person(String first, String last)
		{
			this.firstname = first; 
			this.lastname = last;
		}
		
		@Override
		public String toString() {
			return StringUtils.join(new String[]{firstname, lastname}, " ");
		}
	}
	
}
