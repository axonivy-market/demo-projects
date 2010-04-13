
package ch.ivyteam.ivy.addons.docfactory;

import ch.ivyteam.ivy.scripting.objects.List;

/**
 * @author ec<br>
 * @since 29.10.2009
 * This class represents a Document Template.<br>
 * It contains all the informations necessary to produce a new Document through Mailmerging.
 */
public class DocumentTemplate {
	
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
	
	/** the document factory used to parse the template and to perform the mailMerging.<br>
	 * @see BaseDocFactory#getInstance()
	 */
	private BaseDocFactory documentFactory=null;
	
	/** The FileOeprationMessage is a convenient Object to get the results of a Mail Merge from a Document Factory Object.<br>
	 * @see ch.ivyteam.ivy.addons.docfactory.FileOperationMessage
	 */
	private FileOperationMessage fileOperationMessage= null;
	
	/**
	 * empty constructor
	 */
	public DocumentTemplate() {
		this("","","","",null);
	}

	/**
	 * Constructor, instanciate the DocumentTemplate's variable
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
	 * Try to generate the document with this objects variables.
	 * @return the FileOperationMessage that results of the Doucment Factory mail Merge and File Creation
	 * @see BaseDocFactory#generateDocument(String, String, String, String, java.util.List)
	 */
	public FileOperationMessage generateDocument(){
		if(this.documentFactory==null)
		{//check if the document factory was already instanciated
			this.documentFactory=BaseDocFactory.getInstance();
		}
		this.fileOperationMessage = this.documentFactory.generateDocument(
				this.templatePath, 
				this.outputName, 
				this.outputPath, 
				this.outputFormat, 
				this.mergeFields);
		
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
	 
	
	
}
