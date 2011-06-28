package ch.ivyteam.ivy.addons.process.parameter.db;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;

import ch.ivyteam.ivy.addons.process.async.WaitForAsyncProcess;
import ch.ivyteam.ivy.workflow.ICase;
/**
 * Use this class to insert the Case Process Data after you received {@link WaitForAsyncProcess.PROCESS_END_SIGNAL}
 * @author hsp
 * @since Pilatus
 */
public class InsertProcessData extends AbstractProcessDataDbAction<Void> {
	
	
	@SuppressWarnings("unchecked")
	public InsertProcessData(ICase theCase, Map data) {
		super(theCase, data);
	}

	@Override
	public String getSqlQuery() {
		return "INSERT INTO " + PROCESS_DATA_TABLE +
		"(CaseId, EventId, CaseData) "+
		"VALUES(?,?,?)";
	}

	@Override
	public void setParameterForStatement(final PreparedStatement statement)
			throws SQLException {
		try {
			final ByteArrayOutputStream bos = new ByteArrayOutputStream();
			final ObjectOutputStream out = new ObjectOutputStream(new BufferedOutputStream(bos));
			try {
				out.writeObject(fData);
			} finally {
				out.close();				
			}
			final byte[] byteArray = bos.toByteArray();
			statement.setInt(1, fCaseId);
			statement.setString(2, fEventId);
			statement.setBytes(3, byteArray);
		} catch (IOException e) {
			//
		}
		
	}

}
