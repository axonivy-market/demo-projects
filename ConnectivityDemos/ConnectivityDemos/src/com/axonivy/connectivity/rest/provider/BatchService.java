package com.axonivy.connectivity.rest.provider;

import java.util.concurrent.TimeUnit;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

@Path("{applicationName}/batch")
public class BatchService {

	@GET
	public Response executeLongRunningMethod() throws InterruptedException
	{
		simulateLongRunningExecution();
		return Response.status(Status.OK)
				.entity("sorry for the delay")
				.build();
	}

	private void simulateLongRunningExecution() throws InterruptedException {
		Thread.sleep(TimeUnit.SECONDS.toMillis(32));
	}
	
}
