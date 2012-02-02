package ch.ivyteam.ivy.addons.process.parameter.db;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import ch.ivyteam.ivy.addons.process.async.WaitForAsyncProcess;
import ch.ivyteam.ivy.persistence.PersistencyException;
import ch.ivyteam.ivy.workflow.ICase;

/**
 * Use this class to load the Case Process Data before you fire the event in {@link WaitForAsyncProcess}
 * @author hsp
 * @since Pilatus
 */
@SuppressWarnings({ "unchecked" })
public class LoadProcessData extends AbstractProcessDataDbAction<Map> {

	public LoadProcessData(ICase theCase) {
		super(theCase, null);
	}

	@Override
	public String getSqlQuery() {
		return "SELECT CaseData FROM " + PROCESS_DATA_TABLE +
		" WHERE CaseId = ? AND EventId =? ";
	}

	@Override
	public void setParameterForStatement(final PreparedStatement statement) throws SQLException {
		statement.setInt(1, fCaseId);
		statement.setString(2, fEventId);
	}

	@Override
	public Map processResultSet(final ResultSet resultSet) throws PersistencyException {
		// get the map back from the database
		try {
			if(resultSet.next()) {
				final byte[] bytes = resultSet.getBytes(1);
				ObjectInputStream in = new ObjectInputStream(new BufferedInputStream(new ByteArrayInputStream(bytes)));
				try {
					return (Map) in.readObject();
				} catch (IOException e) {
					throw new PersistencyException(e);
				} catch (ClassNotFoundException e) {
					throw new PersistencyException(e);
				} finally {
					in.close();
				}
			}
		} catch (SQLException e) {
			throw new PersistencyException(e);
		} catch (IOException e) {
			throw new PersistencyException(e);
		}
		return null;
	}
}
