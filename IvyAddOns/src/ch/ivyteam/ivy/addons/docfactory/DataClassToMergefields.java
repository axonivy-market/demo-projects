package ch.ivyteam.ivy.addons.docfactory;

import java.lang.reflect.Field;

import ch.ivyteam.ivy.scripting.objects.CompositeObject;
import ch.ivyteam.ivy.scripting.objects.List;

/**
 * @author ec
 * @since 07/02/2011
 */
public class DataClassToMergefields {
	
	/**
	 * Takes a CompositeObject (dataclass) returns a list of TemplateMergeField<br>
	 * that can be used to write a serial letter with a Template document.<br>
	 * The names of the template Document should be the same as the fields of the dataClass.
	 * @param _data: CompositeObject (dataclass)
	 * @return list of TemplateMergeField that can be used to write a serial letter with a Template document.
	 */
	public static List<TemplateMergeField> transformDataClassInMergeField(CompositeObject _data)
	{
		if(_data==null)
		{
			return null;
		}
		List<TemplateMergeField> tmps = List.create(TemplateMergeField.class);
		
		Field[] fields = _data.getClass().getDeclaredFields();
		for(int i =0; i<fields.length;i++)
		{
			try
			{
				TemplateMergeField tmp= new TemplateMergeField(fields[i].getName(), _data.get(fields[i].getName()).toString());
				tmps.add(tmp);
			}
			catch(Exception _ex)
			{
				//do nothing and go to the next field
			}
		}
		return tmps;
	}
}
