package com.axonivy.connectivity.rest.provider;

import javax.ws.rs.FormParam;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Link;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;
import javax.ws.rs.core.UriBuilder;

import ch.ivyteam.ivy.process.call.SubProcessCall;
import ch.ivyteam.ivy.workflow.ITask;

/**
 * RESTful Service that demonstrates how to interact with the ivy environment such as processes.
 * 
 * <p>A sample request can be fired with the process start: <b>approval/createApprovalViaREST.ivp</b></p>
 */
@Path("{applicationName}/approve")
public class ApprovalService {

	/**
	 * Runs a callable SubProcess to create new Task for a manager. 
	 * 
	 * @param title
	 * @param description
	 * @return created approval task
	 */
	@PUT
	@Produces(MediaType.APPLICATION_JSON)
	public Response create(
			@FormParam("title") String title,
			@FormParam("description") String description, 
			@PathParam("applicationName") String app)
	{
		ITask task = SubProcessCall.withPath("rest/createApproval")
				.withParam("title", title)
				.withParam("description", description)
				.call()
				.get("approvalTask", ITask.class);
		
		String appRelativeUri = "workflow/task/{id}";
		Link createdLink = Link.fromPath(appRelativeUri).rel("approvalTask").build(task.getId());
		return Response.status(Status.CREATED)
					.location(UriBuilder.fromPath("{applicationName}/"+appRelativeUri).build(app, task.getId()))
					.links(createdLink)
					.entity(new TaskMeta(task))
					.build();
	}
	
	public static class TaskMeta
	{
		public final long id;
		public final String name;
		public final String description;
		public final String activator;

		public TaskMeta(ITask task)
		{
			this.id = task.getId();
			this.name = task.getName();
			this.description = task.getDescription();
			this.activator = task.getActivatorName();
		}
	}
}
