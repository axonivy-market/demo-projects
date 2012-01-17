package ch.ivyteam.ivy.addons.docfactory;

import java.lang.reflect.Field;

import ch.ivyteam.ivy.addons.docfactory.aspose.MailMergeDataSource;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.CompositeObject;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Recordset;

/**
 * @author ec
 * @since 07/02/2011
 * Used to map Ivy DataClasses to usable Objects for Aspose mail merge or mail merge with regions.
 */
public class DataClassToMergefields {

	/**
	 * Takes a CompositeObject (dataClass) returns a list of TemplateMergeField<br>
	 * that can be used to write a serial letter with a Template document.<br>
	 * The names of the template Document should be the same as the fields of the dataClass.
	 * @param _data: CompositeObject (dataClass)
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



	/**
	 * 
	 * @param compositeObjectsList
	 * @param _tableName
	 * @return
	 * @throws Exception
	 */
	public static MailMergeDataSource transfomDataClassInMergeDataSource(java.util.List<CompositeObject> compositeObjectsList, String _tableName) throws Exception {
		MailMergeDataSource mmds=null;
		//We check if incoming parameter is null or empty
		if(compositeObjectsList == null || compositeObjectsList.isEmpty())
		{
			return mmds;
		}
		Recordset rs = new Recordset();
		rs.add(compositeObjectsList.get(0));
		Ivy.log().info("Recordset: "+rs);
		for (int i = 1; i < compositeObjectsList.size(); i++){
			//Check List consistency: all the compositeObjects have to have the same type
			if (compositeObjectsList.get(i).getClass().getName() != compositeObjectsList.get(i-1).getClass().getName())
			{
				throw new IllegalArgumentException(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/mailMergeWithRegionsNeedsListOfSameDataClassTypes"));	
			}
			rs.add(compositeObjectsList.get(i));
		}
		if(_tableName == null || _tableName.trim().equals(""))
		{
			mmds = new MailMergeDataSource(rs, compositeObjectsList.get(0).getClass().getName().substring(compositeObjectsList.get(0).getClass().getName().lastIndexOf(".")+1));
		}else{
			mmds = new MailMergeDataSource(rs,_tableName);
		}
		return mmds;
	}
}
