package ch.ivyteam.ivy.addons.process.parameter.db;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import ch.ivyteam.ivy.addons.process.async.WaitForAsyncProcess;
import ch.ivyteam.ivy.workflow.ICase;

/**
 * Use this class to delete the Case Process Data before you fire the event in {@link WaitForAsyncProcess}
 * @author hsp
 * @since Pilatus
 */
public class DeleteProcessData extends AbstractProcessDataDbAction<Void> {

	public DeleteProcessData(ICase theCase) {
		super(theCase, null);
	}

	@Override
	public String getSqlQuery() {
		return "DELETE FROM " + PROCESS_DATA_TABLE +
		" WHERE CaseId = ? AND EventId = ?";
	}

	@Override
	public void setParameterForStatement(final PreparedStatement statement) throws SQLException {
		statement.setInt(1, fCaseId);
		statement.setString(2, fEventId);
	}

}
