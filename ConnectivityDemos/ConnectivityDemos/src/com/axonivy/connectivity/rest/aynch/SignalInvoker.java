package com.axonivy.connectivity.rest.aynch;

import javax.ws.rs.client.InvocationCallback;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.process.model.value.SignalCode;
import ch.ivyteam.util.threadcontext.IvyAsyncRunner;
import ch.ivyteam.ivy.environment.EnvironmentNotAvailableException;

/**
 * Fires a signal to the BPM Engine when the result of 
 * an asynchronous REST request is available. 
 * 
 * <p>Async callback methods use the {@link IvyAsyncRunner} to avoid
 *  {@link EnvironmentNotAvailableException}s.</p>
 * 
 * <p>See <b>Processes/rest/batchService/async.ivp</b> for a demo</p>
 * 
 * @since 7.3.0
 */
public class SignalInvoker implements InvocationCallback<String> 
{
	private final SignalCode successSignal;
	private final SignalCode errorSignal;
	private final IvyAsyncRunner asyncRunner;
	

	public SignalInvoker(String successSignal)
	{
		this(successSignal, "ivy:error:rest:client:async");
	}
	
	public SignalInvoker(String successSignal, String errorSignal)
	{
		this.successSignal = new SignalCode(successSignal);
		this.errorSignal = new SignalCode(errorSignal);
		this.asyncRunner = new IvyAsyncRunner();
	}
	
	@Override
	public void completed(String response) {
		asyncRunner.run(()->Ivy.wf().signals().send(successSignal, response));
	}

	@Override
	public void failed(Throwable throwable) {
		asyncRunner.run(()->Ivy.wf().signals().send(errorSignal, throwable));
	}
	
}
