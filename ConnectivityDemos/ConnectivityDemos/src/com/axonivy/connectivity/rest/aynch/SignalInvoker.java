package com.axonivy.connectivity.rest.aynch;

import java.util.Collections;

import javax.ws.rs.client.InvocationCallback;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.process.model.value.SignalCode;
import ch.ivyteam.ivy.request.IProcessModelVersionRequest;
import ch.ivyteam.ivy.request.impl.IContextRequest;
import ch.ivyteam.ivy.request.impl.ProcessRequest;
import ch.ivyteam.ivy.request.impl.Request;
import ch.ivyteam.ivy.security.exec.Sudo;
import ch.ivyteam.ivy.workflow.signal.IBpmSignalService;

/**
 * Fires a signal to the BPM Engine when the result of 
 * an asynchronous REST request is available. 
 * 
 * <p>See <b>Processes/rest/batchService/async.ivp</b> for a demo</p>
 * 
 * @since 7.3.0
 */
public class SignalInvoker implements InvocationCallback<String> 
{
	private final SignalCode successSignal;
	private final SignalCode errorSignal;
	private final SignalContext signals;
	

	public SignalInvoker(String successSignal)
	{
		this(successSignal, "ivy:error:rest:client:async");
	}
	
	public SignalInvoker(String successSignal, String errorSignal)
	{
		this.successSignal = new SignalCode(successSignal);
		this.errorSignal = new SignalCode(errorSignal);
		this.signals = new SignalContext();
	}
	
	@Override
	public void completed(String response) {
		signals.send(successSignal, response);
	}

	@Override
	public void failed(Throwable throwable) {
		signals.send(errorSignal, throwable);
	}
	
	
	
	/**
	 * Provides the IvyEnvironment which is usually available under {@link Ivy}.
	 */
	static class SignalContext
	{
		private final IBpmSignalService signals;
		private final IProcessModelVersionRequest request;
		
		SignalContext()
		{
			signals = Ivy.wf().signals();
			request = new ProcessRequest(Ivy.wfTask().getProcessModelVersion(),"", Collections.emptyMap(), Ivy.wfTask(), Ivy.session(), -1);
		}
		
		public void send(SignalCode code, Object payload)
		{
			runInIvyContext(() -> signals.send(code, payload));
		}

		private void runInIvyContext(Runnable r) {
			Sudo.exec(() -> {
				Request.pushRequest((IContextRequest) request);
				try
				{
					r.run();
				}
				finally
				{
					Request.popRequest((IContextRequest) request);
				}
			});
		}
	}
	
}
