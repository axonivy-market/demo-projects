package ch.ivyteam.ivy.addons.process.parameter.db;

import java.util.Map;

import ch.ivyteam.ivy.addons.process.async.WaitForAsyncProcess;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.workflow.ICase;

/**
 * This class provides methods to save, load and delete process data from {@link WaitForAsyncProcess}
 * @author hsp
 * @since Pilatus
 */
public class ProcessDataDbService {
	
	/**
	 * persist the process <code>data</code> into the ivy system database
	 * @param data to persist
	 * @param theCase <code>data</code> belongs to this case
	 * @throws PersistencyException
	 */
	@SuppressWarnings("unchecked")
	public static void saveProcessData(final Map data, final ICase theCase) throws PersistencyException {
		new InsertProcessData(theCase, data).execute();
	}

	/**
	 * load the process data from the ivy system database
	 * @param theCase load that from this case
	 * @return a map with the data or null if there is no data
	 * @throws PersistencyException
	 */
	@SuppressWarnings("unchecked")
	public static Map loadProcessParameter(final ICase theCase) throws PersistencyException {
		return new LoadProcessData(theCase).executeQuery();
	}

	/**
	 * delete the process data after they have been sendt back to the process
	 * @param theCase delete the data from this case
	 * @throws PersistencyException
	 */
	public static void deleteProcessData(final ICase theCase) throws PersistencyException {
		new DeleteProcessData(theCase).execute();			
	}
}