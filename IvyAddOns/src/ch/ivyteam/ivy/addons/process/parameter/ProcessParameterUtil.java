package ch.ivyteam.ivy.addons.process.parameter;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import ch.ivyteam.ivy.scripting.objects.Date;
import ch.ivyteam.ivy.scripting.objects.DateTime;
import ch.ivyteam.ivy.scripting.objects.File;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Record;
import ch.ivyteam.ivy.scripting.objects.Recordset;
import ch.ivyteam.ivy.scripting.objects.Time;

/**
 * Helper class to convert between Ivy and Java datatypes.
 * This class exists because there are some problems with Ivy List, Record and Recordset.
 * These types can not be serialized and deserialized
 * @author hsp
 * @since Pilatus
 */
public class ProcessParameterUtil {
	private static final String RECORDSET_KEYS = "ch.ivyteam.ivy.addons.process.parameter.RSKeys";

	private ProcessParameterUtil() {
		//
	}
	
	/**
	 * Converts <code>record</code> to a {@link Map}
	 * @param record to convert
	 * @return the {@link Map} from <code>record</code>
	 */
	@SuppressWarnings("unchecked")
	public static Map convertRecordToMap(final Record record) {
		final Map map = new HashMap();
		if(record != null) {
			final List<String> keys = record.getKeys();
			for(final String key : keys) {
				final Object value = record.getField(key);
				map.put(key, value);
			}
		}
		return map;
	}
	
	/**
	 * convert <code>map</code> back to a {@link Record}
	 * @param map to convert
	 * @return the {@link Record} from <code>map</code>
	 */
	@SuppressWarnings("unchecked")
	public static Record convertMapToRecord(final Map map) {
		final Record record = new Record();
		if(map != null) {
			final Set keySet = map.keySet();
			for(final Object key : keySet) {
				record.putField((String) key, map.get(key));
			}
		}
		return record;
	}
	
	/**
	 * Converts <code>recordset</code> to a {@link java.util.List} of {@link Map}
	 * @param recordset to convert
	 * @return the {@link java.util.List} of {@link Map} from <code>recordset</code>
	 */
	@SuppressWarnings("unchecked")
	public static java.util.List<Map> convertRecordsetToListOfMap(final Recordset recordset) {
		final java.util.List<Map> list = new ArrayList<Map>();
		if(recordset != null) {
			// store the keys of the recordset
			final Map keys = new HashMap();
			keys.put(RECORDSET_KEYS, recordset.getKeys());
			list.add(keys);
			final List<Record> records = recordset.getRecords();
	
			for(final Record record : records) {
				list.add(convertRecordToMap(record));
			}
		}
		return list;
	}
	
	/**
	 * Converts <code>list</code> back to a {@link Recordset}
	 * @param list to convert
	 * @return the {@link Recordset} from <code>list</code>
	 */
	@SuppressWarnings("unchecked")
	public static Recordset convertListOfMapToRecordset(final java.util.List<Map> list) {
		Recordset recordset = new Recordset();
		if(list != null) {
			// first entry of list are the keys
			List<String> keys = (List<String>) list.get(0).get(RECORDSET_KEYS);
			recordset = new Recordset(keys);
			for(final Map map : list) {
				if(map.containsKey(RECORDSET_KEYS)) {
					continue;
				} else {
					recordset.add(convertMapToRecord(map));
				}
			}
		}
		return recordset;
	}
	
	
	/**
	 * Converts <code>list</code> to an Ivy {@link List}
	 * @param list to convert
	 * @param listType the generic type of the list
	 * @return an Ivy {@link List} from <code>list</code>
	 */
	@SuppressWarnings("unchecked")
	public static List convertJavaListToIvyList(final java.util.List list, Class listType) {
		if(listType == null) {
			listType = Object.class;
		}
		if(list == null) {
			return List.create(listType);
		} else {
			final List ivyList = List.create(listType);
			ivyList.addAll(list);
			return ivyList;
		}
	}
	
	/**
	 * Converts <code>list</code> to a {@link java.util.List}
	 * @param list to convert
	 * @return a {@link java.util.List} from <code>list</code> or <code>null</code> if <code>list</code> is null
	 */
	@SuppressWarnings("unchecked")
	public static java.util.List convertIvyListToJavaList(final List list) {
		if (list == null) {
			return null;
		} else {
			final Class clazz = list.getMemberType().getJavaClass();
			if(isTypeSupported(clazz)) {
				return getArrayListForClass(list, clazz);
			} else {
				throw new RuntimeException("MemberType of List<?> must String, Number, Date, DateTime, Time, Boolean, File or ProcessParameter!");
			}
		}
	}

	/**
	 * return an ArrayList for a Ivy list
	 * @param list Ivy list that we want to convert
	 * @param clazz generic class type of the ivy list
	 * @return
	 */
	@SuppressWarnings("unchecked")
	private static java.util.List getArrayListForClass(final List list,
			final Class clazz) {
		// only store List with the types supported by ProcessParameter
		if(clazz.equals(String.class)) {
			return new ArrayList<String>(list);
		} else if(clazz.equals(Number.class)) {
			return new ArrayList<Number>(list);
		} else if(clazz.equals(Date.class)) {
			return new ArrayList<Date>(list);
		} else if(clazz.equals(Time.class)) {
			return new ArrayList<Time>(list);
		} else if(clazz.equals(DateTime.class)) {
			return new ArrayList<DateTime>(list);
		} else if(clazz.equals(Boolean.class)) {
			return new ArrayList<Boolean>(list);
		} else if(clazz.equals(File.class)) {
			return new ArrayList<File>(list);
		} else if(clazz.equals(ProcessParameter.class)) {
			return new ArrayList<ProcessParameter>();
		} else {
			return new ArrayList(list);
		}
	}

	/**
	 * checks if <code>clazz</code> is supported by us
	 * @param clazz the Class to check
	 * @return true if supported, otherwise false
	 */
	@SuppressWarnings("unchecked")
	public static boolean isTypeSupported(final Class clazz) {
		return String.class.isAssignableFrom(clazz)
				|| Number.class.isAssignableFrom(clazz)
				|| Date.class.isAssignableFrom(clazz)
				|| Time.class.isAssignableFrom(clazz)
				|| DateTime.class.isAssignableFrom(clazz)
				|| Boolean.class.isAssignableFrom(clazz)
				|| File.class.isAssignableFrom(clazz)
				|| ProcessParameter.class.isAssignableFrom(clazz)
				|| Map.class.isAssignableFrom(clazz);
	}
}
