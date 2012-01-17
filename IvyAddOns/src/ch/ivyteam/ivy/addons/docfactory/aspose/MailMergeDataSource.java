/**
 * 
 */
package ch.ivyteam.ivy.addons.docfactory.aspose;


import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Recordset;

import com.aspose.words.IMailMergeDataSource;

/**
 * @author lt
 * @since 20/04/2011
 * Class used by Aspose for Mail merge with regions.
 */
@SuppressWarnings("restriction")
public class MailMergeDataSource implements IMailMergeDataSource {

	private String tableName;
	private Recordset tableValues;
	private int rowIndex;

	/**
	 * Instantiates the MailMergeDataSource object for Aspose MailMergeWithRegions with ch.ivyteam.ivy.scripting.objects.Recordset and tableName.
	 * @param _val : the ch.ivyteam.ivy.scripting.objects.Recordset
	 * @param _name : the tableName
	 */
	public MailMergeDataSource(Recordset _val, String _name) {
		this.tableValues = _val;
		this.tableName = _name;
		// When the data source is initialised, it must be positioned before the first record.
		this.rowIndex = -1;
	}
	
	/**
	 * Instantiates the MailMergeDataSource object for Aspose MailMergeWithRegions with list from columnNames and List from List of Fields Values and tableName.
	 * @param _columnNames : The column names List (List from String)
	 * @param _val : the list of list of Values List<List<String>>
	 * @param _name : the table name.
	 */
	public MailMergeDataSource(List<String> _columnNames, List<List<Object>> _val, String _name) {
		Recordset rs = new Recordset(_columnNames);
		
		for (int j = 0; j < _val.size(); j++){
			if (rs.columnCount() >= _val.get(j).size() ){
				rs.add(_val.get(j));
			}
		}
		this.tableValues = rs;
		this.tableName = _name;
		// When the data source is initialised, it must be positioned before the first record.
		this.rowIndex = -1;
	}

	@Override
	public boolean moveNext() throws Exception {
		if (rowIndex+1 < tableValues.size()) {
			rowIndex++;
			return true;
		} else {
			rowIndex = -1;
			return false;
		}
	}

	@Override
	public String getTableName() throws Exception {
		return tableName;
	}

	public void setTableName(String name) {
		tableName = name;
	}

	@Override
	public boolean getValue(String fieldName, Object[] fieldValue) throws Exception {
		try {
			if (tableValues.getKeys().contains(fieldName)) {
				fieldValue[0] = tableValues.getColumn(fieldName).get(rowIndex);
				return true;
			} else {
				fieldValue[0] = 0;
				return false;
			}
		}catch (Exception e){
			Ivy.log().error(e.getMessage());
			throw e;
		}
	}

	@Override
	public IMailMergeDataSource getChildDataSource(String arg0)
			throws Exception {
		
		return null;
	}

}

