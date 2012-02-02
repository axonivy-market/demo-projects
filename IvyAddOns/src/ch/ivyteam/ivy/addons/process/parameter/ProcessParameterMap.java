package ch.ivyteam.ivy.addons.process.parameter;

import java.util.HashMap;
import java.util.Map;

import ch.ivyteam.ivy.addons.process.async.WaitForAsyncProcess;

/**
 * 
 * The result Object of {@link WaitForAsyncProcess}. Stores all {@link ProcessParameter}
 * that were sendt by the asynchronous processes
 *
 * @author hsp
 * @see WaitForAsyncProcess
 * @see ProcessParameter
 * @since Pilatus
 */

public class ProcessParameterMap {
	/** stores the {@link ProcessParameter} as key/value */
	final private Map<String, ProcessParameter> fParameters;
	
	public ProcessParameterMap() {
		fParameters = new HashMap<String, ProcessParameter>();
	}

	/**
	 * put <code>value</code> with <code>key</code> into this map
	 * @param parameterName of the <code>value</code> to store
	 * @param value {@link ProcessParameter} to store
	 */
	public void putProcessParameter(final String parameterName, final ProcessParameter value) {
		fParameters.put(parameterName, value);
	}
	
	/**
	 * retrieves the {@link ProcessParameter} with <code>parameterName</code>
	 * @param parameterName of the {@link ProcessParameter} to retrieve
	 * @return the {@link ProcessParameter} or a new empty {@link ProcessParameter}
	 */
	public ProcessParameter getProcessParameterFor(final String parameterName) {
		final ProcessParameter processParameter = fParameters.get(parameterName);
		if(processParameter == null) return new ProcessParameter();
		return processParameter;
	}

}
