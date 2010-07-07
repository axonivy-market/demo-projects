package ch.ivyteam.ivy.addons.docfactory;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import ch.ivyteam.ivy.ThirdPartyLicenses;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.richdialog.exec.panel.IRichDialogPanel;
import ch.ivyteam.ivy.addons.docfactory.TemplateMergeField;
import ch.ivyteam.ivy.addons.util.RDCallbackMethodHandler;
import ch.ivyteam.ivy.addons.docfactory.BaseDocFactory;

//import com.aspose.pdf.elements.Pdf;
import com.aspose.words.Document;
import com.aspose.words.ImportFormatMode;
import com.aspose.words.MergeImageFieldEventArgs;
import com.aspose.words.MergeImageFieldEventHandler;
import com.aspose.words.Node;
import com.aspose.words.SaveFormat;
import com.aspose.words.Section;
import com.aspose.words.SectionStart;


/**
 * @author ec<br>
 * @since 01.01.2009 in SharedResources. In IvyAddons since 01.11.2009
 * This the implementation of the BaseDocFactory class that uses the Aspose proprietary API.<br>
 * http://www.aspose.com<br>
 * You have the possibility to communicate the resultsand errors of the documents generation methods<br>
 * to the calling Parent Ivy Rich Dialog through CallBack Methods.<br> 
 * Those methods are indicated in the xxxMethodName variables. Those methods have to be published into
 * the Ivy RD Interface.  
 * @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#errorMethodName
 * @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#successMethodName
 * 
 */
@SuppressWarnings("restriction")
public class AsposeDocFactory extends BaseDocFactory{

	/** The supportedFormat in this implementation of the BaseDocFactory */
	static final public String[] supportedOutputFormats = new String[] {"doc", "docx", "html", "txt"};

	/** Aspose.Word Document objects used to perform the document merge (letter generation with MergeFields)*/
	private Document doc, docDest;

	/** 
	 * This Object is used to gives the RD Panel the result of the documents generation operation.<br>
	 * This FileOperationMessage contains a type indicating if the operation was successful or not, and a List of generated Files.<br>
	 * @see ch.ivyteam.ivy.addons.util.FileOperationMessage
	 */
	private FileOperationMessage fileOperationMessage;

	/** Aspose Licence*/
	private com.aspose.words.License license = null;

	/** String used to stored the fileName used to generate a document */
	String outputName;

	/**
	 * Constructor
	 *
	 */
	public AsposeDocFactory(){
		super();
		license = new com.aspose.words.License();
		try {
			InputStream in = ThirdPartyLicenses.getDocumentFactoryLicense();
			license.setLicense(in);
			in.close();
		} catch (Exception e) {
			Ivy.log().error("Aspose Words Licence error "+e);
		}catch (Throwable t) {
			Ivy.log().error("Aspose Words Licence error "+t);
		}

	}

	/**
	 * Constructor with the following parameters:
	 * @param parent : the IRichDialogPanel from the RIA where this docFactory is used. Usefull to communicate through callback methods.
	 * @param errorMethod @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#errorMethodName
	 * @param successMethod @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#successMethodName
	 * @param progressMethod @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#progressMethodName
	 */
	@SuppressWarnings("static-access")
	public AsposeDocFactory(IRichDialogPanel parent, String errorMethod, String successMethod, String progressMethod){
		super(parent, errorMethod, successMethod, progressMethod);
		license = new com.aspose.words.License();
		try {
			InputStream in = ThirdPartyLicenses.getDocumentFactoryLicense();
			license.setLicense(in);
			in.close();

		} catch (Exception e) {
			Ivy.log().error("Aspose Words Licence error "+e);
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(e.getMessage());
			this.fileOperationMessage.emptyFileList();
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });
		}
	}

	/**
	 * generate a blank document. For test purpose.
	 * The generated document will be empty, will have the given String name, will be created in the 
	 * given String path and in the given format.
	 * @return a FileOperationMessage Object
	 * @see ch.ivyteam.ivy.addons.util.FileOperationMessage
	 * @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#generateBlankDocument(java.lang.String, java.lang.String, java.lang.String)
	 */
	@SuppressWarnings({"static-access" })
	@Override
	public FileOperationMessage generateBlankDocument(String _outputName, String _outputPath, String _outputFormat) {

		File file=null;
		this.fileOperationMessage=new FileOperationMessage();
		//we check if the given file name is valid
		if(!FileUtil.isFileNameValid(_outputName))
		{
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/invalidFileName"));
			this.fileOperationMessage.emptyFileList();
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });
		}
		this.setBasicFileName(_outputName);

		if(_outputPath == null || _outputPath.trim().equalsIgnoreCase(""))
		{
			this.setOutputPath(FileUtil.formatPathWithEndSeparator("ivy_RIA_files"));
		}else{
			this.setOutputPath(FileUtil.formatPathWithEndSeparator(_outputPath));
		}

		this.setFormat(_outputFormat);
		boolean b=true;
		try {
			doc = new Document();
			switch(getFormatPosition(_outputFormat)){
			case DOC_FORMAT:
				doc.save(this.outputPath+this.outputName+".doc", SaveFormat.DOC);
				file=new File(this.outputPath+this.outputName+".doc");
				break;
			case DOCX_FORMAT:
				doc.save(this.outputPath+this.outputName+".docx", SaveFormat.DOCX);
				file=new File(this.outputPath+this.outputName+".docx");
				break;
				/*Commented because we don't have bought the PDF API
				case PDF_FORMAT:
					doc.save(this.outputPath+this.basicFileName+".html", SaveFormat.HTML);
					file=new File(this.outputPath+this.basicFileName+".html");
					Pdf pdf = new Pdf();
					pdf.bindHTML(new FileInputStream(file), file.toURL());
					pdf.save(new FileOutputStream(new File(this.outputPath+this.basicFileName+".pdf")));
					file=new File(this.outputPath+this.basicFileName+".pdf");
					break;
				 */
			case HTML_FORMAT:
				doc.save(this.outputPath+this.outputName+".html", SaveFormat.HTML);
				file=new File(this.outputPath+this.outputName+".html");
				break;
			case TXT_FORMAT:
				doc.save(this.outputPath+this.outputName+".txt", SaveFormat.TEXT);
				file=new File(this.outputPath+this.outputName+".txt");
				break;
			default:
				b=false;
				this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
				this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/formatNotSupported")+" \n"+_outputFormat);
				this.fileOperationMessage.emptyFileList();
				RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });
			}
			if(b && file !=null) 
			{// the file generation was a success
				this.fileOperationMessage.setType(FileOperationMessage.SUCCESS_MESSAGE);
				this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/serialLetterSuccess")+" \n"+file.getName());
				this.fileOperationMessage.addFile(file);
			}
		} catch (Exception e) {
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(e.getMessage());
			this.fileOperationMessage.emptyFileList();
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });	
		}
		return fileOperationMessage;
	}



	/** 
	 * Method to generate one document
	 * @param _documentTemplate the DocumentTemplate Object containing all the necessary variables for this operation<br>
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and <br>
	 *  the java.io.File generated in case of success, else null.<br>
	 *  @see DocumentTemplate
	 * @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#generateDocument(ch.ivyteam.ivy.addons.docfactory.DocumentTemplate)
	 */
	@Override
	public FileOperationMessage generateDocument(DocumentTemplate _documentTemplate) {
		if(_documentTemplate != null)
		{ //The DocumentTemplate is not null
			return generateDocument(_documentTemplate.getTemplatePath(),
					_documentTemplate.getOutputName(),
					_documentTemplate.getOutputPath(),
					_documentTemplate.getOutputFormat(),
					_documentTemplate.getMergeFields());
		}else
		{//will return a FileOperationMessage with an Error
			return generateDocument(null, null, null, null, null);
		}
	}

	/**
	 * Generates a document. The File generated will have the given name, will be at the given _outputpath, in the given format,<br>
	 *  and with the help from the List of Mergefields.<br>
	 *  The templatePath of the document model is also given as parameter.<br>
	 *  If the templatePath is null or an empty String, the current one (previously setted by setTemplate(String), will be taken.<br>
	 *  If the filename is null or an empty String we look if the first mergeField contains the filename, <br>
	 *  if not by default the filename will be "serialLetter_System.nanoTime()".<br>
	 *  @return the fileOperationMessage resulting of this operation. If its type is SUCCESS_MESSAGE, than the File was generated.<br>
	 * @see ch.ivyteam.ivy.addons.util.FileOperationMessage
	 * @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#setTemplate(File)
	 * @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#generateDocument(String, String, String, String, List)
	 */
	@SuppressWarnings("static-access")
	@Override
	public FileOperationMessage generateDocument(String templatePath, String _outputName, String _outputPath, String _format, List<TemplateMergeField> list) {
		//reset the fileOperatiionMessage
		this.fileOperationMessage=new FileOperationMessage();

		if(templatePath!=null && !templatePath.trim().equalsIgnoreCase(""))
		{// if the template path param is valid
			this.template = new java.io.File(FileUtil.formatPath(templatePath));
		}else
		{
			this.setTemplate(null);
		}

		if(_outputPath==null || _outputPath.trim().equalsIgnoreCase(""))
		{
			this.outputPath=FileUtil.formatPathWithEndSeparator("ivy_RIA_files");
		}
		else
		{
			this.setOutputPath(FileUtil.formatPathWithEndSeparator(_outputPath));
		}

		if(!doCheckBeforeDocGeneration(_format, list))
		{// if the format or the list of MergeFields or the Template are not valid
			//we return the FileOperationMessage generated by doCheckBeforeDocGeneration(_format, list)
			return this.fileOperationMessage;
		}

		ArrayList<TemplateMergeField> templateParamslist =new ArrayList<TemplateMergeField>();
		templateParamslist.addAll(list);

		if(_outputName==null || _outputName.trim().equalsIgnoreCase(""))
		{//if the filename was not indicated, we look if the first mergeField Object could contain the fileName
			if(templateParamslist.get(0).getMergeFieldName().trim().equalsIgnoreCase("filename"))
			{// it contains the file name
				this.outputName=templateParamslist.get(0).getMergeFieldValue().trim();
			}
			else
			{// no file Name indicated, we have to take a default one
				this.outputName="serialLetter_"+System.nanoTime();
			}
		}else{

			this.outputName=_outputName;
		}

		if(!FileUtil.isFileNameValid(_outputName))
		{// if the filename contains invalid characters
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.emptyFileList();
			this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/invalidFileName"));
			return this.fileOperationMessage;
		}

		this.fileOperationMessage.setType(FileOperationMessage.SUCCESS_MESSAGE);
		this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/serialLetterSuccess"));
		this.setFormat(_format);

		try {
			File file = this.doMailMerge(templateParamslist);
			this.fileOperationMessage.addFile(file);

		} catch (Exception e) {
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(e.getMessage());
			this.fileOperationMessage.emptyFileList();
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });
		}

		return fileOperationMessage;
	}


	/**
	 * Method to generate a String in TXT.
	 * @param templatePath : where to find the template
	 * @param list : List of parameters (TemplateMergeField objects).
	 * @return the TXT String generated.
	 */
	@Override
	@SuppressWarnings({"static-access" })
	public String generateTxt(String templatePath, List<TemplateMergeField> list){
		String emailText ="";
		this.template = new java.io.File(FileUtil.formatPath(templatePath));
		String [] paramName= new String[list.size()];
		String [] paramValue= new String[list.size()];
		for(int i=0; i<list.size();i++){
			String s= list.get(i).getMergeFieldName();
			if(s.startsWith("Image:") || s.startsWith("Image_"))
			{//The mergefield name indicates an Image, we take only the second part of the name
				paramName[i]=s.substring(6);
			}
			else
			{//The mergefield is a text field
				paramName[i]=s;
			}
			
			paramValue[i]=list.get(i).getMergeFieldValue();
		}
		try {
			doc = new Document(templatePath);
			//Set up the event handler for image fields and perform mail merge.
		    doc.getMailMerge().addMergeImageFieldEventHandler(new HandleMergeImageField());
		    
			doc.getMailMerge().execute(paramName,paramValue);
			doc.getMailMerge().setRemoveEmptyParagraphs(true);
			emailText = doc.toTxt();
		} catch (Exception e) {
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(e.getMessage());
			this.fileOperationMessage.addFile(null);
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });	
		}
		return emailText;
	}

	/**
	 * Method to generate a String in HTML format.
	 * @param templatePath : where to find the template
	 * @param list : List of parameters (TemplateMergeField objects).
	 * @return the HTML String generated.
	 */
	@SuppressWarnings({ "static-access" })
	@Override
	public String generateHTML(String templatePath, List<TemplateMergeField> list) {
		String emailText ="";
		if(this.outputPath==null || this.outputPath.trim().equalsIgnoreCase(""))
		{//set the outputPath if not yet done.
			this.outputPath="ivy_RIA_files";
		}
		this.outputPath = FileUtil.formatPathWithEndSeparator(this.outputPath);
		this.template = new java.io.File(FileUtil.formatPath(templatePath));

		String [] paramName= new String[list.size()];
		String [] paramValue= new String[list.size()];
		for(int i=0; i<list.size();i++){
			String s= list.get(i).getMergeFieldName();
			if(s.startsWith("Image:") || s.startsWith("Image_"))
			{//The mergefield name indicates an Image, we take only the second part of the name
				paramName[i]=s.substring(6);
			}
			else
			{//The mergefield is a text field
				paramName[i]=s;
			}
			paramValue[i]=list.get(i).getMergeFieldValue();
		}
		try {
			String randomPart= new Long(System.nanoTime()).toString();
			String s = this.outputPath+"tmpHTML_" + randomPart+".html";
			doc = new Document(templatePath);
			//Set up the event handler for image fields and perform mail merge.
		    doc.getMailMerge().addMergeImageFieldEventHandler(new HandleMergeImageField());
		    
			doc.getMailMerge().execute(paramName,paramValue);
			doc.getMailMerge().setRemoveEmptyParagraphs(true);
			doc.save(s, SaveFormat.HTML);

			StringBuffer fileData = new StringBuffer();
			BufferedReader reader = new BufferedReader(
					new FileReader(s));
			char[] buf = new char[1024];
			int numRead=0;
			while((numRead=reader.read(buf)) != -1){
				fileData.append(buf, 0, numRead);
			}
			reader.close();
			emailText =fileData.toString();

			//FileOperationMessage.deleteFile(s);
		} catch (Exception e) {
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(e.getMessage());
			this.fileOperationMessage.addFile(null);
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });	
		}
		return emailText;
	}


	/**
	 * Method to generate a list of Files that can be used for HTML representation.<br>
	 * This this typical if you use a template with Objects like Images in it.<br>
	 * During the html File Generation, each image will be saved into a jpg File.<br>
	 * If you want to get correctly all the Files involved into the HTML rendering, you have to get the list of images also.
	 * @param templatePath : where to find the template
	 * @param list : List of parameters (TemplateMergeField objects).
	 * @return the HTML and media Files that were generated to represent the HTML page.
	 */
	@SuppressWarnings({ "static-access" })
	@Override
	public ArrayList<java.io.File> generateFilesForHTML(String templatePath, List<TemplateMergeField> list) {
		ArrayList<java.io.File> HTMLfiles=new ArrayList<java.io.File>();
		this.outputName="tmpHTML_"+ new Long(System.nanoTime()).toString();
		if(this.outputPath==null | this.outputPath.trim().equalsIgnoreCase(""))
		{
			this.outputPath="ivy_RIA_files";
		}
		this.outputPath = FileUtil.formatPathWithEndSeparator(this.outputPath);

		if(list.get(0).getMergeFieldName().trim().equalsIgnoreCase("filename"))
		{
			this.outputName=list.get(0).getMergeFieldValue().trim();
		}

		String [] paramName= new String[list.size()];
		String [] paramValue= new String[list.size()];
		for(int i=0; i<list.size();i++){
			String s= list.get(i).getMergeFieldName();
			if(s.startsWith("Image:") || s.startsWith("Image_"))
			{//The mergefield name indicates an Image, we take only the second part of the name
				paramName[i]=s.substring(6);
			}
			else
			{//The mergefield is a text field
				paramName[i]=s;
			}
			paramValue[i]=list.get(i).getMergeFieldValue();
		}
		try {
			String s = this.outputPath+this.outputName+".html";
			doc = new Document(templatePath);
			//Set up the event handler for image fields and perform mail merge.
		    doc.getMailMerge().addMergeImageFieldEventHandler(new HandleMergeImageField());
		    
			doc.getMailMerge().execute(paramName,paramValue);
			doc.getMailMerge().setRemoveEmptyParagraphs(true);
			doc.save(s, SaveFormat.HTML);
			HTMLfiles.add(new java.io.File(s));
			HTMLfiles.addAll(FileUtil.getFilesWithPattern("\\.[0-9].*$", this.outputName, this.outputPath));
		} catch (Exception e) {
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(e.getMessage());
			this.fileOperationMessage.addFile(null);
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });	
		}
		return HTMLfiles;
	}


	/**
	 * Generate Documents with a List of DocumentTemplate objects.<br>
	 * Here each of the DocumentTemplate will generate a single File.<br>
	 * Each single DocumentTemplate can have its own format, path, template...
	 * @param list of DocumentTemplate: List<DocumentTemplate> list
	 * @return a FileOperationMessage. This object contains the type of Message (SUCCESS, ERROR), the message, <br>
	 * and the List of generated Files. If a DocumentTemplate didn't contain valid parameters, its output File will be null. <br>
	 * If you want to have an exact trace of the operation's result for each DocumentTemplate, <br>
	 * use the generateDocumentsWithDifferentDestination(List<DocumentTemplate> list) method instead. This method returns a FileOperationMessage for each DocumentTemplate.
	 * @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#generateDocuments(java.util.List)
	 * @see #generateDocuments(String, String, String, List)
	 */
	@SuppressWarnings("static-access")
	@Override
	public FileOperationMessage generateDocuments(List<DocumentTemplate> list) {
		FileOperationMessage fom = new FileOperationMessage();
		if(list==null || list.isEmpty())
		{//list null or empty => we return an ERROR
			fom.setType(FileOperationMessage.ERROR_MESSAGE);
			fom.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/EmptyMergeFields"));
			fom.emptyFileList();
		}
		else
		{ // we go through the list of Documentemplate Objects and make a new File with each of them
			Iterator<DocumentTemplate> iter = list.iterator();
			ArrayList<java.io.File> files = new ArrayList<java.io.File>();
			while(iter.hasNext())
			{
				try {
					DocumentTemplate dt = iter.next();
					Document _doc = this.doMailMerge(dt);
					String s = FileUtil.formatPathWithEndSeparator(dt.getOutputPath())+dt.getOutputName();
					java.io.File file = null;
					switch(getFormatPosition(dt.getOutputFormat())){
					case DOC_FORMAT:
						_doc.save(s+".doc", SaveFormat.DOC);
						file=new File(s+".doc");
						break;
					case DOCX_FORMAT:
						_doc.save(s+".docx", SaveFormat.DOCX);
						file=new File(s+".docx");
						break;
						/*
					case PDF_FORMAT:
						doc.save(s+".html", SaveFormat.HTML);
						file=new File(s+".html");
						Pdf pdf = new Pdf();
						pdf.bindHTML(new FileInputStream(file), file.toURL());
						pdf.save(new FileOutputStream(new File(s+".pdf")));
						file=new File(s+".pdf");
						break;
						 */
					case HTML_FORMAT:
						_doc.save(s+".html", SaveFormat.HTML);
						file=new File(s+".html");
						break;
					case TXT_FORMAT:
						_doc.save(s+".txt", SaveFormat.TEXT);
						file=new File(s+".txt");
						break;
					default:
						break;
					}
					files.add(file);
				} catch (Exception e) {

					e.printStackTrace();
				}
			}
			fom.addFiles(files);
		}
		return fom;
	}

	/**
	 * Method to generate one or more documents in the same destination folder<br>
	 * By convention, the name of each File is given by the first TemplateMergeField, which key name must be "filename".<br>
	 * @param _outputPath : where to save the new generated File on the server
	 * @param _outputFormat : format ".doc", ".docx", ".pdf", or ".html" 
	 * @param list : List of List of parameters (TemplateMergeField objects). <br>
	 * Each List of TemplateMergeField objects in the primary List will be turned into a new document.
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and null File Object<br>
	 * @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#generateDocuments(String, String, String, List)
	 * @see ch.ivyteam.ivy.addons.util.FileOperationMessage
	 */
	@SuppressWarnings({"static-access" })
	@Override
	public FileOperationMessage generateDocuments(String templatePath, String _outputPath, final String _outputFormat, final List<List<TemplateMergeField>> list) {
		//series of check to see if no exceptions
		this.template = new java.io.File(FileUtil.formatPath(templatePath));
		if(!doCheckBeforeDocGeneration(_outputFormat, list))
			return this.fileOperationMessage;

		if(_outputPath == null || _outputPath.trim().equalsIgnoreCase(""))
		{
			this.setOutputPath(FileUtil.formatPathWithEndSeparator("ivy_RIA_files"));
		}else{
			this.setOutputPath(FileUtil.formatPathWithEndSeparator(_outputPath));
		}


		this.setFormat(_outputFormat);

		//reset the fileOperationMessage object
		this.fileOperationMessage=new FileOperationMessage();
		this.fileOperationMessage.setType(FileOperationMessage.SUCCESS_MESSAGE);
		this.fileOperationMessage.emptyFileList();

		//iterator to parse all of the List<TemplateMergeField>, each one is a different letter
		final Iterator<List<TemplateMergeField>> iter = list.iterator();

		while(iter.hasNext())
		{// there are still letters that have not been written
			ArrayList<TemplateMergeField> templateParamslist =new ArrayList<TemplateMergeField>();
			templateParamslist.addAll(iter.next());
			// We build parameters/values Arrays for Mailmerging methods.
			String [] paramName= new String[templateParamslist.size()];
			String [] paramValue= new String[templateParamslist.size()];
			for(int i=0; i<templateParamslist.size();i++){
				String s= templateParamslist.get(i).getMergeFieldName();
				if(s.startsWith("Image:") || s.startsWith("Image_"))
				{//The mergefield name indicates an Image, we take only the second part of the name
					paramName[i]=s.substring(6);
				}
				else
				{//The mergefield is a text field
					paramName[i]=s;
				}
				paramValue[i]=templateParamslist.get(i).getMergeFieldValue();
			}

			//Try to get the filename from the first template merge field found
			if(templateParamslist.get(0).getMergeFieldName().trim().equalsIgnoreCase("filename"))
			{
				outputName=templateParamslist.get(0).getMergeFieldValue().trim();
			}else{//we didn't find the filename merge field, we take the default serial letter name
				outputName="serialLetter_"+System.nanoTime();
			}

			File file=null;
			try {
				doc = new Document(template.getPath());
				
				//Set up the event handler for image fields and perform mail merge.
			    doc.getMailMerge().addMergeImageFieldEventHandler(new HandleMergeImageField());
			    
				doc.getMailMerge().execute(paramName,paramValue);
				doc.getMailMerge().setRemoveEmptyParagraphs(true);

				switch(getFormatPosition(_outputFormat)){
				case DOC_FORMAT:
					doc.save(outputPath+outputName+".doc", SaveFormat.DOC);
					file=new File(outputPath+outputName+".doc");
					break;
				case DOCX_FORMAT:
					doc.save(outputPath+outputName+".docx", SaveFormat.DOCX);
					file=new File(outputPath+outputName+".docx");
					break;
					/*
							case PDF_FORMAT:
								doc.save(outputPath+outputName+".html", SaveFormat.HTML);
								file=new File(outputPath+outputName+".html");
								Pdf pdf = new Pdf();
								pdf.bindHTML(new FileInputStream(file), file.toURL());
								pdf.save(new FileOutputStream(new File(outputPath+outputName+".pdf")));
								file=new File(outputPath+outputName+".pdf");
								break;
					 */
				case HTML_FORMAT:
					doc.save(outputPath+outputName+".html", SaveFormat.HTML);
					file=new File(outputPath+outputName+".html");
					break;
				case TXT_FORMAT:
					doc.save(outputPath+outputName+".txt", SaveFormat.TEXT);
					file=new File(outputPath+outputName+".txt");
					break;
				default:
					break;
				}
			} catch (Exception e1) {
				fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
				fileOperationMessage.setMessage(e1.getMessage());
				RDCallbackMethodHandler.callRDMethod(parentRD, errorMethodName, new Object[] { fileOperationMessage });	
			}
			//We add the new created file to the Files list
			fileOperationMessage.addFile(file);

		}

		return fileOperationMessage;
	}

	/**
	 * Method to generate one or more documents each one can be saved in a different destination folder.<br>
	 * By convention, the name of each File is given by the first TemplateMergeField, which key name must be "filename".<br>
	 * By convention, the name of each destination folder is given by the second TemplateMergeField, which key name must be "destinationPath".<br>
	 * @param templatePath : where to find the template for the Merging operation
	 * @param _outputFormat : format ".doc", ".docx", or ".html" 
	 * @param list : List of List of parameters (TemplateMergeField objects). <br>
	 * Each List of TemplateMergeField objects in the primary List will be turned into a new document.
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and null File Object<br>
	 * @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#generateDocumentsWithDifferentDestination(String, String, List)
	 * @see ch.ivyteam.ivy.addons.util.FileOperationMessage
	 */
	@SuppressWarnings("static-access")
	@Override
	public FileOperationMessage generateDocumentsWithDifferentDestination(String templatePath, final String _outputFormat, final List<List<TemplateMergeField>> list) {

		this.template = new java.io.File(FileUtil.formatPath(templatePath));
		if(!doCheckBeforeDocGeneration(_outputFormat, list))
		{//series of check to see if no exceptions
			return this.fileOperationMessage;
		}
		this.setFormat(_outputFormat);

		this.fileOperationMessage=new FileOperationMessage();
		this.fileOperationMessage.setType(FileOperationMessage.SUCCESS_MESSAGE);
		this.fileOperationMessage.emptyFileList();
		final Iterator<List<TemplateMergeField>> iter = list.iterator();

		while(iter.hasNext())
		{// there are still letters that have not been written
			ArrayList<TemplateMergeField> templateParamslist =new ArrayList<TemplateMergeField>();
			templateParamslist.addAll(iter.next());

			String destinationPath;// the spezifisch destination path for this letter

			//get the name of the document
			if(templateParamslist.get(0).getMergeFieldName().trim().equalsIgnoreCase("filename"))
			{
				outputName=templateParamslist.get(0).getMergeFieldValue().trim();
			}
			else{
				outputName="serialLetter_"+System.nanoTime();
			}

			//get the destination folder of the document
			if(templateParamslist.get(1).getMergeFieldName().trim().equalsIgnoreCase("destinationPath")){
				destinationPath= FileUtil.formatPathWithEndSeparator(templateParamslist.get(1).getMergeFieldValue().trim(), true);
			}
			else{
				destinationPath= FileUtil.formatPathWithEndSeparator("ivy_RIA_files", true);
			}

			// We build parameters/values Arrays for Mailmerging methods.
			String [] paramName= new String[templateParamslist.size()];
			String [] paramValue= new String[templateParamslist.size()];
			for(int i=0; i<templateParamslist.size();i++){
				String s= templateParamslist.get(i).getMergeFieldName();
				if(s.startsWith("Image:") || s.startsWith("Image_"))
				{//The mergefield name indicates an Image, we take only the second part of the name
					paramName[i]=s.substring(6);
				}
				else
				{//The mergefield is a text field
					paramName[i]=s;
				}
				paramValue[i]=templateParamslist.get(i).getMergeFieldValue();
			}
			File file=null;
			try {
				doc = new Document(template.getPath());
				//Set up the event handler for image fields and perform mail merge.
			    doc.getMailMerge().addMergeImageFieldEventHandler(new HandleMergeImageField());
				doc.getMailMerge().execute(paramName,paramValue);
				doc.getMailMerge().setRemoveEmptyParagraphs(true);

				switch(getFormatPosition(_outputFormat)){
				case DOC_FORMAT:
					doc.save(destinationPath+outputName+".doc", SaveFormat.DOC);
					file=new File(destinationPath+outputName+".doc");
					break;
				case DOCX_FORMAT:
					doc.save(destinationPath+outputName+".docx", SaveFormat.DOCX);
					file=new File(destinationPath+outputName+".docx");
					break;
					/*
							case PDF_FORMAT:
								doc.save(destinationPath+outputName+".html", SaveFormat.HTML);
								file=new File(destinationPath+outputName+".html");
								Pdf pdf = new Pdf();
								pdf.bindHTML(new FileInputStream(file), file.toURL());
								pdf.save(new FileOutputStream(new File(destinationPath+outputName+".pdf")));
								file=new File(destinationPath+outputName+".pdf");
								break;
					 */
				case HTML_FORMAT:
					doc.save(destinationPath+outputName+".html", SaveFormat.HTML);
					file=new File(destinationPath+outputName+".html");
					break;
				case TXT_FORMAT:
					doc.save(destinationPath+outputName+".txt", SaveFormat.TEXT);
					file=new File(destinationPath+outputName+".txt");
					break;
				default:
					break;
				}
			} catch (Exception e1) {
				fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
				fileOperationMessage.setMessage(e1.getMessage());
				RDCallbackMethodHandler.callRDMethod(parentRD, errorMethodName, new Object[] { fileOperationMessage });	
			}
			//We add the new created file to the Files list
			fileOperationMessage.addFile(file);
		}
		return fileOperationMessage;
	}


	/**
	 * @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#generateDocumentsWithDifferentDestination(java.util.List)
	 */
	@Override
	public List<FileOperationMessage> generateDocumentsWithDifferentDestination(List<DocumentTemplate> list) {
		ArrayList <FileOperationMessage> l = new ArrayList <FileOperationMessage>();
		for(DocumentTemplate dt: list)
		{
			l.add(this.generateDocument(dt));
		}
		return l;
	}

	/**
	 * Method to generate multiple documents appended in one File.<br>
	 * With this method all the letters inside the serial letter are done with the same Template.
	 * @param templatePath : where to find the template for the Merging operation
	 * @param _outputName : the name of the new created letter if null or empty, we try to get the first<br>
	 * MergeField form the first element in the List. If it has the Key name "filename", we take it, else we take "serialLetter".
	 * @param _outputPath : where to save the new generated File on the server
	 * @param _outputFormat : format ".doc", ".docx", ".pdf", or ".html" 
	 * @param list : List of List of parameters (TemplateMergeField objects). <br>
	 * Each List of TemplateMergeField objects in the primary List will be turned into a new page in the final File.
	 * @return The FileOperationMessage object containing the Type of the message (FileHandler.SUCCESS, ERROR, INFORMATION_MESSAGE),<br>
	 *  the text of the message and <br>
	 *  the java.io.File generated in case of success, else empty List<java.io.File>.<br> 
	 * @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#generateMultipleDocumentsInOne(java.lang.String, java.lang.String, java.lang.String, java.util.List)
	 * @see ch.ivyteam.ivy.addons.util.FileOperationMessage
	 */
	@SuppressWarnings("static-access")
	@Override

	public FileOperationMessage generateMultipleDocumentsInOne(String templatePath, String _outputName, String _outputPath, String _outputFormat, List<List<TemplateMergeField>> list) {
		//template File
		this.template = new java.io.File(FileUtil.formatPath(templatePath));
		//		set the outPutPath
		if(_outputPath == null || _outputPath.trim().equalsIgnoreCase(""))
		{
			this.setOutputPath(FileUtil.formatPathWithEndSeparator("ivy_RIA_files"));
		}else{
			this.setOutputPath(FileUtil.formatPathWithEndSeparator(_outputPath));
		}
		// 		set the format
		this.setFormat(_outputFormat);
		//		set the output name
		if(_outputName == null || _outputName.trim().equalsIgnoreCase("") || !FileUtil.isFileNameValid(_outputName))
		{//		fileName parameter is invalid
			// We take the default name SerialLetter + System nanoTime String
			this.outputName="serialLetter_"+System.nanoTime();
		}else{
			this.outputName = _outputName;
		}
		// series of check to see if no exceptions -> this method checks the template, the format and if the list is not empty
		if(!doCheckBeforeDocGeneration(_outputFormat, list))
		{// The inputParameters are not all valid. We return the actual FileOperationMessage with the error Message
			return this.fileOperationMessage;
		}
		//the input parameters are checked and valid	
		File file=null;
		this.fileOperationMessage=new FileOperationMessage();
		this.fileOperationMessage.setType(FileOperationMessage.SUCCESS_MESSAGE);
		this.fileOperationMessage.emptyFileList();

		//iterator to parse all of the List<TemplateMergeField>, each one is a different letter
		final Iterator<List<TemplateMergeField>> iter = list.iterator();
		try 
		{
			docDest = doMailMerge(templatePath, iter.next());
			//appends the rest of the documents to the first one
			while(iter.hasNext())
			{
				doc = doMailMerge(templatePath, iter.next());
				doc.getFirstSection().getPageSetup().setSectionStart(SectionStart.NEW_PAGE);
				
				AppendDoc(docDest, doc);
			}
			switch(getFormatPosition(_outputFormat)){
			case DOC_FORMAT:
				docDest.save(this.outputPath+this.outputName+".doc", SaveFormat.DOC);
				file=new File(this.outputPath+this.outputName+".doc");
				break;
			case DOCX_FORMAT:
				docDest.save(this.outputPath+this.outputName+".docx", SaveFormat.DOCX);
				file=new File(this.outputPath+this.outputName+".docx");
				break;
			case HTML_FORMAT:
				docDest.save(this.outputPath+this.outputName+".html", SaveFormat.HTML);
				file=new File(this.outputPath+this.outputName+".html");
				break;
			default:
				this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/formatNotSupported"));
			this.fileOperationMessage.emptyFileList();
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });
			}
		}
		catch (Exception e1) {
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(e1.getMessage());
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });
		}
		if(this.fileOperationMessage.getType()==FileOperationMessage.SUCCESS_MESSAGE)
		{//Creation successful
			this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/serialLetterSuccess"));
			this.fileOperationMessage.addFile(file);
		}
		return fileOperationMessage;
	}


	/**
	 * With this method each letter inside the serial letter can be made with its own template.
	 * @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#generateMultipleDocumentsInOne(String, String, String, List)
	 */
	@SuppressWarnings("static-access")
	@Override
	public FileOperationMessage generateMultipleDocumentsInOne(String _outputPath, String _outputName, String _outputFormat, List<DocumentTemplate> list) {
		//series of check to see if no exceptions
		if(list == null || list.isEmpty())
		{// the list is empty: the FielOperationMessage Object contains the error and we return it
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/EmptyMergeFields"));
			this.fileOperationMessage.emptyFileList();
			return this.fileOperationMessage;
		}	

		if(_outputPath==null || _outputPath.trim().equalsIgnoreCase(""))
		{
			_outputPath="ivy_RIA_files";
		}
		if(_outputName== null || _outputName.trim().equalsIgnoreCase(""))
		{
			_outputName ="serialLetter"+System.nanoTime();
		}
		this.setOutputPath(FileUtil.formatPathWithEndSeparator(_outputPath));
		this.setFormat(_outputFormat);

		File file=null;
		this.fileOperationMessage=new FileOperationMessage();
		this.fileOperationMessage.setType(FileOperationMessage.SUCCESS_MESSAGE);
		this.fileOperationMessage.emptyFileList();

		//iterator to parse all of the DocumentTemplate objects, each one is a different letter
		final Iterator <DocumentTemplate> iter = list.iterator();
		try 
		{
			// we do trhe mailMerge for the first DocumentTemplate
			docDest = this.doMailMerge(iter.next());
			
			//appends the rest of the documents to the first one
			while(iter.hasNext())
			{
				doc=doMailMerge(iter.next());
				
				doc.getFirstSection().getPageSetup().setSectionStart(SectionStart.NEW_PAGE);
				AppendDoc(docDest, doc);
			}
			switch(getFormatPosition(this.outputFormat)){
			case DOC_FORMAT:
				docDest.save(this.outputPath+_outputName+".doc", SaveFormat.DOC);
				file=new File(this.outputPath+_outputName+".doc");
				break;
			case DOCX_FORMAT:
				docDest.save(this.outputPath+_outputName+".docx", SaveFormat.DOCX);
				file=new File(this.outputPath+_outputName+".docx");
				break;
			case HTML_FORMAT:
				docDest.save(this.outputPath+_outputName+".html", SaveFormat.HTML);
				file=new File(this.outputPath+_outputName+".html");
				break;
			default:
				this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/formatNotSupported"));
			this.fileOperationMessage.emptyFileList();
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });
			}
		}
		catch (Exception e1) {
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(e1.getMessage());
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });
		}
		if(this.fileOperationMessage.getType()==FileOperationMessage.SUCCESS_MESSAGE)
		{//Creation successful
			this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/serialLetterSuccess"));
			this.fileOperationMessage.addFile(file);
		}
		return this.fileOperationMessage;
	}


	/**
	 * For private use
	 * @param _documentTemplate
	 * @return the document object resulting of the mail merging operation
	 * @throws Exception
	 */
	private Document doMailMerge(DocumentTemplate _documentTemplate) throws Exception{
		String t = FileUtil.formatPath(_documentTemplate.getTemplatePath());
		Document document = new Document(t);
		List<TemplateMergeField> fields = _documentTemplate.getMergeFields();
		String [] paramName= new String[fields.size()];
		String [] paramValue= new String[fields.size()];
		
		Iterator<TemplateMergeField> iterator = fields.iterator();
		int i=0;
		while(iterator.hasNext()){
			TemplateMergeField tmf = iterator.next();
			String s = tmf.getMergeFieldName();
			if(s.startsWith("Image:") || s.startsWith("Image_"))
			{//The mergefield name indicates an Image, we take only the second part of the name
				paramName[i]=s.substring(6);
			}
			else
			{//The mergefield is a text field
				paramName[i]=s;
			}
			
			paramValue[i]=tmf.getMergeFieldValue();
			i++;
		}
		
		//Set up the event handler for image fields and perform mail merge.
	    document.getMailMerge().addMergeImageFieldEventHandler(new HandleMergeImageField());
		
		document.getMailMerge().execute(paramName,paramValue);
		document.getMailMerge().setRemoveEmptyParagraphs(true);
		return document;
	}

	/**
	 * 
	 * @param templatePath
	 * @param fields
	 * @return the document object resulting of the mail merging operation
	 * @throws Exception
	 */
	private Document doMailMerge(String templatePath, List<TemplateMergeField> fields) throws Exception{
		String t = FileUtil.formatPath(templatePath);
		Document document = new Document(t);
		String [] paramName= new String[fields.size()];
		String [] paramValue= new String[fields.size()];
		Iterator<TemplateMergeField> iterator = fields.iterator();
		int i=0;
		while(iterator.hasNext()){
			TemplateMergeField tmf = iterator.next();
			String s = tmf.getMergeFieldName();
			if(s.startsWith("Image:") || s.startsWith("Image_"))
			{//The mergefield name indicates an Image, we take only the second part of the name
				paramName[i]=s.substring(6);
			}
			else
			{//The mergefield is a text field
				paramName[i]=s;
			}
			
			paramValue[i]=tmf.getMergeFieldValue();
			i++;
		}
		//Set up the event handler for image fields and perform mail merge.
	    document.getMailMerge().addMergeImageFieldEventHandler(new HandleMergeImageField());
	    
		document.getMailMerge().execute(paramName,paramValue);
		document.getMailMerge().setRemoveEmptyParagraphs(true);
		return document;
	}

	/**
	 * performs a mail merge with a template. Gives the generated File back.
	 * @param parameters : the list of TemplateMergeField objects that correspond to the template's fields
	 * @return the java.io.File taht was generated.
	 * @throws Exception
	 */
	@SuppressWarnings({ "static-access" })
	private java.io.File doMailMerge(ArrayList<TemplateMergeField> parameters) throws Exception{
		File file=null;
		String [] paramName= new String[parameters.size()];
		String [] paramValue= new String[parameters.size()];
		for(int i=0; i<parameters.size();i++){
			String s = parameters.get(i).getMergeFieldName();
			if(s.startsWith("Image:") || s.startsWith("Image_"))
			{//The mergefield name indicates an Image, we take only the second part of the name
				paramName[i]=s.substring(6);
			}
			else
			{//The mergefield is a text field
				paramName[i]=s;
			}
			
			paramValue[i]=parameters.get(i).getMergeFieldValue();
		}

		doc = new Document(this.template.getPath());
		
		//Set up the event handler for image fields and perform mail merge.
	    doc.getMailMerge().addMergeImageFieldEventHandler(new HandleMergeImageField());
	    
		doc.getMailMerge().execute(paramName,paramValue);
		doc.getMailMerge().setRemoveEmptyParagraphs(true);
		
		switch(getFormatPosition(this.outputFormat)){
		case DOC_FORMAT:
			doc.save(this.outputPath+this.outputName+".doc", SaveFormat.DOC);
			file=new File(this.outputPath+this.outputName+".doc");
			break;
		case DOCX_FORMAT:
			doc.save(this.outputPath+this.outputName+".docx", SaveFormat.DOCX);
			file=new File(this.outputPath+this.outputName+".docx");
			break;
			/*
		case PDF_FORMAT:
			doc.save(this.outputPath+this.basicFileName+".html", SaveFormat.HTML);
			file=new File(this.outputPath+this.basicFileName+".html");
			Pdf pdf = new Pdf();
			pdf.bindHTML(new FileInputStream(file), file.toURL());
			pdf.save(new FileOutputStream(new File(this.outputPath+this.basicFileName+".pdf")));
			file=new File(this.outputPath+this.basicFileName+".pdf");
			break;
			 */
		case HTML_FORMAT:
			doc.save(this.outputPath+this.outputName+".html", SaveFormat.HTML);
			file=new File(this.outputPath+this.outputName+".html");
			break;
		case TXT_FORMAT:
			doc.save(this.outputPath+this.outputName+".txt", SaveFormat.TEXT);
			file=new File(this.outputPath+this.outputName+".txt");
			break;
		default:
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
		this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/formatNotSupported"));
		this.fileOperationMessage.emptyFileList();
		RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });

		}
		return file;
	}


	/**
	 * A useful function that you can use to easily append one document to another.
	 * @param dstDoc : The destination document where to append to
	 * @param srcDoc : The source document.
	 */
	private void AppendDoc(Document dstDoc, Document srcDoc) throws Exception
	{
		// Loop through all sections in the source document.
		// Section nodes are immediate children of the Document node so we can just enumerate the Document.
		int x = srcDoc.getSections().getCount();
		for (int i=0; i<x;i++)
		{
			// Because we are copying a section from one document to another,
			// it is required to import the Section node into the destination document.
			// This adjusts any document-specific references to styles, lists, etc.
			//
			// Importing a node creates a copy of the original node, but the copy
			// is ready to be inserted into the destination document.
			Section srcSection = srcDoc.getSections().get(i);
			Node dstSection = dstDoc.importNode(srcSection, true, ImportFormatMode.KEEP_SOURCE_FORMATTING);

			// Now the new section node can be appended to the destination document.
			dstDoc.appendChild(dstSection);
		}
	}

	@Override
	public Class<? extends AsposeDocFactory> getFactoryClass() {
		return this.getClass();
	}

	/**
	 * private use
	 * @param format
	 * @return the position of the given format in the format supported list
	 */
	private int getFormatPosition(String format){
		int a=-1;
		for(int i =0; i<supportedOutputFormats.length;i++){
			if(format.trim().equalsIgnoreCase(supportedOutputFormats[i])){
				a=i;
				break;
			}
		}
		return a;
	}

	/**
	 * returns a String Array containing all the fieldNames in a document
	 * @param _doc the aspose Word Document Object
	 * @return the ArrayList<String> of the MergeFields
	 */
	public String[] getTemplateFields(Document _doc){
		String [] templateFields=null;
		try {
			templateFields= _doc.getMailMerge().getFieldNames();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return templateFields;
	}


	/**
	 * Gives the merge fields list from a template back.
	 * @param templatePath the template path
	 * @return the ArrayList<String> of the MergeFields
	 */
	@Override
	public ArrayList<String> getTemplateFields(String templatePath){

		ArrayList<String> templateFields=new ArrayList<String>();
		try {
			Document _doc = new Document(templatePath);
			String [] sArray = _doc.getMailMerge().getFieldNames();
			for(String s: sArray){
				templateFields.add(s);
			}
		} catch (Exception e) {
			e.printStackTrace();
			Ivy.log().error("getTemplateFields error " +e.getMessage());
		}

		return templateFields;

	}

	/**
	 * Gives the merge fields list from a template back.
	 * @param templatePath the template path
	 * @return the ArrayList<String> of the MergeFields
	 */
	public static ArrayList<String> getFields(String templatePath){

		ArrayList<String> templateFields=new ArrayList<String>();
		try {
			Document doc = new Document(templatePath);
			String [] sArray = doc.getMailMerge().getFieldNames();
			for(String s: sArray){
				templateFields.add(s);
			}
		} catch (Exception e) {
			e.printStackTrace();
			Ivy.log().error("getTemplateFields error " +e.getMessage());
		}

		return templateFields;

	}

	/**
	 * for Private use.
	 * Check if the given format is supported by the Aspose implementation.<br>
	 * And if the template can be found and the list of MergeFileds ist not empty.
	 * @param format
	 * @param list
	 * @return true if this document Factory can be used to produce documents. Else false because some parameters are invalid.
	 */
	@SuppressWarnings("static-access")
	private boolean doCheckBeforeDocGeneration(String format, List<?> list){
		boolean flag=true;
		this.fileOperationMessage=new FileOperationMessage();
		if(format.startsWith(".")) format=format.substring(1);
		if(format==null || !isFormatSupported(format)){
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/formatNotSupported")+" \n"+format);
			this.fileOperationMessage.emptyFileList();
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });
			flag=false;
		}
		if(this.template==null || !this.template.exists()){
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/templateCannotBefFound"));
			this.fileOperationMessage.emptyFileList();
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });
			flag=false;
		}
		if(list == null || list.isEmpty()){
			this.fileOperationMessage.setType(FileOperationMessage.ERROR_MESSAGE);
			this.fileOperationMessage.setMessage(Ivy.cms().co("/ch/ivyteam/ivy/addons/docfactory/messages/EmptyMergeFields"));
			this.fileOperationMessage.emptyFileList();
			RDCallbackMethodHandler.callRDMethod(this.parentRD, errorMethodName, new Object[] { this.fileOperationMessage });
			flag=false;
		}
		return flag;
	}

	/**
	 * Check if the desired document output format is supported
	 * @param format : the String Format to chek, format without the point
	 * @return true if supported, else false
	 */
	@Override
	public boolean isFormatSupported(String format){
		boolean flag = false;
		String s = format;
		if(s.startsWith(".")) s=format.substring(1);
		for(int i =0; i<supportedOutputFormats.length;i++){
			if(s.trim().equalsIgnoreCase(supportedOutputFormats[i])){
				flag=true;
				break;
			}
		}
		return flag;
	}

	/**
	 *
	 * @see ch.ivyteam.ivy.addons.docfactory.BaseDocFactory#getSupportedFormats()
	 */
	public static String[] getSupportedFormats(){
		return supportedOutputFormats;
	}

	

	/**
	 * We set the format. If the given format is invalid, we set it to "doc" per default.
	 */
	@Override
	public void setFormat(String _format){
		if( _format==null|| _format.trim().equalsIgnoreCase("") || !isFormatSupported(_format))
		{
			_format ="doc";
		}
		if(_format.startsWith("."))
		{
			this.outputFormat = _format.substring(1);
		}else
		{
			this.outputFormat=_format;
		}
	}
	

	/**
	 * This is called when mail merge engine encounters Image: + name of imageMailField
 	 * You have a chance to return an Image object, file name or a stream that contains the image.
	 */
	private class HandleMergeImageField implements MergeImageFieldEventHandler
	{
	    public void mergeImageField(Object sender, MergeImageFieldEventArgs e)
	    {
	    	//Ivy.log().info("IN IMAGE EVENT " +e.toString()+" "+e.getDocumentFieldName()+ " "+e.getFieldValue());
	    	
	    	InputStream imageStream = null;
	    	if(e.getFieldValue() != null){
	    		//Ivy.log().info(e.getFieldValue()+" "+e.getFieldValue().getClass().getName());
		    	// The field value is a byte array, just cast it and create a stream on it.
		    	if(e.getFieldValue().getClass().getComponentType()!= null && e.getClass().getComponentType().getName().equalsIgnoreCase("java.lang.Byte")){
		    		//Ivy.log().info("byte");
		    		imageStream = new ByteArrayInputStream((byte[])e.getFieldValue());
		    		e.setImageStream(imageStream);
		    	}else if(e.getFieldValue().getClass().getName().equalsIgnoreCase("java.lang.String")){
		    		//Ivy.log().info("String");
		    		try {
						imageStream = new FileInputStream(new java.io.File((String) e.getFieldValue()));
						e.setImageFileName((String) e.getFieldValue());
					} catch (FileNotFoundException ex) {
						//Ivy.log().info("FileNotFoundException" +ex.getMessage());
						ex.printStackTrace();
						return;
					}
		    	}
	    	}
	    }
	}
}