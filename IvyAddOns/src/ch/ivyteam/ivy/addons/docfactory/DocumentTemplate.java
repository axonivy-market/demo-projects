
package ch.ivyteam.ivy.addons.docfactory;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Hashtable;

import ch.ivyteam.ivy.scripting.objects.CompositeObject;
import ch.ivyteam.ivy.scripting.objects.List;
import ch.ivyteam.ivy.scripting.objects.Recordset;

/**
 * @author ec<br>
 * @since 29.10.2009
 * This class represents a Document Template.<br>
 * It contains all the informations necessary to produce a new Document through Mail merging.
 */
public class DocumentTemplate implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6318771680896773119L;

	/** the path where to find the template */
	private String templatePath=null;

	/**  the path where to save the new generated File */
	private String outputPath=null;

	/** the name of the new generated File*/
	private String outputName=null;

	/** the format of the new generated File<br>
	 * @see BaseDocFactory#getSupportedFormats()
	 */
	private String outputFormat = null;

	/** the list of TemplateMergeFields. Each TemplateMergeFields is a Key/value pair.<br>
	 * The key is the name of the mergeField that can be found in the template<br>
	 * The value is the String that will replace the mergeField in the template during the template merging.<br>
	 * @see TemplateMergeField
	 * */
	private List<TemplateMergeField> mergeFields= null;

	/**
	 * DataClass whose parameters are going to be taken to fill the merge fields of an office template.<br>
	 * The names of the dataClass parameters have to be the same as the names of the fields in the templates.
	 */
	private CompositeObject data=null;

	/** the document factory used to parse the template and to perform the mailMerging.<br>
	 * @see BaseDocFactory#getInstance()
	 */
	private BaseDocFactory documentFactory=null;

	/** The FileOeprationMessage is a convenient Object to get the results of a Mail Merge from a Document Factory Object.<br>
	 * @see ch.ivyteam.ivy.addons.docfactory.FileOperationMessage
	 */
	private FileOperationMessage fileOperationMessage= null;

	/**
	 * Used in case of merge mail with regions for reporting.
	 */
	private HashMap<String, java.util.List<CompositeObject>> tablesNamesAndFieldsmap = null;
	/**
	 * Used in case of merge mail with regions for reporting.
	 */
	private Hashtable<String, Recordset> tablesNamesAndFieldsHashtable = null;

	/**
	 * empty constructor
	 */
	public DocumentTemplate() {
		this("","","","",List.create(TemplateMergeField.class));
	}

	/**
	 * Constructor, instantiate the DocumentTemplate's variable
	 * @param _templatePath : the path where to find the template
	 * @param _outputPath : the path where to save the new generated File
	 * @param _outputName : the name of the new generated File
	 * @param _outputFormat : the format of the new generated File
	 * @param _mergeFields : the list of TemplateMergeFields. Each TemplateMergeFields is a Key/value pair.<br>
	 * The key is the name of the mergeField that can be found in the template<br>
	 * The value is the String that will replace the mergeField in the template during the template merging.
	 */
	public DocumentTemplate(String _templatePath, String _outputPath, String _outputName, String _outputFormat, List<TemplateMergeField> _mergeFields) {
		super();
		this.templatePath = (_templatePath==null)?"":_templatePath;
		this.outputPath = (_outputPath==null)?"":_outputPath;
		this.outputName = (_outputName==null)?"":_outputName;
		this.outputFormat = (_outputFormat==null)?"":_outputFormat;
		if(_mergeFields == null)
		{
			this.mergeFields = List.create(TemplateMergeField.class);
		}else
		{
			this.mergeFields = _mergeFields;
		}

		this.fileOperationMessage= new FileOperationMessage();
		this.fileOperationMessage.setMessage("");
		this.fileOperationMessage.setFiles(List.create(java.io.File.class));
		this.fileOperationMessage.setType(FileOperationMessage.INFORMATION_MESSAGE);
	}

	/**
	 * Constructor, instantiate the DocumentTemplate's variable
	 * @param _templatePath : the path where to find the template
	 * @param _outputPath : the path where to save the new generated File
	 * @param _outputName : the name of the new generated File
	 * @param _outputFormat : the format of the new generated File
	 * @param _mergeFields : the list of TemplateMergeFields. Each TemplateMergeFields is a Key/value pair.<br>
	 * The key is the name of the mergeField that can be found in the template<br>
	 * The value is the String that will replace the mergeField in the template during the template merging.
	 * @param _tablesNamesAndFieldsmap: an HashMap containing the tables name contained in the template as keys and the compositeObjects whose values should be inserted in the corresponding table.
	 * if not null or not empty and if the template contains Merge Regions, the Merge Regions are going to be filled as table with the values.
	 */
	public DocumentTemplate(String _templatePath, String _outputPath, String _outputName, String _outputFormat, List<TemplateMergeField> _mergeFields, HashMap<String , java.util.List<CompositeObject>> _tablesNamesAndFieldsmap) {
		super();
		this.templatePath = (_templatePath==null)?"":_templatePath;
		this.outputPath = (_outputPath==null)?"":_outputPath;
		this.outputName = (_outputName==null)?"":_outputName;
		this.outputFormat = (_outputFormat==null)?"":_outputFormat;
		if(_mergeFields == null)
		{
			this.mergeFields = List.create(TemplateMergeField.class);
		}else
		{
			this.mergeFields = _mergeFields;
		}

		this.setTablesNamesAndFieldsmap(_tablesNamesAndFieldsmap);

		this.fileOperationMessage= new FileOperationMessage();
		this.fileOperationMessage.setMessage("");
		this.fileOperationMessage.setFiles(List.create(java.io.File.class));
		this.fileOperationMessage.setType(FileOperationMessage.INFORMATION_MESSAGE);
	}

	/**
	 * Constructor, instantiate the DocumentTemplate's variable
	 * @param _templatePath : the path where to find the template
	 * @param _outputPath : the path where to save the new generated File
	 * @param _outputName : the name of the new generated File
	 * @param _outputFormat : the format of the new generated File
	 * @param _mergeFields : the list of TemplateMergeFields. Each TemplateMergeFields is a Key/value pair.<br>
	 * The key is the name of the mergeField that can be found in the template<br>
	 * The value is the String that will replace the mergeField in the template during the template merging.
	 * @param _tablesNamesAndFieldsHashtable: an Hashtable containing the tables name contained in the template as keys and the values should be inserted in the corresponding table as a ch.ivyteam.ivy.scripting.objects.Recordset.<br>
	 * if not null or not empty and if the template contains Merge Regions, the Merge Regions are going to be filled as table with the values.
	 */
	public DocumentTemplate(String _templatePath, String _outputPath, String _outputName, String _outputFormat, List<TemplateMergeField> _mergeFields, Hashtable<String , Recordset> _tablesNamesAndFieldsHashtable) {
		super();
		this.templatePath = (_templatePath==null)?"":_templatePath;
		this.outputPath = (_outputPath==null)?"":_outputPath;
		this.outputName = (_outputName==null)?"":_outputName;
		this.outputFormat = (_outputFormat==null)?"":_outputFormat;
		if(_mergeFields == null)
		{
			this.mergeFields = List.create(TemplateMergeField.class);
		}else
		{
			this.mergeFields = _mergeFields;
		}

		this.setTablesNamesAndFieldsHashtable(_tablesNamesAndFieldsHashtable);

		this.fileOperationMessage= new FileOperationMessage();
		this.fileOperationMessage.setMessage("");
		this.fileOperationMessage.setFiles(List.create(java.io.File.class));
		this.fileOperationMessage.setType(FileOperationMessage.INFORMATION_MESSAGE);
	}

	/**
	 * Constructor, instantiates the DocumentTemplate's variable
	 * @param _templatePath : the path where to find the template
	 * @param _outputPath : the path where to save the new generated File
	 * @param _outputName : the name of the new generated File
	 * @param _outputFormat : the format of the new generated File
	 * @param _data : An initialised DataClass that contains the informations that should be inserted in the document.<br>
	 * The merge fields of the template have to be the same as the names of the dataClass fields.
	 * The key is the name of the mergeField that can be found in the template<br>
	 * The value is the String that will replace the mergeField in the template during the template merging.
	 */
	public DocumentTemplate(String _templatePath, String _outputPath, String _outputName, String _outputFormat, CompositeObject _data) {
		super();
		this.templatePath = (_templatePath==null)?"":_templatePath;
		this.outputPath = (_outputPath==null)?"":_outputPath;
		this.outputName = (_outputName==null)?"":_outputName;
		this.outputFormat = (_outputFormat==null)?"":_outputFormat;
		if(_data == null)
		{
			this.mergeFields = List.create(TemplateMergeField.class);
		}else
		{
			this.mergeFields =DataClassToMergefields.transformDataClassInMergeField(_data);
		}

		this.fileOperationMessage= new FileOperationMessage();
		this.fileOperationMessage.setMessage("");
		this.fileOperationMessage.setFiles(List.create(java.io.File.class));
		this.fileOperationMessage.setType(FileOperationMessage.INFORMATION_MESSAGE);
	}

	/**
	 * Constructor, instantiates the DocumentTemplate's variable
	 * @param _templatePath : the path where to find the template
	 * @param _outputPath : the path where to save the new generated File
	 * @param _outputName : the name of the new generated File
	 * @param _outputFormat : the format of the new generated File
	 * @param _data : An initialised DataClass that contains the informations that should be inserted in the document.<br>
	 * The merge fields of the template have to be the same as the names of the dataClass fields.
	 * The key is the name of the mergeField that can be found in the template<br>
	 * The value is the String that will replace the mergeField in the template during the template merging.
	 * @param _tablesNamesAndFieldsmap: an HashMap containing the tables name contained in the template as keys and the compositeObjects whose values should be inserted in the corresponding table.
	 * if not null or not empty and if the template contains Merge Regions, the Merge Regions are going to be filled as table with the values.
	 */
	public DocumentTemplate(String _templatePath, String _outputPath, String _outputName, String _outputFormat, CompositeObject _data, HashMap<String , java.util.List<CompositeObject>> _tablesNamesAndFieldsmap) {
		super();
		this.templatePath = (_templatePath==null)?"":_templatePath;
		this.outputPath = (_outputPath==null)?"":_outputPath;
		this.outputName = (_outputName==null)?"":_outputName;
		this.outputFormat = (_outputFormat==null)?"":_outputFormat;
		if(_data == null)
		{
			this.mergeFields = List.create(TemplateMergeField.class);
		}else
		{
			this.mergeFields =DataClassToMergefields.transformDataClassInMergeField(_data);
		}

		this.setTablesNamesAndFieldsmap(_tablesNamesAndFieldsmap);

		this.fileOperationMessage= new FileOperationMessage();
		this.fileOperationMessage.setMessage("");
		this.fileOperationMessage.setFiles(List.create(java.io.File.class));
		this.fileOperationMessage.setType(FileOperationMessage.INFORMATION_MESSAGE);
	}

	/**
	 * Constructor, instantiates the DocumentTemplate's variable
	 * @param _templatePath : the path where to find the template
	 * @param _outputPath : the path where to save the new generated File
	 * @param _outputName : the name of the new generated File
	 * @param _outputFormat : the format of the new generated File
	 * @param _data : An initialised DataClass that contains the informations that should be inserted in the document.<br>
	 * The merge fields of the template have to be the same as the names of the dataClass fields.
	 * The key is the name of the mergeField that can be found in the template<br>
	 * The value is the String that will replace the mergeField in the template during the template merging.
	 * @param _tablesNamesAndFieldsHashtable: a java.util.Hashtable containing the tables name contained in the template as keys and the values should be inserted in the corresponding table as a ch.ivyteam.ivy.scripting.objects.Recordset.<br>
	 * if not null or not empty and if the template contains Merge Regions, the Merge Regions are going to be filled as table with the values.
	 */
	public DocumentTemplate(String _templatePath, String _outputPath, String _outputName, String _outputFormat, CompositeObject _data, Hashtable<String , Recordset> _tablesNamesAndFieldsHashtable) {
		super();
		this.templatePath = (_templatePath==null)?"":_templatePath;
		this.outputPath = (_outputPath==null)?"":_outputPath;
		this.outputName = (_outputName==null)?"":_outputName;
		this.outputFormat = (_outputFormat==null)?"":_outputFormat;
		if(_data == null)
		{
			this.mergeFields = List.create(TemplateMergeField.class);
		}else
		{
			this.mergeFields = DataClassToMergefields.transformDataClassInMergeField(_data);
		}

		this.setTablesNamesAndFieldsHashtable(_tablesNamesAndFieldsHashtable);

		this.fileOperationMessage= new FileOperationMessage();
		this.fileOperationMessage.setMessage("");
		this.fileOperationMessage.setFiles(List.create(java.io.File.class));
		this.fileOperationMessage.setType(FileOperationMessage.INFORMATION_MESSAGE);
	}

	/**
	 * Try to generate the document with his objects variables.
	 * @return the FileOperationMessage that results of the Document Factory mail Merge and File Creation
	 * @see BaseDocFactory#generateDocument(String, String, String, String, java.util.List)
	 */
	public FileOperationMessage generateDocument(){
		if(this.documentFactory==null)
		{//check if the document factory was already instantiated
			this.documentFactory=BaseDocFactory.getInstance();
		}
		if(this.tablesNamesAndFieldsmap!= null && !this.tablesNamesAndFieldsmap.isEmpty())
		{
			this.fileOperationMessage = this.documentFactory.generateDocumentWithRegions(
					this.templatePath, 
					this.outputName, 
					this.outputPath, 
					this.outputFormat, 
					this.mergeFields, 
					this.tablesNamesAndFieldsmap);
		}else if(this.tablesNamesAndFieldsHashtable!=null && !this.tablesNamesAndFieldsHashtable.isEmpty())
		{
			this.fileOperationMessage = this.documentFactory.generateDocumentWithRegions(
					this.templatePath, 
					this.outputName, 
					this.outputPath, 
					this.outputFormat, 
					this.mergeFields, 
					this.tablesNamesAndFieldsHashtable);
		}else{
			this.fileOperationMessage = this.documentFactory.generateDocument(
					this.templatePath, 
					this.outputName, 
					this.outputPath, 
					this.outputFormat, 
					this.mergeFields);
		}
		return this.fileOperationMessage;
	}

	/**
	 * @return the documentFactory
	 */
	public BaseDocFactory getDocumentFactory() {
		return documentFactory;
	}

	/**
	 * @param documentFactory the documentFactory to set
	 */
	public void setDocumentFactory(BaseDocFactory documentFactory) {
		this.documentFactory = documentFactory;
	}

	/**
	 * @return the mergeFields
	 */
	public List<TemplateMergeField> getMergeFields() {
		return mergeFields;
	}

	/**
	 * @param mergeFields the mergeFields to set
	 */
	public void setMergeFields(List<TemplateMergeField> mergeFields) {
		this.mergeFields = mergeFields;
	}

	/**
	 * Set the Dataclass that has to be taken to fill the template's merge fields.
	 * If the data is not null, the merge field List is going to be set with the list of the data parameters. 
	 * @param _data the data to set
	 */
	public void setData(CompositeObject _data) {
		this.data = _data;
		if(_data == null)
		{
			this.mergeFields = List.create(TemplateMergeField.class);
		}else
		{
			this.mergeFields =DataClassToMergefields.transformDataClassInMergeField(_data);
		}
	}

	/**
	 * @return the data
	 */
	public CompositeObject getData() {
		return data;
	}

	/**
	 * @return the outputFormat
	 */
	public String getOutputFormat() {
		return outputFormat;
	}

	/**
	 * @param outputFormat the outputFormat to set
	 */
	public void setOutputFormat(String outputFormat) {
		this.outputFormat = outputFormat;
	}

	/**
	 * @return the outputName
	 */
	public String getOutputName() {
		return outputName;
	}

	/**
	 * @param outputName the outputName to set
	 */
	public void setOutputName(String outputName) {
		this.outputName = outputName;
	}

	/**
	 * @return the outputPath
	 */
	public String getOutputPath() {
		return outputPath;
	}

	/**
	 * @param outputPath the outputPath to set
	 */
	public void setOutputPath(String outputPath) {
		this.outputPath = outputPath;
	}

	/**
	 * @return the templatePath
	 */
	public String getTemplatePath() {
		return templatePath;
	}

	/**
	 * @param templatePath the templatePath to set
	 */
	public void setTemplatePath(String templatePath) {
		this.templatePath = templatePath;
	}

	/**
	 * @return the fileOperationMessage
	 */
	public FileOperationMessage getFileOperationMessage() {
		return fileOperationMessage;
	}
	
	/**
	 * set the FileOperationMessage Object of the DocumentTemplate.<br>
	 * There should be no reason to use this method, since the FileOperationMessage is the result of the generateDocument() method.
	 * @param _fop the fileOperationMessage
	 */
	public void setFileOperationMessage(FileOperationMessage _fop)
	{
		
	}

	/**
	 * set the tableNames/Fields values HashMap Object. It clears also the tableNames/Fields values java.util.Hashtable object, <br>
	 * because we use only one of the two objects for the merge mail with regions.
	 * @param _tablesNamesAndFieldsmap the _tablesNamesAndFieldsmap to set
	 */
	public void setTablesNamesAndFieldsmap(HashMap<String, java.util.List<CompositeObject>> _tablesNamesAndFieldsmap) {
		this.tablesNamesAndFieldsmap = _tablesNamesAndFieldsmap;
		//we clear the hashTable if not null because we only use one of the two possible data Input 
		//for Mail merge with regions.
		if(this.tablesNamesAndFieldsHashtable != null)
		{
			this.tablesNamesAndFieldsHashtable.clear();
		}
	}

	/**
	 * @return the _tablesNamesAndFieldsmap
	 */
	public HashMap<String, java.util.List<CompositeObject>> getTablesNamesAndFieldsmap() {
		return tablesNamesAndFieldsmap;
	}

	/**
	 * set the tableNames/Fields values java.util.Hashtable Object. It clears also the tableNames/Fields values HashMap object, <br>
	 * because we use only one of the two objects for the merge mail with regions.
	 * @param tablesNamesAndFieldsHashtable the tablesNamesAndFieldsHashtable to set
	 */
	public void setTablesNamesAndFieldsHashtable(
			Hashtable<String, Recordset> tablesNamesAndFieldsHashtable) {
		this.tablesNamesAndFieldsHashtable = tablesNamesAndFieldsHashtable;
		//we clear the hashMap if not null because we only use one of the two possible data Input 
		//for Mail merge with regions.
		if(this.tablesNamesAndFieldsmap !=null)
		{
			this.tablesNamesAndFieldsmap.clear();
		}

	}

	/**
	 * @return the tablesNamesAndFieldsHashtable
	 */
	public Hashtable<String, Recordset> getTablesNamesAndFieldsHashtable() {
		return tablesNamesAndFieldsHashtable;
	}



}
