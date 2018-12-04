package com.axonivy.connectivity.rest.provider;

import java.util.concurrent.TimeUnit;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.container.AsyncResponse;
import javax.ws.rs.container.Suspended;
import javax.ws.rs.core.MediaType;

/**
 * Simulates a slow remote service that takes seconds to deliver a result.
 * 
 * <p>See <b>Processes/rest/batchService</b> for usage samples</p>
 */
@Path("batch")
public class BatchService {

	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String executeBlocking(@QueryParam("blockSeconds") Integer secondsToBlock) throws InterruptedException
	{
		simulateLongRunningExecution(secondsToBlock);
		return "Sorry for the delay!";
	}

	/**
	 * Non blocking batch processing. <br/>
	 * Clients can continue immediately and react on the response when it is available.
	 * 
	 * @param secondsToBlock simulates slow processing time
	 * @param response asynchronous client request
	 * @throws InterruptedException
	 * @since 7.3.0
	 */
	@GET
	@Path("/async")
	@Produces(MediaType.TEXT_PLAIN)
	public void executeAsync(@QueryParam("blockSeconds") Integer secondsToBlock, @Suspended AsyncResponse response) throws InterruptedException
	{
		new Thread(()->
		{
		    try {
		    	simulateLongRunningExecution(secondsToBlock);
		    	response.resume("Sorry for the slow processing!");
			} catch (InterruptedException ex) {
				response.resume(ex);
			}
		}).start();
	}
	
	private void simulateLongRunningExecution(Integer secondsToBlock) throws InterruptedException {
		if (secondsToBlock == null)
		{
			secondsToBlock = 32;
		}
		Thread.sleep(TimeUnit.SECONDS.toMillis(secondsToBlock));
	}
	
}
