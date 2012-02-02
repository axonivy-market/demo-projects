package ch.ivyteam.ivy.addons.process.parameter;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import ch.ivyteam.ivy.addons.process.async.WaitForAsyncProcess;
import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.File;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Record;
import ch.ivyteam.ivy.scripting.objects.Recordset;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * This class stores process data that are sendt from
 * SignalEndOfAsyncProcess and retrieved by the
 * {@link WaitForAsyncProcess} IntermediateEvent bean
 * 
 * @author hsp
 * @see WaitForAsyncProcess
 * @since Pilatus
 */
public class ProcessParameter implements Serializable {

	private static final long serialVersionUID = 1L;
	
		
	/* maps that store the process parameters */
	
	final private Map<String, String> stringMap;
	final private Map<String, Number> numberMap;
	final private Map<String, Date> dateMap;
	final private Map<String, Time> timeMap;
	final private Map<String, DateTime> dateTimeMap;
	final private Map<String, Boolean> booleanMap;
	final private Map<String, File> fileMap;
	
	@SuppressWarnings("unchecked")
	// there are problems when serializing Ivy List. Use java List and convert between them
	final private Map<String, java.util.List> listMap;
	// we need to store the generic type of the list so we can later rebuild it with the correct generic type
	final private Map<String, String> listTypeMap;
	final private Map<String, ProcessParameter> processParameterMap;
	
	// there are problems when serializing Record. Use a java Map and convert between them
	@SuppressWarnings("unchecked")
	final private Map<String, Map> recordMap;
	
	// there are problems when serializing Recordset. Use a java List<Map> and convert between them
	@SuppressWarnings("unchecked")
	final private Map<String, java.util.List<Map>> recordsetMap;
	
	@SuppressWarnings("unchecked")
	public ProcessParameter() {
		stringMap = new HashMap<String, String>();
		numberMap = new HashMap<String, Number>();
		dateMap = new HashMap<String, Date>();
		timeMap = new HashMap<String, Time>();
		dateTimeMap = new HashMap<String, DateTime>();
		booleanMap = new HashMap<String, Boolean>();
		fileMap = new HashMap<String, File>();
		listMap = new HashMap<String, java.util.List>();
		listTypeMap = new HashMap<String, String>();
		processParameterMap = new HashMap<String, ProcessParameter>();
		recordMap = new HashMap<String, Map>();
		recordsetMap = new HashMap<String, java.util.List<Map>>();
	}
	
	/**
	 * get the {@link String} value for <code>key</code> or null if it doesn't exist
	 * @param key key of the value
	 * @return the {@link String} for <code>key</code> or null if it doesn't exist
	 */
	public String getString(final String key) {
		return stringMap.get(key);
	}
	
	/**
	 * get the {@link Number} value for <code>key</code> or null if it doesn't exist
	 * @param key key of the value
	 * @return the {@link Number} for <code>key</code> or null if it doesn't exist
	 */
	public Number getNumber(final String key) {
		return numberMap.get(key);
	}
	
	/**
	 * get the {@link Date} value for <code>key</code> or null if it doesn't exist
	 * @param key key of the value
	 * @return the {@link Date} for <code>key</code> or null if it doesn't exist
	 */
	public Date getDate(final String key) {
		return dateMap.get(key);
	}
	
	/**
	 * get the {@link Time} value for <code>key</code> or null if it doesn't exist
	 * @param key key of the value
	 * @return the {@link Time} for <code>key</code> or null if it doesn't exist
	 */
	public Time getTime(final String key) {
		return timeMap.get(key);
	}
	
	/**
	 * get the {@link DateTime} value for <code>key</code> or null if it doesn't exist
	 * @param key key of the value
	 * @return the {@link DateTime} for <code>key</code> or null if it doesn't exist
	 */
	public DateTime getDateTime(final String key) {
		return dateTimeMap.get(key);
	}
	
	/**
	 * get the {@link Boolean} value for <code>key</code> or null if it doesn't exist
	 * @param key key of the value
	 * @return the {@link Boolean} for <code>key</code> or null if it doesn't exist
	 */
	public Boolean getBoolean(final String key) {
		return booleanMap.get(key);
	}
	
	/**
	 * get the {@link File} value for <code>key</code> or null if it doesn't exist
	 * @param key key of the value
	 * @return the {@link File} for <code>key</code> or null if it doesn't exist
	 */
	public File getFile(final String key) {
	    return fileMap.get(key);
	}
	

	/**
	 * get the {@link List} value for <code>key</code> or null if it doesn't exist
	 * @param key key of the value
	 * @return the {@link List} for <code>key</code> or null if it doesn't exist
	 */
	@SuppressWarnings("unchecked")
	public List getList(final String key) {
		try {
			return ProcessParameterUtil.convertJavaListToIvyList(listMap.get(key), Class.forName(listTypeMap.get(key)));
		} catch (ClassNotFoundException e) {
			return List.create();
		}
	}
	
	/**
	 * get the {@link ProcessParameter} value for <code>key</code> or null if it doesn't exist
	 * @param key key of the value
	 * @return the {@link ProcessParameter} for <code>key</code> or null if it doesn't exist
	 */
	public ProcessParameter getProcessParameter(final String key) {
	    return processParameterMap.get(key);
	}
	
	/**
	 * get the {@link Record} value for <code>key</code> or null if it doesn't exist
	 * @param key key of the value
	 * @return the {@link Record} for <code>key</code> or null if it doesn't exist
	 */
	public Record getRecord(final String key) {
		return ProcessParameterUtil.convertMapToRecord(recordMap.get(key));
	}
	
	/**
	 * get the {@link Recordset} value for <code>key</code> or null if it doesn't exist
	 * @param key key of the value
	 * @return the {@link Recordset} for <code>key</code> or null if it doesn't exist
	 */
	public Recordset getRecordset(final String key) {
		return ProcessParameterUtil.convertListOfMapToRecordset(recordsetMap.get(key));
	}
	
	/**
	 * put the {@link String} <code>value</code> as <code>key</code> into the {@link ProcessParameter}
	 * @param key access the <code>value</code> with this key
	 * @param value value to put inside the {@link ProcessParameter}
	 * @return this {@link ProcessParameter} object
	 */
	public ProcessParameter putString(final String key, final String value) {
		stringMap.put(key, value);
		return this;
	}
	
	/**
	 * put the {@link Number} <code>value</code> as <code>key</code> into the {@link ProcessParameter}
	 * @param key access the <code>value</code> with this key
	 * @param value value to put inside the {@link ProcessParameter}
	 * @return this {@link ProcessParameter} object
	 */
	public ProcessParameter putNumber(final String key, final Number value) {
		numberMap.put(key, value);
		return this;
	}
	
	/**
	 * put the {@link Date} <code>value</code> as <code>key</code> into the {@link ProcessParameter}
	 * @param key access the <code>value</code> with this key
	 * @param value value to put inside the {@link ProcessParameter}
	 * @return this {@link ProcessParameter} object
	 */
	public ProcessParameter putDate(final String key, final Date value) {
		dateMap.put(key, value);
		return this;
	}
	
	/**
	 * put the {@link Time} <code>value</code> as <code>key</code> into the {@link ProcessParameter}
	 * @param key access the <code>value</code> with this key
	 * @param value value to put inside the {@link ProcessParameter}
	 * @return this {@link ProcessParameter} object
	 */
	public ProcessParameter putTime(final String key, final Time value) {
		timeMap.put(key, value);
		return this;
	}
	
	/**
	 * put the {@link DateTime} <code>value</code> as <code>key</code> into the {@link ProcessParameter}
	 * @param key access the <code>value</code> with this key
	 * @param value value to put inside the {@link ProcessParameter}
	 * @return this {@link ProcessParameter} object
	 */
	public ProcessParameter putDateTime(final String key, final DateTime value) {
		dateTimeMap.put(key, value);
		return this;
	}
	

	/**
	 * put the {@link Boolean} <code>value</code> as <code>key</code> into the {@link ProcessParameter}
	 * @param key access the <code>value</code> with this key
	 * @param value value to put inside the {@link ProcessParameter}
	 * @return this {@link ProcessParameter} object
	 */
	public ProcessParameter putBoolean(final String key, final Boolean value) {
		booleanMap.put(key, value);
		return this;
	}
	
	/**
	 * put the {@link File} <code>value</code> as <code>key</code> into the {@link ProcessParameter}
	 * @param key access the <code>value</code> with this key
	 * @param value value to put inside the {@link ProcessParameter}
	 * @return this {@link ProcessParameter} object
	 */
	public ProcessParameter putFile(final String key, final File value) {
	    fileMap.put(key, value);
		return this;
	}
	
	/**
	 * put the {@link List} <code>value</code> as <code>key</code> into the {@link ProcessParameter}
	 * @param key access the <code>value</code> with this key
	 * @param value value to put inside the {@link ProcessParameter}
	 * @return this {@link ProcessParameter} object
	 */	
	@SuppressWarnings("unchecked")
	public ProcessParameter putList(final String key, final List value) {
		listTypeMap.put(key, value.getMemberType().getJavaClass().getName());
		listMap.put(key, ProcessParameterUtil.convertIvyListToJavaList(value));
		return this;
	}
	
	/**
	 * put the {@link ProcessParameter} <code>value</code> as <code>key</code> into the {@link ProcessParameter}
	 * @param key access the <code>value</code> with this key
	 * @param value value to put inside the {@link ProcessParameter}
	 * @return this {@link ProcessParameter} object
	 */
	public ProcessParameter putProcessParameter(final String key, final ProcessParameter value) {
	    processParameterMap.put(key, value);
		return this;
	}
	
	/**
	 * put the {@link Record} <code>value</code> as <code>key</code> into the {@link ProcessParameter}
	 * @param key access the <code>value</code> with this key
	 * @param value value to put inside the {@link ProcessParameter}
	 * @return this {@link ProcessParameter} object
	 */
	public ProcessParameter putRecord(final String key, final Record value) {
		recordMap.put(key, ProcessParameterUtil.convertRecordToMap(value));
		return this;
	}
	
	/**
	 * put the {@link Recordset} <code>value</code> as <code>key</code> into the {@link ProcessParameter}
	 * @param key access the <code>value</code> with this key
	 * @param value value to put inside the {@link ProcessParameter}
	 * @return this {@link ProcessParameter} object
	 */
	public ProcessParameter putRecordset(final String key, final Recordset value) {
		recordsetMap.put(key, ProcessParameterUtil.convertRecordsetToListOfMap(value));
		return this;
	}
}
