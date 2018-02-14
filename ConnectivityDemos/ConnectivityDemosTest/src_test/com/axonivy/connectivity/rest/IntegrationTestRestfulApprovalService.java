package com.axonivy.connectivity.rest;

import static org.assertj.core.api.Assertions.assertThat;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.Link;
import javax.ws.rs.core.MultivaluedHashMap;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.client.authentication.HttpAuthenticationFeature;
import org.glassfish.jersey.filter.LoggingFilter;
import org.junit.Test;

import ch.ivyteam.ivy.workflow.TaskState;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;


/**
 * Tests the REST interface of the {@link ApprovalService}.
 */
public class IntegrationTestRestfulApprovalService 
{
	public static final String REST_USER = "restUser";
	
	@Test
	public void putNewEntity()
	{
		Entity<Form> entity = createApproval("I need a break", "really i'm working really hard");
	    Response response = getApprovalClient().request().header("X-Requested-By", "ivy").put(entity);
	    assertThat(response.getStatus()).isEqualTo(Response.Status.CREATED.getStatusCode());
	    assertThat(response.getLocation().toString()).startsWith(EngineUrl.rest()+"/workflow/task/");
	    
	    JsonNode taskMetaNode = response.readEntity(JsonNode.class);
	    assertThat(taskMetaNode.get("description").textValue()).isEqualTo("I need a break");
	    
	    Link taskLink = response.getLink("approvalTask");
	    assertThat(taskLink).isNotNull();
	    assertThat(taskLink.getUri()).isEqualTo(response.getLocation());
	    
	    Client bossClient = ClientBuilder.newClient();
	    bossClient.register(JacksonJsonProvider.class);
	    bossClient.register(HttpAuthenticationFeature.basic("theBoss", "theBoss"));
	    JsonNode fullTaskNode = bossClient.target(taskLink).request()
	    		.get().readEntity(JsonNode.class);
	    assertThat(TaskState.valueOf(fullTaskNode.get("state").asInt()))
	    	.isEqualTo(TaskState.SUSPENDED);
	}

	private static Entity<Form> createApproval(String title, String description) {
		MultivaluedMap<String, String> formData = new MultivaluedHashMap<>();
		formData.add("title", title);
		formData.add("description", description);
		return Entity.form(formData);
	}

	private static WebTarget getApprovalClient() 
	{
		return createAuthenticatedClient().target(EngineUrl.rest()+"/approve");
	}

	private static Client createAuthenticatedClient() {
		Client httpClient = ClientBuilder.newClient();
	    httpClient.register(JacksonJsonProvider.class);
	    httpClient.register(HttpAuthenticationFeature.basic(REST_USER, REST_USER));
	    httpClient.register(new LoggingFilter());
		return httpClient;
	}

}
