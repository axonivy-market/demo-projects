/**
 * 
 */
package ch.ivyteam.ivy.addons.docfactory;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.scripting.objects.CompositeObject;
import ch.ivyteam.ivy.scripting.objects.Recordset;
import ch.ivyteam.ivy.addons.docfactory.TemplateMergeField;


/**
 * @author ec
 * This is the abstract class that every DocFactory class should subclass<br> 
 * You have the possibility to communicate the results, errors, progress of the documents generation methods<br>
 * to the calling Parent Ivy Rich Dialog through CallBack Methods.<br> 
 * Those methods are indicated in the xxxMethodName variables. Those methods have to be published into
 * the Ivy RD Interface. 
 */
public abstract class BaseDocFactory{
	
	protected String outputPath, outputFormat, basicFileName;
	/** The parent RichDialogPanel of this docFactory, used to communicate with its callback methods */
	protected IRichDialogPanel parentRD;
	/** the list of supported formats. Can be different in your implementation*/
	static final public String[] supportedOutputFormats = new String[] {"doc", "docx", "html", "txt", "pdf"};
	/** Format types for convenient use of switch control*/
	static final public int DOC_FORMAT=0;
	/** */
	static final public int DOCX_FORMAT=1;
	/** */
	static final public int HTML_FORMAT=2;
	/** */
	static final public int TXT_FORMAT=3;
	/** */
	static final public int PDF_FORMAT=4;
	/** the document factory use a document model like an office dot template to generate serial letters.<br>
	 * This is the template java.io.File Object to be used for this operation.
	 */
	protected File template;
	/** 
	 * This Object is used to gives the RD Panel the result of the documents generation operation.<br>
	 * This FileOperationMessage contains a type indicating if the operation was successful or not, and a List of generated Files.<br>
	 * @see ch.ivyteam.ivy.addons.docfactory.FileOperationMessage
	 */
	protected FileOperationMessage FileOperationMessage;
	/** These are the callback methods names that allow communicating with the Ivy Rich Dialog.<br>
	 * The errorMethod should accept a FileOperationMessage as incoming parameter.<br>
	 * The successMethod should accept a FileOperationMessage as incoming parameter.<br>
	 * The progressMethod should accept a Number as incoming parameter.
	 * */
	protected String errorMethodName, successMethodName, progressMethodName;

	/**
	 * Empty constructor
	 *
	 */
	public BaseDocFactory(){
		this(null,"","","");
	}
	
	/**
	 * Constructor with a reference to the calling RDC panel, and callback methods names.
	 * @param parent IRichDialogPanel the calling RDC Panel
	 * @param errorMethodName : the String name of the Callback method used for returning errors
	 * @param successMethodName : the String name of the Callback method used for returning success
	 * @param progressMethodName : the String name of the Callback method used for showing progress
	 */
	public BaseDocFactory(IRichDialogPanel parent, String errorMethodName, String successMethodName, String progressMethodName){
		this.parentRD=parent;
		this.outputFormat=supportedOutputFormats[0];
		this.errorMethodName=errorMethodName;
		this.successMethodName=successMethodName;
		this.progressMethodName=progressMethodName;
		this.outputPath="defaultDirectory";
		this.basicFileName="defaultFileName";
		this.template=null;
	}
	
	/**
	 * Method to generate a blank document
	 * @param _outputName : name of the output File
	 * @param _outputPath : where to save the new generated File on the server
	 * @param _outputFormat : format ".doc", ".docx", ".pdf", or ".html"
	 *@return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and <br>
	 *  the java.io.File generated in case of success, else null.<br>
	 */
	public abstract FileOperationMessage generateBlankDocument(String _outputName, String _outputPath, String _outputFormat);
	
	/**
	 * Method to generate one document
	 * @param path : where to save the new generated File on the server
	 * @param format : format ".doc", ".docx", ".pdf", or ".html" 
	 * @param list : List of parameters (TemplateMergeField objects).
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and <br>
	 *  the java.io.File generated in case of success added to the file list, else an empty file List.<br>
	 
	public abstract FileOperationMessage generateDocument(String path, String format, List<TemplateMergeField> list);
	
	
	 * Method to generate one document
	 * @param the name of the File that will be generated
	 * @param path : where to save the new generated File on the server
	 * @param format : format ".doc", ".docx", ".pdf", or ".html" 
	 * @param list : List of parameters (TemplateMergeField objects).
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and <br>
	 *  the java.io.File generated in case of success, else null.<br>
	 
	public abstract FileOperationMessage generateDocument(String fileName, String path, String format, List<TemplateMergeField> list);
	*/
	
	/**
	 * Method to generate one document
	 * @param templatePath the template path taht is used as document's model for the fields merging.
	 * @param fileName the name of the File that will be generated
	 * @param _outputpath : where to save the new generated File on the server
	 * @param _outputformat : format ".doc", ".docx", ".pdf", or ".html" 
	 * @param list : List of parameters (TemplateMergeField objects).
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and <br>
	 *  the java.io.File generated in case of success, else null.<br>
	 */
	public abstract FileOperationMessage generateDocument(String templatePath, String fileName, String _outputpath, String _outputformat, List<TemplateMergeField> list);
	
	/**
	 * Method to generate one document
	 * @param _documentTemplate the DocumentTemplate Object containing all the necessary variables for this operation<br>
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and <br>
	 *  the java.io.File generated in case of success, else null.<br>
	 *  @see DocumentTemplate
	 */
	public abstract FileOperationMessage generateDocument(DocumentTemplate _documentTemplate);
	
	/**
	 * Method to generate one document
	 * @param list : List of parameters (TemplateMergeField objects).
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and <br>
	 *  the java.io.File generated in case of success, else null.<br>
	
	public abstract FileOperationMessage generateDocument(List<TemplateMergeField> list);
	 */
	
	/**
	 * Method to generate a String in TXT.
	 * @param templatePath : where to find the template
	 * @param list : List of parameters (TemplateMergeField objects).
	 * @return the TXT String generated.
	 */
	public abstract String generateTxt(String templatePath, List<TemplateMergeField>  list);
	
	/**
	 * Method to generate a String in HTML format.
	 * @param templatePath : where to find the template
	 * @param list : List of parameters (TemplateMergeField objects).
	 * @return the HTML String generated.
	 */
	public abstract String generateHTML(String templatePath, List<TemplateMergeField> list);
	
	/**
	 * Method to generate a list from Files that can be used for HTML representation.<br>
	 * This this typical if you use a template with Objects like Images in it.<br>
	 * During the html File Generation, each image will be saved into a jpg or gif File.<br>
	 * If you want to correctly get all the Files involved into the HTML rendering, you have to get the list of images also.
	 * @param templatePath : where to find the template
	 * @param list : List of parameters (TemplateMergeField objects).
	 * @return the HTML and media Files that were generated to represent an HTML page.
	 */
	public abstract ArrayList<java.io.File> generateFilesForHTML(String templatePath, List<TemplateMergeField> list);
	
	/**
	 * Method to generate one or more documents<br>
	 * with a list of DocumentTemplates Objects containing all the necessary variables for this operation.<br>
	 * Here each of the DocumentTemplate will generate a single File.<br>
	 * @param list : List of DocumentTemplates. <br>
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and null File Object<br>
	 *  @see DocumentTemplate
	 */
	public abstract FileOperationMessage generateDocuments(List<DocumentTemplate> list);
	
	/**
	 * Method to generate one or more documents in the same destination folder<br>
	 * By convention, the name of each File is given by the first TemplateMergeField, which key name must be "filename".
	 * @param templatePath : where to find the template
	 * @param _outputPath : where to save the new generated File on the server
	 * @param _outputFormat : format ".doc", ".docx", ".pdf", ".txt" or ".html" 
	 * @param list : List of List of parameters (TemplateMergeField objects). <br>
	 * Each List of TemplateMergeField objects in the primary List will be turned into a new document.
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and null File Object<br>
	 */
	public abstract FileOperationMessage generateDocuments(String templatePath, String _outputPath, String _outputFormat, List<List<TemplateMergeField>> list);
	
	/**
	 * Method to generate one or more documents each one can be saved in a different destination folder.<br>
	 * By convention, the name of each File is given by the first TemplateMergeField, which key name must be "filename".<br>
	 * By convention, the name of each destination folder is given by the second TemplateMergeField, which key name must be "destinationPath".<br>
	 * @param templatePath : where to save the new generated File on the server
	 * @param _outputFormat : format ".doc", ".docx", ".pdf", ".txt" or ".html"  
	 * @param list : List of List of parameters (TemplateMergeField objects). <br>
	 * Each List of TemplateMergeField objects in the primary List will be turned into a new document.
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and null File Object<br>
	 */
	public abstract FileOperationMessage generateDocumentsWithDifferentDestination(String templatePath, String _outputFormat, List<List<TemplateMergeField>> list);
	
	
	/**
	 * Method to generate one document with merge mail. Mail Merge with regions supported.<br>
	 * @param _templatePath: the template path that is used as document's model for the fields merging.
	 * @param _outoutName: optional String for the name of the created document
	 * @param _outputPath: optional String for the destination folder path
	 * @param _outputFormat: format ".doc", ".docx", ".pdf", ".txt" or ".html" 
	 * @param _mergefields: a List of ch.ivyteam.ivy.addons.docfactory.TemplateMergeField Objects for "normal" mail merge.
	 * @param _tablesNamesAndFieldsmap: HashMap<String, List<CompositeObject>> HashMap containing the tables names (merge regions) from the template an the Lists of dataClasses Objects to feed the tables. 
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and null File Object<br>
	 */
	public abstract FileOperationMessage generateDocumentWithRegions(String _templatePath, String _outputName, String _outputPath, String _outputFormat, List<TemplateMergeField> _mergefields, HashMap<String, List<CompositeObject>> _tablesNamesAndFieldsmap);
	
	/**
	 * Method to generate one document with merge mail. Mail Merge with regions supported.<br>
	 * @param _templatePath: the template path that is used as document's model for the fields merging.
	 * @param _outoutName: optional String for the name of the created document
	 * @param _outputPath: optional String for the destination folder path
	 * @param _outputFormat: format ".doc", ".docx", ".pdf", ".txt" or ".html" 
	 * @param _mergefields: a List of ch.ivyteam.ivy.addons.docfactory.TemplateMergeField Objects for "normal" mail merge.
	 * @param _hashtable: Hashtable<String, Recordset> each String is the table Name in  the template with its corresponding Recordset to feed the table. <br>
	 * Each recordset column name should correspond to a merge region field name in its corresponding table.
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and null File Object<br>
	 */
	public abstract FileOperationMessage generateDocumentWithRegions(String _templatePath, String _outputName, String _outputPath, String _outputFormat, List<TemplateMergeField> _mergefields, Hashtable<String, Recordset> _hashtable);
	
	/**
	 * Method to generate one document with merge mail. Mail Merge with regions supported.<br>
	 * @param _templatePath: the template path that is used as document's model for the fields merging.
	 * @param _outoutName: optional String for the name of the created document
	 * @param _outputPath: optional String for the destination folder path
	 * @param _outputFormat: format ".doc", ".docx", ".pdf", ".txt" or ".html" 
	 * @param _mergefields: a List of ch.ivyteam.ivy.addons.docfactory.TemplateMergeField Objects for "normal" mail merge.
	 * @param _tablesNames: list of String representing the table names in the template
	 * @param _tables_fieldsNames: for each table a list of String representing each merge field with region name (column name)
	 * @param tables_rowsValues: for each table a list of list of values (list of rows) to feed the corresponding table.
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and null File Object<br>
	 */
	public abstract FileOperationMessage generateDocumentWithRegions(String _templatePath, String _outputName, String _outputPath, String _outputFormat, List<TemplateMergeField> _mergefields, List<String> _tablesNames, List<List<String>> _tables_fieldsNames, List<List<List<Object>>> tables_rowsValues);
	
	/**
	 * Method to generate one or more documents each one can be saved in a different destination folder.<br>
	 * Each DocumentTemplate Object represents a letter that should be generated. It contains the fileName, its format, path,
	 * and all the TemplateMergefields.
	 * @param list : List of List of DocumentTemplate. <br>
	 * Each List of TemplateMergeField objects in the primary List will be turned into a new document.
	 * @return The List of FileOperationMessage objects (one for each DocumentTemplate) containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and File Object<br>
	 *  @see DocumentTemplate
	 */
	public abstract List<FileOperationMessage> generateDocumentsWithDifferentDestination(List<DocumentTemplate> list);
	
	/**
	 * Method to generate multiple documents appended in one File
	 * @param _outputName: the name of the new created letter if null or empty, we try to get the first<br>
	 * MergeField form the first element in the List. If it has the Key name "filename", we take it, else we take "serialLetter".
	 * @param _outputPath : where to save the new generated File on the server
	 * @param _outputFormat : format ".doc", ".docx", ".pdf", or ".html" 
	 * @param list : List of List of parameters (TemplateMergeField objects). <br>
	 * Each List of TemplateMergeField objects in the primary List will be turned into a new page in the final File.
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and <br>
	 *  the java.io.File generated in case of success, else null.<br> 
	 
	public abstract FileOperationMessage generateMultipleDocumentsInOne(String _outputName, String _outputPath, String _outputFormat,List<List<TemplateMergeField>> list);
	*/
	
	/**
	 * Method to generate multiple documents appended in one File
	 * @param templatePath : the path leading to the template (document model) used to produce the letters with mail merging
	 * @param _outputName : the name of the generated java.io.File
	 * @param _outputPath : where to save the new generated File on the server
	 * @param _outputFormat : format ".doc", ".docx", ".pdf", or ".html" 
	 * @param list : List of List of parameters (TemplateMergeField objects). <br>
	 * Each List of TemplateMergeField objects in the primary List will be turned into a new page in the final File.
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and <br>
	 *  the java.io.File generated in case of success, else null.<br> 
	 */
	public abstract FileOperationMessage generateMultipleDocumentsInOne(String templatePath, String _outputName, String _outputPath, String _outputFormat,List<List<TemplateMergeField>> list);
	
	/**
	 * Method to generate multiple documents appended in one File<br>
	 * Here the template path has to be indicated into the documentTemplate objects
	 * @param _outputPath : where to save the new generated File on the server (can have a default like "ivy_RIA_files")
	 * @param _outputName : the desired Name for the document (can have a default like "letter_nanotime")
	 * @param _outputFormat : format ".doc" (can be the default), ".docx", ....
	 * @param list : List DocumentTemplate Objects. Each one contains the necessary variables for its output. 
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and <br>
	 *  the java.io.File generated in case of success, else null.<br> 
	 * @see DocumentTemplate
	 */
	public abstract FileOperationMessage generateMultipleDocumentsInOne(String _outputPath, String _outputName, String _outputFormat,List<DocumentTemplate> list);
	
	/**
	 * returns the list of the Merge Fields names in a template
	 * @param templatePath : the path to the template File
	 * @return the list of the Fields Name in the Template
	 */
	public abstract ArrayList<String> getTemplateFields(String templatePath);
	
	/**
	 * get the Class Object of the current BaseDocFactory implementation Class
	 * @return the class Object of the current BaseDocFactory implementation Class
	 */
	public abstract Class<?> getFactoryClass();
	
	/**
	 * This method should check if the format denoted by the String param is supported by your document Factory
	 * @param _format
	 * @return true if the given format is supported, else false
	 */
	public abstract boolean isFormatSupported(String _format);
	
	/**
	 * set the output path where the generated Files should be saved
	 * @param outputPath
	 */
	public void setOutputPath(String outputPath){
		this.outputPath=outputPath;
	}
	/**
	 * Get the outputPath where the generated Files are saved
	 * @return the outputPath
	 */
	public String getOutputPath(){
		return this.outputPath;
	}
	/**
	 * get a reference to the calling parent RD.
	 * @return the parent Rich Dialog
	 */
	public IRichDialogPanel getParentRD(){
		return this.parentRD;
	}
	/**
	 * set the desired Format
	 * @param format : the string representatiion of the desired outputFormat
	 */
	public void setFormat(String format){
		if(format.startsWith(".")) format = format.substring(1);
		this.outputFormat=format;
	}
	/**
	 * get the outputFormat as String
	 * @return The outputFormat
	 */
	public String getFormat(){
		return this.outputFormat;
	}
	/**
	 * Set the parent reich dialog that uses this BaseDocFactory Object
	 * @param Rd
	 */
	public void setParentRD(IRichDialogPanel Rd){
		this.parentRD=Rd;
	}
	/**
	 * get the supported file output formats
	 * @return an array of Strings representing the supported formats
	 */
	public static String[] getSupportedFormats(){
		return supportedOutputFormats;
	}
	
	
	/**
	 * get the basic File name that is going to be used to name the generated documents
	 * @return the basic filename used to generate multiple documents. If null or blank, the name of the file should be given as parameter
	 */
	public String getBasicFileName() {
		return basicFileName;
	}
	
	/**
	 * set the basicfilename used to generate multiple documents. If null or blank, the name of the file should be given as parameter
	 * @param basicFileName 
	 */
	public void setBasicFileName(String basicFileName) {
		this.basicFileName = basicFileName;
	}
	/**
	 * get the template that is used currenty for document generation
	 * @return the template as java.io.File
	 */
	public File getTemplate() {
		return template;
	}
	/**
	 * Set the template File to be used for the documents generation
	 * @param template java.io.File
	 */
	public void setTemplate(File template) {
		this.template = template;
	}
	
	/**
	 * get the error callback method name
	 * @return the error callback method name
	 */
	public String getErrorMethodName() {
		return errorMethodName;
	}
	/**
	 * set the error callback method name
	 * @param errorMethodName the error callback method name (String)
	 */
	public void setErrorMethodName(String errorMethodName) {
		this.errorMethodName = errorMethodName;
	}
	/**
	 * get the progress callback method name
	 * @return the progress callback method name
	 */
	public String getProgressMethodName() {
		return progressMethodName;
	}
	
	/**
	 * set the progress callback method name
	 * @param progressMethodName the progress callback method name
	 */
	public void setProgressMethodName(String progressMethodName) {
		this.progressMethodName = progressMethodName;
	}
	
	/**
	 * Returns the success callback method name
	 * @return the succes callback method name
	 */
	public String getSuccessMethodName() {
		return successMethodName;
	}

	/**
	 * set the succes callback method name
	 * @param successMethodName
	 */
	public void setSuccessMethodName(String successMethodName) {
		this.successMethodName = successMethodName;
	}

	
	/**
	 * This method allows getting an instance of the actual document factory that is implemented.
	 * If a System propertie "document.factory" is set, then it will try to return a new Instance of this factory object.<br>
	 * This system propertie must contain the full namespace of the document factory class.
	 * @return an Instance of the implemented Document Factory
	 */
	public static BaseDocFactory getInstance(){
		BaseDocFactory basedoc=null;
		try {
			if(System.getProperty("document.factory")!=null && !System.getProperty("document.factory").trim().equals("")){
				//Ivy.log().info("With System Property");
				basedoc=(BaseDocFactory) Class.forName(
						System.getProperty("document.factory")).newInstance();
			}else{
				//Ivy.log().info("With System AsposeDocFactory");
				basedoc= (BaseDocFactory) Class.forName("ch.ivyteam.ivy.addons.docfactory.AsposeDocFactory").newInstance();
			}
		} catch (ClassNotFoundException e) {
			Ivy.log().debug(e.getMessage());
			e.printStackTrace();
		} catch (InstantiationException e) {
			Ivy.log().debug(e.getMessage());
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			Ivy.log().debug(e.getMessage());
			e.printStackTrace();
		} catch (NullPointerException e){
			Ivy.log().debug("debug "+e);
			e.printStackTrace();
		}
		return basedoc;
	}
}
